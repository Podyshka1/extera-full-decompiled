package com.exteragram.messenger.ai.ui.activities;

import android.text.TextUtils;
import android.view.View;
import androidx.core.util.Consumer;
import com.exteragram.messenger.ai.AiConfig;
import com.exteragram.messenger.ai.AiController;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.exteragram.messenger.preferences.utils.SettingsRegistry;
import com.exteragram.messenger.utils.text.LocaleUtils;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.MutablePropertyReference0Impl;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001\u001eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0014J\u001e\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0014J0\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H\u0014J\b\u0010\u0018\u001a\u00020\u0019H\u0002J\b\u0010\u001a\u001a\u00020\fH\u0002J\u0010\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u0014H\u0002J\b\u0010\u001d\u001a\u00020\u0005H\u0002¨\u0006\u001f"}, d2 = {"Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "<init>", "()V", "getTitle", _UrlKt.FRAGMENT_ENCODE_SET, "needHideTitle", _UrlKt.FRAGMENT_ENCODE_SET, "fillItems", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.ITEMS, "Ljava/util/ArrayList;", "Lorg/telegram/ui/Components/UItem;", "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "onClick", PluginsConstants.Settings.ITEM, PluginsConstants.Settings.VIEW, "Landroid/view/View;", "position", _UrlKt.FRAGMENT_ENCODE_SET, "x", _UrlKt.FRAGMENT_ENCODE_SET, "y", "getHistoryValue", _UrlKt.FRAGMENT_ENCODE_SET, "createTemperatureSliderItem", "formatTemperature", "value", "getEndpointValue", "PreferenceItem", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
public final class AiPreferencesActivity extends BasePreferencesActivity {

