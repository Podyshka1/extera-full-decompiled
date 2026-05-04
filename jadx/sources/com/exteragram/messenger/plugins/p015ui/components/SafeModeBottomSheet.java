package com.exteragram.messenger.plugins.p015ui.components;

import android.app.Activity;
import android.content.SharedPreferences;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.plugins.PluginsController;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.StickerImageView;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;

/* JADX INFO: loaded from: classes4.dex */
public class SafeModeBottomSheet extends BottomSheet {
    @Override // org.telegram.p029ui.ActionBar.BottomSheet, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public /* bridge */ /* synthetic */ void setLastVisible(boolean z) {
        BaseFragment.AttachedSheet.CC.$default$setLastVisible(this, z);
    }

    public SafeModeBottomSheet(BaseFragment baseFragment) {
        super(baseFragment.getParentActivity(), false, baseFragment.getResourceProvider());
        Activity parentActivity = baseFragment.getParentActivity();
        fixNavigationBar();
        FrameLayout frameLayout = new FrameLayout(parentActivity);
        LinearLayout linearLayout = new LinearLayout(parentActivity);
        linearLayout.setOrientation(1);
        frameLayout.addView(linearLayout);
        StickerImageView stickerImageView = new StickerImageView(parentActivity, this.currentAccount);
        stickerImageView.setStickerPackName("exteraGramPlaceholders");
        stickerImageView.setStickerNum(10);
        stickerImageView.getImageReceiver().setAutoRepeat(1);
        linearLayout.addView(stickerImageView, LayoutHelper.createLinear(144, 144, 1, 0, 16, 0, 0));
        TextView textView = new TextView(parentActivity);
        textView.setGravity(1);
        textView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setText(LocaleController.getString(C2888R.string.PluginsSafeMode));
        linearLayout.addView(textView, LayoutHelper.createFrame(-1, -2.0f, 0, 40.0f, 20.0f, 40.0f, 0.0f));
        TextView textView2 = new TextView(parentActivity);
        textView2.setGravity(1);
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
        textView2.setTextSize(1, 14.0f);
        textView2.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
        textView2.setText(LocaleController.getString(C2888R.string.PluginsSafeModeInfo));
        linearLayout.addView(textView2, LayoutHelper.createFrame(-1, -2.0f, 0, 21.0f, 8.0f, 21.0f, 0.0f));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(parentActivity, true, this.resourcesProvider);
        buttonWithCounterView.setRound();
        buttonWithCounterView.setText(LocaleController.getString(C2888R.string.Disable), false);
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.components.SafeModeBottomSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        linearLayout.addView(buttonWithCounterView, LayoutHelper.createFrame(-1, 48.0f, 0, 16.0f, 28.0f, 16.0f, 16.0f));
        setCustomView(frameLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        dismiss();
        SharedPreferences.Editor editor = ExteraConfig.editor;
        ExteraConfig.pluginsSafeMode = false;
        editor.putBoolean("pluginsSafeMode", false).apply();
        PluginsController.getInstance().restart();
    }
}
