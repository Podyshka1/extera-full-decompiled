package com.exteragram.messenger.plugins.p015ui;

import android.content.SharedPreferences;
import android.os.Build;
import android.text.Html;
import android.text.SpannableString;
import android.view.View;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.plugins.PythonPluginsEngine;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.exteragram.messenger.preferences.utils.SettingsRegistry;
import com.exteragram.messenger.utils.text.LocaleUtils;
import com.google.android.exoplayer2.util.Consumer;
import java.util.ArrayList;
import org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.browser.Browser;
import org.telegram.p029ui.Cells.TextCheckCell;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;

/* JADX INFO: loaded from: classes.dex */
public class PluginsInfoActivity extends BasePreferencesActivity implements NotificationCenter.NotificationCenterDelegate {

    public enum PreferenceItem {
        DEVELOPER_MODE,
        COMPACT_VIEW,
        SAFE_MODE,
        SDK_AUTO_UPDATE,
        SDK_BETA_VERSIONS,
        CHECK_SDK_UPDATES,
        RESTORE_SDK_FROM_APK,
        DOCUMENTATION,
        TRUSTED_PLUGINS,
        PLUGINS_DISABLE_ART_OPTS,
        SDK_HEADER;

        public int getId() {
            return ordinal() + 1;
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2888R.string.PluginsEngine);
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.pluginsPySdkInfoChanged);
        PythonPluginsEngine.Updater.notifyWhenChangeStatus = true;
        return true;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.pluginsPySdkInfoChanged);
        PythonPluginsEngine.Updater.notifyWhenChangeStatus = false;
        if (PythonPluginsEngine.Updater.status == 2) {
            PythonPluginsEngine.Updater.status = 0;
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.pluginsPySdkInfoChanged) {
            this.listView.adapter.update(true);
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        SpannableString spannableString;
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.Settings)));
        arrayList.add(UItem.asCheck(PreferenceItem.DEVELOPER_MODE.getId(), LocaleController.getString(C2888R.string.PluginsDevMode), C2888R.drawable.msg_settings).setChecked(ExteraConfig.pluginsDevMode).setEnabled(ExteraConfig.pluginsEngine).setSearchable(this).setLinkAlias(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986141528610403547L), this));
        arrayList.add(UItem.asCheck(PreferenceItem.COMPACT_VIEW.getId(), LocaleController.getString(C2888R.string.PluginsCompactView), C2888R.drawable.msg_topics).setChecked(ExteraConfig.pluginsCompactView).setEnabled(ExteraConfig.pluginsEngine).setSearchable(this).setLinkAlias(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986141618804716763L), this));
        arrayList.add(UItem.asCheck(PreferenceItem.PLUGINS_DISABLE_ART_OPTS.getId(), LocaleController.getString(C2888R.string.PluginsDisableArt), C2888R.drawable.msg_link2).setChecked(ExteraConfig.pluginsDisableArtOpts).setEnabled(ExteraConfig.pluginsEngine).setSearchable(this).setValue(LocaleController.getString(C2888R.string.PluginsDisableArtInfo)).setMultiline(true).setLinkAlias(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986141700409095387L), this));
        arrayList.add(UItem.asCheck(PreferenceItem.SAFE_MODE.getId(), LocaleController.getString(C2888R.string.PluginsSafeMode), C2888R.drawable.msg_secret).setChecked(ExteraConfig.pluginsSafeMode).setSearchable(this).setLinkAlias(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986141794898375899L), this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.PluginsSafeModeInfo2)));
        arrayList.add(UItem.asAnimatedHeader(PreferenceItem.SDK_HEADER.getId(), SettingsRegistry.markAsNewFeature(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986141863617852635L)) ? LocaleUtils.applyNewSpan(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986141945222231259L)) : Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986141992466871515L)));
        arrayList.add(UItem.asCheck(PreferenceItem.SDK_AUTO_UPDATE.getId(), LocaleController.getString(C2888R.string.PluginsPySdkAutoUpdate)).setChecked(ExteraConfig.pluginsPySdkAutoUpdate).setSearchable(this).setEnabled(PythonPluginsEngine.Updater.status < 3).setValue(PythonPluginsEngine.Updater.getStateString()).setMultiline(true).setLinkAlias(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986142039711511771L), this));
        arrayList.add(UItem.asCheck(PreferenceItem.SDK_BETA_VERSIONS.getId(), LocaleController.getString(C2888R.string.PluginsPySdkEnableBetaVersion)).setChecked(ExteraConfig.pluginsPySdkBetaVersions).setSearchable(this).setEnabled(PythonPluginsEngine.Updater.status < 3).setLinkAlias(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986142138495759579L), this));
        arrayList.add(UItem.asButton(PreferenceItem.CHECK_SDK_UPDATES.getId(), LocaleController.getString(C2888R.string.PluginsPySdkCheckUpdates)).accent().setSearchable(this).setEnabled(PythonPluginsEngine.Updater.status < 3).setIcon(C2888R.drawable.msg_retry).setLinkAlias(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986142245869941979L), this));
        if (ExteraConfig.pluginsDevMode && !ExteraConfig.pluginsEngine && !PythonPluginsEngine.Updater.isSdkFromApk()) {
            arrayList.add(UItem.asButton(PreferenceItem.RESTORE_SDK_FROM_APK.getId(), LocaleController.getString(C2888R.string.RestoreSdkFromApk)).red().setIcon(C2888R.drawable.msg_reset));
        }
        arrayList.add(UItem.asShadow());
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.Links)));
        arrayList.add(UItem.asButton(PreferenceItem.DOCUMENTATION.getId(), LocaleController.getString(C2888R.string.PluginsDocumentation)).setSearchable(this).setIcon(C2888R.drawable.menu_intro).setLinkAlias(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986142353244124379L), this));
        arrayList.add(UItem.asButton(PreferenceItem.TRUSTED_PLUGINS.getId(), LocaleController.getString(C2888R.string.PluginsTrusted)).accent().setIcon(C2888R.drawable.msg2_policy).setSearchable(this).setLinkAlias(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986142443438437595L), this));
        String string = LocaleController.getString(C2888R.string.PluginsPoweredBy);
        if (Build.VERSION.SDK_INT >= 24) {
            spannableString = new SpannableString(Html.fromHtml(string, 0));
        } else {
            spannableString = new SpannableString(Html.fromHtml(string));
        }
        arrayList.add(UItem.asShadow(LocaleUtils.formatWithHtmlURLs(spannableString)));
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void onClick(UItem uItem, View view, int i, float f, float f2) {
        int i2 = uItem.f2105id;
        if (i2 <= 0 || i2 > PreferenceItem.values().length) {
            return;
        }
        PreferenceItem preferenceItem = PreferenceItem.values()[uItem.f2105id - 1];
        if ((view instanceof TextCheckCell) && (ExteraConfig.pluginsEngine || preferenceItem == PreferenceItem.SAFE_MODE || preferenceItem == PreferenceItem.SDK_AUTO_UPDATE || preferenceItem == PreferenceItem.SDK_BETA_VERSIONS)) {
            int iOrdinal = preferenceItem.ordinal();
            if (iOrdinal == 0) {
                toggleBooleanSettingAndRefresh(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986142507862947035L), uItem, new Consumer() { // from class: com.exteragram.messenger.plugins.ui.PluginsInfoActivity$$ExternalSyntheticLambda0
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        this.f$0.lambda$onClick$0((Boolean) obj);
                    }
                });
                return;
            }
            if (iOrdinal == 1) {
                toggleBooleanSettingAndRefresh(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986142572287456475L), uItem, new Consumer() { // from class: com.exteragram.messenger.plugins.ui.PluginsInfoActivity$$ExternalSyntheticLambda1
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        PluginsInfoActivity.m2651$r8$lambda$pWKtYTyPbBtRw4e0nvUkinwVnM((Boolean) obj);
                    }
                });
                return;
            }
            if (iOrdinal == 2) {
                final SharedPreferences sharedPreferences = PluginsController.getInstance().preferences;
                toggleBooleanSettingAndRefresh(sharedPreferences, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986142653891835099L), uItem, new Consumer() { // from class: com.exteragram.messenger.plugins.ui.PluginsInfoActivity$$ExternalSyntheticLambda2
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        PluginsInfoActivity.$r8$lambda$W4VL9MhcoPOWziaGyIvwfRWHxNQ(sharedPreferences, (Boolean) obj);
                    }
                });
                return;
            } else if (iOrdinal == 3) {
                toggleBooleanSettingAndRefresh(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986142791330788571L), uItem, new Consumer() { // from class: com.exteragram.messenger.plugins.ui.PluginsInfoActivity$$ExternalSyntheticLambda4
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.pluginsPySdkAutoUpdate = ((Boolean) obj).booleanValue();
                    }
                });
                return;
            } else if (iOrdinal == 4) {
                toggleBooleanSettingAndRefresh(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986142890115036379L), uItem, new Consumer() { // from class: com.exteragram.messenger.plugins.ui.PluginsInfoActivity$$ExternalSyntheticLambda5
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        PluginsInfoActivity.$r8$lambda$s1k45N0SihJ1Lfr6dtegNEuyfDE((Boolean) obj);
                    }
                });
                return;
            } else {
                if (iOrdinal != 9) {
                    return;
                }
                toggleBooleanSettingAndRefresh(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986142696841508059L), uItem, new Consumer() { // from class: com.exteragram.messenger.plugins.ui.PluginsInfoActivity$$ExternalSyntheticLambda3
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        this.f$0.lambda$onClick$3((Boolean) obj);
                    }
                });
                return;
            }
        }
        PreferenceItem preferenceItem2 = PreferenceItem.DOCUMENTATION;
        if (preferenceItem == preferenceItem2 || preferenceItem == PreferenceItem.TRUSTED_PLUGINS) {
            Browser.openUrl(getParentActivity(), Deobfuscator$exteraGramDev$TMessagesProj.getString(preferenceItem == preferenceItem2 ? -5986142997489218779L : -5986143130633204955L));
            return;
        }
        if (preferenceItem == PreferenceItem.CHECK_SDK_UPDATES) {
            PythonPluginsEngine.Updater.checkUpdates(true);
        } else if (preferenceItem == PreferenceItem.RESTORE_SDK_FROM_APK) {
            PythonPluginsEngine.Updater.restoreSdkFromApk();
            BulletinFactory.m1246of(this).createSimpleBulletin(C2888R.raw.contact_check, LocaleController.getString(C2888R.string.RestartRequired)).show();
            this.listView.adapter.update(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$0(Boolean bool) {
        ExteraConfig.pluginsDevMode = bool.booleanValue();
        PluginsController.getInstance().checkDevServers();
        BulletinFactory bulletinFactoryM1246of = BulletinFactory.m1246of(this);
        boolean z = ExteraConfig.pluginsDevMode;
        bulletinFactoryM1246of.createSimpleBulletin(z ? C2888R.raw.contact_check : C2888R.raw.error, LocaleController.getString(z ? C2888R.string.PluginsDevServerLaunched : C2888R.string.PluginsDevServerStopped)).show();
    }

    /* JADX INFO: renamed from: $r8$lambda$pWKtYTy-PbBtRw4e0nvUkinwVnM, reason: not valid java name */
    public static /* synthetic */ void m2651$r8$lambda$pWKtYTyPbBtRw4e0nvUkinwVnM(Boolean bool) {
        ExteraConfig.pluginsCompactView = bool.booleanValue();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadInterface, new Object[0]);
    }

    public static /* synthetic */ void $r8$lambda$W4VL9MhcoPOWziaGyIvwfRWHxNQ(SharedPreferences sharedPreferences, Boolean bool) {
        ExteraConfig.pluginsSafeMode = bool.booleanValue();
        if (bool.booleanValue()) {
            sharedPreferences.edit().putString(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986143293841962203L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986143371151373531L)).apply();
        } else {
            sharedPreferences.edit().remove(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986143405511111899L)).apply();
        }
        PluginsController.getInstance().restart();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$3(Boolean bool) {
        ExteraConfig.pluginsDisableArtOpts = bool.booleanValue();
        PluginsController.applyArtOpts();
        showRestartBulletin();
    }

    public static /* synthetic */ void $r8$lambda$s1k45N0SihJ1Lfr6dtegNEuyfDE(Boolean bool) {
        ExteraConfig.pluginsPySdkBetaVersions = bool.booleanValue();
        PythonPluginsEngine.Updater.checkUpdates();
    }
}
