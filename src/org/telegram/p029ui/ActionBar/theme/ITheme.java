package org.telegram.p029ui.ActionBar.theme;

import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes3.dex */
public interface ITheme {
    long getThemeId();

    TLRPC.ThemeSettings getThemeSettings(int i);
}