    @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PreferenceItem.values().length];
            try {
                iArr[PreferenceItem.ENDPOINT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PreferenceItem.ROLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PreferenceItem.HISTORY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PreferenceItem.RESPONSE_STREAMING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[PreferenceItem.SHOW_RESPONSE_ONLY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[PreferenceItem.INSERT_AS_QUOTE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[PreferenceItem.REPLACE_TELEGRAM_EDITOR.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[PreferenceItem.REPLACE_TELEGRAM_SUMMARIES.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public boolean needHideTitle() {
        return true;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u0011"}, d2 = {"Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$PreferenceItem;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "ENDPOINT", "ROLE", "HISTORY", "TEMPERATURE", "RESPONSE_STREAMING", "SHOW_RESPONSE_ONLY", "INSERT_AS_QUOTE", "REPLACE_TELEGRAM_EDITOR", "REPLACE_TELEGRAM_SUMMARIES", "id", _UrlKt.FRAGMENT_ENCODE_SET, "getId", "()I", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class PreferenceItem {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ PreferenceItem[] $VALUES;
        private final int id = ordinal() + 1;
        public static final PreferenceItem ENDPOINT = new PreferenceItem("ENDPOINT", 0);
        public static final PreferenceItem ROLE = new PreferenceItem("ROLE", 1);
        public static final PreferenceItem HISTORY = new PreferenceItem("HISTORY", 2);
        public static final PreferenceItem TEMPERATURE = new PreferenceItem("TEMPERATURE", 3);
        public static final PreferenceItem RESPONSE_STREAMING = new PreferenceItem("RESPONSE_STREAMING", 4);
        public static final PreferenceItem SHOW_RESPONSE_ONLY = new PreferenceItem("SHOW_RESPONSE_ONLY", 5);
        public static final PreferenceItem INSERT_AS_QUOTE = new PreferenceItem("INSERT_AS_QUOTE", 6);
        public static final PreferenceItem REPLACE_TELEGRAM_EDITOR = new PreferenceItem("REPLACE_TELEGRAM_EDITOR", 7);
        public static final PreferenceItem REPLACE_TELEGRAM_SUMMARIES = new PreferenceItem("REPLACE_TELEGRAM_SUMMARIES", 8);

        private static final /* synthetic */ PreferenceItem[] $values() {
            return new PreferenceItem[]{ENDPOINT, ROLE, HISTORY, TEMPERATURE, RESPONSE_STREAMING, SHOW_RESPONSE_ONLY, INSERT_AS_QUOTE, REPLACE_TELEGRAM_EDITOR, REPLACE_TELEGRAM_SUMMARIES};
        }

        public static EnumEntries<PreferenceItem> getEntries() {
            return $ENTRIES;
        }

        public static PreferenceItem valueOf(String str) {
            return (PreferenceItem) Enum.valueOf(PreferenceItem.class, str);
        }

        public static PreferenceItem[] values() {
            return (PreferenceItem[]) $VALUES.clone();
        }

        private PreferenceItem(String str, int i) {
        }

        static {
            PreferenceItem[] preferenceItemArr$values = $values();
            $VALUES = preferenceItemArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(preferenceItemArr$values);
        }

        public final int getId() {
            return this.id;
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2665R.string.AIChat);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        CharSequence string;
        items.add(UItem.asTopView(getTitle(), LocaleController.getString(C2665R.string.AIChatInfo2), "exteraGramPlaceholders", "🤖"));
        items.add(UItem.asShadow());
        items.add(UItem.asHeader(LocaleController.getString(C2665R.string.General)));
        PreferenceItem preferenceItem = PreferenceItem.ENDPOINT;
        String string2 = LocaleController.getString(C2665R.string.Services);
        int i = C2665R.drawable.msg_language;
        String endpointValue = getEndpointValue();
        Boolean bool = Boolean.TRUE;
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) preferenceItem, (CharSequence) string2, i, (CharSequence) endpointValue, (CharSequence) null, (Boolean) null, false, "aiServices", false, false, bool, 880, (Object) null));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) PreferenceItem.ROLE, (CharSequence) LocaleController.getString(C2665R.string.Roles), C2665R.drawable.msg_openprofile, (CharSequence) AiConfig.getSelectedRole(), (CharSequence) null, (Boolean) null, false, "aiRoles", false, false, bool, 880, (Object) null));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) PreferenceItem.HISTORY, (CharSequence) LocaleController.getString(C2665R.string.MessageHistory), C2665R.drawable.msg_discuss, getHistoryValue(), (CharSequence) null, (Boolean) null, false, "aiHistory", false, false, bool, 880, (Object) null));
        items.add(UItem.asShadow(LocaleController.getString(C2665R.string.HistoryInfo)));
        items.add(UItem.asHeader(LocaleController.getString(C2665R.string.AIReplaceTelegram)));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) PreferenceItem.REPLACE_TELEGRAM_EDITOR, (CharSequence) LocaleController.getString(C2665R.string.AIFeaturesEditor), AiConfig.getReplaceTelegramEditor$default(0, 1, null), (CharSequence) LocaleController.getString(C2665R.string.AIReplaceTelegramEditorInfo), 0, false, "replaceTelegramEditor", false, 0, 432, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) PreferenceItem.REPLACE_TELEGRAM_SUMMARIES, (CharSequence) LocaleController.getString(C2665R.string.AIFeaturesSummaries), AiConfig.getReplaceTelegramSummaries$default(0, 1, null), (CharSequence) LocaleController.getString(C2665R.string.AIReplaceTelegramSummariesInfo), 0, false, "replaceTelegramSummaries", false, 0, 432, (Object) null).showDivider(false));
        items.add(UItem.asShadow(LocaleController.getString(C2665R.string.AIReplaceTelegramInfo)));
        items.add(UItem.asHeader(LocaleController.getString(C2665R.string.AIGeneration)));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) PreferenceItem.RESPONSE_STREAMING, (CharSequence) LocaleController.getString(C2665R.string.ResponseStreaming), AiConfig.getResponseStreaming(), (CharSequence) LocaleController.getString(C2665R.string.ResponseStreamingInfo), 0, false, "responseStreaming", false, 0, 432, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) PreferenceItem.SHOW_RESPONSE_ONLY, (CharSequence) LocaleController.getString(C2665R.string.ShowResponseOnly), AiConfig.getShowResponseOnly(), (CharSequence) null, 0, false, "showResponseOnly", false, 0, 440, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) PreferenceItem.INSERT_AS_QUOTE, (CharSequence) LocaleController.getString(C2665R.string.InsertResponseAsQuote), AiConfig.getInsertAsQuote(), (CharSequence) null, 0, false, "insertResponseAsQuote", false, 0, 440, (Object) null).showDivider(false));
        items.add(UItem.asShadow());
        if (SettingsRegistry.markAsNewFeature("aiTemperature")) {
            string = LocaleUtils.applyNewSpan(LocaleController.getString(C2665R.string.AITemperature));
        } else {
            string = LocaleController.getString(C2665R.string.AITemperature);
        }
        items.add(UItem.asHeader(string));
        UItem uItemCreateTemperatureSliderItem = createTemperatureSliderItem();
        uItemCreateTemperatureSliderItem.showDivider(false);
        uItemCreateTemperatureSliderItem.setSearchable(this);
        uItemCreateTemperatureSliderItem.setLinkAlias("aiTemperature", this);
        items.add(uItemCreateTemperatureSliderItem);
        items.add(UItem.asShadow(LocaleController.getString(C2665R.string.AITemperatureInfo)));
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem item, View view, int position, float x, float y) {
        int i = item.id;
        if (i <= 0 || i > PreferenceItem.getEntries().size()) {
            return;
        }
        switch (WhenMappings.$EnumSwitchMapping$0[PreferenceItem.getEntries().get(item.id - 1).ordinal()]) {
            case 1:
                presentFragment(new ServicesActivity());
                break;
            case 2:
                presentFragment(new RolesActivity());
                break;
            case 3:
                presentFragment(new AiHistoryActivity());
                break;
            case 4:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.ai.ui.activities.AiPreferencesActivity$$ExternalSyntheticLambda2
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        AiConfig.setResponseStreaming(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 5:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.ai.ui.activities.AiPreferencesActivity$$ExternalSyntheticLambda3
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        AiConfig.setShowResponseOnly(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 6:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.ai.ui.activities.AiPreferencesActivity$$ExternalSyntheticLambda4
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        AiConfig.setInsertAsQuote(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 7:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.ai.ui.activities.AiPreferencesActivity$$ExternalSyntheticLambda5
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        AiConfig.setReplaceTelegramEditor(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 8:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.ai.ui.activities.AiPreferencesActivity$$ExternalSyntheticLambda6
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        AiConfig.setReplaceTelegramSummaries(((Boolean) obj).booleanValue());
                    }
                });
                break;
        }
    }

    private final CharSequence getHistoryValue() {
        if (!AiConfig.getSaveHistory()) {
            return LocaleController.getString(C2665R.string.BlurOff);
        }
        int size = AiConfig.getConversationHistory().size();
        return size == 0 ? LocaleController.getString(C2665R.string.BlockedEmpty) : LocaleController.formatPluralString("messages", size, new Object[0]);
    }

    private final UItem createTemperatureSliderItem() {
        int temperature = AiConfig.getTemperature();
        Utilities.CallbackReturn callbackReturn = new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.ai.ui.activities.AiPreferencesActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return this.f$0.formatTemperature(((Integer) obj).intValue());
            }
        };
        final C12083 c12083 = new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.ai.ui.activities.AiPreferencesActivity.createTemperatureSliderItem.3
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Integer.valueOf(AiConfig.getTemperature());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                AiConfig.setTemperature(((Number) obj).intValue());
            }
        };
        UItem uItemAsIntSlideView = UItem.asIntSlideView(1, 0, temperature, 20, callbackReturn, new Utilities.Callback() { // from class: com.exteragram.messenger.ai.ui.activities.AiPreferencesActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                c12083.set((Integer) obj);
            }
        });
        uItemAsIntSlideView.id = PreferenceItem.TEMPERATURE.getId();
        uItemAsIntSlideView.text = LocaleController.getString(C2665R.string.AITemperature);
        return uItemAsIntSlideView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CharSequence formatTemperature(int value) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        return String.format(Locale.US, "%.1f", Arrays.copyOf(new Object[]{Float.valueOf(value / 10.0f)}, 1));
    }

    private final String getEndpointValue() {
        if (AiController.getInstance().getSelected().isOnDevice()) {
            return AiController.canUseAI() ? LocaleController.getString(C2665R.string.AIOnDevice) : LocaleController.getString(C2665R.string.BlockedEmpty);
        }
        try {
            String host = new URL(AiController.getInstance().getSelected().getUrl()).getHost();
            if (!TextUtils.isEmpty(host) && AiController.canUseAI()) {
                return StringsKt.contains$default((CharSequence) host, (CharSequence) "generativelanguage.googleapis", false, 2, (Object) null) ? "Gemini" : host;
            }
            return LocaleController.getString(C2665R.string.BlockedEmpty);
        } catch (MalformedURLException unused) {
            return LocaleController.getString(C2665R.string.BlockedEmpty);
        }
    }
}
