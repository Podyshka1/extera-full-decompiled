package com.exteragram.messenger.plugins.ui;

import android.content.SharedPreferences;
import android.text.Html;
import android.text.SpannableString;
import android.view.View;
import androidx.core.util.Consumer;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.plugins.PythonPluginsEngine;
import com.exteragram.messenger.plugins.ui.components.UnknownSourcesBottomSheet;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.exteragram.messenger.preferences.utils.SettingsRegistry;
import com.exteragram.messenger.security.SensitiveRequestSwitch;
import com.exteragram.messenger.utils.text.LocaleUtils;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.browser.Browser;
import org.telegram.ui.Cells.TextCheckCell;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\"B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\nH\u0016J5\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0016\u0010\u000f\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00110\u0010\"\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0002\u0010\u0012J(\u0010\u0013\u001a\u00020\n2\u0016\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00160\u0015j\b\u0012\u0004\u0012\u00020\u0016`\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0014J0\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 H\u0014¨\u0006#"}, d2 = {"Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;", "<init>", "()V", "getTitle", _UrlKt.FRAGMENT_ENCODE_SET, "onFragmentCreate", _UrlKt.FRAGMENT_ENCODE_SET, "onFragmentDestroy", _UrlKt.FRAGMENT_ENCODE_SET, "didReceivedNotification", "id", _UrlKt.FRAGMENT_ENCODE_SET, "account", "args", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "(II[Ljava/lang/Object;)V", "fillItems", PluginsConstants.Settings.ITEMS, "Ljava/util/ArrayList;", "Lorg/telegram/ui/Components/UItem;", "Lkotlin/collections/ArrayList;", "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "onClick", PluginsConstants.Settings.ITEM, PluginsConstants.Settings.VIEW, "Landroid/view/View;", "position", "x", _UrlKt.FRAGMENT_ENCODE_SET, "y", "PreferenceItem", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPluginsInfoActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginsInfoActivity.kt\ncom/exteragram/messenger/plugins/ui/PluginsInfoActivity\n+ 2 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n*L\n1#1,362:1\n41#2,12:363\n*S KotlinDebug\n*F\n+ 1 PluginsInfoActivity.kt\ncom/exteragram/messenger/plugins/ui/PluginsInfoActivity\n*L\n309#1:363,12\n*E\n"})
public final class PluginsInfoActivity extends BasePreferencesActivity implements NotificationCenter.NotificationCenterDelegate {

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PreferenceItem.values().length];
            try {
                iArr[PreferenceItem.DEVELOPER_MODE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PreferenceItem.COMPACT_VIEW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PreferenceItem.UNKNOWN_SOURCES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PreferenceItem.SAFE_MODE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[PreferenceItem.PLUGINS_DISABLE_ART_OPTS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[PreferenceItem.STATIC_ANALYSIS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[PreferenceItem.SENSITIVE_REQUESTS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[PreferenceItem.SDK_AUTO_UPDATE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[PreferenceItem.SDK_BETA_VERSIONS.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0011\n\u0002\u0010\b\n\u0000\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0012\u001a\u00020\u0013j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0014"}, d2 = {"Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "DEVELOPER_MODE", "COMPACT_VIEW", "SAFE_MODE", "SDK_AUTO_UPDATE", "SDK_BETA_VERSIONS", "CHECK_SDK_UPDATES", "RESTORE_SDK_FROM_APK", "DOCUMENTATION", "TRUSTED_PLUGINS", "PLUGINS_DISABLE_ART_OPTS", "SDK_HEADER", "UNKNOWN_SOURCES", "STATIC_ANALYSIS", "SENSITIVE_REQUESTS", "getId", _UrlKt.FRAGMENT_ENCODE_SET, "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class PreferenceItem {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ PreferenceItem[] $VALUES;
        public static final PreferenceItem DEVELOPER_MODE = new PreferenceItem("DEVELOPER_MODE", 0);
        public static final PreferenceItem COMPACT_VIEW = new PreferenceItem("COMPACT_VIEW", 1);
        public static final PreferenceItem SAFE_MODE = new PreferenceItem("SAFE_MODE", 2);
        public static final PreferenceItem SDK_AUTO_UPDATE = new PreferenceItem("SDK_AUTO_UPDATE", 3);
        public static final PreferenceItem SDK_BETA_VERSIONS = new PreferenceItem("SDK_BETA_VERSIONS", 4);
        public static final PreferenceItem CHECK_SDK_UPDATES = new PreferenceItem("CHECK_SDK_UPDATES", 5);
        public static final PreferenceItem RESTORE_SDK_FROM_APK = new PreferenceItem("RESTORE_SDK_FROM_APK", 6);
        public static final PreferenceItem DOCUMENTATION = new PreferenceItem("DOCUMENTATION", 7);
        public static final PreferenceItem TRUSTED_PLUGINS = new PreferenceItem("TRUSTED_PLUGINS", 8);
        public static final PreferenceItem PLUGINS_DISABLE_ART_OPTS = new PreferenceItem("PLUGINS_DISABLE_ART_OPTS", 9);
        public static final PreferenceItem SDK_HEADER = new PreferenceItem("SDK_HEADER", 10);
        public static final PreferenceItem UNKNOWN_SOURCES = new PreferenceItem("UNKNOWN_SOURCES", 11);
        public static final PreferenceItem STATIC_ANALYSIS = new PreferenceItem("STATIC_ANALYSIS", 12);
        public static final PreferenceItem SENSITIVE_REQUESTS = new PreferenceItem("SENSITIVE_REQUESTS", 13);

        private static final /* synthetic */ PreferenceItem[] $values() {
            return new PreferenceItem[]{DEVELOPER_MODE, COMPACT_VIEW, SAFE_MODE, SDK_AUTO_UPDATE, SDK_BETA_VERSIONS, CHECK_SDK_UPDATES, RESTORE_SDK_FROM_APK, DOCUMENTATION, TRUSTED_PLUGINS, PLUGINS_DISABLE_ART_OPTS, SDK_HEADER, UNKNOWN_SOURCES, STATIC_ANALYSIS, SENSITIVE_REQUESTS};
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
            return ordinal() + 1;
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2807R.string.PluginsEngine);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.pluginsPySdkInfoChanged);
        PythonPluginsEngine.Updater.INSTANCE.setNotifyWhenChangeStatus(true);
        return true;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.pluginsPySdkInfoChanged);
        PythonPluginsEngine.Updater.Companion companion = PythonPluginsEngine.Updater.INSTANCE;
        companion.setNotifyWhenChangeStatus(false);
        if (companion.getStatus() == 2) {
            companion.setStatus(0);
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int id, int account, Object... args) {
        if (id == NotificationCenter.pluginsPySdkInfoChanged) {
            getListView$TMessagesProj().adapter.update(true);
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        String string;
        items.add(UItem.asHeader(LocaleController.getString(C2807R.string.Settings)));
        items.add(UItem.asCheck(PreferenceItem.DEVELOPER_MODE.getId(), LocaleController.getString(C2807R.string.PluginsDevMode), C2807R.drawable.msg_settings).setChecked(ExteraConfig.getPluginsDevMode()).setEnabled(ExteraConfig.getPluginsEngine() && !ExteraConfig.getPluginsSafeMode()).setSearchable(this).setLinkAlias("pluginsDeveloperMode", this));
        items.add(UItem.asCheck(PreferenceItem.COMPACT_VIEW.getId(), LocaleController.getString(C2807R.string.PluginsCompactView), C2807R.drawable.msg_topics).setChecked(ExteraConfig.getPluginsCompactView()).setEnabled(ExteraConfig.getPluginsEngine()).setSearchable(this).setLinkAlias("pluginsCompactView", this));
        items.add(UItem.asCheck(PreferenceItem.PLUGINS_DISABLE_ART_OPTS.getId(), LocaleController.getString(C2807R.string.PluginsDisableArt), C2807R.drawable.msg_link2).setChecked(ExteraConfig.getPluginsDisableArtOpts()).setEnabled(ExteraConfig.getPluginsEngine()).setSearchable(this).setValue(LocaleController.getString(C2807R.string.PluginsDisableArtInfo)).setMultiline(true).setLinkAlias("pluginsDisableArtOpts", this));
        items.add(UItem.asCheck(PreferenceItem.UNKNOWN_SOURCES.getId(), LocaleController.getString(C2807R.string.PluginsUnknownSources), C2807R.drawable.msg_download).setChecked(ExteraConfig.getPluginsUnknownSources()).setEnabled(ExteraConfig.getPluginsEngine()).setSearchable(this).setValue(LocaleController.getString(C2807R.string.PluginsUnknownSourcesInfo2)).setMultiline(true).setLinkAlias("pluginsUnknownSources", this));
        items.add(UItem.asCheck(PreferenceItem.STATIC_ANALYSIS.getId(), LocaleController.getString(C2807R.string.PluginsStaticAnalysis), C2807R.drawable.msg_policy).setChecked(ExteraConfig.getPluginsStaticAnalysis()).setEnabled(ExteraConfig.getPluginsEngine()).setSearchable(this).setValue(LocaleController.getString(C2807R.string.PluginsStaticAnalysisInfo)).setMultiline(true).setLinkAlias("pluginsStaticAnalysis", this));
        int state = SensitiveRequestSwitch.getState();
        UItem searchable = UItem.asCheck(PreferenceItem.SENSITIVE_REQUESTS.getId(), LocaleController.getString(C2807R.string.SensitiveRequestsConfirm), C2807R.drawable.msg_permissions).setChecked(state != 2).setSearchable(this);
        if (state == 1) {
            string = LocaleController.formatString(C2807R.string.SensitiveRequestsConfirmPending, SensitiveRequestSwitch.formatDisableAt());
        } else if (state == 2) {
            string = LocaleController.getString(C2807R.string.SensitiveRequestsConfirmDisabled);
        } else {
            string = LocaleController.getString(C2807R.string.SensitiveRequestsConfirmInfo);
        }
        items.add(searchable.setValue(string).setMultiline(true).setLinkAlias("sensitiveRequestConfirmations", this));
        items.add(UItem.asCheck(PreferenceItem.SAFE_MODE.getId(), LocaleController.getString(C2807R.string.PluginsSafeMode), C2807R.drawable.msg_secret).setChecked(ExteraConfig.getPluginsSafeMode()).setSearchable(this).setLinkAlias("pluginsSafeMode", this));
        items.add(UItem.asShadow(LocaleController.getString(C2807R.string.PluginsSafeModeInfo2)));
        items.add(UItem.asHeader(PreferenceItem.SDK_HEADER.getId(), SettingsRegistry.markAsNewFeature("Plugins-Python-SDK") ? LocaleUtils.applyNewSpan("Python SDK") : "Python SDK"));
        UItem searchable2 = UItem.asCheck(PreferenceItem.SDK_AUTO_UPDATE.getId(), LocaleController.getString(C2807R.string.PluginsPySdkAutoUpdate)).setChecked(ExteraConfig.getPluginsPySdkAutoUpdate()).setSearchable(this);
        PythonPluginsEngine.Updater.Companion companion = PythonPluginsEngine.Updater.INSTANCE;
        items.add(searchable2.setEnabled(companion.getStatus() < 3).setValue(companion.getStateString()).setMultiline(true).setLinkAlias("pluginsPySdkAutoUpdate", this));
        items.add(UItem.asCheck(PreferenceItem.SDK_BETA_VERSIONS.getId(), LocaleController.getString(C2807R.string.PluginsPySdkEnableBetaVersion)).setChecked(ExteraConfig.getPluginsPySdkBetaVersions()).setSearchable(this).setEnabled(companion.getStatus() < 3).setLinkAlias("pluginsPySdkBetaVersions", this));
        items.add(UItem.asButton(PreferenceItem.CHECK_SDK_UPDATES.getId(), LocaleController.getString(C2807R.string.PluginsPySdkCheckUpdates)).accent().setSearchable(this).setEnabled(companion.getStatus() < 3).setIcon(C2807R.drawable.msg_retry).setLinkAlias("pluginsPySdkCheckUpdates", this));
        if (ExteraConfig.getPluginsDevMode() && !ExteraConfig.getPluginsEngine() && !companion.isSdkFromApk()) {
            items.add(UItem.asButton(PreferenceItem.RESTORE_SDK_FROM_APK.getId(), LocaleController.getString(C2807R.string.RestoreSdkFromApk)).red().setIcon(C2807R.drawable.msg_reset));
        }
        items.add(UItem.asShadow());
        items.add(UItem.asHeader(LocaleController.getString(C2807R.string.Links)));
        items.add(UItem.asButton(PreferenceItem.DOCUMENTATION.getId(), LocaleController.getString(C2807R.string.PluginsDocumentation)).setSearchable(this).setIcon(C2807R.drawable.menu_intro).setLinkAlias("pluginsDocumentation", this));
        items.add(UItem.asButton(PreferenceItem.TRUSTED_PLUGINS.getId(), LocaleController.getString(C2807R.string.PluginsTrusted)).accent().setIcon(C2807R.drawable.msg2_policy).setSearchable(this).setLinkAlias("trustedPlugins", this));
        items.add(UItem.asShadow(LocaleUtils.formatWithHtmlURLs(new SpannableString(Html.fromHtml(LocaleController.getString(C2807R.string.PluginsPoweredBy), 0)))));
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(final UItem item, View view, int position, float x, float y) {
        int i = item.id;
        if (i <= 0 || i > PreferenceItem.getEntries().size()) {
            return;
        }
        PreferenceItem preferenceItem = PreferenceItem.getEntries().get(item.id - 1);
        if ((view instanceof TextCheckCell) && (ExteraConfig.getPluginsEngine() || preferenceItem == PreferenceItem.SAFE_MODE || preferenceItem == PreferenceItem.SDK_AUTO_UPDATE || preferenceItem == PreferenceItem.SDK_BETA_VERSIONS || preferenceItem == PreferenceItem.SENSITIVE_REQUESTS)) {
            switch (WhenMappings.$EnumSwitchMapping$0[preferenceItem.ordinal()]) {
                case 1:
                    toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.plugins.ui.PluginsInfoActivity$$ExternalSyntheticLambda1
                        @Override // androidx.core.util.Consumer
                        public final void accept(Object obj) {
                            PluginsInfoActivity.$r8$lambda$MNahqCzadSU3IcAO5MTHf7QGiw4(this.f$0, ((Boolean) obj).booleanValue());
                        }
                    });
                    break;
                case 2:
                    toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.plugins.ui.PluginsInfoActivity$$ExternalSyntheticLambda2
                        @Override // androidx.core.util.Consumer
                        public final void accept(Object obj) {
                            PluginsInfoActivity.$r8$lambda$jyKoHtubfEZWYmGRcWJUtJHu3g0(((Boolean) obj).booleanValue());
                        }
                    });
                    break;
                case 3:
                    if (ExteraConfig.getPluginsUnknownSources()) {
                        toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.plugins.ui.PluginsInfoActivity$$ExternalSyntheticLambda3
                            @Override // androidx.core.util.Consumer
                            public final void accept(Object obj) {
                                ExteraConfig.setPluginsUnknownSources(((Boolean) obj).booleanValue());
                            }
                        });
                    } else {
                        new UnknownSourcesBottomSheet(this, new Function0() { // from class: com.exteragram.messenger.plugins.ui.PluginsInfoActivity$$ExternalSyntheticLambda4
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return PluginsInfoActivity.$r8$lambda$jZWitV_uc5kJ6EDjZA6AlqmjReQ(this.f$0, item);
                            }
                        }).show();
                    }
                    break;
                case 4:
                    final SharedPreferences preferences = PluginsController.INSTANCE.getInstance().getPreferences();
                    toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.plugins.ui.PluginsInfoActivity$$ExternalSyntheticLambda5
                        @Override // androidx.core.util.Consumer
                        public final void accept(Object obj) {
                            PluginsInfoActivity.m3132$r8$lambda$75FvA8Wx6_ammvoVdr0N3hTJI(preferences, ((Boolean) obj).booleanValue());
                        }
                    });
                    break;
                case 5:
                    toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.plugins.ui.PluginsInfoActivity$$ExternalSyntheticLambda6
                        @Override // androidx.core.util.Consumer
                        public final void accept(Object obj) {
                            PluginsInfoActivity.$r8$lambda$oRmSB9poUPcKGSoweQ5zECk8nLc(this.f$0, ((Boolean) obj).booleanValue());
                        }
                    });
                    break;
                case 6:
                    toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.plugins.ui.PluginsInfoActivity$$ExternalSyntheticLambda7
                        @Override // androidx.core.util.Consumer
                        public final void accept(Object obj) {
                            ExteraConfig.setPluginsStaticAnalysis(((Boolean) obj).booleanValue());
                        }
                    });
                    break;
                case 7:
                    if (SensitiveRequestSwitch.getState() == 0) {
                        SensitiveRequestSwitch.requestDisable(this, new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginsInfoActivity$$ExternalSyntheticLambda8
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.getListView$TMessagesProj().adapter.update(true);
                            }
                        });
                    } else {
                        SensitiveRequestSwitch.enforce();
                        getListView$TMessagesProj().adapter.update(true);
                    }
                    break;
                case 8:
                    toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.plugins.ui.PluginsInfoActivity$$ExternalSyntheticLambda9
                        @Override // androidx.core.util.Consumer
                        public final void accept(Object obj) {
                            ExteraConfig.setPluginsPySdkAutoUpdate(((Boolean) obj).booleanValue());
                        }
                    });
                    break;
                case 9:
                    toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.plugins.ui.PluginsInfoActivity$$ExternalSyntheticLambda10
                        @Override // androidx.core.util.Consumer
                        public final void accept(Object obj) {
                            PluginsInfoActivity.$r8$lambda$Ud_PKl22P92m6Lg1siGdNdXERb8(((Boolean) obj).booleanValue());
                        }
                    });
                    break;
            }
            return;
        }
        PreferenceItem preferenceItem2 = PreferenceItem.DOCUMENTATION;
        if (preferenceItem == preferenceItem2 || preferenceItem == PreferenceItem.TRUSTED_PLUGINS) {
            Browser.openUrl(getParentActivity(), preferenceItem == preferenceItem2 ? "https://plugins.exteragram.app/" : "https://t.me/addlist/pPhOtEq00KhjYTc6");
            return;
        }
        if (preferenceItem == PreferenceItem.CHECK_SDK_UPDATES) {
            PythonPluginsEngine.Updater.INSTANCE.checkUpdates(true);
        } else if (preferenceItem == PreferenceItem.RESTORE_SDK_FROM_APK) {
            PythonPluginsEngine.Updater.INSTANCE.restoreSdkFromApk();
            BulletinFactory.of(this).createSimpleBulletin(C2807R.raw.contact_check, LocaleController.getString(C2807R.string.RestartRequired)).show();
            getListView$TMessagesProj().adapter.update(true);
        }
    }

    public static void $r8$lambda$MNahqCzadSU3IcAO5MTHf7QGiw4(PluginsInfoActivity pluginsInfoActivity, boolean z) {
        ExteraConfig.setPluginsDevMode(z);
        PluginsController.INSTANCE.getInstance().checkDevServers();
        BulletinFactory.of(pluginsInfoActivity).createSimpleBulletin(ExteraConfig.getPluginsDevMode() ? C2807R.raw.contact_check : C2807R.raw.error, LocaleController.getString(ExteraConfig.getPluginsDevMode() ? C2807R.string.PluginsDevServerLaunched : C2807R.string.PluginsDevServerStopped)).show();
    }

    public static void $r8$lambda$jyKoHtubfEZWYmGRcWJUtJHu3g0(boolean z) {
        ExteraConfig.setPluginsCompactView(z);
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadInterface, new Object[0]);
    }

    public static Unit $r8$lambda$jZWitV_uc5kJ6EDjZA6AlqmjReQ(PluginsInfoActivity pluginsInfoActivity, UItem uItem) {
        pluginsInfoActivity.toggleBooleanSettingAndRefresh$TMessagesProj(uItem, new Consumer() { // from class: com.exteragram.messenger.plugins.ui.PluginsInfoActivity$$ExternalSyntheticLambda0
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                ExteraConfig.setPluginsUnknownSources(((Boolean) obj).booleanValue());
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: $r8$lambda$75FvA-8Wx6_ammvo-Vdr0N3hTJI, reason: not valid java name */
    public static void m3132$r8$lambda$75FvA8Wx6_ammvoVdr0N3hTJI(SharedPreferences sharedPreferences, boolean z) {
        ExteraConfig.setPluginsSafeMode(z);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        if (z) {
            editorEdit.putString("crashed_plugin_id", "manual!");
        } else {
            editorEdit.remove("crashed_plugin_id");
        }
        editorEdit.apply();
        PluginsController.INSTANCE.getInstance().restart(z);
    }

    public static void $r8$lambda$oRmSB9poUPcKGSoweQ5zECk8nLc(PluginsInfoActivity pluginsInfoActivity, boolean z) {
        ExteraConfig.setPluginsDisableArtOpts(z);
        PluginsController.INSTANCE.applyArtOpts();
        pluginsInfoActivity.showRestartBulletin();
    }

    public static void $r8$lambda$Ud_PKl22P92m6Lg1siGdNdXERb8(boolean z) {
        ExteraConfig.setPluginsPySdkBetaVersions(z);
        PythonPluginsEngine.Updater.INSTANCE.checkUpdates(true);
    }
}
