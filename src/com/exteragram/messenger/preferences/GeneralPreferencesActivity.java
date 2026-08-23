package com.exteragram.messenger.preferences;

import android.content.DialogInterface;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.TranslationFormality;
import com.exteragram.messenger.utils.text.LocaleUtils;
import com.exteragram.messenger.utils.text.TranslatorUtils;
import com.exteragram.messenger.utils.text.ZalgoFilter;
import com.exteragram.messenger.utils.ui.PopupUtils;
import com.google.android.exoplayer2.util.Consumer;
import java.util.ArrayList;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.ui.Components.TranslateAlert2;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.RestrictedLanguagesSelectActivity;

/* JADX INFO: loaded from: classes4.dex */
public class GeneralPreferencesActivity extends BasePreferencesActivity {
    private static final Pattern SAVE_PATH_PATTERN = Pattern.compile("^(?!\\.{1,2}$)[A-Za-z0-9._ -]{1,255}$");
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
        CUSTOM_SAVE_PATH,
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
    public void initializeOptionStrings() {
        this.idOptions = new CharSequence[]{LocaleController.getString(C2573R.string.Hide), "Telegram API", "Bot API"};
        this.translationProviders = new CharSequence[]{"Telegram", "Google", "Yandex", "DeepL"};
        this.translationFormalities = new CharSequence[]{LocaleController.getString(C2573R.string.Default), LocaleController.getString(C2573R.string.TranslationFormalityLess), LocaleController.getString(C2573R.string.TranslationFormalityMore)};
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2573R.string.General);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.TranslateMessages)));
        arrayList.add(UItem.asCheck(GeneralItem.SHOW_TRANSLATE_BUTTON.getId(), LocaleController.getString(C2573R.string.ShowTranslateButton)).setChecked(getContextTranslateValue()).setSearchable(this).setLinkAlias("showTranslateButton", this));
        arrayList.add(UItem.asCheck(GeneralItem.SHOW_TRANSLATE_CHAT_BUTTON.getId(), LocaleController.getString(C2573R.string.ShowTranslateChatButton)).setCheckBoxIcon(!getUserConfig().isPremium() ? C2573R.drawable.permission_locked : 0).setChecked(getChatTranslateValue()).setSearchable(this).setLinkAlias("showTranslateChatButton", this));
        arrayList.add(UItem.asButton(GeneralItem.TRANSLATION_PROVIDERS.getId(), LocaleController.getString(C2573R.string.TranslationProvider), this.translationProviders[ExteraConfig.getTranslationProvider()]).setSearchable(this).setLinkAlias("translationProvider", this));
        if (ExteraConfig.getTranslationProvider() == 3) {
            arrayList.add(UItem.asButton(GeneralItem.TRANSLATION_FORMALITY.getId(), LocaleController.getString(C2573R.string.TranslationFormality), this.translationFormalities[ExteraConfig.getTranslationFormality().ordinal()]).setSearchable(this).setLinkAlias("translationFormality", this));
        }
        arrayList.add(UItem.asButton(GeneralItem.TRANSLATION_TARGET_LANGUAGE.getId(), LocaleController.getString(C2573R.string.TranslationTarget), ExteraConfig.getCurrentLangName()).setSearchable(this).setLinkAlias("translationTargetLanguage", this));
        arrayList.add(UItem.asButton(GeneralItem.DO_NOT_TRANSLATE_LANGUAGES.getId(), LocaleController.getString(C2573R.string.DoNotTranslate), getDoNotTranslateValue()).setSearchable(this).setLinkAlias("doNotTranslateLanguages", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2573R.string.TranslateMessagesInfo1)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.General)));
        arrayList.add(UItem.asCheck(GeneralItem.DISABLE_NUMBER_ROUNDING.getId(), LocaleController.getString(C2573R.string.DisableNumberRounding), "1.23K -> 1,234", false).setChecked(ExteraConfig.getDisableNumberRounding()).setSearchable(this).setLinkAlias("disableNumberRounding", this));
        arrayList.add(UItem.asCheck(GeneralItem.FORMAT_TIME_WITH_SECONDS.getId(), LocaleController.getString(C2573R.string.FormatTimeWithSeconds), "12:34 -> 12:34:56", false).setChecked(ExteraConfig.getFormatTimeWithSeconds()).setSearchable(this).setLinkAlias("formatTimeWithSeconds", this));
        arrayList.add(UItem.asCheck(GeneralItem.IN_APP_VIBRATION.getId(), LocaleController.getString(C2573R.string.InAppVibration)).setChecked(ExteraConfig.getInAppVibration()).setSearchable(this).setLinkAlias("inAppVibration", this));
        arrayList.add(UItem.asCheck(GeneralItem.FILTER_ZALGO.getId(), LocaleController.getString(C2573R.string.FilterZalgo)).setChecked(ExteraConfig.getFilterZalgo()).setSearchable(this).setLinkAlias("filterZalgo", this));
        arrayList.add(UItem.asShadow(LocaleController.formatString(C2573R.string.FilterZalgoInfo, ZalgoFilter.filter("Z̷͍͌ā̸̜l̸̞̂g̷͍̝o̶̩̓"))));
        if (ApplicationLoader.applicationLoaderInstance.allowToUseYandexMaps()) {
            arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.Maps)));
            arrayList.add(UItem.asCheck(GeneralItem.YANDEX_MAPS.getId(), LocaleController.getString(C2573R.string.UseYandexMaps)).setChecked(ExteraConfig.getUseYandexMaps()).setSearchable(this).setLinkAlias("useYandexMaps", this));
            arrayList.add(UItem.asShadow(LocaleUtils.formatWithHtmlURLs(LocaleUtils.fromHtml(LocaleController.getString(C2573R.string.TermsOfUseYandexMaps)))));
        }
        arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.DownloadSpeedBoost)));
        arrayList.add(UItem.asSlideView(GeneralItem.DOWNLOAD_SPEED_BOOST.getId(), new String[]{LocaleController.getString(C2573R.string.BlurOff), LocaleController.getString(C2573R.string.SpeedFast), LocaleController.getString(C2573R.string.Ultra)}, ExteraConfig.getDownloadSpeedBoost(), new Utilities.Callback() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                ExteraConfig.setDownloadSpeedBoost(((Integer) obj).intValue());
            }
        }).setLinkAlias("downloadSpeedBoost", this));
        arrayList.add(UItem.asCheck(GeneralItem.UPLOAD_SPEED_BOOST.getId(), LocaleController.getString(C2573R.string.UploadSpeedBoost)).setChecked(ExteraConfig.getUploadSpeedBoost()).setSearchable(this).setLinkAlias("uploadSpeedBoost", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2573R.string.SpeedBoostInfo)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.StorageSettings)));
        arrayList.add(UItem.asButton(GeneralItem.CUSTOM_SAVE_PATH.getId(), LocaleController.getString(C2573R.string.CustomSavePath), getCustomSavePathDisplayValue()).setSearchable(this).setLinkAlias("customSavePath", this));
        arrayList.add(UItem.asShadow(getCustomSavePathInfo()));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.Profile)));
        arrayList.add(UItem.asCheck(GeneralItem.RELATIVE_LAST_SEEN.getId(), LocaleController.getString(C2573R.string.RelativeLastSeen), LocaleController.formatDateOnline(this.fiveMinutesAgo, null, new boolean[1]), false).setChecked(ExteraConfig.getRelativeLastSeen()).setSearchable(this).setLinkAlias("relativeLastSeen", this));
        arrayList.add(UItem.asCheck(GeneralItem.HIDE_PHONE_NUMBER.getId(), LocaleController.getString(C2573R.string.HidePhoneNumber)).setChecked(ExteraConfig.getHidePhoneNumber()).setSearchable(this).setLinkAlias("hidePhoneNumber", this));
        arrayList.add(UItem.asButton(GeneralItem.SHOW_ID_AND_DC.getId(), LocaleController.getString(C2573R.string.ShowIdAndDc), this.idOptions[ExteraConfig.getShowIdAndDc()]).setSearchable(this).setLinkAlias("showIdAndDc", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2573R.string.ShowIdAndDcInfo)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.ArchivedChats)));
        arrayList.add(UItem.asCheck(GeneralItem.HIDE_ARCHIVE_FOLDER.getId(), LocaleController.getString(C2573R.string.HideArchiveFolder)).setChecked(ExteraConfig.getHideArchiveFolder()).setSearchable(this).setLinkAlias("hideArchiveFolder", this));
        if (!ExteraConfig.getHideArchiveFolder()) {
            arrayList.add(UItem.asCheck(GeneralItem.ARCHIVE_ON_PULL.getId(), LocaleController.getString(C2573R.string.ArchiveOnPull)).setChecked(ExteraConfig.getArchiveOnPull()).setSearchable(this).setLinkAlias("archiveOnPull", this));
        }
        arrayList.add(UItem.asCheck(GeneralItem.DISABLE_UNARCHIVE_SWIPE.getId(), LocaleController.getString(C2573R.string.DisableUnarchiveSwipe)).setChecked(ExteraConfig.getDisableUnarchiveSwipe()).setSearchable(this).setLinkAlias("disableUnarchiveSwipe", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2573R.string.DisableUnarchiveSwipeInfo)));
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem uItem, View view, int i, float f, float f2) {
        int i2 = uItem.id;
        if (i2 <= 0 || i2 > GeneralItem.values().length) {
            return;
        }
        switch (C11541.f194x463f066a[GeneralItem.values()[uItem.id - 1].ordinal()]) {
            case 1:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda1
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        this.f$0.lambda$onClick$0((Boolean) obj);
                    }
                });
                handleContextTranslateClick();
                break;
            case 2:
                handleChatTranslateClick(uItem);
                break;
            case 3:
                showListDialog(uItem, this.translationProviders, LocaleController.getString(C2573R.string.TranslationProvider), ExteraConfig.getTranslationProvider(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda7
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i3) {
                        this.f$0.lambda$onClick$1(i3);
                    }
                });
                break;
            case 4:
                showListDialog(uItem, this.translationFormalities, LocaleController.getString(C2573R.string.TranslationFormality), ExteraConfig.getTranslationFormality().ordinal(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda8
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i3) {
                        this.f$0.lambda$onClick$2(i3);
                    }
                });
                break;
            case 5:
                presentFragment(new RestrictedLanguagesSelectActivity(1));
                break;
            case 6:
                presentFragment(new RestrictedLanguagesSelectActivity());
                break;
            case 7:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda9
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setDisableNumberRounding(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 8:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda10
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setFormatTimeWithSeconds(((Boolean) obj).booleanValue());
                    }
                });
                handleFormatTimeWithSecondsClick();
                break;
            case 9:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda11
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setRelativeLastSeen(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 10:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda12
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setInAppVibration(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 11:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda13
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setFilterZalgo(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 12:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda14
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setUseYandexMaps(((Boolean) obj).booleanValue());
                    }
                });
                ApplicationLoader.updateMapsProvider();
                break;
            case 13:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda15
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setUploadSpeedBoost(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 14:
                showCustomSavePathDialog();
                break;
            case 15:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda2
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setHidePhoneNumber(((Boolean) obj).booleanValue());
                    }
                });
                handleHidePhoneNumberClick();
                break;
            case 16:
                showListDialog(uItem, this.idOptions, LocaleController.getString(C2573R.string.ShowIdAndDc), ExteraConfig.getShowIdAndDc(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda3
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i3) {
                        this.f$0.lambda$onClick$3(i3);
                    }
                });
                break;
            case 17:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda4
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setHideArchiveFolder(((Boolean) obj).booleanValue());
                    }
                });
                MessagesController.getInstance(this.currentAccount).checkArchiveFolder();
                break;
            case 18:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda5
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setArchiveOnPull(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 19:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda6
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setDisableUnarchiveSwipe(((Boolean) obj).booleanValue());
                    }
                });
                break;
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.preferences.GeneralPreferencesActivity$1 */
    public static /* synthetic */ class C11541 {

        /* JADX INFO: renamed from: $SwitchMap$com$exteragram$messenger$preferences$GeneralPreferencesActivity$GeneralItem */
        static final /* synthetic */ int[] f194x463f066a;

        static {
            int[] iArr = new int[GeneralItem.values().length];
            f194x463f066a = iArr;
            try {
                iArr[GeneralItem.SHOW_TRANSLATE_BUTTON.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f194x463f066a[GeneralItem.SHOW_TRANSLATE_CHAT_BUTTON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f194x463f066a[GeneralItem.TRANSLATION_PROVIDERS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f194x463f066a[GeneralItem.TRANSLATION_FORMALITY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f194x463f066a[GeneralItem.TRANSLATION_TARGET_LANGUAGE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f194x463f066a[GeneralItem.DO_NOT_TRANSLATE_LANGUAGES.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f194x463f066a[GeneralItem.DISABLE_NUMBER_ROUNDING.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f194x463f066a[GeneralItem.FORMAT_TIME_WITH_SECONDS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f194x463f066a[GeneralItem.RELATIVE_LAST_SEEN.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f194x463f066a[GeneralItem.IN_APP_VIBRATION.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f194x463f066a[GeneralItem.FILTER_ZALGO.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f194x463f066a[GeneralItem.YANDEX_MAPS.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f194x463f066a[GeneralItem.UPLOAD_SPEED_BOOST.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f194x463f066a[GeneralItem.CUSTOM_SAVE_PATH.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f194x463f066a[GeneralItem.HIDE_PHONE_NUMBER.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f194x463f066a[GeneralItem.SHOW_ID_AND_DC.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f194x463f066a[GeneralItem.HIDE_ARCHIVE_FOLDER.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f194x463f066a[GeneralItem.ARCHIVE_ON_PULL.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f194x463f066a[GeneralItem.DISABLE_UNARCHIVE_SWIPE.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$0(Boolean bool) {
        getMessagesController().getTranslateController().setContextTranslateEnabled(bool.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$1(int i) {
        ExteraConfig.setTranslationProvider(i);
        TranslatorUtils.ensureTargetLanguageCompatibleWithProvider();
        this.parentLayout.rebuildFragments(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$2(int i) {
        ExteraConfig.setTranslationFormality(TranslationFormality.getEntries().get(i));
        this.parentLayout.rebuildFragments(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$3(int i) {
        ExteraConfig.setShowIdAndDc(i);
        this.parentLayout.rebuildFragments(0);
    }

    private CharSequence getDoNotTranslateValue() {
        final boolean[] zArr = new boolean[1];
        return (CharSequence) RestrictedLanguagesSelectActivity.getRestrictedLanguages().stream().map(new Function() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda16
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return TranslateAlert2.capitalFirst(TranslateAlert2.languageName((String) obj, zArr));
            }
        }).filter(new Predicate() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda17
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
        toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda22
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$handleChatTranslateClick$5((Boolean) obj);
            }
        });
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateSearchSettings, new Object[0]);
        this.parentLayout.rebuildFragments(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleChatTranslateClick$5(Boolean bool) {
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

    private String getCustomSavePathDisplayValue() {
        String customSavePath = ExteraConfig.getCustomSavePath();
        return TextUtils.isEmpty(customSavePath) ? LocaleController.getString(C2573R.string.CustomSavePathDefault) : customSavePath;
    }

    private String getCustomSavePathInfo() {
        String customSavePath = ExteraConfig.getCustomSavePath();
        if (TextUtils.isEmpty(customSavePath)) {
            return LocaleController.getString(C2573R.string.CustomSavePathInfo);
        }
        return LocaleController.formatString(C2573R.string.CustomSavePathInfoFolder, customSavePath);
    }

    private void showCustomSavePathDialog() {
        if (getContext() == null) {
            return;
        }
        final EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(getContext());
        editTextBoldCursor.lineYFix = true;
        editTextBoldCursor.setTextSize(1, 18.0f);
        editTextBoldCursor.setText(ExteraConfig.getCustomSavePath());
        editTextBoldCursor.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, this.resourceProvider));
        editTextBoldCursor.setHintColor(Theme.getColor(Theme.key_groupcreate_hintText, this.resourceProvider));
        editTextBoldCursor.setHintText(LocaleController.getString(C2573R.string.CustomSavePathHint));
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
        builder.setTitle(LocaleController.getString(C2573R.string.CustomSavePath));
        builder.makeCustomMaxHeight();
        builder.setView(linearLayout);
        builder.setWidth(AndroidUtilities.dp(292.0f));
        builder.setPositiveButton(LocaleController.getString(C2573R.string.Done), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda18
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                this.f$0.lambda$showCustomSavePathDialog$6(editTextBoldCursor, alertDialog, i2);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda19
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                alertDialog.dismiss();
            }
        });
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda20
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AndroidUtilities.hideKeyboard(editTextBoldCursor);
            }
        });
        alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda21
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                GeneralPreferencesActivity.m2368$r8$lambda$jqZHucz2CB71qU5xtH3wBEzzDE(editTextBoldCursor, dialogInterface);
            }
        });
        alertDialogCreate.setDismissDialogByButtons(false);
        showDialog(alertDialogCreate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCustomSavePathDialog$6(EditTextBoldCursor editTextBoldCursor, AlertDialog alertDialog, int i) {
        String strTrim = editTextBoldCursor.getText() != null ? editTextBoldCursor.getText().toString().trim() : _UrlKt.FRAGMENT_ENCODE_SET;
        if (!TextUtils.isEmpty(strTrim) && !SAVE_PATH_PATTERN.matcher(strTrim).matches()) {
            AndroidUtilities.shakeView(editTextBoldCursor);
            return;
        }
        ExteraConfig.setCustomSavePath(strTrim);
        this.listView.adapter.update(true);
        alertDialog.dismiss();
    }

    /* JADX INFO: renamed from: $r8$lambda$jqZHucz2CB71qU5xtH3wB-EzzDE, reason: not valid java name */
    public static /* synthetic */ void m2368$r8$lambda$jqZHucz2CB71qU5xtH3wBEzzDE(EditTextBoldCursor editTextBoldCursor, DialogInterface dialogInterface) {
        editTextBoldCursor.requestFocus();
        editTextBoldCursor.setSelection(editTextBoldCursor.length());
        AndroidUtilities.showKeyboard(editTextBoldCursor);
    }
}
