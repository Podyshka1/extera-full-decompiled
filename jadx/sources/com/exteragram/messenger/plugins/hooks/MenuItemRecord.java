package com.exteragram.messenger.plugins.hooks;

import android.content.Context;
import android.text.TextUtils;
import com.chaquo.python.PyObject;
import com.exteragram.messenger.plugins.utils.PyObjectUtils;
import java.io.Serializable;
import java.util.Map;
import java.util.UUID;
import org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj;
import org.mvel2.MVEL;
import org.telegram.messenger.ApplicationLoader;
import p022j$.util.Objects;
import p022j$.util.concurrent.ConcurrentHashMap;
import p022j$.util.concurrent.ConcurrentMap$EL;

/* JADX INFO: loaded from: classes.dex */
public class MenuItemRecord {
    private static final ConcurrentHashMap<String, Serializable> mvelExpressionCache = new ConcurrentHashMap<>();
    public final String conditionString;
    public final String iconName;
    public final int iconResId;
    public final String itemId;
    public final String menuType;
    public final PyObject onClickCallback;
    public final String pluginId;
    public final int priority;
    public final String subtext;
    public final String text;

    public MenuItemRecord(String str, PyObject pyObject) {
        this.pluginId = str;
        this.menuType = PyObjectUtils.getString(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986177730889741531L), null, true);
        this.text = PyObjectUtils.getString(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986177773839414491L), null, true);
        int identifier = 0;
        this.onClickCallback = pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986177795314250971L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986177812494120155L));
        String string = PyObjectUtils.getString(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986177851148825819L), null, true);
        this.itemId = TextUtils.isEmpty(string) ? UUID.randomUUID().toString() : string;
        String string2 = PyObjectUtils.getString(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986177885508564187L), null, true);
        this.iconName = string2;
        this.subtext = PyObjectUtils.getString(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986177906983400667L), null, true);
        this.conditionString = PyObjectUtils.getString(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986177941343139035L), null, true);
        this.priority = PyObjectUtils.getInt(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986177984292811995L), 0, true);
        if (!TextUtils.isEmpty(string2)) {
            try {
                Context context = ApplicationLoader.applicationContext;
                identifier = context.getResources().getIdentifier(string2, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986178022947517659L), context.getPackageName());
            } catch (Exception unused) {
            }
        }
        this.iconResId = identifier;
        if (TextUtils.isEmpty(this.menuType) || TextUtils.isEmpty(this.text) || this.onClickCallback == null) {
            throw new IllegalArgumentException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986178061602223323L));
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            MenuItemRecord menuItemRecord = (MenuItemRecord) obj;
            if (this.itemId.equals(menuItemRecord.itemId) && this.pluginId.equals(menuItemRecord.pluginId)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.itemId, this.pluginId);
    }

    public boolean checkCondition(Map<String, Object> map) {
        if (TextUtils.isEmpty(this.conditionString) || map == null) {
            return true;
        }
        try {
            return ((Boolean) Objects.requireNonNullElse((Boolean) MVEL.executeExpression(ConcurrentMap$EL.computeIfAbsent(mvelExpressionCache, this.conditionString, new HookFilter$$ExternalSyntheticLambda0()), (Map) map, Boolean.class), Boolean.FALSE)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }
}
