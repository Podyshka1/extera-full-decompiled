package com.exteragram.messenger.plugins.ui;

import android.animation.ValueAnimator;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.Editable;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.chaquo.python.PyObject;
import com.exteragram.messenger.plugins.Plugin;
import com.exteragram.messenger.plugins.PluginsConstants;
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
import com.exteragram.messenger.plugins.ui.PluginSettingsTranslation;
import com.exteragram.messenger.plugins.ui.components.PluginEditTextCell;
import com.exteragram.messenger.plugins.ui.components.PluginTranslateButton;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.exteragram.messenger.preferences.utils.SettingsRegistry;
import com.exteragram.messenger.utils.text.LocaleUtils;
import com.sun.jna.Callback;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.ClosedRange;
import kotlin.ranges.RangesKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenu;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.NotificationsCheckCell;
import org.telegram.ui.Cells.RadioColorCell;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.Cells.TextCheckCell;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000¬\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\t\b\u0016¢\u0006\u0004\b\u0004\u0010\u0005B\u001d\b\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0004\u0010\nBA\b\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0004\u0010\u0011J\u0010\u0010&\u001a\u00020\u00002\b\u0010\u0019\u001a\u0004\u0018\u00010\tJ\b\u0010'\u001a\u00020\tH\u0016J\b\u0010(\u001a\u00020)H\u0016J\b\u0010*\u001a\u00020+H\u0016J5\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020\u00172\u0006\u0010.\u001a\u00020\u00172\u0016\u0010/\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010100\"\u0004\u0018\u000101H\u0016¢\u0006\u0002\u00102J\u0010\u00103\u001a\u0002042\u0006\u00105\u001a\u000206H\u0014J\u0010\u00107\u001a\u00020+2\u0006\u00108\u001a\u00020)H\u0016J\b\u00109\u001a\u00020+H\u0002J\u0010\u0010:\u001a\u00020+2\u0006\u0010;\u001a\u00020)H\u0002J\u0014\u0010<\u001a\u0004\u0018\u00010\t2\b\u0010=\u001a\u0004\u0018\u00010\tH\u0002J\u0006\u0010>\u001a\u00020+J(\u0010?\u001a\u00020+2\u0016\u0010@\u001a\u0012\u0012\u0004\u0012\u00020B0Aj\b\u0012\u0004\u0012\u00020B`C2\u0006\u0010D\u001a\u00020EH\u0014J0\u0010F\u001a\u00020+2\u0006\u0010G\u001a\u00020B2\u0006\u0010H\u001a\u0002042\u0006\u0010I\u001a\u00020\u00172\u0006\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020KH\u0014J4\u0010M\u001a\u00020+2\u0006\u0010G\u001a\u00020B2\u0006\u0010N\u001a\u00020\t2\u0006\u0010O\u001a\u00020)2\u0012\u0010P\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020+0QH\u0002J0\u0010R\u001a\u00020)2\u0006\u0010G\u001a\u00020B2\u0006\u0010H\u001a\u0002042\u0006\u0010I\u001a\u00020\u00172\u0006\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020KH\u0014J \u0010S\u001a\u00020+2\u0006\u0010G\u001a\u00020B2\u0006\u0010H\u001a\u0002042\u0006\u0010N\u001a\u00020\tH\u0002J \u0010T\u001a\u00020+2\u0006\u0010G\u001a\u00020B2\u0006\u0010H\u001a\u0002042\u0006\u0010N\u001a\u00020\tH\u0002J\u0010\u0010U\u001a\u00020\u00172\u0006\u0010G\u001a\u00020\u000eH\u0002J\u0018\u0010V\u001a\u00020+2\u0006\u0010G\u001a\u00020B2\u0006\u0010W\u001a\u00020\u0010H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0018R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u001a\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b\u001c\u0010\u001dR\u001e\u0010 \u001a\u0012\u0012\u0004\u0012\u00020\t0!j\b\u0012\u0004\u0012\u00020\t`\"X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006X"}, d2 = {"Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;", "Lcom/exteragram/messenger/plugins/ui/PluginSettingsTranslation$Listener;", "<init>", "()V", "plugin", "Lcom/exteragram/messenger/plugins/Plugin;", "targetSettingName", _UrlKt.FRAGMENT_ENCODE_SET, "(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;)V", "title", "settingsList", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/models/SettingItem;", "createSubFragmentCallback", "Lcom/chaquo/python/PyObject;", "(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;Ljava/util/List;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V", "customTitle", "settingItems", "resetItem", "Lorg/telegram/ui/ActionBar/ActionBarMenuItem;", "targetSettingItemId", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/lang/Integer;", "settingsLinkPrefix", "translation", "Lcom/exteragram/messenger/plugins/ui/PluginSettingsTranslation;", "getTranslation", "()Lcom/exteragram/messenger/plugins/ui/PluginSettingsTranslation;", "translation$delegate", "Lkotlin/Lazy;", "visibleTexts", "Ljava/util/LinkedHashSet;", "Lkotlin/collections/LinkedHashSet;", "translateItem", "translateButton", "Lcom/exteragram/messenger/plugins/ui/components/PluginTranslateButton;", "setSettingsLinkPrefix", "getTitle", "onFragmentCreate", _UrlKt.FRAGMENT_ENCODE_SET, "onFragmentDestroy", _UrlKt.FRAGMENT_ENCODE_SET, "didReceivedNotification", "id", "account", "args", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "(II[Ljava/lang/Object;)V", "createView", "Landroid/view/View;", "context", "Landroid/content/Context;", "onTranslationChanged", "failed", "onTranslateClick", "updateTranslateItem", "animated", "tr", "text", "checkTargetSetting", "fillItems", PluginsConstants.Settings.ITEMS, "Ljava/util/ArrayList;", "Lorg/telegram/ui/Components/UItem;", "Lkotlin/collections/ArrayList;", "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "onClick", PluginsConstants.Settings.ITEM, PluginsConstants.Settings.VIEW, "position", "x", _UrlKt.FRAGMENT_ENCODE_SET, "y", "toggleSwitch", PluginsConstants.Settings.KEY, "newValue", "setViewChecked", "Lkotlin/Function1;", "onLongClick", "showStringInputDialog", "showSelectorDialog", "getStableId", "openSubFragmentNative", Callback.METHOD_NAME, "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPluginSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginSettingsActivity.kt\ncom/exteragram/messenger/plugins/ui/PluginSettingsActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,723:1\n1#2:724\n11693#3:725\n12040#3,3:726\n11693#3:731\n12040#3,3:732\n37#4,2:729\n*S KotlinDebug\n*F\n+ 1 PluginSettingsActivity.kt\ncom/exteragram/messenger/plugins/ui/PluginSettingsActivity\n*L\n368#1:725\n368#1:726,3\n634#1:731\n634#1:732,3\n368#1:729,2\n*E\n"})
public final class PluginSettingsActivity extends BasePreferencesActivity implements NotificationCenter.NotificationCenterDelegate, PluginSettingsTranslation.Listener {
    private PyObject createSubFragmentCallback;
    private String customTitle;
    private Plugin plugin;
    private ActionBarMenuItem resetItem;
    private List<? extends SettingItem> settingItems;
    private String settingsLinkPrefix;
    private Integer targetSettingItemId;
    private String targetSettingName;
    private PluginTranslateButton translateButton;
    private ActionBarMenuItem translateItem;

