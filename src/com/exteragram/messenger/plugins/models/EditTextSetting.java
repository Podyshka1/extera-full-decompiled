package com.exteragram.messenger.plugins.models;

import com.chaquo.python.PyObject;

/* JADX INFO: loaded from: classes.dex */
public class EditTextSetting extends SettingItem {
    public String defaultValue;
    public String hint;
    public String key;
    public String mask;
    public int maxLength;
    public boolean multiline;
    public PyObject onChangeCallback;

    public EditTextSetting(String str, String str2, String str3, boolean z, int i, String str4, PyObject pyObject) {
        super("edit_text");
        this.key = str;
        this.hint = str2;
        this.defaultValue = str3;
        this.multiline = z;
        this.maxLength = i;
        this.mask = str4;
        this.onChangeCallback = pyObject;
    }
}
