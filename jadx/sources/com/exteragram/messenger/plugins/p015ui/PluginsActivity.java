package com.exteragram.messenger.plugins.p015ui;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.plugins.Plugin;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.plugins.p015ui.components.EmptyPluginsView;
import com.exteragram.messenger.plugins.p015ui.components.PluginCell;
import com.exteragram.messenger.plugins.p015ui.components.PluginCellDelegate;
import com.exteragram.messenger.plugins.utils.PluginsWatchdog;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.exteragram.messenger.utils.text.LocaleUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.function.Function;
import java.util.function.Predicate;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.TextCheckCell;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import p022j$.util.Collection;
import p022j$.util.Comparator;
import p022j$.util.List;
import p022j$.util.function.Function$CC;
import p022j$.util.function.Predicate$CC;

/* JADX INFO: loaded from: classes4.dex */
public class PluginsActivity extends BasePreferencesActivity implements NotificationCenter.NotificationCenterDelegate {
    private EmptyPluginsView emptyView;
    private ActionBarMenuItem infoItem;
    private boolean isSwitchingEngineState = false;
    private String query;
    private ActionBarMenuItem searchItem;
    private boolean searching;

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        View viewCreateView = super.createView(context);
        ActionBarMenuItem actionBarMenuItemSearchListener = this.actionBar.menu.addItem(0, C2888R.drawable.ic_ab_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchExpand() {
                PluginsActivity.this.searching = true;
                ((BasePreferencesActivity) PluginsActivity.this).listView.adapter.update(true);
                ((BasePreferencesActivity) PluginsActivity.this).listView.scrollToPosition(0);
                if (PluginsActivity.this.infoItem != null) {
                    PluginsActivity.this.infoItem.setVisibility(8);
                }
            }

            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchCollapse() {
                PluginsActivity.this.searching = false;
                PluginsActivity.this.query = null;
                ((BasePreferencesActivity) PluginsActivity.this).listView.adapter.update(true);
                ((BasePreferencesActivity) PluginsActivity.this).listView.scrollToPosition(0);
                if (PluginsActivity.this.infoItem != null) {
                    PluginsActivity.this.infoItem.setVisibility(0);
                }
            }

            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onTextChanged(EditText editText) {
                PluginsActivity.this.query = editText.getText().toString();
                ((BasePreferencesActivity) PluginsActivity.this).listView.adapter.update(true);
                ((BasePreferencesActivity) PluginsActivity.this).listView.scrollToPosition(0);
            }
        });
        this.searchItem = actionBarMenuItemSearchListener;
        actionBarMenuItemSearchListener.setSearchFieldHint(LocaleController.getString(C2888R.string.Search));
        AndroidUtilities.updateViewVisibilityAnimated(this.searchItem, ExteraConfig.pluginsEngine && !PluginsController.getInstance().plugins.isEmpty(), 0.5f, false);
        ActionBarMenuItem actionBarMenuItemAddItem = this.actionBar.menu.addItem(1, C2888R.drawable.msg_info);
        this.infoItem = actionBarMenuItemAddItem;
        actionBarMenuItemAddItem.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$0(view);
            }
        });
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                if (i == 1) {
                    AndroidUtilities.hideKeyboard(PluginsActivity.this.getParentActivity().getCurrentFocus());
                }
            }
        });
        this.fragmentView = viewCreateView;
        return viewCreateView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(View view) {
        presentFragment(new PluginsInfoActivity());
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2888R.string.Plugins);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        Plugin plugin;
        int i = 0;
        if (!this.searching) {
            arrayList.add(UItem.asRippleCheck(0, LocaleController.getString(C2888R.string.EnablePluginsEngine)).setChecked(ExteraConfig.pluginsEngine));
        }
        if (ExteraConfig.pluginsEngine) {
            HashMap map = new HashMap(PluginsController.getInstance().plugins);
            UItem uItemAsSpace = UItem.asSpace(AndroidUtilities.m1124dp(8.0f));
            uItemAsSpace.transparent = true;
            arrayList.add(uItemAsSpace);
            if (this.searching && !TextUtils.isEmpty(this.query)) {
                Collection.EL.removeIf(map.values(), new Predicate() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity$$ExternalSyntheticLambda3
                    public /* synthetic */ Predicate and(Predicate predicate) {
                        return Predicate$CC.$default$and(this, predicate);
                    }

                    public /* synthetic */ Predicate negate() {
                        return Predicate$CC.$default$negate(this);
                    }

                    /* JADX INFO: renamed from: or */
                    public /* synthetic */ Predicate m260or(Predicate predicate) {
                        return Predicate$CC.$default$or(this, predicate);
                    }

                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return this.f$0.lambda$fillItems$1((Plugin) obj);
                    }
                });
            }
            if (map.isEmpty()) {
                if (this.emptyView == null) {
                    this.emptyView = new EmptyPluginsView(getContext(), getResourceProvider());
                }
                if (this.searching) {
                    if (this.emptyView.getTag() == null || ((Integer) this.emptyView.getTag()).intValue() != 1) {
                        MediaDataController.getInstance(UserConfig.selectedAccount).setPlaceholderImage(this.emptyView.getBackupImageView(), "AnimatedEmojies", "🔎", "100_100");
                        this.emptyView.setText(LocaleController.getString(C2888R.string.PluginsNotFound));
                        this.emptyView.setTag(1);
                    }
                } else if (this.emptyView.getTag() == null || ((Integer) this.emptyView.getTag()).intValue() != 2) {
                    MediaDataController.getInstance(UserConfig.selectedAccount).setPlaceholderImage(this.emptyView.getBackupImageView(), "AnimatedEmojies", "📂", "100_100");
                    this.emptyView.setText(LocaleUtils.formatWithUsernames(LocaleController.getString(C2888R.string.PluginsInfo)));
                    this.emptyView.setTag(2);
                }
                arrayList.add(UItem.asFullscreenCustom(this.emptyView, AndroidUtilities.m1124dp((this.searching ? 2 : 1) * 74), true).setTransparent(true));
            } else {
                if (!ExteraConfig.pinnedPlugins.isEmpty()) {
                    for (String str : ExteraConfig.pinnedPlugins) {
                        if (map.containsKey(str) && (plugin = (Plugin) map.get(str)) != null) {
                            arrayList.add(createPluginItem(plugin));
                            arrayList.add(UItem.asSpace(AndroidUtilities.m1124dp(8.0f)));
                        }
                    }
                }
                ArrayList arrayList2 = new ArrayList(map.values());
                List.EL.sort(arrayList2, Comparator.CC.comparing(new Function() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity$$ExternalSyntheticLambda4
                    public /* synthetic */ Function andThen(Function function) {
                        return Function$CC.$default$andThen(this, function);
                    }

                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ((Plugin) obj).getName();
                    }

                    public /* synthetic */ Function compose(Function function) {
                        return Function$CC.$default$compose(this, function);
                    }
                }));
                int size = arrayList2.size();
                while (i < size) {
                    Object obj = arrayList2.get(i);
                    i++;
                    Plugin plugin2 = (Plugin) obj;
                    if (!PluginsController.isPluginPinned(plugin2.getId())) {
                        arrayList.add(createPluginItem(plugin2));
                        arrayList.add(UItem.asSpace(AndroidUtilities.m1124dp(8.0f)));
                    }
                }
            }
            UItem uItemAsSpace2 = UItem.asSpace(AndroidUtilities.m1124dp(4.0f));
            uItemAsSpace2.transparent = true;
            arrayList.add(uItemAsSpace2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$fillItems$1(Plugin plugin) {
        return !plugin.getName().toLowerCase().contains(this.query.toLowerCase());
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.plugins.ui.PluginsActivity$3 */
    class C11643 implements PluginCellDelegate {
        final /* synthetic */ Plugin val$plugin;

        C11643(Plugin plugin) {
            this.val$plugin = plugin;
        }

        @Override // com.exteragram.messenger.plugins.p015ui.components.PluginCellDelegate
        public void sharePlugin() {
            PluginsController.PluginsEngine pluginEngine = PluginsController.getInstance().getPluginEngine(this.val$plugin.getId());
            if (pluginEngine != null) {
                pluginEngine.sharePlugin(this.val$plugin.getId());
            }
        }

        @Override // com.exteragram.messenger.plugins.p015ui.components.PluginCellDelegate
        public void openInExternalApp() {
            PluginsController.PluginsEngine pluginEngine = PluginsController.getInstance().getPluginEngine(this.val$plugin.getId());
            if (pluginEngine != null) {
                pluginEngine.openInExternalApp(this.val$plugin.getId());
            }
        }

        @Override // com.exteragram.messenger.plugins.p015ui.components.PluginCellDelegate
        public void deletePlugin() {
            if (this.val$plugin.isNotResponding()) {
                PluginsWatchdog.showNotRespondingAlert(this.val$plugin);
                return;
            }
            AlertDialog.Builder message = new AlertDialog.Builder(PluginsActivity.this.getParentActivity(), PluginsActivity.this.getResourceProvider()).setTitle(LocaleController.getString(C2888R.string.PluginDelete)).setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.PluginDeleteInfo, this.val$plugin.getName())));
            String string = LocaleController.getString(C2888R.string.Delete);
            final Plugin plugin = this.val$plugin;
            AlertDialog alertDialogCreate = message.setPositiveButton(string, new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity$3$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    this.f$0.lambda$deletePlugin$2(plugin, alertDialog, i);
                }
            }).setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null).create();
            alertDialogCreate.show();
            TextView textView = (TextView) alertDialogCreate.getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$deletePlugin$1(final String str) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity$3$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$deletePlugin$0(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$deletePlugin$2(Plugin plugin, AlertDialog alertDialog, int i) {
            PluginsController.getInstance().deletePlugin(plugin.getId(), new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity$3$$ExternalSyntheticLambda2
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$deletePlugin$1((String) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$deletePlugin$0(String str) {
            PluginsActivity pluginsActivity = PluginsActivity.this;
            if (pluginsActivity.fragmentView == null) {
                return;
            }
            ((BasePreferencesActivity) pluginsActivity).listView.adapter.update(true);
            if (str != null) {
                BulletinFactory.m1246of(PluginsActivity.this).createSimpleBulletin(C2888R.raw.error, str).show();
            }
        }

        @Override // com.exteragram.messenger.plugins.p015ui.components.PluginCellDelegate
        public void togglePlugin(View view) {
            if (this.val$plugin.isNotResponding()) {
                PluginsWatchdog.showNotRespondingAlert(this.val$plugin);
                return;
            }
            final PluginCell pluginCell = (PluginCell) view;
            final boolean z = !this.val$plugin.isEnabled();
            PluginsController pluginsController = PluginsController.getInstance();
            String id = this.val$plugin.getId();
            final Plugin plugin = this.val$plugin;
            pluginsController.setPluginEnabled(id, z, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity$3$$ExternalSyntheticLambda4
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$togglePlugin$5(z, plugin, pluginCell, (String) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$togglePlugin$5(final boolean z, final Plugin plugin, final PluginCell pluginCell, final String str) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity$3$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$togglePlugin$4(str, z, plugin, pluginCell);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$togglePlugin$4(final String str, boolean z, Plugin plugin, PluginCell pluginCell) {
            if (str != null) {
                BulletinFactory.m1246of(PluginsActivity.this).createSimpleBulletin(C2888R.raw.error, LocaleController.formatString(z ? C2888R.string.PluginEnableError : C2888R.string.PluginDisableError, plugin.getName()), LocaleUtils.createCopySpan(PluginsActivity.this), new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity$3$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$togglePlugin$3(str);
                    }
                }).show();
            } else {
                pluginCell.setChecked(z, true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$togglePlugin$3(String str) {
            if (AndroidUtilities.addToClipboard(str)) {
                BulletinFactory.m1246of(PluginsActivity.this).createCopyBulletin(LocaleController.getString(C2888R.string.TextCopied)).show();
            }
        }

        @Override // com.exteragram.messenger.plugins.p015ui.components.PluginCellDelegate
        public void openPluginSettings() {
            PluginsController.openPluginSettings(this.val$plugin.getId());
        }

        @Override // com.exteragram.messenger.plugins.p015ui.components.PluginCellDelegate
        public void pinPlugin(View view) {
            boolean zIsPluginPinned = PluginsController.isPluginPinned(this.val$plugin.getId());
            PluginsController.setPluginPinned(this.val$plugin.getId(), !zIsPluginPinned);
            ((PluginCell) view).setPinned(!zIsPluginPinned);
            ((BasePreferencesActivity) PluginsActivity.this).listView.adapter.update(true);
            ((BasePreferencesActivity) PluginsActivity.this).listView.smoothScrollToPosition(0);
        }

        @Override // com.exteragram.messenger.plugins.p015ui.components.PluginCellDelegate
        public boolean canOpenInExternalApp() {
            PluginsController.PluginsEngine pluginEngine = PluginsController.getInstance().getPluginEngine(this.val$plugin.getId());
            return pluginEngine != null && pluginEngine.canOpenInExternalApp();
        }
    }

    private UItem createPluginItem(Plugin plugin) {
        return PluginCell.Factory.asPlugin(plugin, new C11643(plugin));
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void onClick(UItem uItem, View view, int i, float f, float f2) {
        if (uItem.viewType == 9) {
            togglePluginsEngine(view, uItem);
        }
    }

    private void togglePluginsEngine(View view, UItem uItem) {
        if (this.isSwitchingEngineState) {
            return;
        }
        this.isSwitchingEngineState = true;
        SharedPreferences.Editor editor = ExteraConfig.editor;
        boolean z = true ^ ExteraConfig.pluginsEngine;
        ExteraConfig.pluginsEngine = z;
        editor.putBoolean("pluginsEngine", z).apply();
        TextCheckCell textCheckCell = (TextCheckCell) view;
        boolean z2 = ExteraConfig.pluginsEngine;
        uItem.checked = z2;
        textCheckCell.setChecked(z2);
        boolean z3 = ExteraConfig.pluginsEngine;
        textCheckCell.setBackgroundColorAnimated(z3, Theme.getColor(z3 ? Theme.key_windowBackgroundChecked : Theme.key_windowBackgroundUnchecked));
        Runnable runnable = new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$togglePluginsEngine$3();
            }
        };
        if (ExteraConfig.pluginsEngine) {
            PluginsController.getInstance().init(runnable);
        } else {
            PluginsController.getInstance().shutdown(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$togglePluginsEngine$3() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginsActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$togglePluginsEngine$2();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$togglePluginsEngine$2() {
        if (this.fragmentView == null) {
            return;
        }
        if (this.searching) {
            this.actionBar.closeSearchField();
        }
        AndroidUtilities.updateViewVisibilityAnimated(this.searchItem, ExteraConfig.pluginsEngine && !PluginsController.getInstance().plugins.isEmpty(), 0.5f, true);
        this.listView.adapter.update(true);
        this.isSwitchingEngineState = false;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public int getNavigationBarColor() {
        return Theme.getColor(Theme.key_windowBackgroundGray);
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.pluginsUpdated);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.reloadInterface);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.pluginIsNotResponding);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.pluginsUpdated);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.reloadInterface);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.pluginIsNotResponding);
        super.onFragmentDestroy();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.pluginsUpdated) {
            AndroidUtilities.updateViewVisibilityAnimated(this.searchItem, ExteraConfig.pluginsEngine && !PluginsController.getInstance().plugins.isEmpty(), 0.5f, true);
            this.listView.adapter.update(true);
        } else if (i == NotificationCenter.reloadInterface) {
            this.listView.invalidateViews();
        } else if (i == NotificationCenter.pluginIsNotResponding) {
            this.listView.adapter.update(true);
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        if (!this.searching) {
            return super.onBackPressed(z);
        }
        if (!z) {
            return false;
        }
        this.actionBar.closeSearchField();
        return false;
    }
}
