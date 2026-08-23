package com.exteragram.messenger.p008ai.p009ui.activities;

import android.text.TextUtils;
import android.view.View;
import com.exteragram.messenger.p008ai.AiConfig;
import com.exteragram.messenger.p008ai.AiController;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.google.android.exoplayer2.util.Consumer;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;

/* JADX INFO: loaded from: classes.dex */
public class AiPreferencesActivity extends BasePreferencesActivity {
    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected boolean hasWhiteActionBar() {
        return true;
    }

    public enum PreferenceItem {
        ENDPOINT,
        ROLE,
        SAVE_HISTORY,
        RESPONSE_STREAMING,
        SHOW_RESPONSE_ONLY,
        INSERT_AS_QUOTE;

        public int getId() {
            return ordinal() + 1;
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2888R.string.AIChat);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        arrayList.add(UItem.asTopView(null, "exteraGramPlaceholders", "🤖"));
        arrayList.add(UItem.asShadow());
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.General)));
        arrayList.add(UItem.asButton(PreferenceItem.ENDPOINT.getId(), C2888R.drawable.msg_language, LocaleController.getString(C2888R.string.Services), getEndpointValue()).prioritizeTitleOverValue(true).setSearchable(this).setLinkAlias("aiServices", this));
        arrayList.add(UItem.asButton(PreferenceItem.ROLE.getId(), C2888R.drawable.msg_openprofile, LocaleController.getString(C2888R.string.Roles), AiConfig.getSelectedRole()).prioritizeTitleOverValue(true).setSearchable(this).setLinkAlias("aiRoles", this));
        arrayList.add(UItem.asCheck(PreferenceItem.SAVE_HISTORY.getId(), LocaleController.getString(C2888R.string.MessageHistory), C2888R.drawable.msg_discuss).setChecked(AiConfig.saveHistory).showDivider(false).setSearchable(this).setLinkAlias("saveAiHistory", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.HistoryInfo)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.LocalOther)));
        arrayList.add(UItem.asCheck(PreferenceItem.RESPONSE_STREAMING.getId(), LocaleController.getString(C2888R.string.ResponseStreaming), LocaleController.getString(C2888R.string.ResponseStreamingInfo), true).setChecked(AiConfig.responseStreaming).setSearchable(this).setLinkAlias("responseStreaming", this));
        arrayList.add(UItem.asCheck(PreferenceItem.SHOW_RESPONSE_ONLY.getId(), LocaleController.getString(C2888R.string.ShowResponseOnly)).setChecked(AiConfig.showResponseOnly).setSearchable(this).setLinkAlias("showResponseOnly", this));
        arrayList.add(UItem.asCheck(PreferenceItem.INSERT_AS_QUOTE.getId(), LocaleController.getString(C2888R.string.InsertResponseAsQuote)).setChecked(AiConfig.insertAsQuote).showDivider(false).setSearchable(this).setLinkAlias("insertResponseAsQuote", this));
        arrayList.add(UItem.asShadow());
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void onClick(UItem uItem, View view, int i, float f, float f2) {
        int i2 = uItem.f2105id;
        if (i2 <= 0 || i2 > PreferenceItem.values().length) {
            return;
        }
        int iOrdinal = PreferenceItem.values()[uItem.f2105id - 1].ordinal();
        if (iOrdinal == 0) {
            presentFragment(new ServicesActivity());
            return;
        }
        if (iOrdinal == 1) {
            presentFragment(new RolesActivity());
            return;
        }
        if (iOrdinal == 2) {
            toggleBooleanSettingAndRefresh(AiConfig.preferences, "saveHistory", uItem, new Consumer() { // from class: com.exteragram.messenger.ai.ui.activities.AiPreferencesActivity$$ExternalSyntheticLambda0
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    AiConfig.saveHistory = ((Boolean) obj).booleanValue();
                }
            });
            return;
        }
        if (iOrdinal == 3) {
            toggleBooleanSettingAndRefresh(AiConfig.preferences, "responseStreaming", uItem, new Consumer() { // from class: com.exteragram.messenger.ai.ui.activities.AiPreferencesActivity$$ExternalSyntheticLambda1
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    AiConfig.responseStreaming = ((Boolean) obj).booleanValue();
                }
            });
        } else if (iOrdinal == 4) {
            toggleBooleanSettingAndRefresh(AiConfig.preferences, "showResponseOnly", uItem, new Consumer() { // from class: com.exteragram.messenger.ai.ui.activities.AiPreferencesActivity$$ExternalSyntheticLambda2
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    AiConfig.showResponseOnly = ((Boolean) obj).booleanValue();
                }
            });
        } else {
            if (iOrdinal != 5) {
                return;
            }
            toggleBooleanSettingAndRefresh(AiConfig.preferences, "insertAsQuote", uItem, new Consumer() { // from class: com.exteragram.messenger.ai.ui.activities.AiPreferencesActivity$$ExternalSyntheticLambda3
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    AiConfig.insertAsQuote = ((Boolean) obj).booleanValue();
                }
            });
        }
    }

    private String getEndpointValue() {
        try {
            String host = new URL(AiController.getInstance().getSelected().getUrl()).getHost();
            if (!TextUtils.isEmpty(host) && AiController.canUseAI()) {
                return host.contains("generativelanguage.googleapis") ? "Gemini" : host;
            }
            return LocaleController.getString(C2888R.string.BlockedEmpty);
        } catch (MalformedURLException unused) {
            return LocaleController.getString(C2888R.string.BlockedEmpty);
        }
    }
}
