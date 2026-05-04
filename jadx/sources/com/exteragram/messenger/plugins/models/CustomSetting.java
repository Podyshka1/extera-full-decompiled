package com.exteragram.messenger.plugins.models;

import android.view.View;
import com.chaquo.python.PyObject;
import com.exteragram.messenger.plugins.Plugin;
import org.telegram.p029ui.Components.UItem;

/* JADX INFO: loaded from: classes.dex */
public class CustomSetting extends SettingItem {
    public PyObject createSubFragmentCallback;
    public Factory<?> factory;
    public PyObject factoryArgs;
    public UItem item;
    public PyObject onClickCallback;

    private CustomSetting(PyObject pyObject, PyObject pyObject2, PyObject pyObject3, String str) {
        super("custom", null, pyObject3, str);
        this.item = null;
        this.factory = null;
        this.factoryArgs = null;
        this.onClickCallback = pyObject;
        this.createSubFragmentCallback = pyObject2;
    }

    public CustomSetting(UItem uItem, PyObject pyObject, PyObject pyObject2, PyObject pyObject3, String str) {
        this(pyObject, pyObject2, pyObject3, str);
        this.item = uItem;
        uItem.settingItem = this;
    }

    public CustomSetting(Factory<?> factory, PyObject pyObject, PyObject pyObject2, PyObject pyObject3, String str) {
        this(pyObject, pyObject2, pyObject3, str);
        this.factory = factory;
    }

    public CustomSetting(Factory<?> factory, PyObject pyObject, PyObject pyObject2, PyObject pyObject3, PyObject pyObject4, String str) {
        this(factory, pyObject2, pyObject3, pyObject4, str);
        this.factoryArgs = pyObject;
    }

    public CustomSetting(View view, PyObject pyObject, PyObject pyObject2, PyObject pyObject3, String str) {
        this(UItem.asCustom(view), pyObject, pyObject2, pyObject3, str);
    }

    public static abstract class Factory<V extends View> extends UItem.UItemFactory {
        public boolean isShadowValue = false;
        public boolean isClickableValue = true;

        public UItem create(Plugin plugin, CustomSetting customSetting, PyObject pyObject) {
            return null;
        }

        public void onClick(Plugin plugin, UItem uItem, View view) {
        }

        public void onLongClick(Plugin plugin, UItem uItem, View view) {
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean isShadow() {
            return this.isShadowValue;
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean isClickable() {
            return this.isClickableValue;
        }
    }
}
