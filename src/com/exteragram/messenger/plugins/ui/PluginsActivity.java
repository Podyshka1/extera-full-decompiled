package com.exteragram.messenger.plugins.ui;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.plugins.Plugin;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.plugins.ui.PluginsActivity;
import com.exteragram.messenger.plugins.ui.components.EmptyPluginsView;
import com.exteragram.messenger.plugins.ui.components.PluginCell;
import com.exteragram.messenger.plugins.ui.components.PluginCellDelegate;
import com.exteragram.messenger.plugins.utils.PluginsWatchdog;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.exteragram.messenger.utils.text.LocaleUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Locale;
import java.util.function.Function;
import java.util.function.Predicate;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.TextCheckCell;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0014J\b\u0010\u0013\u001a\u00020\bH\u0016J(\u0010\u0014\u001a\u00020\u00152\u0016\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\b\u0012\u0004\u0012\u00020\u0018`\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0014J\u0010\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J0\u0010\u001f\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020%H\u0014J\u0018\u0010'\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0018H\u0002J\b\u0010(\u001a\u00020\u0006H\u0016J\b\u0010)\u001a\u00020\u0015H\u0016J5\u0010*\u001a\u00020\u00152\u0006\u0010+\u001a\u00020#2\u0006\u0010,\u001a\u00020#2\u0016\u0010-\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010/0.\"\u0004\u0018\u00010/H\u0016¢\u0006\u0002\u00100J\u0010\u00101\u001a\u00020\u00062\u0006\u00102\u001a\u00020\u0006H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00063"}, d2 = {"Lcom/exteragram/messenger/plugins/ui/PluginsActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;", "<init>", "()V", "searching", _UrlKt.FRAGMENT_ENCODE_SET, "query", _UrlKt.FRAGMENT_ENCODE_SET, "searchItem", "Lorg/telegram/ui/ActionBar/ActionBarMenuItem;", "infoItem", "emptyView", "Lcom/exteragram/messenger/plugins/ui/components/EmptyPluginsView;", "isSwitchingEngineState", "createView", "Landroid/view/View;", "context", "Landroid/content/Context;", "getTitle", "fillItems", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.ITEMS, "Ljava/util/ArrayList;", "Lorg/telegram/ui/Components/UItem;", "Lkotlin/collections/ArrayList;", "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "createPluginItem", "plugin", "Lcom/exteragram/messenger/plugins/Plugin;", "onClick", PluginsConstants.Settings.ITEM, PluginsConstants.Settings.VIEW, "position", _UrlKt.FRAGMENT_ENCODE_SET, "x", _UrlKt.FRAGMENT_ENCODE_SET, "y", "togglePluginsEngine", "onFragmentCreate", "onFragmentDestroy", "didReceivedNotification", "id", "account", "args", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "(II[Ljava/lang/Object;)V", "onBackPressed", "invoked", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPluginsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginsActivity.kt\ncom/exteragram/messenger/plugins/ui/PluginsActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,406:1\n1#2:407\n*E\n"})
public final class PluginsActivity extends BasePreferencesActivity implements NotificationCenter.NotificationCenterDelegate {
    private EmptyPluginsView emptyView;
    private ActionBarMenuItem infoItem;
    private boolean isSwitchingEngineState;
    private String query;
    private ActionBarMenuItem searchItem;
    private boolean searching;

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        View viewCreateView = super.createView(context);
        ActionBarMenuItem actionBarMenuItemSearchListener = this.actionBar.menu.addItem(0, C2665R.drawable.outline_header_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity.createView.1
            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchExpand() {
                PluginsActivity.this.searching = true;
                PluginsActivity.this.getListView$TMessagesProj().adapter.update(true);
                PluginsActivity.this.getListView$TMessagesProj().scrollToPosition(0);
                ActionBarMenuItem actionBarMenuItem = PluginsActivity.this.infoItem;
                if (actionBarMenuItem != null) {
                    actionBarMenuItem.setVisibility(8);
                }
            }

            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchCollapse() {
                PluginsActivity.this.searching = false;
                PluginsActivity.this.query = null;
                PluginsActivity.this.getListView$TMessagesProj().adapter.update(true);
                PluginsActivity.this.getListView$TMessagesProj().scrollToPosition(0);
                ActionBarMenuItem actionBarMenuItem = PluginsActivity.this.infoItem;
                if (actionBarMenuItem != null) {
                    actionBarMenuItem.setVisibility(0);
                }
            }

            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onTextChanged(EditText editText) {
                PluginsActivity.this.query = editText.getText().toString();
                PluginsActivity.this.getListView$TMessagesProj().adapter.update(true);
                PluginsActivity.this.getListView$TMessagesProj().scrollToPosition(0);
            }
        });
        this.searchItem = actionBarMenuItemSearchListener;
        if (actionBarMenuItemSearchListener != null) {
            actionBarMenuItemSearchListener.setSearchPaddingStart(7);
        }
        ActionBarMenuItem actionBarMenuItem = this.searchItem;
        if (actionBarMenuItem != null) {
            actionBarMenuItem.setSearchFieldHint(LocaleController.getString(C2665R.string.Search));
        }
        AndroidUtilities.updateViewVisibilityAnimated(this.searchItem, ExteraConfig.getPluginsEngine() && !PluginsController.INSTANCE.getInstance().getPlugins().isEmpty(), 0.5f, false);
        ActionBarMenuItem actionBarMenuItemAddItem = this.actionBar.menu.addItem(1, C2665R.drawable.msg_info);
        this.infoItem = actionBarMenuItemAddItem;
        if (actionBarMenuItemAddItem != null) {
            actionBarMenuItemAddItem.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.presentFragment(new PluginsInfoActivity());
                }
            });
        }
        getListView$TMessagesProj().setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity.createView.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                if (newState == 1) {
                    AndroidUtilities.hideKeyboard(PluginsActivity.this.getParentActivity().getCurrentFocus());
                }
            }
        });
        this.fragmentView = viewCreateView;
        return viewCreateView;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2665R.string.Plugins);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        Plugin plugin;
        if (!this.searching) {
            items.add(UItem.asRippleCheck(0, LocaleController.getString(C2665R.string.EnablePluginsEngine)).setChecked(ExteraConfig.getPluginsEngine()));
        }
        if (ExteraConfig.getPluginsEngine()) {
            HashMap map = new HashMap(PluginsController.INSTANCE.getInstance().getPlugins());
            UItem uItemAsSpace = UItem.asSpace(AndroidUtilities.dp(8.0f));
            uItemAsSpace.transparent = true;
            items.add(uItemAsSpace);
            if (this.searching && !TextUtils.isEmpty(this.query)) {
                Collection collectionValues = map.values();
                final Function1 function1 = new Function1() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return Boolean.valueOf(PluginsActivity.$r8$lambda$TEMUUXesJLeJaCYdM8utDdAnU1s(this.f$0, (Plugin) obj));
                    }
                };
                collectionValues.removeIf(new Predicate() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity$$ExternalSyntheticLambda4
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return ((Boolean) function1.invoke(obj)).booleanValue();
                    }
                });
            }
            if (map.isEmpty()) {
                if (this.emptyView == null) {
                    this.emptyView = new EmptyPluginsView(getContext(), this.resourceProvider);
                }
                EmptyPluginsView emptyPluginsView = this.emptyView;
                if (emptyPluginsView == null) {
                    return;
                }
                if (this.searching) {
                    if (emptyPluginsView.getTag() == null || ((Integer) emptyPluginsView.getTag()).intValue() != 1) {
                        MediaDataController.getInstance(UserConfig.selectedAccount).setPlaceholderImage(emptyPluginsView.getBackupImageView(), "AnimatedEmojies", "🔎", "100_100");
                        emptyPluginsView.setText(LocaleController.getString(C2665R.string.PluginsNotFound));
                        emptyPluginsView.setTag(1);
                    }
                } else if (emptyPluginsView.getTag() == null || ((Integer) emptyPluginsView.getTag()).intValue() != 2) {
                    MediaDataController.getInstance(UserConfig.selectedAccount).setPlaceholderImage(emptyPluginsView.getBackupImageView(), "AnimatedEmojies", "📂", "100_100");
                    emptyPluginsView.setText(LocaleUtils.formatWithUsernames(LocaleController.getString(C2665R.string.PluginsInfo)));
                    emptyPluginsView.setTag(2);
                }
                items.add(UItem.asFullscreenCustom(emptyPluginsView, AndroidUtilities.dp((this.searching ? 2 : 1) * 74), true).setTransparent(true));
            } else {
                if (!ExteraConfig.getPinnedPlugins().isEmpty()) {
                    for (String str : ExteraConfig.getPinnedPlugins()) {
                        if (map.containsKey(str) && (plugin = (Plugin) map.get(str)) != null) {
                            items.add(createPluginItem(plugin));
                            items.add(UItem.asSpace(AndroidUtilities.dp(8.0f)));
                        }
                    }
                }
                ArrayList<Plugin> arrayList = new ArrayList(map.values());
                final C13672 c13672 = C13672.INSTANCE;
                CollectionsKt.sortWith(arrayList, Comparator.comparing(new Function() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity$$ExternalSyntheticLambda5
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return PluginsActivity.$r8$lambda$R2n2rGoh95VONEXx2uOtUlcXz0E(c13672, obj);
                    }
                }));
                for (Plugin plugin2 : arrayList) {
                    if (!PluginsController.INSTANCE.isPluginPinned(plugin2.getId())) {
                        items.add(createPluginItem(plugin2));
                        items.add(UItem.asSpace(AndroidUtilities.dp(8.0f)));
                    }
                }
            }
            UItem uItemAsSpace2 = UItem.asSpace(AndroidUtilities.dp(4.0f));
            uItemAsSpace2.transparent = true;
            items.add(uItemAsSpace2);
        }
    }

    public static boolean $r8$lambda$TEMUUXesJLeJaCYdM8utDdAnU1s(PluginsActivity pluginsActivity, Plugin plugin) {
        String name = plugin.getName();
        Locale locale = Locale.ROOT;
        return !StringsKt.contains$default((CharSequence) name.toLowerCase(locale), (CharSequence) pluginsActivity.query.toLowerCase(locale), false, 2, (Object) null);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.plugins.ui.PluginsActivity$fillItems$2 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class C13672 extends FunctionReferenceImpl implements Function1<Plugin, String> {
        public static final C13672 INSTANCE = new C13672();

        public C13672() {
            super(1, Plugin.class, "getName", "getName()Ljava/lang/String;", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final String invoke(Plugin plugin) {
            return plugin.getName();
        }
    }

    public static String $r8$lambda$R2n2rGoh95VONEXx2uOtUlcXz0E(Function1 function1, Object obj) {
        return (String) function1.invoke(obj);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.plugins.ui.PluginsActivity$createPluginItem$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0003H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\u0003H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\u000b\u001a\u00020\fH\u0016¨\u0006\r"}, d2 = {"com/exteragram/messenger/plugins/ui/PluginsActivity$createPluginItem$1", "Lcom/exteragram/messenger/plugins/ui/components/PluginCellDelegate;", "sharePlugin", _UrlKt.FRAGMENT_ENCODE_SET, "openInExternalApp", "deletePlugin", "togglePlugin", PluginsConstants.Settings.VIEW, "Landroid/view/View;", "openPluginSettings", "pinPlugin", "canOpenInExternalApp", _UrlKt.FRAGMENT_ENCODE_SET, "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class C13641 implements PluginCellDelegate {
        final /* synthetic */ Plugin $plugin;
        final /* synthetic */ PluginsActivity this$0;

        public C13641(Plugin plugin, PluginsActivity pluginsActivity) {
            this.$plugin = plugin;
            this.this$0 = pluginsActivity;
        }

        @Override // com.exteragram.messenger.plugins.ui.components.PluginCellDelegate
        public void sharePlugin() {
            PluginsController.PluginsEngine pluginEngine = PluginsController.INSTANCE.getInstance().getPluginEngine(this.$plugin.getId());
            if (pluginEngine != null) {
                pluginEngine.sharePlugin(this.$plugin.getId());
            }
        }

        @Override // com.exteragram.messenger.plugins.ui.components.PluginCellDelegate
        public void openInExternalApp() {
            PluginsController.PluginsEngine pluginEngine = PluginsController.INSTANCE.getInstance().getPluginEngine(this.$plugin.getId());
            if (pluginEngine != null) {
                pluginEngine.openInExternalApp(this.$plugin.getId());
            }
        }

        @Override // com.exteragram.messenger.plugins.ui.components.PluginCellDelegate
        public void deletePlugin() {
            if (this.$plugin.getIsNotResponding()) {
                PluginsWatchdog.INSTANCE.showNotRespondingAlert(this.$plugin);
                return;
            }
            AlertDialog.Builder message = new AlertDialog.Builder(this.this$0.getParentActivity(), ((BaseFragment) this.this$0).resourceProvider).setTitle(LocaleController.getString(C2665R.string.PluginDelete)).setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.PluginDeleteInfo, this.$plugin.getName())));
            String string = LocaleController.getString(C2665R.string.Delete);
            final Plugin plugin = this.$plugin;
            final PluginsActivity pluginsActivity = this.this$0;
            AlertDialog alertDialogCreate = message.setPositiveButton(string, new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity$createPluginItem$1$$ExternalSyntheticLambda3
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    PluginsController.INSTANCE.getInstance().deletePlugin(plugin.getId(), new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity$createPluginItem$1$$ExternalSyntheticLambda0
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity$createPluginItem$1$$ExternalSyntheticLambda2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    PluginsActivity.C13641.m2662$r8$lambda$eJ4WLK9pRQm_9sSE0sYfFNZu9w(pluginsActivity, str);
                                }
                            });
                        }
                    });
                }
            }).setNegativeButton(LocaleController.getString(C2665R.string.Cancel), null).create();
            alertDialogCreate.show();
            View button = alertDialogCreate.getButton(-1);
            TextView textView = button instanceof TextView ? (TextView) button : null;
            if (textView != null) {
                textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
            }
        }

        /* JADX INFO: renamed from: $r8$lambda$eJ4WLK9pRQm-_9sSE0sYfFNZu9w, reason: not valid java name */
        public static void m2662$r8$lambda$eJ4WLK9pRQm_9sSE0sYfFNZu9w(PluginsActivity pluginsActivity, String str) {
            if (pluginsActivity.fragmentView == null || pluginsActivity.getParentActivity() == null) {
                return;
            }
            pluginsActivity.getListView$TMessagesProj().adapter.update(true);
            if (str != null) {
                BulletinFactory.of(pluginsActivity).createSimpleBulletin(C2665R.raw.error, str).show();
            }
        }

        @Override // com.exteragram.messenger.plugins.ui.components.PluginCellDelegate
        public void togglePlugin(View view) {
            if (this.$plugin.getIsNotResponding()) {
                PluginsWatchdog.INSTANCE.showNotRespondingAlert(this.$plugin);
                return;
            }
            final PluginCell pluginCell = (PluginCell) view;
            final boolean z = !this.$plugin.isEnabled();
            PluginsController companion = PluginsController.INSTANCE.getInstance();
            String id = this.$plugin.getId();
            final PluginsActivity pluginsActivity = this.this$0;
            final Plugin plugin = this.$plugin;
            companion.setPluginEnabled(id, z, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity$createPluginItem$1$$ExternalSyntheticLambda4
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity$createPluginItem$1$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            PluginsActivity.C13641.m2660$r8$lambda$OKdU1ejuz10Tc6xzLWoqFUhobw(pluginsActivity, str, z, plugin, pluginCell);
                        }
                    });
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$OKd-U1ejuz10Tc6xzLWoqFUhobw, reason: not valid java name */
        public static void m2660$r8$lambda$OKdU1ejuz10Tc6xzLWoqFUhobw(final PluginsActivity pluginsActivity, final String str, boolean z, Plugin plugin, PluginCell pluginCell) {
            if (pluginsActivity.fragmentView == null || pluginsActivity.getParentActivity() == null) {
                return;
            }
            if (str != null) {
                BulletinFactory.of(pluginsActivity).createSimpleBulletin(C2665R.raw.error, LocaleController.formatString(z ? C2665R.string.PluginEnableError : C2665R.string.PluginDisableError, plugin.getName()), LocaleUtils.createCopySpan(pluginsActivity), new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity$createPluginItem$1$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        PluginsActivity.C13641.m2661$r8$lambda$dCkz7DYSlhbIDttnEZkfgb6Bks(str, pluginsActivity);
                    }
                }).show();
            } else {
                pluginCell.setChecked(z, true);
            }
        }

        /* JADX INFO: renamed from: $r8$lambda$dCkz7DYSlhbIDttnEZkf-gb6Bks, reason: not valid java name */
        public static void m2661$r8$lambda$dCkz7DYSlhbIDttnEZkfgb6Bks(String str, PluginsActivity pluginsActivity) {
            if (AndroidUtilities.addToClipboard(str)) {
                BulletinFactory.of(pluginsActivity).createCopyBulletin(LocaleController.getString(C2665R.string.TextCopied)).show();
            }
        }

        @Override // com.exteragram.messenger.plugins.ui.components.PluginCellDelegate
        public void openPluginSettings() {
            PluginsController.INSTANCE.openPluginSettings(this.$plugin.getId());
        }

        @Override // com.exteragram.messenger.plugins.ui.components.PluginCellDelegate
        public void pinPlugin(View view) {
            PluginsController.Companion companion = PluginsController.INSTANCE;
            boolean zIsPluginPinned = companion.isPluginPinned(this.$plugin.getId());
            companion.setPluginPinned(this.$plugin.getId(), !zIsPluginPinned);
            ((PluginCell) view).setPinned(!zIsPluginPinned);
            this.this$0.getListView$TMessagesProj().adapter.update(true);
            this.this$0.getListView$TMessagesProj().smoothScrollToPosition(0);
        }

        @Override // com.exteragram.messenger.plugins.ui.components.PluginCellDelegate
        public boolean canOpenInExternalApp() {
            PluginsController.PluginsEngine pluginEngine = PluginsController.INSTANCE.getInstance().getPluginEngine(this.$plugin.getId());
            return pluginEngine != null && pluginEngine.canOpenInExternalApp();
        }
    }

    private final UItem createPluginItem(Plugin plugin) {
        return PluginCell.Factory.INSTANCE.asPlugin(plugin, new C13641(plugin, this));
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem item, View view, int position, float x, float y) {
        if (item.viewType == 9) {
            togglePluginsEngine(view, item);
        }
    }

    private final void togglePluginsEngine(View view, UItem item) {
        if (this.isSwitchingEngineState) {
            return;
        }
        this.isSwitchingEngineState = true;
        ExteraConfig.setPluginsEngine(true ^ ExteraConfig.getPluginsEngine());
        ExteraConfig.getEditor().putBoolean("pluginsEngine", ExteraConfig.getPluginsEngine()).apply();
        TextCheckCell textCheckCell = (TextCheckCell) view;
        boolean pluginsEngine = ExteraConfig.getPluginsEngine();
        item.checked = pluginsEngine;
        textCheckCell.setChecked(pluginsEngine);
        textCheckCell.setBackgroundColorAnimated(ExteraConfig.getPluginsEngine(), Theme.getColor(ExteraConfig.getPluginsEngine() ? Theme.key_windowBackgroundChecked : Theme.key_windowBackgroundUnchecked));
        Runnable runnable = new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        PluginsActivity.$r8$lambda$eZWok32IQObkKLTATWSLUxE8JkE(this.f$0);
                    }
                });
            }
        };
        if (ExteraConfig.getPluginsEngine()) {
            PluginsController.INSTANCE.getInstance().init(runnable);
        } else {
            PluginsController.INSTANCE.getInstance().shutdown(runnable);
        }
    }

    public static void $r8$lambda$eZWok32IQObkKLTATWSLUxE8JkE(PluginsActivity pluginsActivity) {
        if (pluginsActivity.fragmentView == null || pluginsActivity.getParentActivity() == null) {
            return;
        }
        if (pluginsActivity.searching) {
            pluginsActivity.actionBar.closeSearchField();
        }
        AndroidUtilities.updateViewVisibilityAnimated(pluginsActivity.searchItem, ExteraConfig.getPluginsEngine() && !PluginsController.INSTANCE.getInstance().getPlugins().isEmpty(), 0.5f, true);
        pluginsActivity.getListView$TMessagesProj().adapter.update(true);
        pluginsActivity.isSwitchingEngineState = false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.pluginsUpdated);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.reloadInterface);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.pluginIsNotResponding);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.pluginsUpdated);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.reloadInterface);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.pluginIsNotResponding);
        super.onFragmentDestroy();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int id, int account, Object... args) {
        if (id == NotificationCenter.pluginsUpdated) {
            AndroidUtilities.updateViewVisibilityAnimated(this.searchItem, ExteraConfig.getPluginsEngine() && !PluginsController.INSTANCE.getInstance().getPlugins().isEmpty(), 0.5f, true);
            getListView$TMessagesProj().adapter.update(true);
        } else if (id == NotificationCenter.reloadInterface) {
            getListView$TMessagesProj().invalidateViews();
        } else if (id == NotificationCenter.pluginIsNotResponding) {
            getListView$TMessagesProj().adapter.update(true);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean invoked) {
        if (!this.searching) {
            return super.onBackPressed(invoked);
        }
        if (!invoked) {
            return false;
        }
        this.actionBar.closeSearchField();
        return false;
    }
}
