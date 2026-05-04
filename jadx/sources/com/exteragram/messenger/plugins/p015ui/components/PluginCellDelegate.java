package com.exteragram.messenger.plugins.p015ui.components;

import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
public interface PluginCellDelegate {
    boolean canOpenInExternalApp();

    void deletePlugin();

    void openInExternalApp();

    void openPluginSettings();

    void pinPlugin(View view);

    void sharePlugin();

    void togglePlugin(View view);
}
