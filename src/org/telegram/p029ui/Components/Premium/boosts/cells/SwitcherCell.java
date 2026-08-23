package org.telegram.p029ui.Components.Premium.boosts.cells;

import android.content.Context;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.TextCheckCell;

/* JADX INFO: loaded from: classes7.dex */
public class SwitcherCell extends TextCheckCell {
    public static int TYPE_ADDITION_PRIZE = 1;
    public static int TYPE_WINNERS;
    private int type;

    public SwitcherCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider);
    }

    public int getType() {
        return this.type;
    }

    public void setData(CharSequence charSequence, boolean z, boolean z2, int i) {
        this.type = i;
        setTextAndCheck(charSequence, z, z2);
    }
}
