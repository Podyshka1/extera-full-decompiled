package com.exteragram.messenger.icons.ui.components;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.StrikethroughSpan;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.components.CheckBoxRow;
import com.exteragram.messenger.icons.IconManager;
import com.exteragram.messenger.icons.IconPack;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.utils.text.LocaleUtils;
import java.io.File;
import kotlin.Metadata;
import kotlin.io.FilesKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.EffectsTextView;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\fB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;", "Lorg/telegram/ui/ActionBar/BottomSheet;", "context", "Landroid/content/Context;", "iconPack", "Lcom/exteragram/messenger/icons/IconPack;", "installDelegate", "Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet$InstallDelegate;", "<init>", "(Landroid/content/Context;Lcom/exteragram/messenger/icons/IconPack;Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet$InstallDelegate;)V", "createView", "Landroid/view/View;", "InstallDelegate", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
public final class InstallIconPackBottomSheet extends BottomSheet {
    private final IconPack iconPack;
    private final InstallDelegate installDelegate;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&¨\u0006\u0007À\u0006\u0003"}, d2 = {"Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet$InstallDelegate;", _UrlKt.FRAGMENT_ENCODE_SET, "onInstall", _UrlKt.FRAGMENT_ENCODE_SET, "enable", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.UPDATE, "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public interface InstallDelegate {
        void onInstall(boolean enable, boolean update);
    }

    public InstallIconPackBottomSheet(Context context, IconPack iconPack, InstallDelegate installDelegate) {
        super(context, false);
        this.iconPack = iconPack;
        this.installDelegate = installDelegate;
        fixNavigationBar();
        setCustomView(createView(context));
        setOnDismissListener(new Runnable() { // from class: com.exteragram.messenger.icons.ui.components.InstallIconPackBottomSheet$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.icons.ui.components.InstallIconPackBottomSheet$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.icons.ui.components.InstallIconPackBottomSheet$$ExternalSyntheticLambda4
                            @Override // java.lang.Runnable
                            public final void run() {
                                InstallIconPackBottomSheet.$r8$lambda$lYsEcB3VdRolPxkK_mP_jzm3nus(installIconPackBottomSheet);
                            }
                        });
                    }
                }, 1000L);
            }
        });
    }

    public static void $r8$lambda$lYsEcB3VdRolPxkK_mP_jzm3nus(InstallIconPackBottomSheet installIconPackBottomSheet) {
        File location = installIconPackBottomSheet.iconPack.getLocation();
        if (location != null) {
            FilesKt.deleteRecursively(location);
        }
    }

    private final View createView(Context context) {
        final CheckBoxRow checkBoxRow;
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(0, AndroidUtilities.dp(16.0f), 0, 0);
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
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        IconPack iconPackFindPackById = IconManager.INSTANCE.findPackById(this.iconPack.getId());
        final boolean z = iconPackFindPackById != null;
        EffectsTextView effectsTextView = new EffectsTextView(context, this.resourcesProvider);
        effectsTextView.setGravity(1);
        effectsTextView.setTypeface(AndroidUtilities.regular());
        effectsTextView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
        effectsTextView.setLinkTextColor(getThemedColor(Theme.key_dialogTextLink));
        effectsTextView.setTextSize(1, 14.0f);
        effectsTextView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
        SpannableStringBuilder spannableStringBuilderAppend = new SpannableStringBuilder(LocaleController.getString(C2665R.string.PluginVersion)).append((CharSequence) " ");
        int length = spannableStringBuilderAppend.length();
        if (iconPackFindPackById != null) {
            String version = iconPackFindPackById.getVersion();
            spannableStringBuilderAppend.append((CharSequence) version).append((CharSequence) " -> ").append((CharSequence) this.iconPack.getVersion());
            spannableStringBuilderAppend = LocaleUtils.replaceArrows(context, spannableStringBuilderAppend, C2665R.drawable.msg_mini_arrow_mediathin);
            spannableStringBuilderAppend.setSpan(new StrikethroughSpan(), length, version.length() + length, 33);
        } else if (!TextUtils.isEmpty(this.iconPack.getVersion())) {
            spannableStringBuilderAppend.append((CharSequence) this.iconPack.getVersion());
        }
        if (!TextUtils.isEmpty(this.iconPack.getAuthor())) {
            spannableStringBuilderAppend.append((CharSequence) " • ").append(LocaleUtils.formatWithUsernames(this.iconPack.getAuthor(), safeLastFragment, new Runnable() { // from class: com.exteragram.messenger.icons.ui.components.InstallIconPackBottomSheet$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0();
                }
            }));
        }
        effectsTextView.setText(spannableStringBuilderAppend);
        linearLayout.addView(effectsTextView, LayoutHelper.createLinear(-1, -2, 24.0f, 4.0f, 24.0f, 24.0f));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, true, this.resourcesProvider);
        buttonWithCounterView.setRound();
        buttonWithCounterView.setCount(LocaleController.formatPluralString("IconCount", this.iconPack.getIcons().size(), new Object[0]), false);
        if (z) {
            buttonWithCounterView.setText(LocaleController.getString(C2665R.string.UpdatePack), false);
        } else {
            buttonWithCounterView.setText(LocaleController.getString(C2665R.string.InstallPack), false);
        }
        linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 0, 16, 0, 16, 16));
        if (ExteraConfig.getIconPacksLayout().contains(this.iconPack.getId())) {
            checkBoxRow = null;
        } else {
            checkBoxRow = new CheckBoxRow(context, LocaleController.getString(C2665R.string.EnableAfterInstallation), true, this.resourcesProvider);
            linearLayout.addView(checkBoxRow, LayoutHelper.createLinear(-2, -2, 1, 0, 0, 0, 8));
        }
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.icons.ui.components.InstallIconPackBottomSheet$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InstallIconPackBottomSheet.$r8$lambda$16Mca43Svex8CFfxTTCwGRlDHWU(this.f$0, checkBoxRow, z, view);
            }
        });
        return linearLayout;
    }

    public static void $r8$lambda$16Mca43Svex8CFfxTTCwGRlDHWU(final InstallIconPackBottomSheet installIconPackBottomSheet, final CheckBoxRow checkBoxRow, final boolean z, View view) {
        installIconPackBottomSheet.lambda$new$0();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.icons.ui.components.InstallIconPackBottomSheet$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                InstallIconPackBottomSheet.m2526$r8$lambda$DgxMVL65kbfZyL8piBwuZ2k21o(this.f$0, checkBoxRow, z);
            }
        }, 200L);
    }

    /* JADX INFO: renamed from: $r8$lambda$DgxMV-L65kbfZyL8piBwuZ2k21o, reason: not valid java name */
    public static void m2526$r8$lambda$DgxMVL65kbfZyL8piBwuZ2k21o(InstallIconPackBottomSheet installIconPackBottomSheet, CheckBoxRow checkBoxRow, boolean z) {
        InstallDelegate installDelegate = installIconPackBottomSheet.installDelegate;
        boolean z2 = false;
        if (checkBoxRow != null && checkBoxRow.isChecked()) {
            z2 = true;
        }
        installDelegate.onInstall(z2, z);
    }
}
