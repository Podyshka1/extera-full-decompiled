package com.exteragram.messenger.plugins.models;

import com.chaquo.python.PyObject;

/* JADX INFO: loaded from: classes.dex */
public class SelectorSetting extends SettingItem {
    public int defaultValue;
    public String[] items;
    public String key;
    public PyObject onChangeCallback;
    public String text;

    public SelectorSetting(String str, String str2, int i, String[] strArr, String str3, PyObject pyObject, PyObject pyObject2, String str4) {
        super("selector", str3, pyObject2, str4);
        this.key = str;
        this.text = str2;
        this.defaultValue = i;
        this.items = strArr;
        this.onChangeCallback = pyObject;
    }
}
