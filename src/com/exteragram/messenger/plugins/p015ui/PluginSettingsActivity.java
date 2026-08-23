package com.exteragram.messenger.plugins.p015ui;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.chaquo.python.PyObject;
import com.exteragram.messenger.plugins.Plugin;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.plugins.PythonPluginsEngine;
import com.exteragram.messenger.plugins.models.CustomSetting;
import com.exteragram.messenger.plugins.models.DividerSetting;
import com.exteragram.messenger.plugins.models.EditTextSetting;
import com.exteragram.messenger.plugins.models.HeaderSetting;
import com.exteragram.messenger.plugins.models.InputSetting;
import com.exteragram.messenger.plugins.models.SelectorSetting;
import com.exteragram.messenger.plugins.models.SettingItem;
import com.exteragram.messenger.plugins.models.SwitchSetting;
import com.exteragram.messenger.plugins.models.TextSetting;
import com.exteragram.messenger.plugins.p015ui.components.PluginEditTextCell;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.exteragram.messenger.preferences.utils.SettingsRegistry;
import com.exteragram.messenger.utils.text.LocaleUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.NotificationsCheckCell;
import org.telegram.p029ui.Cells.RadioColorCell;
import org.telegram.p029ui.Cells.TextCell;
import org.telegram.p029ui.Cells.TextCheckCell;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.EditTextBoldCursor;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Components.UniversalRecyclerView;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class PluginSettingsActivity extends BasePreferencesActivity implements NotificationCenter.NotificationCenterDelegate {
    private final PyObject createSubFragmentCallback;
    private final String customTitle;
    private final Plugin plugin;
    private ActionBarMenuItem resetItem;
    private List<SettingItem> settingItems;
    private String settingsLinkPrefix;
    private Integer targetSettingItemId;
    private String targetSettingName;

    public PluginSettingsActivity(Plugin plugin) {
        this.plugin = plugin;
        this.customTitle = null;
        this.settingItems = null;
        this.createSubFragmentCallback = null;
        this.targetSettingName = null;
        this.targetSettingItemId = null;
        this.settingsLinkPrefix = null;
    }

    public PluginSettingsActivity(Plugin plugin, String str) {
        this.plugin = plugin;
        this.customTitle = null;
        this.settingItems = null;
        this.createSubFragmentCallback = null;
        this.targetSettingName = str;
        this.targetSettingItemId = null;
        this.settingsLinkPrefix = null;
    }

    public PluginSettingsActivity(Plugin plugin, String str, List<SettingItem> list, PyObject pyObject) {
        this(plugin, str, list, pyObject, null);
    }

    public PluginSettingsActivity(Plugin plugin, String str, List<SettingItem> list, PyObject pyObject, String str2) {
        this.plugin = plugin;
        this.customTitle = str;
        this.settingItems = list;
        this.createSubFragmentCallback = pyObject;
        this.targetSettingName = str2;
        this.targetSettingItemId = null;
        this.settingsLinkPrefix = null;
    }

    public PluginSettingsActivity setSettingsLinkPrefix(String str) {
        this.settingsLinkPrefix = str;
        return this;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        String str = this.customTitle;
        return str != null ? str : this.plugin.getName();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.pluginSettingsRegistered);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.pluginSettingsUnregistered);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.pluginSettingsRegistered);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.pluginSettingsUnregistered);
        super.onFragmentDestroy();
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0011  */
    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        String str;
        UniversalAdapter universalAdapter;
        if (i == NotificationCenter.pluginSettingsRegistered) {
            if (objArr.length > 0) {
                Object obj = objArr[0];
                str = obj instanceof String ? (String) obj : null;
            }
            Plugin plugin = this.plugin;
            if (plugin != null) {
                if (str == null || plugin.getId().equals(str)) {
                    if (this.createSubFragmentCallback != null) {
                        PluginsController.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda5
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$didReceivedNotification$1();
                            }
                        });
                        return;
                    }
                    UniversalRecyclerView universalRecyclerView = this.listView;
                    if (universalRecyclerView == null || (universalAdapter = universalRecyclerView.adapter) == null) {
                        return;
                    }
                    universalAdapter.update(true);
                    ActionBarMenuItem actionBarMenuItem = this.resetItem;
                    if (actionBarMenuItem != null) {
                        AndroidUtilities.updateViewVisibilityAnimated(actionBarMenuItem, PluginsController.getInstance().hasPluginSettingsPreferences(this.plugin.getId()), 0.5f, true);
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (i != NotificationCenter.pluginSettingsUnregistered || objArr.length <= 0) {
            return;
        }
        Object obj2 = objArr[0];
        if (obj2 instanceof String) {
            String str2 = (String) obj2;
            Plugin plugin2 = this.plugin;
            if (plugin2 == null || !plugin2.getId().equals(str2) || PluginsController.getInstance().hasPluginSettings(this.plugin.getId())) {
                return;
            }
            finishFragment();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$1() {
        final List<SettingItem> arrayList = new ArrayList<>();
        try {
            PyObject pyObjectCall = this.createSubFragmentCallback.call(new Object[0]);
            if (pyObjectCall != null) {
                PluginsController.PluginsEngine pluginsEngine = PluginsController.engines.get(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986140132746032347L));
                Objects.requireNonNull(pluginsEngine);
                arrayList = ((PythonPluginsEngine) pluginsEngine).parsePySettingDefinitions(pyObjectCall.asList());
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$didReceivedNotification$0(arrayList);
                }
            });
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$0(List list) {
        UniversalAdapter universalAdapter;
        this.settingItems = list;
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView == null || (universalAdapter = universalRecyclerView.adapter) == null) {
            return;
        }
        universalAdapter.update(true);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        View viewCreateView = super.createView(context);
        if (this.createSubFragmentCallback == null && this.plugin != null) {
            ActionBarMenuItem actionBarMenuItemAddItem = this.actionBar.createMenu().addItem(0, C2888R.drawable.msg_reset);
            this.resetItem = actionBarMenuItemAddItem;
            actionBarMenuItemAddItem.setContentDescription(LocaleController.getString(C2888R.string.Reset));
            AndroidUtilities.updateViewVisibilityAnimated(this.resetItem, PluginsController.getInstance().hasPluginSettingsPreferences(this.plugin.getId()), 0.5f, false);
            this.resetItem.setTag(null);
            this.resetItem.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda12
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createView$5(view);
                }
            });
        }
        checkTargetSetting();
        this.fragmentView = viewCreateView;
        return viewCreateView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(View view) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), getResourceProvider());
        builder.setTitle(LocaleController.getString(C2888R.string.ResetSettings));
        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.ResetPluginSettingsInfo, this.plugin.getName())));
        builder.setPositiveButton(LocaleController.getString(C2888R.string.Reset), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$createView$4(alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        AlertDialog alertDialogCreate = builder.create();
        showDialog(alertDialogCreate);
        TextView textView = (TextView) alertDialogCreate.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(AlertDialog alertDialog, int i) {
        View viewFindFocus;
        View view = this.fragmentView;
        if (view != null && (viewFindFocus = view.findFocus()) != null) {
            viewFindFocus.clearFocus();
        }
        AndroidUtilities.updateViewVisibilityAnimated(this.resetItem, false, 0.5f, true);
        PluginsController.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$3();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3() {
        PluginsController.getInstance().clearPluginSettingsPreferences(this.plugin.getId());
        PluginsController.getInstance().loadPluginSettings(this.plugin.getId());
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$2();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2() {
        BulletinFactory.m1246of(this).createSimpleBulletin(C2888R.raw.info, LocaleController.formatString(C2888R.string.ResetPluginSettings, this.plugin.getName())).show();
    }

    public void checkTargetSetting() {
        Integer num = this.targetSettingItemId;
        if (num != null) {
            scrollToItem(num.intValue());
            this.targetSettingItemId = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x0246  */
    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        String str;
        int identifier;
        UItem uItemM262as;
        String str2;
        String str3;
        String str4;
        UItem uItemCreate;
        HeaderSetting headerSetting;
        String str5;
        UItem uItemAsCheck;
        UItem uItemAsButton;
        String[] strArr;
        if (this.plugin == null) {
            return;
        }
        List<SettingItem> pluginSettingsList = this.settingItems;
        if (pluginSettingsList == null) {
            pluginSettingsList = PluginsController.getInstance().getPluginSettingsList(this.plugin.getId());
        }
        if (pluginSettingsList == null || pluginSettingsList.isEmpty()) {
            return;
        }
        boolean z = false;
        for (SettingItem settingItem : pluginSettingsList) {
            if (settingItem != null) {
                if (TextUtils.isEmpty(settingItem.icon)) {
                    identifier = 0;
                } else {
                    Context context = ApplicationLoader.applicationContext;
                    identifier = context.getResources().getIdentifier(settingItem.icon, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986139119133750491L), context.getPackageName());
                }
                try {
                    str4 = settingItem.type;
                } catch (Exception e) {
                    Log.e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986139415486493915L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986139479911003355L), e);
                }
                switch (str4.hashCode()) {
                    case -1866021310:
                        if (str4.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986139243687802075L))) {
                            EditTextSetting editTextSetting = (EditTextSetting) settingItem;
                            uItemM262as = (editTextSetting.key != null && editTextSetting.hint != null) ? PluginEditTextCell.Factory.m262as(this.plugin, editTextSetting) : null;
                            break;
                        }
                        break;
                    case -1349088399:
                        if (str4.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986139381126755547L))) {
                            CustomSetting customSetting = (CustomSetting) settingItem;
                            uItemCreate = customSetting.item;
                            if (uItemCreate == null) {
                                uItemCreate = customSetting.factory.create(this.plugin, customSetting, customSetting.factoryArgs);
                            }
                            uItemCreate.settingItem = customSetting;
                            uItemM262as = uItemCreate;
                        }
                        break;
                    case -1221270899:
                        if (str4.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986139157788456155L)) && (str5 = (headerSetting = (HeaderSetting) settingItem).text) != null) {
                            uItemCreate = UItem.asHeader(str5);
                            uItemCreate.settingItem = headerSetting;
                            uItemM262as = uItemCreate;
                        }
                        break;
                    case -889473228:
                        if (str4.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986139187853227227L))) {
                            SwitchSetting switchSetting = (SwitchSetting) settingItem;
                            if (switchSetting.key != null && switchSetting.text != null) {
                                boolean pluginSettingBoolean = PluginsController.getInstance().getPluginSettingBoolean(this.plugin.getId(), switchSetting.key, switchSetting.defaultValue);
                                uItemAsCheck = UItem.asCheck(0, switchSetting.text);
                                uItemAsCheck.setChecked(pluginSettingBoolean);
                                uItemAsCheck.drawLine = false;
                                String str6 = switchSetting.subtext;
                                if (str6 != null) {
                                    uItemAsCheck.textValue = str6;
                                    uItemAsCheck.multiline = true;
                                }
                                if (identifier != 0) {
                                    uItemAsCheck.iconResId = identifier;
                                }
                                uItemAsCheck.object2 = switchSetting.key;
                                uItemAsCheck.settingItem = switchSetting;
                                uItemM262as = uItemAsCheck;
                            }
                        }
                        break;
                    case 3556653:
                        if (str4.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986139325292180699L))) {
                            TextSetting textSetting = (TextSetting) settingItem;
                            uItemAsButton = UItem.asButton(0, textSetting.text);
                            uItemAsButton.settingItem = textSetting;
                            if (identifier != 0) {
                                uItemAsButton.iconResId = identifier;
                            }
                            uItemAsButton.accent = textSetting.accent;
                            uItemAsButton.red = textSetting.red;
                            if (!TextUtils.isEmpty(textSetting.subtext)) {
                                uItemAsButton.subtext = textSetting.subtext;
                                uItemAsButton.intValue = 60;
                            }
                            uItemM262as = uItemAsButton;
                        }
                        break;
                    case 100358090:
                        if (str4.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986139217917998299L))) {
                            InputSetting inputSetting = (InputSetting) settingItem;
                            if (inputSetting.key != null && inputSetting.text != null) {
                                uItemAsButton = UItem.asButton(0, inputSetting.text, PluginsController.getInstance().getPluginSettingString(this.plugin.getId(), inputSetting.key, inputSetting.defaultValue));
                                if (identifier != 0) {
                                    uItemAsButton.iconResId = identifier;
                                }
                                uItemAsButton.object2 = inputSetting.key;
                                uItemAsButton.settingItem = inputSetting;
                                uItemM262as = uItemAsButton;
                            }
                        }
                        break;
                    case 1191572447:
                        if (str4.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986139286637475035L))) {
                            SelectorSetting selectorSetting = (SelectorSetting) settingItem;
                            if (selectorSetting.key != null && selectorSetting.text != null && (strArr = selectorSetting.items) != null && strArr.length != 0) {
                                int pluginSettingInt = PluginsController.getInstance().getPluginSettingInt(this.plugin.getId(), selectorSetting.key, selectorSetting.defaultValue);
                                if (pluginSettingInt < 0 || pluginSettingInt >= selectorSetting.items.length) {
                                    pluginSettingInt = Math.max(0, Math.min(selectorSetting.defaultValue, selectorSetting.items.length - 1));
                                    PluginsController.getInstance().setPluginSetting(this.plugin.getId(), selectorSetting.key, Integer.valueOf(pluginSettingInt));
                                }
                                uItemAsCheck = UItem.asButton(0, selectorSetting.text, selectorSetting.items[pluginSettingInt]);
                                uItemAsCheck.texts = selectorSetting.items;
                                uItemAsCheck.intValue = pluginSettingInt;
                                if (identifier != 0) {
                                    uItemAsCheck.iconResId = identifier;
                                }
                                uItemAsCheck.object2 = selectorSetting.key;
                                uItemAsCheck.settingItem = selectorSetting;
                                uItemM262as = uItemAsCheck;
                            }
                        }
                        break;
                    case 1674318617:
                        if (str4.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986139346767017179L))) {
                            String str7 = ((DividerSetting) settingItem).text;
                            uItemM262as = UItem.asShadow(str7 != null ? LocaleUtils.fullyFormatText(str7, this, null) : Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986139411191526619L));
                            break;
                        }
                        break;
                    default:
                        break;
                }
                if (uItemM262as != null) {
                    uItemM262as.f2105id = getStableId(settingItem);
                    SettingItem settingItem2 = uItemM262as.settingItem;
                    if (settingItem2 != null && (str2 = settingItem2.linkAlias) != null && !TextUtils.isEmpty(str2) && (str3 = this.targetSettingName) != null && !TextUtils.isEmpty(str3) && uItemM262as.settingItem.linkAlias.equals(this.targetSettingName)) {
                        this.targetSettingItemId = Integer.valueOf(uItemM262as.f2105id);
                        this.targetSettingName = null;
                        z = true;
                    }
                    arrayList.add(uItemM262as);
                }
            }
        }
        if (z || (str = this.targetSettingName) == null || TextUtils.isEmpty(str)) {
            return;
        }
        SettingsRegistry.getInstance().onSettingNotFound(this);
        this.targetSettingName = null;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void onClick(final UItem uItem, View view, int i, float f, float f2) {
        Plugin plugin;
        if (uItem == null || (plugin = this.plugin) == null) {
            return;
        }
        SettingItem settingItem = uItem.settingItem;
        try {
            if (settingItem instanceof TextSetting) {
                TextSetting textSetting = (TextSetting) settingItem;
                PyObject pyObject = textSetting.createSubFragmentCallback;
                if (pyObject != null) {
                    openSubFragmentNative(uItem, pyObject);
                    return;
                }
                PyObject pyObject2 = textSetting.onClickCallback;
                if (pyObject2 != null) {
                    pyObject2.call(view);
                    return;
                }
            } else if (settingItem instanceof CustomSetting) {
                CustomSetting customSetting = (CustomSetting) settingItem;
                PyObject pyObject3 = customSetting.createSubFragmentCallback;
                if (pyObject3 != null) {
                    openSubFragmentNative(uItem, pyObject3);
                    return;
                }
                CustomSetting.Factory<?> factory = customSetting.factory;
                if (factory != null) {
                    factory.onClick(plugin, uItem, view);
                    return;
                }
                PyObject pyObject4 = customSetting.onClickCallback;
                if (pyObject4 != null) {
                    pyObject4.call(view);
                    return;
                }
                return;
            }
            Object obj = uItem.object2;
            if (obj instanceof String) {
                final String str = (String) obj;
                if (view instanceof TextCheckCell) {
                    TextCheckCell textCheckCell = (TextCheckCell) view;
                    final boolean z = !textCheckCell.isChecked();
                    textCheckCell.setChecked(z);
                    uItem.setChecked(z);
                    PluginsController.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda16
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onClick$6(str, z, uItem);
                        }
                    });
                    return;
                }
                if (view instanceof NotificationsCheckCell) {
                    NotificationsCheckCell notificationsCheckCell = (NotificationsCheckCell) view;
                    final boolean z2 = !notificationsCheckCell.isChecked();
                    notificationsCheckCell.setChecked(z2);
                    uItem.setChecked(z2);
                    PluginsController.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda17
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onClick$7(str, z2, uItem);
                        }
                    });
                    return;
                }
                if (view instanceof TextCell) {
                    if (settingItem instanceof SelectorSetting) {
                        showSelectorDialog(uItem, view, str);
                    } else if (settingItem instanceof InputSetting) {
                        showStringInputDialog(uItem, view, str);
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$6(String str, boolean z, UItem uItem) {
        PluginsController.getInstance().setPluginSetting(this.plugin.getId(), str, Boolean.valueOf(z));
        SettingItem settingItem = uItem.settingItem;
        if (settingItem instanceof SwitchSetting) {
            triggerOnChange(((SwitchSetting) settingItem).onChangeCallback, str, Boolean.valueOf(z));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$7(String str, boolean z, UItem uItem) {
        PluginsController.getInstance().setPluginSetting(this.plugin.getId(), str, Boolean.valueOf(z));
        SettingItem settingItem = uItem.settingItem;
        if (settingItem instanceof SwitchSetting) {
            triggerOnChange(((SwitchSetting) settingItem).onChangeCallback, str, Boolean.valueOf(z));
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected boolean onLongClick(UItem uItem, View view, int i, float f, float f2) {
        CustomSetting.Factory<?> factory;
        if (uItem != null && this.plugin != null) {
            SettingItem settingItem = uItem.settingItem;
            PyObject pyObject = settingItem.onLongClickCallback;
            if (pyObject != null) {
                try {
                    pyObject.call(view);
                } catch (Exception unused) {
                }
                return true;
            }
            String str = settingItem.linkAlias;
            if (str != null && !TextUtils.isEmpty(str)) {
                showCopyLinkOptions(view, uItem.settingItem.getLink(this.plugin.getId(), this.settingsLinkPrefix));
                return true;
            }
            SettingItem settingItem2 = uItem.settingItem;
            if ((settingItem2 instanceof CustomSetting) && (factory = ((CustomSetting) settingItem2).factory) != null) {
                try {
                    factory.onLongClick(this.plugin, uItem, view);
                } catch (Exception unused2) {
                }
                return true;
            }
        }
        return false;
    }

    private void showStringInputDialog(UItem uItem, final View view, final String str) {
        if (getParentActivity() != null) {
            SettingItem settingItem = uItem.settingItem;
            if (settingItem instanceof InputSetting) {
                final InputSetting inputSetting = (InputSetting) settingItem;
                final AlertDialog[] alertDialogArr = new AlertDialog[1];
                AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), getResourceProvider());
                builder.setTitle(uItem.text);
                LinearLayout linearLayout = new LinearLayout(getContext());
                linearLayout.setOrientation(1);
                if (inputSetting.subtext != null) {
                    TextView textView = new TextView(getContext());
                    textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, getResourceProvider()));
                    textView.setTextSize(1, 16.0f);
                    textView.setText(inputSetting.subtext);
                    linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 24.0f, 5.0f, 24.0f, 12.0f));
                }
                final EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(getContext());
                editTextBoldCursor.lineYFix = true;
                final Runnable runnable = new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$showStringInputDialog$9(editTextBoldCursor, alertDialogArr, view, str, inputSetting);
                    }
                };
                editTextBoldCursor.setTextSize(1, 18.0f);
                editTextBoldCursor.setText(PluginsController.getInstance().getPluginSettingString(this.plugin.getId(), str, inputSetting.defaultValue));
                editTextBoldCursor.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, getResourceProvider()));
                editTextBoldCursor.setHintColor(Theme.getColor(Theme.key_groupcreate_hintText, getResourceProvider()));
                editTextBoldCursor.setHintText(LocaleController.getString(C2888R.string.EnterValue));
                editTextBoldCursor.setFocusable(true);
                editTextBoldCursor.setInputType(147457);
                int i = Theme.key_windowBackgroundWhiteInputFieldActivated;
                editTextBoldCursor.setCursorColor(Theme.getColor(i, getResourceProvider()));
                editTextBoldCursor.setLineColors(Theme.getColor(Theme.key_windowBackgroundWhiteInputField, getResourceProvider()), Theme.getColor(i, getResourceProvider()), Theme.getColor(Theme.key_text_RedRegular, getResourceProvider()));
                editTextBoldCursor.setBackground(null);
                editTextBoldCursor.setPadding(0, AndroidUtilities.m1124dp(6.0f), 0, AndroidUtilities.m1124dp(6.0f));
                linearLayout.addView(editTextBoldCursor, LayoutHelper.createLinear(-1, -2, 24.0f, 0.0f, 24.0f, 10.0f));
                builder.makeCustomMaxHeight();
                builder.setView(linearLayout);
                builder.setWidth(AndroidUtilities.m1124dp(292.0f));
                builder.setPositiveButton(LocaleController.getString(C2888R.string.Done), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda8
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i2) {
                        runnable.run();
                    }
                });
                builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda9
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i2) {
                        alertDialog.dismiss();
                    }
                });
                AlertDialog alertDialogCreate = builder.create();
                alertDialogArr[0] = alertDialogCreate;
                alertDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda10
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        AndroidUtilities.hideKeyboard(editTextBoldCursor);
                    }
                });
                alertDialogArr[0].setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda11
                    @Override // android.content.DialogInterface.OnShowListener
                    public final void onShow(DialogInterface dialogInterface) {
                        PluginSettingsActivity.m2641$r8$lambda$O88spKE2DykoFnqB0ru6o_Id0(editTextBoldCursor, dialogInterface);
                    }
                });
                alertDialogArr[0].setDismissDialogByButtons(false);
                showDialog(alertDialogArr[0]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showStringInputDialog$9(EditTextBoldCursor editTextBoldCursor, AlertDialog[] alertDialogArr, View view, final String str, final InputSetting inputSetting) {
        final String string = editTextBoldCursor.getText().toString();
        AlertDialog alertDialog = alertDialogArr[0];
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        ((TextCell) view).setValue(string, true);
        PluginsController.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showStringInputDialog$8(str, string, inputSetting);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showStringInputDialog$8(String str, String str2, InputSetting inputSetting) {
        PluginsController.getInstance().setPluginSetting(this.plugin.getId(), str, str2);
        triggerOnChange(inputSetting.onChangeCallback, str, str2);
    }

    /* JADX INFO: renamed from: $r8$lambda$O8-8spKE2-DykoFnqB0ru6o_Id0, reason: not valid java name */
    public static /* synthetic */ void m2641$r8$lambda$O88spKE2DykoFnqB0ru6o_Id0(EditTextBoldCursor editTextBoldCursor, DialogInterface dialogInterface) {
        editTextBoldCursor.requestFocus();
        editTextBoldCursor.setSelection(editTextBoldCursor.length());
        AndroidUtilities.showKeyboard(editTextBoldCursor);
    }

    private void showSelectorDialog(UItem uItem, final View view, final String str) {
        if (getParentActivity() != null) {
            SettingItem settingItem = uItem.settingItem;
            if (settingItem instanceof SelectorSetting) {
                final SelectorSetting selectorSetting = (SelectorSetting) settingItem;
                final AtomicReference atomicReference = new AtomicReference();
                LinearLayout linearLayout = new LinearLayout(getContext());
                linearLayout.setOrientation(1);
                final String[] strArr = selectorSetting.items;
                final int i = 0;
                while (i < strArr.length) {
                    RadioColorCell radioColorCell = new RadioColorCell(getParentActivity());
                    radioColorCell.setPadding(AndroidUtilities.m1124dp(4.0f), 0, AndroidUtilities.m1124dp(4.0f), 0);
                    radioColorCell.setCheckColor(Theme.getColor(Theme.key_radioBackground), Theme.getColor(Theme.key_dialogRadioBackgroundChecked));
                    radioColorCell.setTextAndValue(strArr[i], PluginsController.getInstance().getPluginSettingInt(this.plugin.getId(), str, selectorSetting.defaultValue) == i);
                    radioColorCell.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector), 2));
                    linearLayout.addView(radioColorCell);
                    radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda15
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            this.f$0.lambda$showSelectorDialog$15(atomicReference, view, strArr, i, str, selectorSetting, view2);
                        }
                    });
                    i++;
                }
                AlertDialog alertDialogCreate = new AlertDialog.Builder(getParentActivity()).setTitle(uItem.text).setView(linearLayout).setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null).create();
                atomicReference.set(alertDialogCreate);
                showDialog(alertDialogCreate);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSelectorDialog$15(AtomicReference atomicReference, View view, String[] strArr, final int i, final String str, final SelectorSetting selectorSetting, View view2) {
        if (atomicReference.get() != null) {
            ((Dialog) atomicReference.get()).dismiss();
        }
        ((TextCell) view).setValue(strArr[i], true);
        PluginsController.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showSelectorDialog$14(str, i, selectorSetting);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSelectorDialog$14(String str, int i, SelectorSetting selectorSetting) {
        PluginsController.getInstance().setPluginSetting(this.plugin.getId(), str, Integer.valueOf(i));
        triggerOnChange(selectorSetting.onChangeCallback, str, Integer.valueOf(i));
    }

    private int getStableId(SettingItem settingItem) {
        if (settingItem instanceof SwitchSetting) {
            return Objects.hash(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986139565810349275L), ((SwitchSetting) settingItem).key);
        }
        if (settingItem instanceof InputSetting) {
            return Objects.hash(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986139595875120347L), ((InputSetting) settingItem).key);
        }
        if (settingItem instanceof EditTextSetting) {
            return Objects.hash(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986139621644924123L), ((EditTextSetting) settingItem).key);
        }
        if (settingItem instanceof SelectorSetting) {
            return Objects.hash(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986139643119760603L), ((SelectorSetting) settingItem).key);
        }
        if (settingItem instanceof HeaderSetting) {
            return Objects.hash(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986139681774466267L), ((HeaderSetting) settingItem).text);
        }
        if (settingItem instanceof DividerSetting) {
            return Objects.hash(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986139711839237339L), ((DividerSetting) settingItem).text);
        }
        if (settingItem instanceof TextSetting) {
            return Objects.hash(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986139746198975707L), ((TextSetting) settingItem).text);
        }
        if (settingItem instanceof CustomSetting) {
            CustomSetting customSetting = (CustomSetting) settingItem;
            String string = Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986139767673812187L);
            UItem uItem = customSetting.item;
            Integer numValueOf = Integer.valueOf(uItem != null ? uItem.f2105id : customSetting.factory.hashCode());
            PyObject pyObject = customSetting.factoryArgs;
            return Objects.hash(string, numValueOf, pyObject != null ? Integer.valueOf(pyObject.hashCode()) : null);
        }
        return settingItem.hashCode();
    }

    private void triggerOnChange(final PyObject pyObject, final String str, final Object obj) {
        PluginsController.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$triggerOnChange$16(pyObject, obj, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$triggerOnChange$16(PyObject pyObject, Object obj, String str) {
        if (pyObject != null) {
            try {
                pyObject.call(obj);
            } catch (Exception e) {
                FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986139952357405915L) + this.plugin.getId() + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986140124156097755L) + str, e);
            }
        }
    }

    private void openSubFragmentNative(final UItem uItem, final PyObject pyObject) {
        PluginsController.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openSubFragmentNative$18(pyObject, uItem);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openSubFragmentNative$18(final PyObject pyObject, final UItem uItem) {
        final List<SettingItem> arrayList = new ArrayList<>();
        try {
            PyObject pyObjectCall = pyObject.call(new Object[0]);
            if (pyObjectCall != null) {
                PluginsController.PluginsEngine pluginsEngine = PluginsController.engines.get(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986139797738583259L));
                Objects.requireNonNull(pluginsEngine);
                arrayList = ((PythonPluginsEngine) pluginsEngine).parsePySettingDefinitions(pyObjectCall.asList());
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openSubFragmentNative$17(arrayList, uItem, pyObject);
                }
            });
        } catch (Exception e) {
            FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986139827803354331L), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openSubFragmentNative$17(List list, UItem uItem, PyObject pyObject) {
        String name;
        String string;
        if (list.isEmpty()) {
            return;
        }
        CharSequence charSequence = uItem.text;
        if (charSequence != null && !TextUtils.isEmpty(charSequence)) {
            name = uItem.text.toString();
        } else {
            name = this.customTitle;
            if (name == null) {
                name = this.plugin.getName();
            }
        }
        PluginSettingsActivity pluginSettingsActivity = new PluginSettingsActivity(this.plugin, name, list, pyObject);
        StringBuilder sb = new StringBuilder();
        if (this.settingsLinkPrefix == null) {
            string = Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986139939472504027L);
        } else {
            string = this.settingsLinkPrefix + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986139943767471323L);
        }
        sb.append(string);
        sb.append(uItem.settingItem.linkAlias);
        presentFragment(pluginSettingsActivity.setSettingsLinkPrefix(sb.toString()));
    }
}
