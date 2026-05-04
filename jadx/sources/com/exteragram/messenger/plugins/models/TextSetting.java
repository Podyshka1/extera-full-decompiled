package com.exteragram.messenger.plugins.models;

import com.chaquo.python.PyObject;

/* JADX INFO: loaded from: classes.dex */
public class TextSetting extends SettingItem {
    public boolean accent;
    public PyObject createSubFragmentCallback;
    public PyObject onClickCallback;
    public boolean red;
    public String subtext;
    public String text;

    public TextSetting(String str, String str2, String str3, boolean z, boolean z2, PyObject pyObject, PyObject pyObject2, PyObject pyObject3, String str4) {
        super("text", str3, pyObject3, str4);
        this.text = str;
        this.subtext = str2;
        this.accent = z;
        this.red = z2;
        this.onClickCallback = pyObject;
        this.createSubFragmentCallback = pyObject2;
    }
}
