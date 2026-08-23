package com.exteragram.messenger.plugins.models;

import com.chaquo.python.PyObject;

/* JADX INFO: loaded from: classes.dex */
public class InputSetting extends SettingItem {
    public String defaultValue;
    public String key;
    public PyObject onChangeCallback;
    public String subtext;
    public String text;

    public InputSetting(String str, String str2, String str3, String str4, String str5, PyObject pyObject, PyObject pyObject2, String str6) {
        super("input", str5, pyObject2, str6);
        this.key = str;
        this.text = str2;
        this.defaultValue = str3;
        this.subtext = str4;
        this.onChangeCallback = pyObject;
    }
}
