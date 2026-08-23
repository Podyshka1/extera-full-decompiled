package org.telegram.p029ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.SpannableStringBuilder;
import android.util.Property;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.android.p003dx.p006io.Opcodes;
import com.exteragram.messenger.updater.UpdaterUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.spoilers.SpoilersTextView;
import org.telegram.p029ui.Components.voip.CellFlickerDrawable;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public class BlockingUpdateView extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private final FrameLayout acceptButton;
    private final TextView acceptTextView;
    private int accountNum;
    private final TLRPC.TL_help_appUpdate appUpdate;
    private String fileName;
    Drawable gradientDrawableBottom;
    Drawable gradientDrawableTop;
    private int pressCount;
    private AnimatorSet progressAnimation;
    private final RadialProgress radialProgress;
    private final FrameLayout radialProgressView;
    private final ScrollView scrollView;
    private final TextView textView;

    public BlockingUpdateView(Context context, TLRPC.TL_help_appUpdate tL_help_appUpdate) {
        super(context);
        GradientDrawable.Orientation orientation = GradientDrawable.Orientation.TOP_BOTTOM;
        int i = Theme.key_windowBackgroundWhite;
        this.gradientDrawableTop = new GradientDrawable(orientation, new int[]{Theme.getColor(i), 0});
        this.gradientDrawableBottom = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, new int[]{Theme.getColor(i), 0});
        this.appUpdate = tL_help_appUpdate;
        setBackgroundColor(Theme.getColor(i));
        int i2 = (int) (AndroidUtilities.statusBarHeight / AndroidUtilities.density);
        FrameLayout frameLayout = new FrameLayout(context);
        addView(frameLayout, new FrameLayout.LayoutParams(-1, AndroidUtilities.m1124dp(236.0f) + AndroidUtilities.statusBarHeight));
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        rLottieImageView.setAutoRepeat(true);
        rLottieImageView.setAnimation(C2888R.raw.extera_arrow, 120, 120);
        rLottieImageView.playAnimation();
        rLottieImageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.BlockingUpdateView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        frameLayout.addView(rLottieImageView, LayoutHelper.createFrame(120, 120.0f, 49, 0.0f, i2 + 30, 0.0f, 0.0f));
        TextView textView = new TextView(context);
        int i3 = Theme.key_windowBackgroundWhiteBlackText;
        textView.setTextColor(Theme.getColor(i3));
        textView.setTextSize(1, 20.0f);
        textView.setGravity(49);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setText(LocaleController.getString(C2888R.string.UpdateAvailable));
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, 49, 0.0f, i2 + 175, 0.0f, 0.0f));
        TextView textView2 = new TextView(getContext());
        textView2.setTextColor(Theme.getColor(Theme.key_dialogTextGray3));
        textView2.setTextSize(1, 14.0f);
        textView2.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
        textView2.setLinkTextColor(Theme.getColor(Theme.key_dialogTextLink));
        textView2.setText(LocaleController.formatString("AppUpdateVersionAndSize", C2888R.string.AppUpdateVersionAndSize, tL_help_appUpdate.version, AndroidUtilities.formatFileSize(tL_help_appUpdate.document.size)));
        textView2.setGravity(49);
        frameLayout.addView(textView2, LayoutHelper.createFrame(-2, -2.0f, 1, 23.0f, i2 + Opcodes.MUL_DOUBLE_2ADDR, 23.0f, 0.0f));
        FrameLayout frameLayout2 = new FrameLayout(context);
        ScrollView scrollView = new ScrollView(context);
        this.scrollView = scrollView;
        AndroidUtilities.setScrollViewEdgeEffectColor(scrollView, Theme.getColor(Theme.key_actionBarDefault));
        scrollView.setPadding(0, AndroidUtilities.m1124dp(16.0f), 0, AndroidUtilities.m1124dp(16.0f));
        scrollView.setClipToPadding(false);
        addView(scrollView, LayoutHelper.createFrame(-1, -1.0f, 51, 27.0f, i2 + 238, 27.0f, 130.0f));
        scrollView.addView(frameLayout2);
        SpoilersTextView spoilersTextView = new SpoilersTextView(context);
        this.textView = spoilersTextView;
        spoilersTextView.setTextColor(Theme.getColor(i3));
        spoilersTextView.setLinkTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText));
        spoilersTextView.setTextSize(1, 13.0f);
        spoilersTextView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
        spoilersTextView.setGravity(51);
        spoilersTextView.setLineSpacing(AndroidUtilities.m1124dp(2.0f), 1.0f);
        frameLayout2.addView(spoilersTextView, LayoutHelper.createFrame(-1, -2.0f, 51, 0.0f, 0.0f, 0.0f, 0.0f));
        FrameLayout frameLayout3 = new FrameLayout(context) { // from class: org.telegram.ui.Components.BlockingUpdateView.1
            CellFlickerDrawable cellFlickerDrawable;

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                if (this.cellFlickerDrawable == null) {
                    CellFlickerDrawable cellFlickerDrawable = new CellFlickerDrawable();
                    this.cellFlickerDrawable = cellFlickerDrawable;
                    cellFlickerDrawable.drawFrame = false;
                    cellFlickerDrawable.repeatProgress = 2.0f;
                }
                this.cellFlickerDrawable.setParentWidth(getMeasuredWidth());
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
                this.cellFlickerDrawable.draw(canvas, rectF, AndroidUtilities.m1124dp(8.0f), null);
                invalidate();
            }
        };
        this.acceptButton = frameLayout3;
        ScaleStateListAnimator.apply(frameLayout3, 0.02f, 1.2f);
        frameLayout3.setBackground(Theme.AdaptiveRipple.filledRectByKey(Theme.key_featuredStickers_addButton, 8.0f));
        frameLayout3.setPadding(AndroidUtilities.m1124dp(16.0f), 0, AndroidUtilities.m1124dp(16.0f), 0);
        addView(frameLayout3, LayoutHelper.createFrame(-1, 48.0f, 81, 16.0f, 0.0f, 16.0f, 45.0f));
        frameLayout3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.BlockingUpdateView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(view);
            }
        });
        TextView textView3 = new TextView(context);
        this.acceptTextView = textView3;
        textView3.setGravity(17);
        textView3.setTypeface(AndroidUtilities.bold());
        textView3.setTextColor(-1);
        textView3.setText(LocaleController.getString(C2888R.string.Update));
        textView3.setTextSize(1, 14.0f);
        frameLayout3.addView(textView3, LayoutHelper.createFrame(-2, -2, 17));
        FrameLayout frameLayout4 = new FrameLayout(context) { // from class: org.telegram.ui.Components.BlockingUpdateView.2
            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i4, int i5, int i6, int i7) {
                super.onLayout(z, i4, i5, i6, i7);
                int i8 = i6 - i4;
                int iM1124dp = AndroidUtilities.m1124dp(36.0f);
                int i9 = (i8 - iM1124dp) / 2;
                int i10 = ((i7 - i5) - iM1124dp) / 2;
                BlockingUpdateView.this.radialProgress.setProgressRect(i9, i10, i9 + iM1124dp, iM1124dp + i10);
            }

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                BlockingUpdateView.this.radialProgress.draw(canvas);
            }
        };
        this.radialProgressView = frameLayout4;
        frameLayout4.setWillNotDraw(false);
        frameLayout4.setAlpha(0.0f);
        frameLayout4.setScaleX(0.1f);
        frameLayout4.setScaleY(0.1f);
        frameLayout4.setVisibility(4);
        RadialProgress radialProgress = new RadialProgress(frameLayout4);
        this.radialProgress = radialProgress;
        radialProgress.setBackground(null, true, false);
        radialProgress.setProgressColor(-1);
        frameLayout3.addView(frameLayout4, LayoutHelper.createFrame(36, 36, 17));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        int i = this.pressCount + 1;
        this.pressCount = i;
        if (i >= 10) {
            setVisibility(8);
            SharedConfig.pendingAppUpdate = null;
            SharedConfig.saveConfig();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        if (ApplicationLoader.applicationLoaderInstance.checkApkInstallPermissions(getContext())) {
            TLRPC.TL_help_appUpdate tL_help_appUpdate = this.appUpdate;
            if (tL_help_appUpdate.document instanceof TLRPC.TL_document) {
                if (ApplicationLoader.applicationLoaderInstance.openApkInstall((Activity) getContext(), this.appUpdate.document)) {
                    return;
                }
                FileLoader.getInstance(this.accountNum).loadFile(this.appUpdate.document, "update", 3, 1);
                showProgress(true);
                return;
            }
            if (tL_help_appUpdate.url != null) {
                Browser.openUrl(getContext(), this.appUpdate.url);
            }
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i == 8) {
            NotificationCenter.getInstance(this.accountNum).removeObserver(this, NotificationCenter.fileLoaded);
            NotificationCenter.getInstance(this.accountNum).removeObserver(this, NotificationCenter.fileLoadFailed);
            NotificationCenter.getInstance(this.accountNum).removeObserver(this, NotificationCenter.fileLoadProgressChanged);
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.fileLoaded) {
            String str = (String) objArr[0];
            String str2 = this.fileName;
            if (str2 == null || !str2.equals(str)) {
                return;
            }
            showProgress(false);
            ApplicationLoader.applicationLoaderInstance.openApkInstall((Activity) getContext(), this.appUpdate.document);
            return;
        }
        if (i == NotificationCenter.fileLoadFailed) {
            String str3 = (String) objArr[0];
            String str4 = this.fileName;
            if (str4 == null || !str4.equals(str3)) {
                return;
            }
            showProgress(false);
            return;
        }
        if (i == NotificationCenter.fileLoadProgressChanged) {
            String str5 = (String) objArr[0];
            String str6 = this.fileName;
            if (str6 == null || !str6.equals(str5)) {
                return;
            }
            this.radialProgress.setProgress(Math.min(1.0f, ((Long) objArr[1]).longValue() / ((Long) objArr[2]).longValue()), true);
        }
    }

    private void showProgress(final boolean z) {
        AnimatorSet animatorSet = this.progressAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.progressAnimation = new AnimatorSet();
        Property property = View.ALPHA;
        Property property2 = View.SCALE_Y;
        Property property3 = View.SCALE_X;
        if (z) {
            this.radialProgressView.setVisibility(0);
            this.acceptButton.setEnabled(false);
            this.progressAnimation.playTogether(ObjectAnimator.ofFloat(this.acceptTextView, (Property<TextView, Float>) property3, 0.1f), ObjectAnimator.ofFloat(this.acceptTextView, (Property<TextView, Float>) property2, 0.1f), ObjectAnimator.ofFloat(this.acceptTextView, (Property<TextView, Float>) property, 0.0f), ObjectAnimator.ofFloat(this.radialProgressView, (Property<FrameLayout, Float>) property3, 1.0f), ObjectAnimator.ofFloat(this.radialProgressView, (Property<FrameLayout, Float>) property2, 1.0f), ObjectAnimator.ofFloat(this.radialProgressView, (Property<FrameLayout, Float>) property, 1.0f));
        } else {
            this.acceptTextView.setVisibility(0);
            this.acceptButton.setEnabled(true);
            this.progressAnimation.playTogether(ObjectAnimator.ofFloat(this.radialProgressView, (Property<FrameLayout, Float>) property3, 0.1f), ObjectAnimator.ofFloat(this.radialProgressView, (Property<FrameLayout, Float>) property2, 0.1f), ObjectAnimator.ofFloat(this.radialProgressView, (Property<FrameLayout, Float>) property, 0.0f), ObjectAnimator.ofFloat(this.acceptTextView, (Property<TextView, Float>) property3, 1.0f), ObjectAnimator.ofFloat(this.acceptTextView, (Property<TextView, Float>) property2, 1.0f), ObjectAnimator.ofFloat(this.acceptTextView, (Property<TextView, Float>) property, 1.0f));
        }
        this.progressAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.BlockingUpdateView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (BlockingUpdateView.this.progressAnimation == null || !BlockingUpdateView.this.progressAnimation.equals(animator)) {
                    return;
                }
                if (!z) {
                    BlockingUpdateView.this.radialProgressView.setVisibility(4);
                } else {
                    BlockingUpdateView.this.acceptTextView.setVisibility(4);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (BlockingUpdateView.this.progressAnimation == null || !BlockingUpdateView.this.progressAnimation.equals(animator)) {
                    return;
                }
                BlockingUpdateView.this.progressAnimation = null;
            }
        });
        this.progressAnimation.setDuration(150L);
        this.progressAnimation.start();
    }

    public void show(int i, boolean z) {
        this.pressCount = 0;
        this.accountNum = i;
        TLRPC.Document document = this.appUpdate.document;
        if (document instanceof TLRPC.TL_document) {
            this.fileName = FileLoader.getAttachFileName(document);
        }
        if (getVisibility() != 0) {
            setVisibility(0);
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.appUpdate.text);
        MessageObject.addEntitiesToText(spannableStringBuilder, this.appUpdate.entities, false, false, false, false);
        MessageObject.replaceAnimatedEmoji(spannableStringBuilder, this.appUpdate.entities, this.textView.getPaint().getFontMetricsInt());
        this.textView.setText(spannableStringBuilder);
        NotificationCenter.getInstance(this.accountNum).addObserver(this, NotificationCenter.fileLoaded);
        NotificationCenter.getInstance(this.accountNum).addObserver(this, NotificationCenter.fileLoadFailed);
        NotificationCenter.getInstance(this.accountNum).addObserver(this, NotificationCenter.fileLoadProgressChanged);
        if (z) {
            UpdaterUtils.getAppUpdate(new Utilities.Callback2() { // from class: org.telegram.ui.Components.BlockingUpdateView$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$show$3((TLRPC.TL_help_appUpdate) obj, (TLRPC.TL_error) obj2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$3(TLRPC.TL_help_appUpdate tL_help_appUpdate, TLRPC.TL_error tL_error) {
        if (tL_help_appUpdate == null || tL_help_appUpdate.can_not_skip) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.BlockingUpdateView$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$show$2();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$2() {
        setVisibility(8);
        SharedConfig.pendingAppUpdate = null;
        SharedConfig.saveConfig();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        this.gradientDrawableTop.setBounds(this.scrollView.getLeft(), this.scrollView.getTop(), this.scrollView.getRight(), this.scrollView.getTop() + AndroidUtilities.m1124dp(16.0f));
        this.gradientDrawableTop.draw(canvas);
        this.gradientDrawableBottom.setBounds(this.scrollView.getLeft(), this.scrollView.getBottom() - AndroidUtilities.m1124dp(18.0f), this.scrollView.getRight(), this.scrollView.getBottom());
        this.gradientDrawableBottom.draw(canvas);
    }
}
