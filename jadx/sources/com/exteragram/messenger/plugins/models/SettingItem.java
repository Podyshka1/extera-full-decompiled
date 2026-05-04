package com.exteragram.messenger.plugins.models;

import android.text.TextUtils;
import com.chaquo.python.PyObject;
import org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj;

/* JADX INFO: loaded from: classes.dex */
public abstract class SettingItem {
    public String icon;
    public String linkAlias;
    public PyObject onLongClickCallback;
    public String type;

    protected SettingItem(String str) {
        this(str, null, null, null);
    }

    protected SettingItem(String str, String str2, PyObject pyObject, String str3) {
        this.type = str;
        this.icon = str2;
        this.onLongClickCallback = pyObject;
        this.linkAlias = str3;
    }

    public String getLink(String str, String str2) {
        String str3;
        if (TextUtils.isEmpty(this.linkAlias) || TextUtils.isEmpty(str)) {
            return null;
        }
        if (str2 == null) {
            str3 = this.linkAlias;
        } else {
            str3 = str2 + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986168281961690331L) + this.linkAlias;
        }
        return String.format(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986168290551624923L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986168410810709211L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986168475235218651L), str, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986168483825153243L), str3);
    }
}
