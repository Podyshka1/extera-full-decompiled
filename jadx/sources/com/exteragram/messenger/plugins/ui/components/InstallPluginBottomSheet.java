package com.exteragram.messenger.plugins.ui.components;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.style.StrikethroughSpan;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.badges.BadgesController;
import com.exteragram.messenger.components.VerticalImageSpan;
import com.exteragram.messenger.plugins.Plugin;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.plugins.PythonPluginsEngine;
import com.exteragram.messenger.plugins.pip.PipController;
import com.exteragram.messenger.utils.chats.ChatUtils;
import com.exteragram.messenger.utils.text.LocaleUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2484R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CheckBox2;
import org.telegram.ui.Components.EffectsTextView;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RLottieImageView;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.Stories.recorder.HintView2;

/* JADX INFO: loaded from: classes4.dex */
public class InstallPluginBottomSheet extends BottomSheet {
    private final ButtonWithCounterView button;
    private volatile boolean cancellationRequested;
    private HintView2 currentHint;
    private Runnable delayedLoadingRunnable;
    private boolean enableAfterInstallation;
    private boolean installing;
    private final boolean isUpdate;

    @Override // org.telegram.ui.ActionBar.BottomSheet, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public /* bridge */ /* synthetic */ void setLastVisible(boolean z) {
        BaseFragment.AttachedSheet.CC.$default$setLastVisible(this, z);
    }

    public InstallPluginBottomSheet(final BaseFragment baseFragment, final PluginsController.PluginValidationResult pluginValidationResult, final PluginInstallParams pluginInstallParams) {
        boolean z;
        super(baseFragment.getParentActivity(), false, baseFragment.getResourceProvider());
        this.enableAfterInstallation = false;
        this.installing = false;
        this.cancellationRequested = false;
        setDelegate(new BottomSheet.BottomSheetDelegate() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet.1
            @Override // org.telegram.ui.ActionBar.BottomSheet.BottomSheetDelegate, org.telegram.ui.ActionBar.BottomSheet.BottomSheetDelegateInterface
            public boolean canDismiss() {
                return !InstallPluginBottomSheet.this.installing;
            }
        });
        boolean zContainsKey = PluginsController.getInstance().plugins.containsKey(pluginValidationResult.plugin.getId());
        this.isUpdate = zContainsKey;
        Activity parentActivity = baseFragment.getParentActivity();
        fixNavigationBar();
        FrameLayout frameLayout = new FrameLayout(parentActivity);
        LinearLayout linearLayout = new LinearLayout(parentActivity);
        linearLayout.setOrientation(1);
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        frameLayout.addView(linearLayout);
        if (pluginValidationResult.plugin.getPack() != null && pluginValidationResult.plugin.getIndex() >= 0) {
            BackupImageView backupImageView = new BackupImageView(parentActivity) { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet.2
                @Override // org.telegram.ui.Components.BackupImageView, android.view.View
                @SuppressLint({"DrawAllocation"})
                public void onDraw(Canvas canvas) {
                    Path path = new Path();
                    float fDp = AndroidUtilities.dp(12.0f);
                    path.addRoundRect(new RectF(0.0f, 0.0f, getWidth(), getHeight()), fDp, fDp, Path.Direction.CW);
                    canvas.save();
                    canvas.clipPath(path);
                    super.onDraw(canvas);
                    canvas.restore();
                    Paint paint = new Paint(1);
                    paint.setColor(InstallPluginBottomSheet.this.getThemedColor(Theme.key_dialogBackground));
                    paint.setStrokeWidth(AndroidUtilities.dp(4.0f));
                    paint.setStyle(Paint.Style.STROKE);
                    canvas.drawCircle(getMeasuredWidth() - AndroidUtilities.dp(10.0f), getMeasuredHeight() - AndroidUtilities.dp(10.0f), AndroidUtilities.dp(12.0f), paint);
                    Paint paint2 = new Paint(1);
                    paint2.setColor(InstallPluginBottomSheet.this.getThemedColor(Theme.key_featuredStickers_addButton));
                    paint2.setStyle(Paint.Style.FILL);
                    canvas.drawCircle(getMeasuredWidth() - AndroidUtilities.dp(10.0f), getMeasuredHeight() - AndroidUtilities.dp(10.0f), AndroidUtilities.dp(12.0f), paint2);
                    Drawable drawable = ContextCompat.getDrawable(getContext(), C2484R.drawable.plugin_large);
                    if (drawable != null) {
                        drawable.setColorFilter(new PorterDuffColorFilter(InstallPluginBottomSheet.this.getThemedColor(Theme.key_featuredStickers_buttonText), PorterDuff.Mode.SRC_IN));
                        drawable.setBounds(getMeasuredWidth() - AndroidUtilities.dp(18.0f), getMeasuredHeight() - AndroidUtilities.dp(18.0f), getMeasuredWidth() - AndroidUtilities.dp(2.0f), getMeasuredHeight() - AndroidUtilities.dp(2.0f));
                        drawable.draw(canvas);
                    }
                }
            };
            backupImageView.setRoundRadius(AndroidUtilities.dp(12.0f));
            backupImageView.getImageReceiver().setAutoRepeat(1);
            linearLayout.addView(backupImageView, LayoutHelper.createLinear(78, 78, 1, 0, 28, 0, 0));
            MediaDataController.getInstance(UserConfig.selectedAccount).setPlaceholderImageByIndex(backupImageView, pluginValidationResult.plugin.getPack(), pluginValidationResult.plugin.getIndex(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986140613782369499L));
        } else {
            RLottieImageView rLottieImageView = new RLottieImageView(getContext());
            rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
            rLottieImageView.setImageResource(C2484R.drawable.plugin_large);
            rLottieImageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_featuredStickers_buttonText), PorterDuff.Mode.SRC_IN));
            rLottieImageView.setBackground(Theme.createCircleDrawable(AndroidUtilities.dp(78.0f), getThemedColor(Theme.key_featuredStickers_addButton)));
            linearLayout.addView(rLottieImageView, LayoutHelper.createLinear(78, 78, 1, 0, 28, 0, 0));
        }
        TextView textView = new TextView(parentActivity);
        textView.setGravity(1);
        int i = Theme.key_windowBackgroundWhiteBlackText;
        textView.setTextColor(getThemedColor(i));
        textView.setTextSize(1, 18.0f);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setText(pluginValidationResult.plugin.getName());
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 0, 40, 16, 40, 0));
        EffectsTextView effectsTextView = new EffectsTextView(parentActivity, baseFragment.getResourceProvider());
        effectsTextView.setGravity(1);
        effectsTextView.setTypeface(AndroidUtilities.getTypeface(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986140648142107867L)));
        effectsTextView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
        int i2 = Theme.key_dialogTextLink;
        effectsTextView.setLinkTextColor(getThemedColor(i2));
        effectsTextView.setTextSize(1, 14.0f);
        int i3 = Theme.key_windowBackgroundWhiteGrayText;
        effectsTextView.setTextColor(getThemedColor(i3));
        SpannableStringBuilder spannableStringBuilderAppend = new SpannableStringBuilder(LocaleController.getString(C2484R.string.PluginVersion)).append((CharSequence) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986140729746486491L));
        int length = spannableStringBuilderAppend.length();
        if (zContainsKey) {
            Plugin plugin = PluginsController.getInstance().plugins.get(pluginValidationResult.plugin.getId());
            if (plugin != null) {
                spannableStringBuilderAppend.append((CharSequence) plugin.getVersion()).append((CharSequence) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986140738336421083L)).append((CharSequence) pluginValidationResult.plugin.getVersion());
                spannableStringBuilderAppend = VerticalImageSpan.createSpan(getContext(), C2484R.drawable.msg_mini_arrow_mediathin, spannableStringBuilderAppend.toString(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986140759811257563L), i3, this.resourcesProvider);
                spannableStringBuilderAppend.setSpan(new StrikethroughSpan(), length, plugin.getVersion().length() + length, 33);
            }
        } else {
            spannableStringBuilderAppend.append((CharSequence) pluginValidationResult.plugin.getVersion());
        }
        spannableStringBuilderAppend.append((CharSequence) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986140772696159451L)).append(LocaleUtils.formatWithUsernames(pluginValidationResult.plugin.getAuthor(), baseFragment, new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        }));
        effectsTextView.setText(spannableStringBuilderAppend);
        linearLayout.addView(effectsTextView, LayoutHelper.createLinear(-1, -2, 0, 21, 4, 21, 0));
        boolean z2 = pluginInstallParams.trusted;
        int i4 = z2 ? C2484R.drawable.trusted_mini : C2484R.drawable.unknown_mini;
        int themedColor = getThemedColor(z2 ? Theme.key_windowBackgroundWhiteGreenText : Theme.key_text_RedRegular);
        String string = LocaleController.getString(pluginInstallParams.trusted ? C2484R.string.PluginSourceTrusted : C2484R.string.PluginSourceUnknown);
        final LinearLayout linearLayout2 = new LinearLayout(parentActivity);
        ScaleStateListAnimator.apply(linearLayout2, 0.05f, 1.5f);
        linearLayout2.setOrientation(0);
        linearLayout2.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(20.0f), AndroidUtilities.dp(20.0f), AndroidUtilities.multiplyAlphaComponent(themedColor, 0.1f)));
        linearLayout2.setPadding(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(6.0f));
        linearLayout2.setGravity(17);
        ImageView imageView = new ImageView(parentActivity);
        imageView.setImageResource(i4);
        imageView.setColorFilter(new PorterDuffColorFilter(themedColor, PorterDuff.Mode.SRC_IN));
        linearLayout2.addView(imageView, LayoutHelper.createLinear(14, 14, 16, 0, 0, 6, 0));
        TextView textView2 = new TextView(parentActivity);
        textView2.setTypeface(AndroidUtilities.getTypeface(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986140789876028635L)));
        textView2.setTextColor(themedColor);
        textView2.setTextSize(1, 13.0f);
        textView2.setText(string);
        linearLayout2.addView(textView2);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-2, -2, 17, 0, 12, 0, 0));
        linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(pluginInstallParams, view);
            }
        });
        EffectsTextView effectsTextView2 = new EffectsTextView(parentActivity);
        effectsTextView2.setGravity(3);
        effectsTextView2.setTypeface(AndroidUtilities.getTypeface(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986140871480407259L)));
        effectsTextView2.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
        effectsTextView2.setLinkTextColor(getThemedColor(i2));
        effectsTextView2.setTextSize(1, 15.0f);
        effectsTextView2.setTextColor(getThemedColor(i));
        effectsTextView2.setText(LocaleUtils.fullyFormatText(pluginValidationResult.plugin.getDescription(), baseFragment, new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        }));
        linearLayout.addView(effectsTextView2, LayoutHelper.createLinear(-1, -2, 0, 21, 28, 21, 0));
        if (pluginValidationResult.plugin.getRequirements() != null && !pluginValidationResult.plugin.getRequirements().isEmpty()) {
            PluginRequirementsView pluginRequirementsView = new PluginRequirementsView(parentActivity, baseFragment.getResourceProvider());
            linearLayout.addView(pluginRequirementsView, LayoutHelper.createLinear(-1, -2, 0, 21, 12, 21, 0));
            pluginRequirementsView.setRequirements(pluginValidationResult.plugin.getRequirements());
        }
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(parentActivity, true, this.resourcesProvider);
        this.button = buttonWithCounterView;
        buttonWithCounterView.setRound();
        restoreButtonText(false);
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$8(pluginInstallParams, pluginValidationResult, baseFragment, view);
            }
        });
        linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 0, 16, 28, 16, 16));
        if (!pluginValidationResult.plugin.isEnabled()) {
            final CheckBox2 checkBox2 = new CheckBox2(parentActivity, 21, this.resourcesProvider);
            checkBox2.setColor(Theme.key_radioBackgroundChecked, Theme.key_checkboxDisabled, Theme.key_checkboxCheck);
            checkBox2.setDrawUnchecked(true);
            checkBox2.setChecked(this.enableAfterInstallation, false);
            checkBox2.setDrawBackgroundAsArc(10);
            TextView textView3 = new TextView(parentActivity);
            textView3.setTextColor(getThemedColor(i));
            textView3.setTextSize(1, 14.0f);
            textView3.setText(LocaleController.getString(C2484R.string.EnableAfterInstallation));
            FrameLayout frameLayout2 = new FrameLayout(parentActivity);
            frameLayout2.addView(checkBox2, LayoutHelper.createFrame(21, 21.0f, 17, 0.0f, 0.0f, 0.0f, 0.0f));
            LinearLayout linearLayout3 = new LinearLayout(parentActivity);
            linearLayout3.setOrientation(0);
            linearLayout3.setPadding(AndroidUtilities.dp(8.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(6.0f));
            linearLayout3.addView(frameLayout2, LayoutHelper.createLinear(24, 24, 16, 0, 0, 6, 0));
            linearLayout3.addView(textView3, LayoutHelper.createLinear(-2, -2, 16));
            linearLayout3.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$9(checkBox2, view);
                }
            });
            ScaleStateListAnimator.apply(linearLayout3, 0.05f, 1.2f);
            linearLayout3.setBackground(Theme.createRadSelectorDrawable(getThemedColor(Theme.key_listSelector), 8, 8));
            linearLayout.addView(linearLayout3, LayoutHelper.createLinear(-2, -2, 1, 0, 0, 0, 8));
        }
        ImageView imageView2 = new ImageView(parentActivity);
        ScaleStateListAnimator.apply(imageView2, 0.15f, 1.5f);
        imageView2.setImageDrawable(ContextCompat.getDrawable(parentActivity, C2484R.drawable.msg_openin).mutate());
        imageView2.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_windowBackgroundWhiteGrayIcon), PorterDuff.Mode.MULTIPLY));
        imageView2.setScaleType(ImageView.ScaleType.CENTER);
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$10(pluginInstallParams, baseFragment, view);
            }
        });
        imageView2.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_dialogButtonSelector), 1, AndroidUtilities.dp(20.0f)));
        frameLayout.addView(imageView2, LayoutHelper.createFrame(40, 40.0f, 53, 0.0f, 16.0f, 16.0f, 0.0f));
        ScrollView scrollView = new ScrollView(parentActivity);
        scrollView.addView(frameLayout);
        setCustomView(scrollView);
        if (pluginInstallParams.trusted) {
            z = false;
            if (ExteraConfig.preferences.getBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986140953084785883L), false)) {
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    InstallPluginBottomSheet.$r8$lambda$NCk_PnzBOhorfCXboXcLY60hXac(linearLayout2, pluginInstallParams);
                }
            }, 600L);
        }
        z = false;
        if (pluginInstallParams.trusted || ExteraConfig.preferences.getBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986141038984131803L), z)) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                InstallPluginBottomSheet.$r8$lambda$NCk_PnzBOhorfCXboXcLY60hXac(linearLayout2, pluginInstallParams);
            }
        }, 600L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(PluginInstallParams pluginInstallParams, final View view) {
        HintView2 hintView2 = this.currentHint;
        if (hintView2 != null) {
            hintView2.hide();
            this.currentHint = null;
        }
        final HintView2 rounding = new HintView2(getContext(), 3).setMultilineText(true).setBgColor(getThemedColor(Theme.key_undo_background)).setTextColor(getThemedColor(Theme.key_undo_infoColor)).setText(AndroidUtilities.replaceTags(LocaleController.getString(pluginInstallParams.trusted ? C2484R.string.PluginSourceTrustedInfo : C2484R.string.PluginSourceUnknownInfo))).setTextAlign(Layout.Alignment.ALIGN_CENTER).allowBlur(true).setRounding(12.0f);
        rounding.setMaxWidthPx(HintView2.cutInFancyHalf(rounding.getText(), rounding.getTextPaint()));
        this.container.addView(rounding, LayoutHelper.createFrame(-1, 100.0f, 55, 32.0f, 0.0f, 32.0f, 0.0f));
        this.currentHint = rounding;
        this.container.post(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0(view, rounding);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, HintView2 hintView2) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int[] iArr2 = new int[2];
        this.container.getLocationInWindow(iArr2);
        iArr[0] = iArr[0] - iArr2[0];
        int i = iArr[1] - iArr2[1];
        iArr[1] = i;
        hintView2.setTranslationY((i - AndroidUtilities.dp(100.0f)) - AndroidUtilities.dp(6.0f));
        hintView2.setJointPx(0.0f, (-AndroidUtilities.dp(32.0f)) + iArr[0] + (view.getMeasuredWidth() / 2.0f));
        hintView2.setDuration(5500L);
        hintView2.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(PluginInstallParams pluginInstallParams, final PluginsController.PluginValidationResult pluginValidationResult, final BaseFragment baseFragment, View view) {
        if (this.installing) {
            if (this.cancellationRequested) {
                return;
            }
            this.cancellationRequested = true;
            this.button.setLoading(true);
            this.button.setSubText(null, true);
            return;
        }
        this.installing = true;
        this.cancellationRequested = false;
        setCanDismissWithSwipe(false);
        setCanDismissWithTouchOutside(false);
        Runnable runnable = this.delayedLoadingRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        Runnable runnable2 = new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$2();
            }
        };
        this.delayedLoadingRunnable = runnable2;
        AndroidUtilities.runOnUIThread(runnable2, 250L);
        PythonPluginsEngine pythonPluginsEngine = (PythonPluginsEngine) PluginsController.engines.get(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986141343926809819L));
        if (pythonPluginsEngine == null) {
            return;
        }
        pythonPluginsEngine.loadPluginFromFile(pluginInstallParams.filePath, pluginValidationResult.plugin, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda13
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$7(pluginValidationResult, baseFragment, (String) obj);
            }
        }, new C11053());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        this.button.setLoading(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(final PluginsController.PluginValidationResult pluginValidationResult, final BaseFragment baseFragment, final String str) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$6(str, pluginValidationResult, baseFragment);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(final String str, final PluginsController.PluginValidationResult pluginValidationResult, final BaseFragment baseFragment) {
        Runnable runnable = this.delayedLoadingRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.delayedLoadingRunnable = null;
        }
        this.button.setLoading(false);
        setCancelable(true);
        setCanDismissWithSwipe(true);
        setCanDismissWithTouchOutside(true);
        this.installing = false;
        if (this.cancellationRequested) {
            this.cancellationRequested = false;
            restoreButtonText(true);
            return;
        }
        if (str != null) {
            if (str.contains(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986141373991580891L))) {
                restoreButtonText(true);
                return;
            }
            restoreButtonText(true);
            str.split(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986141472775828699L))[0].replaceAll(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986141481365763291L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986141524315436251L));
            BulletinFactory.of(this.topBulletinContainer, this.resourcesProvider).createSimpleBulletin(C2484R.raw.error, LocaleController.formatString(C2484R.string.PluginInstallError, pluginValidationResult.plugin.getName()), LocaleUtils.createCopySpan(baseFragment), new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    InstallPluginBottomSheet.$r8$lambda$0HxVViXM3BdpXiQ1U04HNxMJZpQ(str, baseFragment);
                }
            }).show();
            return;
        }
        lambda$new$0();
        if (this.enableAfterInstallation) {
            PluginsController.getInstance().setPluginEnabled(pluginValidationResult.plugin.getId(), true, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda10
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$new$5(baseFragment, pluginValidationResult, (String) obj);
                }
            });
        } else {
            showSuccessBulletin(baseFragment, pluginValidationResult.plugin);
        }
    }

    public static /* synthetic */ void $r8$lambda$0HxVViXM3BdpXiQ1U04HNxMJZpQ(String str, BaseFragment baseFragment) {
        if (AndroidUtilities.addToClipboard(str)) {
            BulletinFactory.of(baseFragment).createCopyBulletin(LocaleController.getString(C2484R.string.TextCopied)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(final BaseFragment baseFragment, PluginsController.PluginValidationResult pluginValidationResult, final String str) {
        if (str == null) {
            showSuccessBulletin(baseFragment, pluginValidationResult.plugin);
        } else {
            BulletinFactory.of(baseFragment).createSimpleBulletin(C2484R.raw.error, LocaleController.formatString(C2484R.string.PluginInstalledButFailedToEnable, pluginValidationResult.plugin.getName()), LocaleUtils.createCopySpan(baseFragment), new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    InstallPluginBottomSheet.m2333$r8$lambda$lvJDf0WVltZZt4leIihxTBEd94(str, baseFragment);
                }
            }).show();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$lvJDf0W-VltZZt4leIihxTBEd94, reason: not valid java name */
    public static /* synthetic */ void m2333$r8$lambda$lvJDf0WVltZZt4leIihxTBEd94(String str, BaseFragment baseFragment) {
        if (AndroidUtilities.addToClipboard(str)) {
            BulletinFactory.of(baseFragment).createCopyBulletin(LocaleController.getString(C2484R.string.TextCopied)).show();
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$3 */
    class C11053 implements PipController.InstallerDelegate {
        C11053() {
        }

        @Override // com.exteragram.messenger.plugins.pip.PipController.InstallerDelegate
        public void onProgress(final String str) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onProgress$0(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onProgress$0(String str) {
            if (InstallPluginBottomSheet.this.delayedLoadingRunnable != null) {
                AndroidUtilities.cancelRunOnUIThread(InstallPluginBottomSheet.this.delayedLoadingRunnable);
                InstallPluginBottomSheet.this.delayedLoadingRunnable = null;
            }
            if (InstallPluginBottomSheet.this.cancellationRequested) {
                return;
            }
            InstallPluginBottomSheet.this.button.setLoading(false);
            InstallPluginBottomSheet.this.button.setText(LocaleController.getString(C2484R.string.Cancel), true);
            InstallPluginBottomSheet.this.button.setSubText(str, true);
        }

        @Override // com.exteragram.messenger.plugins.pip.PipController.InstallerDelegate
        public boolean isCancelled() {
            return InstallPluginBottomSheet.this.cancellationRequested;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$9(CheckBox2 checkBox2, View view) {
        checkBox2.setChecked(!checkBox2.isChecked(), true);
        this.enableAfterInstallation = checkBox2.isChecked();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$10(PluginInstallParams pluginInstallParams, BaseFragment baseFragment, View view) {
        if (this.installing) {
            return;
        }
        lambda$new$0();
        File file = new File(pluginInstallParams.filePath);
        if (file.exists()) {
            AndroidUtilities.openForView(file, file.getName(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986141296682169563L), baseFragment.getParentActivity(), baseFragment.getResourceProvider(), false);
        }
    }

    public static /* synthetic */ void $r8$lambda$NCk_PnzBOhorfCXboXcLY60hXac(LinearLayout linearLayout, PluginInstallParams pluginInstallParams) {
        linearLayout.performClick();
        ExteraConfig.editor.putBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(pluginInstallParams.trusted ? -5986141124883477723L : -5986141210782823643L), true).apply();
    }

    private void showSuccessBulletin(BaseFragment baseFragment, final Plugin plugin) {
        final BulletinFactory bulletinFactoryOf = BulletinFactory.of(baseFragment);
        final String name = plugin.getName();
        if (plugin.getPack() != null && plugin.getIndex() >= 0) {
            TLRPC.TL_inputStickerSetShortName tL_inputStickerSetShortName = new TLRPC.TL_inputStickerSetShortName();
            tL_inputStickerSetShortName.short_name = plugin.getPack();
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            final Runnable runnable = new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showSuccessBulletin$12(atomicBoolean, plugin, bulletinFactoryOf);
                }
            };
            AndroidUtilities.runOnUIThread(runnable, 300L);
            MediaDataController.getInstance(UserConfig.selectedAccount).getStickerSet(tL_inputStickerSetShortName, 0, true, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda17
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$showSuccessBulletin$15(atomicBoolean, plugin, runnable, name, bulletinFactoryOf, (TLRPC.TL_messages_stickerSet) obj);
                }
            });
            return;
        }
        showSimpleSuccessBulletin(plugin, bulletinFactoryOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSuccessBulletin$12(AtomicBoolean atomicBoolean, Plugin plugin, BulletinFactory bulletinFactory) {
        if (atomicBoolean.getAndSet(true)) {
            return;
        }
        showSimpleSuccessBulletin(plugin, bulletinFactory);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSuccessBulletin$15(final AtomicBoolean atomicBoolean, final Plugin plugin, final Runnable runnable, final String str, final BulletinFactory bulletinFactory, final TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showSuccessBulletin$14(atomicBoolean, tL_messages_stickerSet, plugin, runnable, str, bulletinFactory);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSuccessBulletin$14(AtomicBoolean atomicBoolean, TLRPC.TL_messages_stickerSet tL_messages_stickerSet, final Plugin plugin, Runnable runnable, String str, BulletinFactory bulletinFactory) {
        Bulletin bulletinCreateSimpleBulletin;
        ArrayList arrayList;
        int index;
        if (atomicBoolean.get()) {
            return;
        }
        TLRPC.Document document = (tL_messages_stickerSet == null || (arrayList = tL_messages_stickerSet.documents) == null || arrayList.isEmpty() || (index = plugin.getIndex()) < 0 || index >= tL_messages_stickerSet.documents.size()) ? null : (TLRPC.Document) tL_messages_stickerSet.documents.get(index);
        if (document == null || atomicBoolean.getAndSet(true)) {
            return;
        }
        AndroidUtilities.cancelRunOnUIThread(runnable);
        SpannableStringBuilder spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString(this.isUpdate ? C2484R.string.PluginUpdated : C2484R.string.PluginInstalled, str));
        Plugin plugin2 = PluginsController.getInstance().plugins.get(plugin.getId());
        if (plugin2 != null && PluginsController.getInstance().hasPluginSettings(plugin.getId()) && plugin2.isEnabled()) {
            bulletinCreateSimpleBulletin = bulletinFactory.createEmojiBulletin(document, spannableStringBuilderReplaceTags, LocaleController.getString(C2484R.string.Settings), new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    PluginsController.openPluginSettings(plugin.getId());
                }
            });
        } else {
            bulletinCreateSimpleBulletin = bulletinFactory.createSimpleBulletin(document, spannableStringBuilderReplaceTags);
        }
        bulletinCreateSimpleBulletin.show();
    }

    private void showSimpleSuccessBulletin(final Plugin plugin, BulletinFactory bulletinFactory) {
        String string = LocaleController.formatString(this.isUpdate ? C2484R.string.PluginUpdated : C2484R.string.PluginInstalled, plugin.getName());
        Plugin plugin2 = PluginsController.getInstance().plugins.get(plugin.getId());
        if (plugin2 != null && PluginsController.getInstance().hasPluginSettings(plugin.getId()) && plugin2.isEnabled()) {
            bulletinFactory.createSimpleBulletin(C2484R.raw.contact_check, string, LocaleController.getString(C2484R.string.Settings), new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    PluginsController.openPluginSettings(plugin.getId());
                }
            }).show();
        } else {
            bulletinFactory.createSimpleBulletin(C2484R.raw.contact_check, string).show();
        }
    }

    private void restoreButtonText(boolean z) {
        this.button.setText(LocaleController.getString(this.isUpdate ? C2484R.string.UpdatePlugin : C2484R.string.InstallPlugin), z);
        this.button.setSubText(null, z);
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: dismiss */
    public void lambda$new$0() {
        HintView2 hintView2 = this.currentHint;
        if (hintView2 != null) {
            hintView2.hide();
            this.currentHint = null;
        }
        super.lambda$new$0();
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    protected void onSwipeStarts() {
        HintView2 hintView2 = this.currentHint;
        if (hintView2 != null) {
            hintView2.hide();
            this.currentHint = null;
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class PluginInstallParams {
        public String filePath;
        public boolean trusted;

        public PluginInstallParams(String str, boolean z) {
            this.filePath = str;
            this.trusted = z;
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x004f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static PluginInstallParams of(MessageObject messageObject) {
            String pathToMessage = ChatUtils.getInstance().getPathToMessage(messageObject);
            boolean z = true;
            boolean z2 = false;
            if (messageObject.isForwarded()) {
                Long forwardedFromId = messageObject.getForwardedFromId();
                if (forwardedFromId != null) {
                    BadgesController badgesController = BadgesController.INSTANCE;
                    if (!badgesController.isTrusted(-forwardedFromId.longValue()) && !badgesController.isExtera(-forwardedFromId.longValue())) {
                        z = false;
                    }
                    z2 = z;
                }
            } else if (messageObject.isFromChannel() && !messageObject.isFromChat()) {
                long j = -messageObject.getDialogId();
                BadgesController badgesController2 = BadgesController.INSTANCE;
                if (!badgesController2.isTrusted(j) && !badgesController2.isExtera(j)) {
                }
                z2 = z;
            }
            return new PluginInstallParams(pathToMessage, z2);
        }
    }
}
