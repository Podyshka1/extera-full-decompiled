package com.exteragram.messenger.ai.ui.activities;

import android.text.TextUtils;
import android.view.View;
import com.exteragram.messenger.ai.AiConfig;
import com.exteragram.messenger.ai.AiController;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.exteragram.messenger.preferences.utils.SettingsRegistry;
import com.exteragram.messenger.utils.text.LocaleUtils;
import com.google.android.exoplayer2.util.Consumer;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Locale;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;

/* JADX INFO: loaded from: classes4.dex */
public class AiPreferencesActivity extends BasePreferencesActivity {
    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public boolean hasWhiteActionBar() {
        return true;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public boolean needHideTitle() {
        return true;
    }

    public enum PreferenceItem {
        ENDPOINT,
        ROLE,
        SAVE_HISTORY,
        CLEAR_HISTORY,
        TEMPERATURE,
        RESPONSE_STREAMING,
        SHOW_RESPONSE_ONLY,
        INSERT_AS_QUOTE;

        public int getId() {
            return ordinal() + 1;
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2573R.string.AIChat);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        arrayList.add(UItem.asTopView(getTitle(), LocaleController.getString(C2573R.string.AIChatInfo2), "exteraGramPlaceholders", "🤖"));
        arrayList.add(UItem.asShadow());
        arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.General)));
        arrayList.add(UItem.asButton(PreferenceItem.ENDPOINT.getId(), C2573R.drawable.msg_language, LocaleController.getString(C2573R.string.Services), getEndpointValue()).prioritizeTitleOverValue(true).setSearchable(this).setLinkAlias("aiServices", this));
        arrayList.add(UItem.asButton(PreferenceItem.ROLE.getId(), C2573R.drawable.msg_openprofile, LocaleController.getString(C2573R.string.Roles), AiConfig.getSelectedRole()).prioritizeTitleOverValue(true).setSearchable(this).setLinkAlias("aiRoles", this));
        arrayList.add(UItem.asCheck(PreferenceItem.SAVE_HISTORY.getId(), LocaleController.getString(C2573R.string.MessageHistory), C2573R.drawable.msg_discuss).setChecked(AiConfig.getSaveHistory()).setSearchable(this).setLinkAlias("saveAiHistory", this));
        if (!AiConfig.getConversationHistory().isEmpty()) {
            arrayList.add(UItem.asButton(PreferenceItem.CLEAR_HISTORY.getId(), C2573R.drawable.msg_delete, LocaleController.getString(C2573R.string.ClearHistory)).red().setSearchable(this).setLinkAlias("clearAiHistory", this));
        }
        arrayList.add(UItem.asShadow(LocaleController.getString(C2573R.string.HistoryInfo)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.AIGeneration)));
        arrayList.add(UItem.asCheck(PreferenceItem.RESPONSE_STREAMING.getId(), LocaleController.getString(C2573R.string.ResponseStreaming), LocaleController.getString(C2573R.string.ResponseStreamingInfo), true).setChecked(AiConfig.getResponseStreaming()).setSearchable(this).setLinkAlias("responseStreaming", this));
        arrayList.add(UItem.asCheck(PreferenceItem.SHOW_RESPONSE_ONLY.getId(), LocaleController.getString(C2573R.string.ShowResponseOnly)).setChecked(AiConfig.getShowResponseOnly()).setSearchable(this).setLinkAlias("showResponseOnly", this));
        arrayList.add(UItem.asCheck(PreferenceItem.INSERT_AS_QUOTE.getId(), LocaleController.getString(C2573R.string.InsertResponseAsQuote)).setChecked(AiConfig.getInsertAsQuote()).showDivider(false).setSearchable(this).setLinkAlias("insertResponseAsQuote", this));
        arrayList.add(UItem.asShadow());
        arrayList.add(UItem.asHeader(SettingsRegistry.markAsNewFeature("aiTemperature") ? LocaleUtils.applyNewSpan(LocaleController.getString(C2573R.string.AITemperature)) : LocaleController.getString(C2573R.string.AITemperature)));
        arrayList.add(createTemperatureSliderItem().showDivider(false).setSearchable(this).setLinkAlias("aiTemperature", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2573R.string.AITemperatureInfo)));
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem uItem, View view, int i, float f, float f2) {
        int i2 = uItem.id;
        if (i2 <= 0 || i2 > PreferenceItem.values().length) {
            return;
        }
        switch (C09861.f173x6e22124e[PreferenceItem.values()[uItem.id - 1].ordinal()]) {
            case 1:
                presentFragment(new ServicesActivity());
                break;
            case 2:
                presentFragment(new RolesActivity());
                break;
            case 3:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.ai.ui.activities.AiPreferencesActivity$$ExternalSyntheticLambda2
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        AiConfig.setSaveHistory(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 4:
                AiController.clearHistory(this, getResourceProvider(), true, new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.AiPreferencesActivity$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onClick$0();
                    }
                });
                break;
            case 5:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.ai.ui.activities.AiPreferencesActivity$$ExternalSyntheticLambda4
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        AiConfig.setResponseStreaming(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 6:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.ai.ui.activities.AiPreferencesActivity$$ExternalSyntheticLambda5
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        AiConfig.setShowResponseOnly(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 7:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.ai.ui.activities.AiPreferencesActivity$$ExternalSyntheticLambda6
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        AiConfig.setInsertAsQuote(((Boolean) obj).booleanValue());
                    }
                });
                break;
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.ai.ui.activities.AiPreferencesActivity$1 */
    public static /* synthetic */ class C09861 {

        /* JADX INFO: renamed from: $SwitchMap$com$exteragram$messenger$ai$ui$activities$AiPreferencesActivity$PreferenceItem */
        static final /* synthetic */ int[] f173x6e22124e;

        static {
            int[] iArr = new int[PreferenceItem.values().length];
            f173x6e22124e = iArr;
            try {
                iArr[PreferenceItem.ENDPOINT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f173x6e22124e[PreferenceItem.ROLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f173x6e22124e[PreferenceItem.SAVE_HISTORY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f173x6e22124e[PreferenceItem.CLEAR_HISTORY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f173x6e22124e[PreferenceItem.RESPONSE_STREAMING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f173x6e22124e[PreferenceItem.SHOW_RESPONSE_ONLY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f173x6e22124e[PreferenceItem.INSERT_AS_QUOTE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$0() {
        UniversalAdapter universalAdapter;
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView == null || (universalAdapter = universalRecyclerView.adapter) == null) {
            return;
        }
        universalAdapter.update(true);
    }

    private UItem createTemperatureSliderItem() {
        UItem uItemAsIntSlideView = UItem.asIntSlideView(1, 0, AiConfig.getTemperature(), 20, new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.ai.ui.activities.AiPreferencesActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return this.f$0.formatTemperature(((Integer) obj).intValue());
            }
        }, new Utilities.Callback() { // from class: com.exteragram.messenger.ai.ui.activities.AiPreferencesActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                AiConfig.setTemperature(((Integer) obj).intValue());
            }
        });
        uItemAsIntSlideView.id = PreferenceItem.TEMPERATURE.getId();
        uItemAsIntSlideView.text = LocaleController.getString(C2573R.string.AITemperature);
        return uItemAsIntSlideView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CharSequence formatTemperature(int i) {
        return String.format(Locale.US, "%.1f", Float.valueOf(i / 10.0f));
    }

    private String getEndpointValue() {
        try {
            String host = new URL(AiController.getInstance().getSelected().getUrl()).getHost();
            if (!TextUtils.isEmpty(host) && AiController.canUseAI()) {
                return host.contains("generativelanguage.googleapis") ? "Gemini" : host;
            }
            return LocaleController.getString(C2573R.string.BlockedEmpty);
        } catch (MalformedURLException unused) {
            return LocaleController.getString(C2573R.string.BlockedEmpty);
        }
    }
}
