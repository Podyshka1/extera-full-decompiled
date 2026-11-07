package com.exteragram.messenger.plugins.hooks;

import android.content.Context;
import android.text.TextUtils;
import com.chaquo.python.PyObject;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.plugins.utils.PyObjectUtils;
import java.io.Serializable;
import java.util.Map;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.FileLog;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010!\u001a\u00020\"J\u0010\u0010#\u001a\u00020\"2\b\u0010$\u001a\u0004\u0018\u00010\u0001J\u0013\u0010%\u001a\u00020\u000b2\b\u0010&\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010'\u001a\u00020\u0018H\u0016J\u001c\u0010.\u001a\u00020\u000b2\u0014\u0010$\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010/R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\tR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\tR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\tR\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\tR\u0011\u0010\u0017\u001a\u00020\u0018¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\tR\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\tR\u0011\u0010\u001f\u001a\u00020\u0018¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001aR\u001d\u0010(\u001a\u0004\u0018\u00010)8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b*\u0010+¨\u00060"}, d2 = {"Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;", _UrlKt.FRAGMENT_ENCODE_SET, "pluginId", _UrlKt.FRAGMENT_ENCODE_SET, "pyData", "Lcom/chaquo/python/PyObject;", "<init>", "(Ljava/lang/String;Lcom/chaquo/python/PyObject;)V", "getPluginId", "()Ljava/lang/String;", "removed", _UrlKt.FRAGMENT_ENCODE_SET, "itemId", "getItemId", "menuType", "getMenuType", "text", "getText", "onClickCallback", "getOnClickCallback", "()Lcom/chaquo/python/PyObject;", "iconName", "getIconName", "iconResId", _UrlKt.FRAGMENT_ENCODE_SET, "getIconResId", "()I", "subtext", "getSubtext", "conditionString", "getConditionString", PluginsConstants.MenuItemProperties.PRIORITY, "getPriority", "markRemoved", _UrlKt.FRAGMENT_ENCODE_SET, "executeClick", "contextData", "equals", "other", "hashCode", "compiledCondition", "Ljava/io/Serializable;", "getCompiledCondition", "()Ljava/io/Serializable;", "compiledCondition$delegate", "Lkotlin/Lazy;", "checkCondition", _UrlKt.FRAGMENT_ENCODE_SET, "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMenuItemRecord.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MenuItemRecord.kt\ncom/exteragram/messenger/plugins/hooks/MenuItemRecord\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,143:1\n1#2:144\n*E\n"})
public final class MenuItemRecord {

    /* JADX INFO: renamed from: compiledCondition$delegate, reason: from kotlin metadata */
    private final Lazy compiledCondition;
    private final String conditionString;
    private final String iconName;
    private final int iconResId;
    private final String itemId;
    private final String menuType;
    private final PyObject onClickCallback;
    private final String pluginId;
    private final int priority;
    private volatile boolean removed;
    private final String subtext;
    private final String text;

    public MenuItemRecord(String str, PyObject pyObject) {
        this.pluginId = str;
        this.menuType = PyObjectUtils.getString(pyObject, PluginsConstants.MenuItemProperties.MENU_TYPE, null, true);
        this.text = PyObjectUtils.getString(pyObject, "text", null, true);
        this.onClickCallback = pyObject.callAttr("get", "on_click");
        String string = PyObjectUtils.getString(pyObject, PluginsConstants.MenuItemProperties.ITEM_ID, null, true);
        string = (string == null || string.length() == 0) ? null : string;
        this.itemId = string == null ? UUID.randomUUID().toString() : string;
        String string2 = PyObjectUtils.getString(pyObject, "icon", null, true);
        this.iconName = string2;
        this.subtext = PyObjectUtils.getString(pyObject, "subtext", null, true);
        this.conditionString = PyObjectUtils.getString(pyObject, "condition", null, true);
        int identifier = 0;
        this.priority = PyObjectUtils.getInt(pyObject, PluginsConstants.MenuItemProperties.PRIORITY, 0, true);
        if (!TextUtils.isEmpty(string2)) {
            try {
                Context context = ApplicationLoader.applicationContext;
                identifier = context.getResources().getIdentifier(string2, "drawable", context.getPackageName());
            } catch (Exception unused) {
            }
        }
        this.iconResId = identifier;
        if (TextUtils.isEmpty(this.menuType) || TextUtils.isEmpty(this.text) || this.onClickCallback == null) {
            f$$ExternalSyntheticBUOutline1.m215m("MenuItemRecord missing essential fields: menuType, text, or onClickCallback.");
            throw null;
        }
        this.compiledCondition = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.exteragram.messenger.plugins.hooks.MenuItemRecord$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MenuItemRecord.$r8$lambda$WYcNbFqpjFZmRSNFMesyFPF1vow(this.f$0);
            }
        });
    }

    public final String getPluginId() {
        return this.pluginId;
    }

    public final String getItemId() {
        return this.itemId;
    }

    public final String getMenuType() {
        return this.menuType;
    }

    public final String getText() {
        return this.text;
    }

    public final PyObject getOnClickCallback() {
        return this.onClickCallback;
    }

    public final String getIconName() {
        return this.iconName;
    }

    public final int getIconResId() {
        return this.iconResId;
    }

    public final String getSubtext() {
        return this.subtext;
    }

    public final String getConditionString() {
        return this.conditionString;
    }

    public final int getPriority() {
        return this.priority;
    }

    public final void markRemoved() {
        this.removed = true;
    }

    public final void executeClick(Object contextData) {
        if (this.removed || !PluginsController.INSTANCE.getInstance().isPluginActive$TMessagesProj(this.pluginId)) {
            return;
        }
        try {
            PyObject pyObject = this.onClickCallback;
            if (pyObject != null) {
                pyObject.call(contextData);
            }
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other != null && Intrinsics.areEqual(MenuItemRecord.class, other.getClass())) {
            MenuItemRecord menuItemRecord = (MenuItemRecord) other;
            if (Intrinsics.areEqual(this.itemId, menuItemRecord.itemId) && Intrinsics.areEqual(this.pluginId, menuItemRecord.pluginId)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (this.itemId.hashCode() * 31) + this.pluginId.hashCode();
    }

    private final Serializable getCompiledCondition() {
        return (Serializable) this.compiledCondition.getValue();
    }

    public static Serializable $r8$lambda$WYcNbFqpjFZmRSNFMesyFPF1vow(MenuItemRecord menuItemRecord) {
        String str = menuItemRecord.conditionString;
        if (str == null || str.length() == 0) {
            return null;
        }
        try {
            return MVEL.compileExpression(str);
        } catch (Exception e) {
            FileLog.m1040e(e);
            return null;
        }
    }

    public final boolean checkCondition(Map<String, ? extends Object> contextData) {
        String str = this.conditionString;
        if (str == null || str.length() == 0 || contextData == null) {
            return true;
        }
        Serializable compiledCondition = getCompiledCondition();
        if (compiledCondition == null) {
            return false;
        }
        try {
            Boolean bool = (Boolean) MVEL.executeExpression((Object) compiledCondition, (Map) contextData, Boolean.TYPE);
            if (bool != null) {
                return bool.booleanValue();
            }
        } catch (Exception unused) {
        }
        return false;
    }
}
