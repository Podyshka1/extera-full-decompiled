package com.exteragram.messenger.icons.p012ui.components;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.p003dx.rop.code.RegisterSpec;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.icons.IconManager;
import com.exteragram.messenger.icons.IconPack;
import com.exteragram.messenger.utils.text.LocaleUtils;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p024io.FilesKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.CheckBox2;
import org.telegram.p029ui.Components.EffectsTextView;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;

/* JADX INFO: loaded from: classes4.dex */
public final class InstallIconPackBottomSheet extends BottomSheet {
    private final IconPack iconPack;
    private final InstallDelegate installDelegate;

    public interface InstallDelegate {
        void onInstall(boolean z, boolean z2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InstallIconPackBottomSheet(Context context, IconPack iconPack, InstallDelegate installDelegate) {
        super(context, false);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(iconPack, "iconPack");
        Intrinsics.checkNotNullParameter(installDelegate, "installDelegate");
        this.iconPack = iconPack;
        this.installDelegate = installDelegate;
        setCustomView(createView(context));
        setOnDismissListener(new Runnable() { // from class: com.exteragram.messenger.icons.ui.components.InstallIconPackBottomSheet$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                InstallIconPackBottomSheet._init_$lambda$0(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$0(final InstallIconPackBottomSheet installIconPackBottomSheet) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.icons.ui.components.InstallIconPackBottomSheet$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.icons.ui.components.InstallIconPackBottomSheet$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        InstallIconPackBottomSheet.m2508$r8$lambda$lAHL0JphJT6_nJA9poZvzL8HV0(installIconPackBottomSheet);
                    }
                });
            }
        }, 1000L);
    }

    /* JADX INFO: renamed from: $r8$lambda$lAHL0JphJT6_n-JA9poZvzL8HV0, reason: not valid java name */
    public static void m2508$r8$lambda$lAHL0JphJT6_nJA9poZvzL8HV0(InstallIconPackBottomSheet installIconPackBottomSheet) {
        File location = installIconPackBottomSheet.iconPack.getLocation();
        if (location != null) {
            FilesKt.deleteRecursively(location);
        }
    }

    private final View createView(Context context) {
        final CheckBox2 checkBox2;
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(0, AndroidUtilities.m1124dp(16.0f), 0, 0);
        IconPackPreviewView iconPackPreviewView = new IconPackPreviewView(context);
        iconPackPreviewView.setCircularMode(true);
        iconPackPreviewView.setRefreshTime(3000);
        iconPackPreviewView.setIconPack(this.iconPack);
        linearLayout.addView(iconPackPreviewView, LayoutHelper.createLinear(-1, -2, 1, 0, 0, 0, 16));
        TextView textView = new TextView(context);
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setGravity(17);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        textView.setText(this.iconPack.getName());
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 24.0f, 0.0f, 24.0f, 0.0f));
        EffectsTextView effectsTextView = new EffectsTextView(context, this.resourcesProvider);
        effectsTextView.setGravity(1);
        effectsTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
        effectsTextView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
        effectsTextView.setLinkTextColor(getThemedColor(Theme.key_dialogTextLink));
        effectsTextView.setTextSize(1, 14.0f);
        effectsTextView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(this.iconPack.getAuthor())) {
            sb.append(this.iconPack.getAuthor());
        }
        if (!TextUtils.isEmpty(this.iconPack.getVersion())) {
            if (sb.length() > 0) {
                sb.append(" • ");
            }
            sb.append(RegisterSpec.PREFIX);
            sb.append(this.iconPack.getVersion());
        }
        effectsTextView.setText(LocaleUtils.fullyFormatText(sb, LaunchActivity.getSafeLastFragment(), new Runnable() { // from class: com.exteragram.messenger.icons.ui.components.InstallIconPackBottomSheet$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        }));
        linearLayout.addView(effectsTextView, LayoutHelper.createLinear(-1, -2, 24.0f, 4.0f, 24.0f, 24.0f));
        final boolean z = IconManager.INSTANCE.findPackById(this.iconPack.getId()) != null;
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, true, this.resourcesProvider);
        buttonWithCounterView.setRound();
        buttonWithCounterView.setCount(LocaleController.formatPluralString("IconCount", this.iconPack.getIcons().size(), new Object[0]), false);
        if (z) {
            buttonWithCounterView.setText(LocaleController.getString(C2888R.string.UpdatePack), false);
        } else {
            buttonWithCounterView.setText(LocaleController.getString(C2888R.string.InstallPack), false);
        }
        linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 0, 16, 0, 16, 16));
        if (ExteraConfig.iconPacksLayout.contains(this.iconPack.getId())) {
            checkBox2 = null;
        } else {
            checkBox2 = new CheckBox2(context, 21, this.resourcesProvider);
            checkBox2.setColor(Theme.key_radioBackgroundChecked, Theme.key_checkboxDisabled, Theme.key_checkboxCheck);
            checkBox2.setDrawUnchecked(true);
            checkBox2.setChecked(true, false);
            checkBox2.setDrawBackgroundAsArc(10);
            TextView textView2 = new TextView(context);
            textView2.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
            textView2.setTextSize(1, 14.0f);
            textView2.setText(LocaleController.getString(C2888R.string.EnableAfterInstallation));
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.addView(checkBox2, LayoutHelper.createFrame(21, 21.0f, 17, 0.0f, 0.0f, 0.0f, 0.0f));
            LinearLayout linearLayout2 = new LinearLayout(context);
            linearLayout2.setOrientation(0);
            linearLayout2.setPadding(AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(6.0f));
            linearLayout2.addView(frameLayout, LayoutHelper.createLinear(24, 24, 16, 0, 0, 6, 0));
            linearLayout2.addView(textView2, LayoutHelper.createLinear(-2, -2, 16));
            linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.icons.ui.components.InstallIconPackBottomSheet$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    InstallIconPackBottomSheet.createView$lambda$1(checkBox2, view);
                }
            });
            ScaleStateListAnimator.apply(linearLayout2, 0.05f, 1.2f);
            linearLayout2.setBackground(Theme.createRadSelectorDrawable(getThemedColor(Theme.key_listSelector), 8, 8));
            linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-2, -2, 1, 0, 0, 0, 8));
        }
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.icons.ui.components.InstallIconPackBottomSheet$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InstallIconPackBottomSheet.createView$lambda$2(this.f$0, checkBox2, z, view);
            }
        });
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createView$lambda$1(CheckBox2 checkBox2, View view) {
        checkBox2.setChecked(!checkBox2.isChecked(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createView$lambda$2(final InstallIconPackBottomSheet installIconPackBottomSheet, final CheckBox2 checkBox2, final boolean z, View view) {
        installIconPackBottomSheet.lambda$new$0();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.icons.ui.components.InstallIconPackBottomSheet$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                InstallIconPackBottomSheet.createView$lambda$2$0(this.f$0, checkBox2, z);
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createView$lambda$2$0(InstallIconPackBottomSheet installIconPackBottomSheet, CheckBox2 checkBox2, boolean z) {
        installIconPackBottomSheet.installDelegate.onInstall(checkBox2 != null && checkBox2.isChecked(), z);
    }
}
