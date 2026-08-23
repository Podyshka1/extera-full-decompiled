package org.telegram.p029ui;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.ActionBar.ActionBarMenuSubItem;

/* JADX INFO: loaded from: classes3.dex */
public class SpeedButtonsLayout extends LinearLayout {
    ActionBarMenuSubItem[] speedItems;

    /* JADX INFO: loaded from: classes6.dex */
    public interface Callback {
        void onSpeedSelected(float f, boolean z, boolean z2);
    }

    public SpeedButtonsLayout(Context context, final Callback callback) {
        super(context);
        this.speedItems = new ActionBarMenuSubItem[5];
        setOrientation(1);
        ActionBarMenuSubItem actionBarMenuSubItemAddItem = ActionBarMenuItem.addItem(this, C2888R.drawable.msg_speed_0_2, LocaleController.getString(C2888R.string.SpeedVerySlow), false, null);
        actionBarMenuSubItemAddItem.setColors(-328966, -328966);
        actionBarMenuSubItemAddItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SpeedButtonsLayout$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                callback.onSpeedSelected(0.2f, true, true);
            }
        });
        actionBarMenuSubItemAddItem.setSelectorColor(268435455);
        this.speedItems[0] = actionBarMenuSubItemAddItem;
        ActionBarMenuSubItem actionBarMenuSubItemAddItem2 = ActionBarMenuItem.addItem(this, C2888R.drawable.msg_speed_slow, LocaleController.getString(C2888R.string.SpeedSlow), false, null);
        actionBarMenuSubItemAddItem2.setColors(-328966, -328966);
        actionBarMenuSubItemAddItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SpeedButtonsLayout$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                callback.onSpeedSelected(0.5f, true, true);
            }
        });
        actionBarMenuSubItemAddItem2.setSelectorColor(268435455);
        this.speedItems[1] = actionBarMenuSubItemAddItem2;
        ActionBarMenuSubItem actionBarMenuSubItemAddItem3 = ActionBarMenuItem.addItem(this, C2888R.drawable.msg_speed_normal, LocaleController.getString(C2888R.string.SpeedNormal), false, null);
        actionBarMenuSubItemAddItem3.setColors(-328966, -328966);
        actionBarMenuSubItemAddItem3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SpeedButtonsLayout$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                callback.onSpeedSelected(1.0f, true, true);
            }
        });
        actionBarMenuSubItemAddItem3.setSelectorColor(268435455);
        this.speedItems[2] = actionBarMenuSubItemAddItem3;
        ActionBarMenuSubItem actionBarMenuSubItemAddItem4 = ActionBarMenuItem.addItem(this, C2888R.drawable.msg_speed_fast, LocaleController.getString(C2888R.string.SpeedFast), false, null);
        actionBarMenuSubItemAddItem4.setColors(-328966, -328966);
        actionBarMenuSubItemAddItem4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SpeedButtonsLayout$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                callback.onSpeedSelected(1.5f, true, true);
            }
        });
        actionBarMenuSubItemAddItem4.setSelectorColor(268435455);
        this.speedItems[3] = actionBarMenuSubItemAddItem4;
        ActionBarMenuSubItem actionBarMenuSubItemAddItem5 = ActionBarMenuItem.addItem(this, C2888R.drawable.msg_speed_superfast, LocaleController.getString(C2888R.string.SpeedVeryFast), false, null);
        actionBarMenuSubItemAddItem5.setColors(-328966, -328966);
        actionBarMenuSubItemAddItem5.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SpeedButtonsLayout$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                callback.onSpeedSelected(2.0f, true, true);
            }
        });
        actionBarMenuSubItemAddItem5.setSelectorColor(268435455);
        this.speedItems[4] = actionBarMenuSubItemAddItem5;
        View view = new FrameLayout(context) { // from class: org.telegram.ui.SpeedButtonsLayout.1
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(i, i2);
            }
        };
        view.setMinimumWidth(AndroidUtilities.m1124dp(196.0f));
        view.setBackgroundColor(-15198184);
        addView(view);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        if (LocaleController.isRTL) {
            layoutParams.gravity = 5;
        }
        layoutParams.width = -1;
        layoutParams.height = AndroidUtilities.m1124dp(8.0f);
        view.setLayoutParams(layoutParams);
    }

    public void update(float f, boolean z) {
        for (int i = 0; i < this.speedItems.length; i++) {
            if (z && ((i == 0 && Math.abs(f - 0.2f) < 0.01f) || ((i == 1 && Math.abs(f - 0.5f) < 0.1f) || ((i == 2 && Math.abs(f - 1.0f) < 0.1f) || ((i == 3 && Math.abs(f - 1.5f) < 0.1f) || (i == 4 && Math.abs(f - 2.0f) < 0.1f)))))) {
                this.speedItems[i].setColors(-9718023, -9718023);
            } else {
                this.speedItems[i].setColors(-328966, -328966);
            }
        }
    }
}
