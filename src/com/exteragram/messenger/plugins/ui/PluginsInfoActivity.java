package com.exteragram.messenger.plugins.ui;

import android.content.SharedPreferences;
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
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.browser.Browser;
import org.telegram.ui.Cells.TextCheckCell;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\"B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\nH\u0016J5\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0016\u0010\u000f\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00110\u0010\"\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0002\u0010\u0012J(\u0010\u0013\u001a\u00020\n2\u0016\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00160\u0015j\b\u0012\u0004\u0012\u00020\u0016`\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0014J0\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 H\u0014¨\u0006#"}, d2 = {"Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;", "<init>", "()V", "getTitle", _UrlKt.FRAGMENT_ENCODE_SET, "onFragmentCreate", _UrlKt.FRAGMENT_ENCODE_SET, "onFragmentDestroy", _UrlKt.FRAGMENT_ENCODE_SET, "didReceivedNotification", "id", _UrlKt.FRAGMENT_ENCODE_SET, "account", "args", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "(II[Ljava/lang/Object;)V", "fillItems", "items", "Ljava/util/ArrayList;", "Lorg/telegram/ui/Components/UItem;", "Lkotlin/collections/ArrayList;", "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "onClick", "item", "view", "Landroid/view/View;", "position", "x", _UrlKt.FRAGMENT_ENCODE_SET, "y", "PreferenceItem", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPluginsInfoActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginsInfoActivity.kt\ncom/exteragram/messenger/plugins/ui/PluginsInfoActivity\n+ 2 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n*L\n1#1,294:1\n41#2,12:295\n*S KotlinDebug\n*F\n+ 1 PluginsInfoActivity.kt\ncom/exteragram/messenger/plugins/ui/PluginsInfoActivity\n*L\n253#1:295,12\n*E\n"})
public final class PluginsInfoActivity extends BasePreferencesActivity implements NotificationCenter.NotificationCenterDelegate {

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(m754k = 3, mv = {2, 2, 0}, xi = 48)
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
                iArr[PreferenceItem.SAFE_MODE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PreferenceItem.PLUGINS_DISABLE_ART_OPTS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[PreferenceItem.SDK_AUTO_UPDATE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[PreferenceItem.SDK_BETA_VERSIONS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u000e\n\u0002\u0010\b\n\u0000\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u000f\u001a\u00020\u0010j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u0011"}, d2 = {"Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "DEVELOPER_MODE", "COMPACT_VIEW", "SAFE_MODE", "SDK_AUTO_UPDATE", "SDK_BETA_VERSIONS", "CHECK_SDK_UPDATES", "RESTORE_SDK_FROM_APK", "DOCUMENTATION", "TRUSTED_PLUGINS", "PLUGINS_DISABLE_ART_OPTS", "SDK_HEADER", "getId", _UrlKt.FRAGMENT_ENCODE_SET, "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class PreferenceItem {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ PreferenceItem[] $VALUES;
        public static final PreferenceItem DEVELOPER_MODE = new PreferenceItem(Deobfuscator$exteraGramDev$TMessagesProj.getString(-131509620327983L), 0);
        public static final PreferenceItem COMPACT_VIEW = new PreferenceItem(Deobfuscator$exteraGramDev$TMessagesProj.getString(-131565454902831L), 1);
        public static final PreferenceItem SAFE_MODE = new PreferenceItem(Deobfuscator$exteraGramDev$TMessagesProj.getString(-131561159935535L), 2);
        public static final PreferenceItem SDK_AUTO_UPDATE = new PreferenceItem(Deobfuscator$exteraGramDev$TMessagesProj.getString(-131604109608495L), 3);
        public static final PreferenceItem SDK_BETA_VERSIONS = new PreferenceItem(Deobfuscator$exteraGramDev$TMessagesProj.getString(-130023561643567L), 4);
        public static final PreferenceItem CHECK_SDK_UPDATES = new PreferenceItem(Deobfuscator$exteraGramDev$TMessagesProj.getString(-130100871054895L), 5);
        public static final PreferenceItem RESTORE_SDK_FROM_APK = new PreferenceItem(Deobfuscator$exteraGramDev$TMessagesProj.getString(-130178180466223L), 6);
        public static final PreferenceItem DOCUMENTATION = new PreferenceItem(Deobfuscator$exteraGramDev$TMessagesProj.getString(-129778748507695L), 7);
        public static final PreferenceItem TRUSTED_PLUGINS = new PreferenceItem(Deobfuscator$exteraGramDev$TMessagesProj.getString(-129770158573103L), 8);
        public static final PreferenceItem PLUGINS_DISABLE_ART_OPTS = new PreferenceItem(Deobfuscator$exteraGramDev$TMessagesProj.getString(-129838878049839L), 9);
        public static final PreferenceItem SDK_HEADER = new PreferenceItem(Deobfuscator$exteraGramDev$TMessagesProj.getString(-129954842166831L), 10);

        private static final /* synthetic */ PreferenceItem[] $values() {
            return new PreferenceItem[]{DEVELOPER_MODE, COMPACT_VIEW, SAFE_MODE, SDK_AUTO_UPDATE, SDK_BETA_VERSIONS, CHECK_SDK_UPDATES, RESTORE_SDK_FROM_APK, DOCUMENTATION, TRUSTED_PLUGINS, PLUGINS_DISABLE_ART_OPTS, SDK_HEADER};
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
        String string = LocaleController.getString(C2573R.string.PluginsEngine);
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-137724438005295L);
        return string;
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
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-137797452449327L);
        if (id == NotificationCenter.pluginsPySdkInfoChanged) {
            this.listView.adapter.update(true);
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        CharSequence string;
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-137810337351215L);
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-137904826631727L);
        items.add(UItem.asHeader(LocaleController.getString(C2573R.string.Settings)));
        items.add(UItem.asCheck(PreferenceItem.DEVELOPER_MODE.getId(), LocaleController.getString(C2573R.string.PluginsDevMode), C2573R.drawable.msg_settings).setChecked(ExteraConfig.getPluginsDevMode()).setEnabled(ExteraConfig.getPluginsEngine() && !ExteraConfig.getPluginsSafeMode()).setSearchable(this).setLinkAlias(Deobfuscator$exteraGramDev$TMessagesProj.getString(-137870466893359L), this));
        items.add(UItem.asCheck(PreferenceItem.COMPACT_VIEW.getId(), LocaleController.getString(C2573R.string.PluginsCompactView), C2573R.drawable.msg_topics).setChecked(ExteraConfig.getPluginsCompactView()).setEnabled(ExteraConfig.getPluginsEngine()).setSearchable(this).setLinkAlias(Deobfuscator$exteraGramDev$TMessagesProj.getString(-137488214804015L), this));
        items.add(UItem.asCheck(PreferenceItem.PLUGINS_DISABLE_ART_OPTS.getId(), LocaleController.getString(C2573R.string.PluginsDisableArt), C2573R.drawable.msg_link2).setChecked(ExteraConfig.getPluginsDisableArtOpts()).setEnabled(ExteraConfig.getPluginsEngine()).setSearchable(this).setValue(LocaleController.getString(C2573R.string.PluginsDisableArtInfo)).setMultiline(true).setLinkAlias(Deobfuscator$exteraGramDev$TMessagesProj.getString(-137561229248047L), this));
        items.add(UItem.asCheck(PreferenceItem.SAFE_MODE.getId(), LocaleController.getString(C2573R.string.PluginsSafeMode), C2573R.drawable.msg_secret).setChecked(ExteraConfig.getPluginsSafeMode()).setSearchable(this).setLinkAlias(Deobfuscator$exteraGramDev$TMessagesProj.getString(-137586999051823L), this));
        items.add(UItem.asShadow(LocaleController.getString(C2573R.string.PluginsSafeModeInfo2)));
        int id = PreferenceItem.SDK_HEADER.getId();
        if (SettingsRegistry.markAsNewFeature(Deobfuscator$exteraGramDev$TMessagesProj.getString(-137655718528559L))) {
            string = LocaleUtils.applyNewSpan(Deobfuscator$exteraGramDev$TMessagesProj.getString(-138295668655663L));
        } else {
            string = Deobfuscator$exteraGramDev$TMessagesProj.getString(-138334323361327L);
        }
        items.add(UItem.asAnimatedHeader(id, string));
        UItem searchable = UItem.asCheck(PreferenceItem.SDK_AUTO_UPDATE.getId(), LocaleController.getString(C2573R.string.PluginsPySdkAutoUpdate)).setChecked(ExteraConfig.getPluginsPySdkAutoUpdate()).setSearchable(this);
        PythonPluginsEngine.Updater.Companion companion = PythonPluginsEngine.Updater.INSTANCE;
        items.add(searchable.setEnabled(companion.getStatus() < 3).setValue(companion.getStateString()).setMultiline(true).setLinkAlias(Deobfuscator$exteraGramDev$TMessagesProj.getString(-138458877412911L), this));
        items.add(UItem.asCheck(PreferenceItem.SDK_BETA_VERSIONS.getId(), LocaleController.getString(C2573R.string.PluginsPySdkEnableBetaVersion)).setChecked(ExteraConfig.getPluginsPySdkBetaVersions()).setSearchable(this).setEnabled(companion.getStatus() < 3).setLinkAlias(Deobfuscator$exteraGramDev$TMessagesProj.getString(-138480352249391L), this));
        items.add(UItem.asButton(PreferenceItem.CHECK_SDK_UPDATES.getId(), LocaleController.getString(C2573R.string.PluginsPySdkCheckUpdates)).accent().setSearchable(this).setEnabled(companion.getStatus() < 3).setIcon(C2573R.drawable.msg_retry).setLinkAlias(Deobfuscator$exteraGramDev$TMessagesProj.getString(-138115280029231L), this));
        if (ExteraConfig.getPluginsDevMode() && !ExteraConfig.getPluginsEngine() && !companion.isSdkFromApk()) {
            items.add(UItem.asButton(PreferenceItem.RESTORE_SDK_FROM_APK.getId(), LocaleController.getString(C2573R.string.RestoreSdkFromApk)).red().setIcon(C2573R.drawable.msg_reset));
        }
        items.add(UItem.asShadow());
        items.add(UItem.asHeader(LocaleController.getString(C2573R.string.Links)));
        items.add(UItem.asButton(PreferenceItem.DOCUMENTATION.getId(), LocaleController.getString(C2573R.string.PluginsDocumentation)).setSearchable(this).setIcon(C2573R.drawable.menu_intro).setLinkAlias(Deobfuscator$exteraGramDev$TMessagesProj.getString(-138145344800303L), this));
        items.add(UItem.asButton(PreferenceItem.TRUSTED_PLUGINS.getId(), LocaleController.getString(C2573R.string.PluginsTrusted)).accent().setIcon(C2573R.drawable.msg2_policy).setSearchable(this).setLinkAlias(Deobfuscator$exteraGramDev$TMessagesProj.getString(-136663581083183L), this));
        items.add(UItem.asShadow(LocaleUtils.formatWithHtmlURLs(new SpannableString(Html.fromHtml(LocaleController.getString(C2573R.string.PluginsPoweredBy), 0)))));
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem item, View view, int position, float x, float y) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-136719415658031L);
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-136749480429103L);
        int i = item.id;
        if (i <= 0 || i > PreferenceItem.getEntries().size()) {
            return;
        }
        PreferenceItem preferenceItem = PreferenceItem.getEntries().get(item.id - 1);
        if ((view instanceof TextCheckCell) && (ExteraConfig.getPluginsEngine() || preferenceItem == PreferenceItem.SAFE_MODE || preferenceItem == PreferenceItem.SDK_AUTO_UPDATE || preferenceItem == PreferenceItem.SDK_BETA_VERSIONS)) {
            switch (WhenMappings.$EnumSwitchMapping$0[preferenceItem.ordinal()]) {
                case 1:
                    toggleBooleanSettingAndRefresh(item, new Consumer() { // from class: com.exteragram.messenger.plugins.ui.PluginsInfoActivity$$ExternalSyntheticLambda0
                        @Override // com.google.android.exoplayer2.util.Consumer
                        public final void accept(Object obj) {
                            PluginsInfoActivity.m2328$r8$lambda$8QlKkw5kfayJfhO899himkCzI(this.f$0, (Boolean) obj);
                        }
                    });
                    break;
                case 2:
                    toggleBooleanSettingAndRefresh(item, new Consumer() { // from class: com.exteragram.messenger.plugins.ui.PluginsInfoActivity$$ExternalSyntheticLambda1
                        @Override // com.google.android.exoplayer2.util.Consumer
                        public final void accept(Object obj) {
                            PluginsInfoActivity.$r8$lambda$wqIs6z_14DjJRgtbGrlNat2R__w((Boolean) obj);
                        }
                    });
                    break;
                case 3:
                    final SharedPreferences preferences = PluginsController.INSTANCE.getInstance().getPreferences();
                    toggleBooleanSettingAndRefresh(item, new Consumer() { // from class: com.exteragram.messenger.plugins.ui.PluginsInfoActivity$$ExternalSyntheticLambda2
                        @Override // com.google.android.exoplayer2.util.Consumer
                        public final void accept(Object obj) {
                            PluginsInfoActivity.$r8$lambda$uvPKm0MyDJVKV9ru_YI_2UEFTNQ(preferences, (Boolean) obj);
                        }
                    });
                    break;
                case 4:
                    toggleBooleanSettingAndRefresh(item, new Consumer() { // from class: com.exteragram.messenger.plugins.ui.PluginsInfoActivity$$ExternalSyntheticLambda3
                        @Override // com.google.android.exoplayer2.util.Consumer
                        public final void accept(Object obj) {
                            PluginsInfoActivity.m2329$r8$lambda$fA84ngNcg3E8iytEUb70vzqJw(this.f$0, (Boolean) obj);
                        }
                    });
                    break;
                case 5:
                    toggleBooleanSettingAndRefresh(item, new Consumer() { // from class: com.exteragram.messenger.plugins.ui.PluginsInfoActivity$$ExternalSyntheticLambda4
                        @Override // com.google.android.exoplayer2.util.Consumer
                        public final void accept(Object obj) {
                            ExteraConfig.setPluginsPySdkAutoUpdate(((Boolean) obj).booleanValue());
                        }
                    });
                    break;
                case 6:
                    toggleBooleanSettingAndRefresh(item, new Consumer() { // from class: com.exteragram.messenger.plugins.ui.PluginsInfoActivity$$ExternalSyntheticLambda5
                        @Override // com.google.android.exoplayer2.util.Consumer
                        public final void accept(Object obj) {
                            PluginsInfoActivity.m2330$r8$lambda$lIyiDc9HTWaRKBjgUIkTIimadU((Boolean) obj);
                        }
                    });
                    break;
            }
            return;
        }
        PreferenceItem preferenceItem2 = PreferenceItem.DOCUMENTATION;
        if (preferenceItem == preferenceItem2 || preferenceItem == PreferenceItem.TRUSTED_PLUGINS) {
            Browser.openUrl(getParentActivity(), Deobfuscator$exteraGramDev$TMessagesProj.getString(preferenceItem == preferenceItem2 ? -136693645854255L : -136831084807727L));
            return;
        }
        if (preferenceItem == PreferenceItem.CHECK_SDK_UPDATES) {
            PythonPluginsEngine.Updater.INSTANCE.checkUpdates(true);
        } else if (preferenceItem == PreferenceItem.RESTORE_SDK_FROM_APK) {
            PythonPluginsEngine.Updater.INSTANCE.restoreSdkFromApk();
            BulletinFactory.of(this).createSimpleBulletin(C2573R.raw.contact_check, LocaleController.getString(C2573R.string.RestartRequired)).show();
            this.listView.adapter.update(true);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$8Ql-Kkw5kfayJfhO89-9himkCzI, reason: not valid java name */
    public static void m2328$r8$lambda$8QlKkw5kfayJfhO899himkCzI(PluginsInfoActivity pluginsInfoActivity, Boolean bool) {
        ExteraConfig.setPluginsDevMode(bool.booleanValue());
        PluginsController.INSTANCE.getInstance().checkDevServers();
        BulletinFactory.of(pluginsInfoActivity).createSimpleBulletin(ExteraConfig.getPluginsDevMode() ? C2573R.raw.contact_check : C2573R.raw.error, LocaleController.getString(ExteraConfig.getPluginsDevMode() ? C2573R.string.PluginsDevServerLaunched : C2573R.string.PluginsDevServerStopped)).show();
    }

    public static void $r8$lambda$wqIs6z_14DjJRgtbGrlNat2R__w(Boolean bool) {
        ExteraConfig.setPluginsCompactView(bool.booleanValue());
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadInterface, new Object[0]);
    }

    public static void $r8$lambda$uvPKm0MyDJVKV9ru_YI_2UEFTNQ(SharedPreferences sharedPreferences, Boolean bool) {
        ExteraConfig.setPluginsSafeMode(bool.booleanValue());
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        if (bool.booleanValue()) {
            editorEdit.putString(Deobfuscator$exteraGramDev$TMessagesProj.getString(-136513257227823L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-136590566639151L));
        } else {
            editorEdit.remove(Deobfuscator$exteraGramDev$TMessagesProj.getString(-136556206900783L));
        }
        editorEdit.apply();
        PluginsController.INSTANCE.getInstance().restart(bool.booleanValue());
    }

    /* JADX INFO: renamed from: $r8$lambda$fA84ngN-cg3E8iytE-Ub70vzqJw, reason: not valid java name */
    public static void m2329$r8$lambda$fA84ngNcg3E8iytEUb70vzqJw(PluginsInfoActivity pluginsInfoActivity, Boolean bool) {
        ExteraConfig.setPluginsDisableArtOpts(bool.booleanValue());
        PluginsController.INSTANCE.applyArtOpts();
        pluginsInfoActivity.showRestartBulletin();
    }

    /* JADX INFO: renamed from: $r8$lambda$lIyiDc9HTWaRKBjgUIkTIi-madU, reason: not valid java name */
    public static void m2330$r8$lambda$lIyiDc9HTWaRKBjgUIkTIimadU(Boolean bool) {
        ExteraConfig.setPluginsPySdkBetaVersions(bool.booleanValue());
        PythonPluginsEngine.Updater.INSTANCE.checkUpdates(true);
    }
}