    /* JADX INFO: renamed from: translation$delegate, reason: from kotlin metadata */
    private final Lazy translation;
    private final LinkedHashSet<String> visibleTexts;

    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public PluginSettingsActivity(Plugin plugin) {
        this(plugin, (String) null, 2, (DefaultConstructorMarker) (0 == true ? 1 : 0));
    }

    @JvmOverloads
    public PluginSettingsActivity(Plugin plugin, String str, List<? extends SettingItem> list, PyObject pyObject) {
        this(plugin, str, list, pyObject, null, 16, null);
    }

    /* JADX INFO: renamed from: $r8$lambda$xCyMslpbmlOrWwsP0i6G-lhGMtE, reason: not valid java name */
    public static PluginSettingsTranslation m3123$r8$lambda$xCyMslpbmlOrWwsP0i6GlhGMtE(PluginSettingsActivity pluginSettingsActivity) {
        PluginSettingsTranslation.Companion companion = PluginSettingsTranslation.INSTANCE;
        Plugin plugin = pluginSettingsActivity.plugin;
        if (plugin == null) {
            plugin = null;
        }
        return companion.of(plugin.getId());
    }

    private final PluginSettingsTranslation getTranslation() {
        return (PluginSettingsTranslation) this.translation.getValue();
    }

    public PluginSettingsActivity() {
        this.translation = LazyKt.lazy(new Function0() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda15
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PluginSettingsActivity.m3123$r8$lambda$xCyMslpbmlOrWwsP0i6GlhGMtE(this.f$0);
            }
        });
        this.visibleTexts = new LinkedHashSet<>();
    }

    public /* synthetic */ PluginSettingsActivity(Plugin plugin, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(plugin, (i & 2) != 0 ? null : str);
    }

    @JvmOverloads
    public PluginSettingsActivity(Plugin plugin, String str) {
        this();
        this.plugin = plugin;
        this.targetSettingName = str;
    }

    public /* synthetic */ PluginSettingsActivity(Plugin plugin, String str, List list, PyObject pyObject, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(plugin, str, list, pyObject, (i & 16) != 0 ? null : str2);
    }

    @JvmOverloads
    public PluginSettingsActivity(Plugin plugin, String str, List<? extends SettingItem> list, PyObject pyObject, String str2) {
        this();
        this.plugin = plugin;
        this.customTitle = str;
        this.settingItems = list;
        this.createSubFragmentCallback = pyObject;
        this.targetSettingName = str2;
    }

    public final PluginSettingsActivity setSettingsLinkPrefix(String settingsLinkPrefix) {
        this.settingsLinkPrefix = settingsLinkPrefix;
        return this;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        PluginSettingsTranslation translation = getTranslation();
        String name = this.customTitle;
        if (name == null) {
            Plugin plugin = this.plugin;
            if (plugin == null) {
                plugin = null;
            }
            name = plugin.getName();
        }
        String strText = translation.text(name);
        return strText == null ? _UrlKt.FRAGMENT_ENCODE_SET : strText;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.pluginSettingsRegistered);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.pluginSettingsUnregistered);
        getTranslation().addListener(this);
        getTranslation().resetFailed();
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.pluginSettingsRegistered);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.pluginSettingsUnregistered);
        getTranslation().removeListener(this);
        super.onFragmentDestroy();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int id, int account, Object... args) {
        if (id == NotificationCenter.pluginSettingsRegistered) {
            Object objFirstOrNull = ArraysKt.firstOrNull(args);
            String str = objFirstOrNull instanceof String ? (String) objFirstOrNull : null;
            if (str != null) {
                Plugin plugin = this.plugin;
                if (plugin == null) {
                    plugin = null;
                }
                if (!Intrinsics.areEqual(plugin.getId(), str)) {
                    return;
                }
            }
            final PyObject pyObject = this.createSubFragmentCallback;
            if (pyObject != null) {
                PluginsController.INSTANCE.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        PluginSettingsActivity.m3119$r8$lambda$9pY5TzlHVvCQHIyjDvEtTS9eys(this.f$0, pyObject);
                    }
                });
                return;
            }
            UniversalAdapter universalAdapter = getListView$TMessagesProj().adapter;
            if (universalAdapter != null) {
                universalAdapter.update(true);
            }
            ActionBarMenuItem actionBarMenuItem = this.resetItem;
            if (actionBarMenuItem != null) {
                PluginsController companion = PluginsController.INSTANCE.getInstance();
                Plugin plugin2 = this.plugin;
                AndroidUtilities.updateViewVisibilityAnimated(actionBarMenuItem, companion.hasPluginSettingsPreferences((plugin2 != null ? plugin2 : null).getId()), 0.5f, true, 1.0f, true, new ValueAnimator.AnimatorUpdateListener() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda5
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        PluginSettingsActivity.$r8$lambda$VrbycZPHCdbIObj6EGdZ3pXZPkI(this.f$0, valueAnimator);
                    }
                });
                return;
            }
            return;
        }
        if (id == NotificationCenter.pluginSettingsUnregistered) {
            Object objFirstOrNull2 = ArraysKt.firstOrNull(args);
            String str2 = objFirstOrNull2 instanceof String ? (String) objFirstOrNull2 : null;
            if (str2 == null) {
                return;
            }
            Plugin plugin3 = this.plugin;
            if (plugin3 == null) {
                plugin3 = null;
            }
            if (Intrinsics.areEqual(plugin3.getId(), str2)) {
                PluginsController companion2 = PluginsController.INSTANCE.getInstance();
                Plugin plugin4 = this.plugin;
                if (companion2.hasPluginSettings((plugin4 != null ? plugin4 : null).getId())) {
                    return;
                }
                finishFragment();
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$9pY5TzlHVvCQHIyjDvEtTS9-eys, reason: not valid java name */
    public static void m3119$r8$lambda$9pY5TzlHVvCQHIyjDvEtTS9eys(final PluginSettingsActivity pluginSettingsActivity, PyObject pyObject) {
        PluginsController.Companion companion = PluginsController.INSTANCE;
        PluginsController companion2 = companion.getInstance();
        Plugin plugin = pluginSettingsActivity.plugin;
        if (plugin == null) {
            plugin = null;
        }
        if (companion2.isPluginActive$TMessagesProj(plugin)) {
            try {
                PyObject pyObjectCall = pyObject.call(new Object[0]);
                if (pyObjectCall == null) {
                    return;
                }
                PluginsController.PluginsEngine pluginsEngine = companion.getEngines().get(PluginsConstants.PYTHON);
                PythonPluginsEngine pythonPluginsEngine = pluginsEngine instanceof PythonPluginsEngine ? (PythonPluginsEngine) pluginsEngine : null;
                if (pythonPluginsEngine == null) {
                    return;
                }
                final List<SettingItem> pySettingDefinitions = pythonPluginsEngine.parsePySettingDefinitions(pyObjectCall.asList());
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        PluginSettingsActivity.$r8$lambda$T_NnNSIT5Jyk2zKST0nB2HCN7WE(this.f$0, pySettingDefinitions);
                    }
                });
            } catch (Exception unused) {
            }
        }
    }

    public static void $r8$lambda$T_NnNSIT5Jyk2zKST0nB2HCN7WE(PluginSettingsActivity pluginSettingsActivity, List list) {
        pluginSettingsActivity.settingItems = list;
        UniversalAdapter universalAdapter = pluginSettingsActivity.getListView$TMessagesProj().adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
    }

    public static void $r8$lambda$VrbycZPHCdbIObj6EGdZ3pXZPkI(PluginSettingsActivity pluginSettingsActivity, ValueAnimator valueAnimator) {
        ActionBar actionBar = pluginSettingsActivity.actionBar;
        if (actionBar != null) {
            actionBar.requestLayout();
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        View viewCreateView = super.createView(context);
        ActionBarMenu actionBarMenuCreateMenu = this.actionBar.createMenu();
        ActionBarMenuItem actionBarMenuItemAddItem = actionBarMenuCreateMenu.addItem(1, 0);
        PluginTranslateButton pluginTranslateButton = new PluginTranslateButton(context, Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourceProvider));
        actionBarMenuItemAddItem.addView(pluginTranslateButton, LayoutHelper.createFrame(-1, -1.0f));
        this.translateButton = pluginTranslateButton;
        actionBarMenuItemAddItem.setContentDescription(pluginTranslateButton.getContentDescription());
        AndroidUtilities.updateViewVisibilityAnimated(actionBarMenuItemAddItem, false, 0.5f, false);
        actionBarMenuItemAddItem.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onTranslateClick();
            }
        });
        this.translateItem = actionBarMenuItemAddItem;
        if (this.createSubFragmentCallback == null) {
            final ActionBarMenuItem actionBarMenuItemAddItem2 = actionBarMenuCreateMenu.addItem(0, C2807R.drawable.msg_reset);
            actionBarMenuItemAddItem2.setContentDescription(LocaleController.getString(C2807R.string.Reset));
            PluginsController companion = PluginsController.INSTANCE.getInstance();
            Plugin plugin = this.plugin;
            if (plugin == null) {
                plugin = null;
            }
            AndroidUtilities.updateViewVisibilityAnimated(actionBarMenuItemAddItem2, companion.hasPluginSettingsPreferences(plugin.getId()), 0.5f, false);
            actionBarMenuItemAddItem2.setTag(null);
            actionBarMenuItemAddItem2.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda13
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PluginSettingsActivity.m3122$r8$lambda$UzH2mCmxw9lvEAd71iI0aCVthU(actionBarMenuItemAddItem2, this, view);
                }
            });
            this.resetItem = actionBarMenuItemAddItem2;
        }
        checkTargetSetting();
        updateTranslateItem(false);
        this.fragmentView = viewCreateView;
        return viewCreateView;
    }

    /* JADX INFO: renamed from: $r8$lambda$UzH2mCmxw9lvEAd71iI0aCVth-U, reason: not valid java name */
    public static void m3122$r8$lambda$UzH2mCmxw9lvEAd71iI0aCVthU(ActionBarMenuItem actionBarMenuItem, final PluginSettingsActivity pluginSettingsActivity, final View view) {
        AlertDialog.Builder builder = new AlertDialog.Builder(actionBarMenuItem.getContext(), pluginSettingsActivity.resourceProvider);
        builder.setTitle(LocaleController.getString(C2807R.string.ResetSettings));
        int i = C2807R.string.ResetPluginSettingsInfo;
        Plugin plugin = pluginSettingsActivity.plugin;
        if (plugin == null) {
            plugin = null;
        }
        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(i, plugin.getName())));
        builder.setPositiveButton(LocaleController.getString(C2807R.string.Reset), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                PluginSettingsActivity.$r8$lambda$h03KbGNTNb1OtVtW90IDgFBXz1A(this.f$0, view, alertDialog, i2);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2807R.string.Cancel), null);
        AlertDialog alertDialogCreate = builder.create();
        pluginSettingsActivity.showDialog(alertDialogCreate);
        View button = alertDialogCreate.getButton(-1);
        TextView textView = button instanceof TextView ? (TextView) button : null;
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
    }

    public static void $r8$lambda$h03KbGNTNb1OtVtW90IDgFBXz1A(final PluginSettingsActivity pluginSettingsActivity, View view, AlertDialog alertDialog, int i) {
        View viewFindFocus;
        View view2 = pluginSettingsActivity.fragmentView;
        if (view2 != null && (viewFindFocus = view2.findFocus()) != null) {
            viewFindFocus.clearFocus();
        }
        AndroidUtilities.updateViewVisibilityAnimated(view, false, 0.5f, true, 1.0f, true, new ValueAnimator.AnimatorUpdateListener() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda16
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                PluginSettingsActivity.m3120$r8$lambda$Ce6DjGUz1AF3cZvPIAbGAMv1I8(this.f$0, valueAnimator);
            }
        });
        PluginsController.INSTANCE.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                PluginSettingsActivity.$r8$lambda$PhH2ExfyC8JNHIRVvp74w06bowU(this.f$0);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$Ce6DjGUz1AF3cZ-vPIAbGAMv1I8, reason: not valid java name */
    public static void m3120$r8$lambda$Ce6DjGUz1AF3cZvPIAbGAMv1I8(PluginSettingsActivity pluginSettingsActivity, ValueAnimator valueAnimator) {
        ActionBar actionBar = pluginSettingsActivity.actionBar;
        if (actionBar != null) {
            actionBar.requestLayout();
        }
    }

    public static void $r8$lambda$PhH2ExfyC8JNHIRVvp74w06bowU(final PluginSettingsActivity pluginSettingsActivity) {
        PluginsController.Companion companion = PluginsController.INSTANCE;
        PluginsController companion2 = companion.getInstance();
        Plugin plugin = pluginSettingsActivity.plugin;
        if (plugin == null) {
            plugin = null;
        }
        PluginsController.clearPluginSettingsPreferences$default(companion2, plugin.getId(), false, 2, null);
        PluginsController companion3 = companion.getInstance();
        Plugin plugin2 = pluginSettingsActivity.plugin;
        companion3.loadPluginSettings((plugin2 != null ? plugin2 : null).getId());
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                PluginSettingsActivity.m3117$r8$lambda$1Ja_dxkLD7loik7O2cLHRMxUJg(this.f$0);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$1-Ja_dxkLD7loik7O2cLHRMxUJg, reason: not valid java name */
    public static void m3117$r8$lambda$1Ja_dxkLD7loik7O2cLHRMxUJg(PluginSettingsActivity pluginSettingsActivity) {
        BulletinFactory bulletinFactoryOf = BulletinFactory.of(pluginSettingsActivity);
        int i = C2807R.raw.info;
        int i2 = C2807R.string.ResetPluginSettings;
        Plugin plugin = pluginSettingsActivity.plugin;
        if (plugin == null) {
            plugin = null;
        }
        bulletinFactoryOf.createSimpleBulletin(i, LocaleController.formatString(i2, plugin.getName())).show();
    }

    @Override // com.exteragram.messenger.plugins.ui.PluginSettingsTranslation.Listener
    public void onTranslationChanged(boolean failed) {
        UniversalAdapter universalAdapter = getListView$TMessagesProj().adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.setTitle(getTitle());
        }
        updateTranslateItem(true);
        if (failed && isLastFragment()) {
            BulletinFactory.of(this).createErrorBulletin(LocaleController.getString(C2807R.string.TranslationFailedAlert2)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onTranslateClick() {
        if (getTranslation().isLoading()) {
            return;
        }
        getTranslation().setEnabled(!getTranslation().getEnabled());
    }

    private final void updateTranslateItem(boolean animated) {
        int i = 1;
        AndroidUtilities.updateViewVisibilityAnimated(this.translateItem, getTranslation().isTranslatable() || getTranslation().getEnabled(), 0.5f, true, 1.0f, animated, new ValueAnimator.AnimatorUpdateListener() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                PluginSettingsActivity.$r8$lambda$wxlGKayieU74hzvWkJtTGgqkxNw(this.f$0, valueAnimator);
            }
        });
        PluginTranslateButton pluginTranslateButton = this.translateButton;
        if (pluginTranslateButton != null) {
            if (!getTranslation().getEnabled()) {
                i = 0;
            } else if (!getTranslation().isLoading()) {
                i = 2;
            }
            pluginTranslateButton.setState(i);
            ActionBarMenuItem actionBarMenuItem = this.translateItem;
            if (actionBarMenuItem != null) {
                actionBarMenuItem.setContentDescription(pluginTranslateButton.getContentDescription());
            }
        }
    }

    public static void $r8$lambda$wxlGKayieU74hzvWkJtTGgqkxNw(PluginSettingsActivity pluginSettingsActivity, ValueAnimator valueAnimator) {
        ActionBar actionBar = pluginSettingsActivity.actionBar;
        if (actionBar != null) {
            actionBar.requestLayout();
        }
    }

    private final String tr(String text) {
        if (text != null) {
            this.visibleTexts.add(text);
        }
        return getTranslation().text(text);
    }

    public final void checkTargetSetting() {
        Integer num = this.targetSettingItemId;
        if (num != null) {
            scrollToItem(num.intValue());
            this.targetSettingItemId = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:144:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0071  */
    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        String str;
        int identifier;
        UItem item;
        CharSequence charSequenceFullyFormatText;
        UItem uItemAsButton;
        List<SettingItem> pluginSettingsList = this.settingItems;
        if (pluginSettingsList == null) {
            PluginsController companion = PluginsController.INSTANCE.getInstance();
            Plugin plugin = this.plugin;
            if (plugin == null) {
                plugin = null;
            }
            pluginSettingsList = companion.getPluginSettingsList(plugin.getId());
        }
        List list = pluginSettingsList;
        if (list == null || list.isEmpty()) {
            return;
        }
        this.visibleTexts.clear();
        String name = this.customTitle;
        if (name == null) {
            Plugin plugin2 = this.plugin;
            if (plugin2 == null) {
                plugin2 = null;
            }
            name = plugin2.getName();
        }
        tr(name);
        boolean z = false;
        for (SettingItem settingItem : pluginSettingsList) {
            String icon = settingItem.getIcon();
            if (icon == null) {
                identifier = 0;
            } else {
                if (icon.length() <= 0) {
                    icon = null;
                }
                if (icon != null) {
                    Context context = ApplicationLoader.applicationContext;
                    identifier = context.getResources().getIdentifier(icon, "drawable", context.getPackageName());
                }
            }
            try {
            } catch (Exception e) {
                Log.e("PluginSettings", "Error creating item", e);
            }
            if (settingItem instanceof HeaderSetting) {
                String text = ((HeaderSetting) settingItem).getText();
                if (text != null) {
                    item = UItem.asHeader(tr(text));
                    item.settingItem = settingItem;
                } else {
                    item = null;
                }
            } else if (settingItem instanceof SwitchSetting) {
                String key = ((SwitchSetting) settingItem).getKey();
                String text2 = ((SwitchSetting) settingItem).getText();
                if (key != null && text2 != null) {
                    PluginsController companion2 = PluginsController.INSTANCE.getInstance();
                    Plugin plugin3 = this.plugin;
                    if (plugin3 == null) {
                        plugin3 = null;
                    }
                    boolean pluginSettingBoolean = companion2.getPluginSettingBoolean(plugin3.getId(), key, ((SwitchSetting) settingItem).getDefaultValue());
                    uItemAsButton = UItem.asCheck(0, tr(text2));
                    uItemAsButton.setChecked(pluginSettingBoolean);
                    uItemAsButton.drawLine = false;
                    String subtext = ((SwitchSetting) settingItem).getSubtext();
                    if (subtext != null) {
                        uItemAsButton.textValue = tr(subtext);
                        uItemAsButton.multiline = true;
                    }
                    if (identifier != 0) {
                        uItemAsButton.iconResId = identifier;
                    }
                    uItemAsButton.object2 = key;
                    uItemAsButton.settingItem = settingItem;
                    item = uItemAsButton;
                }
                item = null;
            } else if (settingItem instanceof InputSetting) {
                String key2 = ((InputSetting) settingItem).getKey();
                String text3 = ((InputSetting) settingItem).getText();
                if (key2 != null && text3 != null) {
                    PluginsController companion3 = PluginsController.INSTANCE.getInstance();
                    Plugin plugin4 = this.plugin;
                    if (plugin4 == null) {
                        plugin4 = null;
                    }
                    uItemAsButton = UItem.asButton(0, tr(text3), companion3.getPluginSettingString(plugin4.getId(), key2, ((InputSetting) settingItem).getDefaultValue()));
                    tr(((InputSetting) settingItem).getSubtext());
                    if (identifier != 0) {
                        uItemAsButton.iconResId = identifier;
                    }
                    uItemAsButton.object2 = key2;
                    uItemAsButton.settingItem = settingItem;
                    item = uItemAsButton;
                }
                item = null;
            } else if (settingItem instanceof EditTextSetting) {
                if (((EditTextSetting) settingItem).getKey() != null && ((EditTextSetting) settingItem).getHint() != null) {
                    PluginEditTextCell.Factory.Companion companion4 = PluginEditTextCell.Factory.INSTANCE;
                    Plugin plugin5 = this.plugin;
                    if (plugin5 == null) {
                        plugin5 = null;
                    }
                    item = companion4.as(plugin5, (EditTextSetting) settingItem);
                    item.text = tr(((EditTextSetting) settingItem).getHint());
                }
            } else {
                boolean z2 = settingItem instanceof SelectorSetting;
                CharSequence charSequence = _UrlKt.FRAGMENT_ENCODE_SET;
                if (z2) {
                    String key3 = ((SelectorSetting) settingItem).getKey();
                    String text4 = ((SelectorSetting) settingItem).getText();
                    if (key3 != null && text4 != null) {
                        if (!(((SelectorSetting) settingItem).getItems().length == 0)) {
                            PluginsController.Companion companion5 = PluginsController.INSTANCE;
                            PluginsController companion6 = companion5.getInstance();
                            Plugin plugin6 = this.plugin;
                            if (plugin6 == null) {
                                plugin6 = null;
                            }
                            int pluginSettingInt = companion6.getPluginSettingInt(plugin6.getId(), key3, ((SelectorSetting) settingItem).getDefaultValue());
                            if (pluginSettingInt < 0 || pluginSettingInt >= ((SelectorSetting) settingItem).getItems().length) {
                                pluginSettingInt = RangesKt.coerceIn(((SelectorSetting) settingItem).getDefaultValue(), (ClosedRange<Integer>) ArraysKt.getIndices(((SelectorSetting) settingItem).getItems()));
                                PluginsController companion7 = companion5.getInstance();
                                Plugin plugin7 = this.plugin;
                                if (plugin7 == null) {
                                    plugin7 = null;
                                }
                                companion7.setPluginSetting(plugin7.getId(), key3, Integer.valueOf(pluginSettingInt));
                            }
                            String[] items2 = ((SelectorSetting) settingItem).getItems();
                            ArrayList arrayList = new ArrayList(items2.length);
                            for (String str2 : items2) {
                                String strTr = tr(str2);
                                if (strTr == null) {
                                    strTr = _UrlKt.FRAGMENT_ENCODE_SET;
                                }
                                arrayList.add(strTr);
                            }
                            String[] strArr = (String[]) arrayList.toArray(new String[0]);
                            uItemAsButton = UItem.asButton(0, tr(text4), strArr[pluginSettingInt]);
                            uItemAsButton.texts = strArr;
                            uItemAsButton.intValue = pluginSettingInt;
                            if (identifier != 0) {
                                uItemAsButton.iconResId = identifier;
                            }
                            uItemAsButton.object2 = key3;
                            uItemAsButton.settingItem = settingItem;
                            item = uItemAsButton;
                        }
                    }
                } else if (settingItem instanceof TextSetting) {
                    UItem uItemAsButton2 = UItem.asButton(0, tr(((TextSetting) settingItem).getText()));
                    uItemAsButton2.settingItem = settingItem;
                    if (identifier != 0) {
                        uItemAsButton2.iconResId = identifier;
                    }
                    uItemAsButton2.accent = ((TextSetting) settingItem).getAccent();
                    uItemAsButton2.red = ((TextSetting) settingItem).getRed();
                    String subtext2 = ((TextSetting) settingItem).getSubtext();
                    if (subtext2 != null && subtext2.length() != 0) {
                        uItemAsButton2.subtext = tr(((TextSetting) settingItem).getSubtext());
                        uItemAsButton2.intValue = 60;
                    }
                    item = uItemAsButton2;
                } else if (settingItem instanceof DividerSetting) {
                    String strTr2 = tr(((DividerSetting) settingItem).getText());
                    if (strTr2 != null && (charSequenceFullyFormatText = LocaleUtils.fullyFormatText(strTr2, this, null)) != null) {
                        charSequence = charSequenceFullyFormatText;
                    }
                    item = UItem.asShadow(charSequence);
                } else if (settingItem instanceof CustomSetting) {
                    item = ((CustomSetting) settingItem).getItem();
                    if (item == null) {
                        CustomSetting.Factory<?> factory = ((CustomSetting) settingItem).getFactory();
                        if (factory != null) {
                            Plugin plugin8 = this.plugin;
                            if (plugin8 == null) {
                                plugin8 = null;
                            }
                            item = factory.create(plugin8, (CustomSetting) settingItem, ((CustomSetting) settingItem).getFactoryArgs());
                        } else {
                            item = null;
                        }
                    }
                    if (item != null) {
                        item.settingItem = settingItem;
                    }
                }
                item = null;
            }
            if (item != null) {
                item.id = getStableId(settingItem);
                SettingItem settingItem2 = item.settingItem;
                String linkAlias = settingItem2 != null ? settingItem2.getLinkAlias() : null;
                String str3 = this.targetSettingName;
                if (str3 != null && str3.length() != 0 && Intrinsics.areEqual(linkAlias, this.targetSettingName)) {
                    this.targetSettingItemId = Integer.valueOf(item.id);
                    this.targetSettingName = null;
                    z = true;
                }
                items.add(item);
            }
        }
        if (!z && (str = this.targetSettingName) != null && str.length() != 0) {
            SettingsRegistry.getInstance().onSettingNotFound(this);
            this.targetSettingName = null;
        }
        getTranslation().check(this.visibleTexts);
        updateTranslateItem(true);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem item, final View view, int position, float x, float y) {
        SettingItem settingItem;
        PluginsController companion = PluginsController.INSTANCE.getInstance();
        Plugin plugin = this.plugin;
        Plugin plugin2 = null;
        if (plugin == null) {
            plugin = null;
        }
        if (companion.isPluginActive$TMessagesProj(plugin) && (settingItem = item.settingItem) != null) {
            if (settingItem instanceof TextSetting) {
                TextSetting textSetting = (TextSetting) settingItem;
                PyObject createSubFragmentCallback = textSetting.getCreateSubFragmentCallback();
                if (createSubFragmentCallback != null) {
                    openSubFragmentNative(item, createSubFragmentCallback);
                    return;
                }
                PyObject onClickCallback = textSetting.getOnClickCallback();
                if (onClickCallback != null) {
                    try {
                        onClickCallback.call(view);
                        return;
                    } catch (Exception unused) {
                        Unit unit = Unit.INSTANCE;
                        return;
                    }
                }
                return;
            }
            if (settingItem instanceof CustomSetting) {
                PyObject createSubFragmentCallback2 = ((CustomSetting) settingItem).getCreateSubFragmentCallback();
                if (createSubFragmentCallback2 != null) {
                    openSubFragmentNative(item, createSubFragmentCallback2);
                    return;
                }
                try {
                    CustomSetting.Factory<?> factory = ((CustomSetting) settingItem).getFactory();
                    if (factory != null) {
                        Plugin plugin3 = this.plugin;
                        if (plugin3 != null) {
                            plugin2 = plugin3;
                        }
                        factory.onClick(plugin2, item, view);
                        return;
                    }
                    PyObject onClickCallback2 = ((CustomSetting) settingItem).getOnClickCallback();
                    if (onClickCallback2 != null) {
                        onClickCallback2.call(view);
                        return;
                    }
                    return;
                } catch (Exception unused2) {
                    return;
                }
            }
            Object obj = item.object2;
            String str = obj instanceof String ? (String) obj : null;
            if (str == null) {
                return;
            }
            if (view instanceof TextCheckCell) {
                toggleSwitch(item, str, !((TextCheckCell) view).isChecked(), new Function1() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda21
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return PluginSettingsActivity.$r8$lambda$Mp2TFAjnIDnsFeYKm2SBjgKL0yY(view, ((Boolean) obj2).booleanValue());
                    }
                });
                return;
            }
            if (view instanceof NotificationsCheckCell) {
                toggleSwitch(item, str, !((NotificationsCheckCell) view).isChecked(), new Function1() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda22
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return PluginSettingsActivity.$r8$lambda$RxWgJDfcHix48N9hb55E5aPYwzo(view, ((Boolean) obj2).booleanValue());
                    }
                });
                return;
            }
            if (view instanceof TextCell) {
                if (settingItem instanceof SelectorSetting) {
                    showSelectorDialog(item, view, str);
                } else if (settingItem instanceof InputSetting) {
                    showStringInputDialog(item, view, str);
                }
            }
        }
    }

    public static Unit $r8$lambda$Mp2TFAjnIDnsFeYKm2SBjgKL0yY(View view, boolean z) {
        ((TextCheckCell) view).setChecked(z);
        return Unit.INSTANCE;
    }

    public static Unit $r8$lambda$RxWgJDfcHix48N9hb55E5aPYwzo(View view, boolean z) {
        ((NotificationsCheckCell) view).setChecked(z);
        return Unit.INSTANCE;
    }

    private final void toggleSwitch(UItem item, final String key, final boolean newValue, Function1<? super Boolean, Unit> setViewChecked) {
        setViewChecked.invoke(Boolean.valueOf(newValue));
        item.setChecked(newValue);
        SettingItem settingItem = item.settingItem;
        SwitchSetting switchSetting = settingItem instanceof SwitchSetting ? (SwitchSetting) settingItem : null;
        final PyObject onChangeCallback = switchSetting != null ? switchSetting.getOnChangeCallback() : null;
        PluginsController.INSTANCE.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                PluginSettingsActivity.$r8$lambda$gAEBM3Bjop7AmlJJRHsVjP6iksk(this.f$0, key, newValue, onChangeCallback);
            }
        });
    }

    public static void $r8$lambda$gAEBM3Bjop7AmlJJRHsVjP6iksk(PluginSettingsActivity pluginSettingsActivity, String str, boolean z, PyObject pyObject) {
        PluginsController companion = PluginsController.INSTANCE.getInstance();
        Plugin plugin = pluginSettingsActivity.plugin;
        if (plugin == null) {
            plugin = null;
        }
        companion.setPluginSettingAndTriggerOnChange(plugin.getId(), str, Boolean.valueOf(z), pyObject);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public boolean onLongClick(UItem item, View view, int position, float x, float y) {
        SettingItem settingItem;
        CustomSetting.Factory<?> factory;
        PluginsController companion = PluginsController.INSTANCE.getInstance();
        Plugin plugin = this.plugin;
        Plugin plugin2 = null;
        if (plugin == null) {
            plugin = null;
        }
        if (!companion.isPluginActive$TMessagesProj(plugin) || (settingItem = item.settingItem) == null) {
            return false;
        }
        PyObject onLongClickCallback = settingItem.getOnLongClickCallback();
        if (onLongClickCallback != null) {
            try {
                onLongClickCallback.call(view);
            } catch (Exception unused) {
            }
            return true;
        }
        String linkAlias = settingItem.getLinkAlias();
        if (linkAlias != null && linkAlias.length() != 0) {
            Plugin plugin3 = this.plugin;
            if (plugin3 == null) {
                plugin3 = null;
            }
            String link = settingItem.getLink(plugin3.getId(), this.settingsLinkPrefix);
            if (link != null) {
                showCopyLinkOptions(view, link);
                return true;
            }
        }
        if (!(settingItem instanceof CustomSetting) || (factory = ((CustomSetting) settingItem).getFactory()) == null) {
            return false;
        }
        try {
            Plugin plugin4 = this.plugin;
            if (plugin4 != null) {
                plugin2 = plugin4;
            }
            factory.onLongClick(plugin2, item, view);
        } catch (Exception unused2) {
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [T, android.app.Dialog, org.telegram.ui.ActionBar.AlertDialog] */
    private final void showStringInputDialog(UItem item, final View view, final String key) {
        SettingItem settingItem = item.settingItem;
        final InputSetting inputSetting = settingItem instanceof InputSetting ? (InputSetting) settingItem : null;
        if (inputSetting == null || getParentActivity() == null) {
            return;
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), this.resourceProvider);
        builder.setTitle(item.text);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        String subtext = inputSetting.getSubtext();
        if (subtext != null) {
            TextView textView = new TextView(getContext());
            textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, this.resourceProvider));
            textView.setTextSize(1, 16.0f);
            textView.setText(getTranslation().text(subtext));
            linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 24.0f, 5.0f, 24.0f, 12.0f));
        }
        final EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(getContext());
        editTextBoldCursor.lineYFix = true;
        editTextBoldCursor.setTextSize(1, 18.0f);
        PluginsController companion = PluginsController.INSTANCE.getInstance();
        Plugin plugin = this.plugin;
        if (plugin == null) {
            plugin = null;
        }
        editTextBoldCursor.setText(companion.getPluginSettingString(plugin.getId(), key, inputSetting.getDefaultValue()));
        editTextBoldCursor.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, this.resourceProvider));
        editTextBoldCursor.setHintColor(Theme.getColor(Theme.key_groupcreate_hintText, this.resourceProvider));
        editTextBoldCursor.setHintText(LocaleController.getString(C2807R.string.EnterValue));
        editTextBoldCursor.setFocusable(true);
        editTextBoldCursor.setInputType(147457);
        int i = Theme.key_windowBackgroundWhiteInputFieldActivated;
        editTextBoldCursor.setCursorColor(Theme.getColor(i, this.resourceProvider));
        editTextBoldCursor.setLineColors(Theme.getColor(Theme.key_windowBackgroundWhiteInputField, this.resourceProvider), Theme.getColor(i, this.resourceProvider), Theme.getColor(Theme.key_text_RedRegular, this.resourceProvider));
        editTextBoldCursor.setBackground(null);
        editTextBoldCursor.setPadding(0, AndroidUtilities.dp(6.0f), 0, AndroidUtilities.dp(6.0f));
        final Function0 function0 = new Function0() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PluginSettingsActivity.m3115$r8$lambda$pUp2ILhhcyv5WxvS1CSPTqdrFI(editTextBoldCursor, objectRef, view, this, key, inputSetting);
            }
        };
        linearLayout.addView(editTextBoldCursor, LayoutHelper.createLinear(-1, -2, 24.0f, 0.0f, 24.0f, 10.0f));
        builder.makeCustomMaxHeight();
        builder.setView(linearLayout);
        builder.setWidth(AndroidUtilities.dp(292.0f));
        builder.setPositiveButton(LocaleController.getString(C2807R.string.Done), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda8
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                function0.invoke();
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2807R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda9
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                alertDialog.dismiss();
            }
        });
        ?? Create = builder.create();
        Create.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda10
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AndroidUtilities.hideKeyboard(editTextBoldCursor);
            }
        });
        Create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda11
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                PluginSettingsActivity.$r8$lambda$JT5omKF85jr8iGVjIOakR0qPPKE(editTextBoldCursor, dialogInterface);
            }
        });
        Create.setDismissDialogByButtons(false);
        objectRef.element = Create;
        showDialog((Dialog) Create);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: $r8$lambda$-pUp2ILhhcyv5WxvS1CSPTqdrFI, reason: not valid java name */
    public static Unit m3115$r8$lambda$pUp2ILhhcyv5WxvS1CSPTqdrFI(EditTextBoldCursor editTextBoldCursor, Ref.ObjectRef objectRef, View view, final PluginSettingsActivity pluginSettingsActivity, final String str, final InputSetting inputSetting) {
        Editable text = editTextBoldCursor.getText();
        final String string = text != null ? text.toString() : null;
        if (string == null) {
            string = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        AlertDialog alertDialog = (AlertDialog) objectRef.element;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        ((TextCell) view).setValue(string, true);
        PluginsController.INSTANCE.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                PluginSettingsActivity.m3116$r8$lambda$0EPq7QsU6trt8nXerx8Tdh5Ql4(this.f$0, str, string, inputSetting);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: $r8$lambda$0EPq7QsU6t-rt8nXerx8Tdh5Ql4, reason: not valid java name */
    public static void m3116$r8$lambda$0EPq7QsU6trt8nXerx8Tdh5Ql4(PluginSettingsActivity pluginSettingsActivity, String str, String str2, InputSetting inputSetting) {
        PluginsController companion = PluginsController.INSTANCE.getInstance();
        Plugin plugin = pluginSettingsActivity.plugin;
        if (plugin == null) {
            plugin = null;
        }
        companion.setPluginSettingAndTriggerOnChange(plugin.getId(), str, str2, inputSetting.getOnChangeCallback());
    }

    public static void $r8$lambda$JT5omKF85jr8iGVjIOakR0qPPKE(EditTextBoldCursor editTextBoldCursor, DialogInterface dialogInterface) {
        editTextBoldCursor.requestFocus();
        editTextBoldCursor.setSelection(editTextBoldCursor.length());
        AndroidUtilities.showKeyboard(editTextBoldCursor);
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [T, org.telegram.ui.ActionBar.AlertDialog] */
    private final void showSelectorDialog(UItem item, final View view, String key) {
        SettingItem settingItem = item.settingItem;
        final SelectorSetting selectorSetting = settingItem instanceof SelectorSetting ? (SelectorSetting) settingItem : null;
        if (selectorSetting == null || getParentActivity() == null) {
            return;
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        String[] items = selectorSetting.getItems();
        final ArrayList arrayList = new ArrayList(items.length);
        for (String str : items) {
            String strText = getTranslation().text(str);
            if (strText == null) {
                strText = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            arrayList.add(strText);
        }
        PluginsController companion = PluginsController.INSTANCE.getInstance();
        Plugin plugin = this.plugin;
        if (plugin == null) {
            plugin = null;
        }
        final String str2 = key;
        int pluginSettingInt = companion.getPluginSettingInt(plugin.getId(), str2, selectorSetting.getDefaultValue());
        int size = arrayList.size();
        final int i = 0;
        while (i < size) {
            RadioColorCell radioColorCell = new RadioColorCell(getParentActivity());
            radioColorCell.setPadding(AndroidUtilities.dp(4.0f), 0, AndroidUtilities.dp(4.0f), 0);
            radioColorCell.setCheckColor(Theme.getColor(Theme.key_radioBackground), Theme.getColor(Theme.key_dialogRadioBackgroundChecked));
            radioColorCell.setTextAndValue((CharSequence) arrayList.get(i), pluginSettingInt == i);
            radioColorCell.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector), 2));
            linearLayout.addView(radioColorCell);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda20
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    PluginSettingsActivity.m3121$r8$lambda$FtON3Qfl_JLDF4AkVSaK3VuaU(objectRef, view, arrayList, i, this, str2, selectorSetting, view2);
                }
            });
            i++;
            str2 = key;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(item.text);
        builder.setView(linearLayout);
        builder.setNegativeButton(LocaleController.getString(C2807R.string.Cancel), null);
        ?? Create = builder.create();
        objectRef.element = Create;
        showDialog((Dialog) Create);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: $r8$lambda$FtON3Qfl_JLDF4AkVSaK3Vu--aU, reason: not valid java name */
    public static void m3121$r8$lambda$FtON3Qfl_JLDF4AkVSaK3VuaU(Ref.ObjectRef objectRef, View view, List list, final int i, final PluginSettingsActivity pluginSettingsActivity, final String str, final SelectorSetting selectorSetting, View view2) {
        Dialog dialog = (Dialog) objectRef.element;
        if (dialog != null) {
            dialog.dismiss();
        }
        ((TextCell) view).setValue((CharSequence) list.get(i), true);
        PluginsController.INSTANCE.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                PluginSettingsActivity.$r8$lambda$HBVQq8PwM6cRiVfKvot_s_07HcA(this.f$0, str, i, selectorSetting);
            }
        });
    }

    public static void $r8$lambda$HBVQq8PwM6cRiVfKvot_s_07HcA(PluginSettingsActivity pluginSettingsActivity, String str, int i, SelectorSetting selectorSetting) {
        PluginsController companion = PluginsController.INSTANCE.getInstance();
        Plugin plugin = pluginSettingsActivity.plugin;
        if (plugin == null) {
            plugin = null;
        }
        companion.setPluginSettingAndTriggerOnChange(plugin.getId(), str, Integer.valueOf(i), selectorSetting.getOnChangeCallback());
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final int getStableId(SettingItem item) {
        Integer numValueOf;
        int iHashCode;
        if (item instanceof SwitchSetting) {
            return Objects.hash(PluginsConstants.Settings.TYPE_SWITCH, ((SwitchSetting) item).getKey());
        }
        if (item instanceof InputSetting) {
            return Objects.hash(PluginsConstants.Settings.TYPE_INPUT, ((InputSetting) item).getKey());
        }
        if (item instanceof EditTextSetting) {
            return Objects.hash("edit", ((EditTextSetting) item).getKey());
        }
        if (item instanceof SelectorSetting) {
            return Objects.hash(PluginsConstants.Settings.TYPE_SELECTOR, ((SelectorSetting) item).getKey());
        }
        if (item instanceof HeaderSetting) {
            return Objects.hash(PluginsConstants.Settings.TYPE_HEADER, ((HeaderSetting) item).getText());
        }
        if (item instanceof DividerSetting) {
            return Objects.hash(PluginsConstants.Settings.TYPE_DIVIDER, ((DividerSetting) item).getText());
        }
        if (item instanceof TextSetting) {
            return Objects.hash("text", ((TextSetting) item).getText());
        }
        if (item instanceof CustomSetting) {
            CustomSetting customSetting = (CustomSetting) item;
            UItem item2 = customSetting.getItem();
            if (item2 != null) {
                iHashCode = item2.id;
            } else {
                CustomSetting.Factory<?> factory = customSetting.getFactory();
                if (factory == null) {
                    numValueOf = null;
                    PyObject factoryArgs = customSetting.getFactoryArgs();
                    return Objects.hash(PluginsConstants.Settings.TYPE_CUSTOM, numValueOf, factoryArgs != null ? Integer.valueOf(factoryArgs.hashCode()) : null);
                }
                iHashCode = factory.hashCode();
            }
            numValueOf = Integer.valueOf(iHashCode);
            PyObject factoryArgs2 = customSetting.getFactoryArgs();
            return Objects.hash(PluginsConstants.Settings.TYPE_CUSTOM, numValueOf, factoryArgs2 != null ? Integer.valueOf(factoryArgs2.hashCode()) : null);
        }
        return item.hashCode();
    }

    private final void openSubFragmentNative(final UItem item, final PyObject callback) {
        PluginsController.INSTANCE.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                PluginSettingsActivity.$r8$lambda$6Z6uxA2UOxlGL4PYCk_0i6kuoQo(this.f$0, callback, item);
            }
        });
    }

    public static void $r8$lambda$6Z6uxA2UOxlGL4PYCk_0i6kuoQo(final PluginSettingsActivity pluginSettingsActivity, final PyObject pyObject, final UItem uItem) {
        PluginsController.Companion companion = PluginsController.INSTANCE;
        PluginsController companion2 = companion.getInstance();
        Plugin plugin = pluginSettingsActivity.plugin;
        if (plugin == null) {
            plugin = null;
        }
        if (companion2.isPluginActive$TMessagesProj(plugin)) {
            try {
                PyObject pyObjectCall = pyObject.call(new Object[0]);
                if (pyObjectCall == null) {
                    return;
                }
                PluginsController.PluginsEngine pluginsEngine = companion.getEngines().get(PluginsConstants.PYTHON);
                PythonPluginsEngine pythonPluginsEngine = pluginsEngine instanceof PythonPluginsEngine ? (PythonPluginsEngine) pluginsEngine : null;
                if (pythonPluginsEngine == null) {
                    return;
                }
                final List<SettingItem> pySettingDefinitions = pythonPluginsEngine.parsePySettingDefinitions(pyObjectCall.asList());
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.PluginSettingsActivity$$ExternalSyntheticLambda18
                    @Override // java.lang.Runnable
                    public final void run() {
                        PluginSettingsActivity.$r8$lambda$OFWPI4yzwIJOrUvW8Cepcz2YkHA(pySettingDefinitions, uItem, pluginSettingsActivity, pyObject);
                    }
                });
            } catch (Exception e) {
                FileLog.m1039e("Error opening subfragment", e);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void $r8$lambda$OFWPI4yzwIJOrUvW8Cepcz2YkHA(List list, UItem uItem, PluginSettingsActivity pluginSettingsActivity, PyObject pyObject) {
        Object text;
        String name;
        if (list.isEmpty()) {
            return;
        }
        SettingItem settingItem = uItem.settingItem;
        TextSetting textSetting = settingItem instanceof TextSetting ? (TextSetting) settingItem : null;
        if (textSetting == null || (text = textSetting.getText()) == null) {
            text = uItem.text;
        }
        if (text == null || (name = text.toString()) == null) {
            name = pluginSettingsActivity.customTitle;
            if (name == null) {
                Plugin plugin = pluginSettingsActivity.plugin;
                if (plugin == null) {
                    plugin = null;
                }
                name = plugin.getName();
            }
        } else {
            if (name.length() <= 0) {
                name = null;
            }
            if (name == null) {
            }
        }
        String str = name;
        String str2 = pluginSettingsActivity.settingsLinkPrefix;
        String str3 = _UrlKt.FRAGMENT_ENCODE_SET;
        if (str2 == null || str2.length() == 0) {
            SettingItem settingItem2 = uItem.settingItem;
            String linkAlias = settingItem2 != null ? settingItem2.getLinkAlias() : null;
            if (linkAlias != null) {
                str3 = linkAlias;
            }
        } else {
            String str4 = pluginSettingsActivity.settingsLinkPrefix;
            SettingItem settingItem3 = uItem.settingItem;
            String linkAlias2 = settingItem3 != null ? settingItem3.getLinkAlias() : null;
            if (linkAlias2 != null) {
                str3 = linkAlias2;
            }
            str3 = str4 + ":" + str3;
        }
        Plugin plugin2 = pluginSettingsActivity.plugin;
        pluginSettingsActivity.presentFragment(new PluginSettingsActivity(plugin2 == null ? null : plugin2, str, list, pyObject, null, 16, null).setSettingsLinkPrefix(str3));
    }
}
