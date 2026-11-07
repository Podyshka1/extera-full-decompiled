package org.telegram.ui.Wallet;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Dialog;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import java.math.BigDecimal;
import kotlin.text.Typography;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_wallet;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.ProfileBalanceView;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.ScrimOptions;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable;
import org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundColorProviderThemed;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceBitmap;
import org.telegram.ui.Components.blur3.utils.Blur3Utils;
import org.telegram.ui.Components.chat.ViewPositionWatcher;
import org.telegram.ui.GradientClip;
import org.telegram.ui.ProfileActivity;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.Stories.recorder.HintView2;

/* JADX INFO: loaded from: classes8.dex */
public class ProfileWalletCardDialog extends Dialog {
    private Runnable afterDismiss;
    private final ProfileBalanceView anchor;
    private ValueAnimator animator;
    private Bitmap blurBitmap;
    private final RectF blurBounds;
    private final Paint blurPaint;
    private final View blurView;
    private final BlurredBackgroundSourceBitmap buttonBlur;
    private final BlurredBackgroundDrawableViewFactory buttonBlurFactory;
    private final WalletCardComponent card;
    private final RectF cardLayerBounds;
    private final GradientClip clip;
    private final RectF clipRect;
    private float clipTop;
    private boolean closed;
    private boolean dismissing;
    private final BaseFragment fragment;
    private float gyroscope;
    private ValueAnimator gyroscopeAnimator;
    private Insets insets;
    private final boolean isSelf;
    private boolean opening;
    private final TL_wallet.card profileCard;
    private float progress;
    private final TextView publicNote;
    private final FrameLayout root;
    private final int[] rootLocation;
    private final ProfileActivity.Button2 sendPill;
    private final boolean showHowItWorks;
    private final boolean showSendMoney;
    private final RectF source;
    private boolean springy;
    private final WalletGiftStickers stickers;

    public static /* synthetic */ void $r8$lambda$SVojM_FB7ZRQ6AAFGb8xiZeDO4w(View view) {
    }

    public ProfileWalletCardDialog(final BaseFragment baseFragment, ProfileBalanceView profileBalanceView, TLRPC.User user, final TL_wallet.card cardVar) {
        int i;
        String string;
        super(baseFragment.getParentActivity(), C2807R.style.TransparentDialog);
        RectF rectF = new RectF();
        this.source = rectF;
        this.blurPaint = new Paint(3);
        this.blurBounds = new RectF();
        BlurredBackgroundSourceBitmap blurredBackgroundSourceBitmap = new BlurredBackgroundSourceBitmap();
        this.buttonBlur = blurredBackgroundSourceBitmap;
        this.insets = Insets.NONE;
        this.clip = new GradientClip();
        this.clipRect = new RectF();
        this.cardLayerBounds = new RectF();
        this.rootLocation = new int[2];
        this.fragment = baseFragment;
        this.anchor = profileBalanceView;
        this.profileCard = cardVar;
        boolean z = user != null && user.id == UserConfig.getInstance(baseFragment.getCurrentAccount()).getClientUserId();
        this.isSelf = z;
        boolean z2 = (user == null || z || !MessagesController.getInstance(baseFragment.getCurrentAccount()).config.walletAvailable.get()) ? false : true;
        this.showSendMoney = z2;
        this.showHowItWorks = (user == null || z || z2) ? false : true;
        profileBalanceView.getButtonBoundsOnScreen(rectF);
        AndroidUtilities.enableEdgeToEdge(getWindow());
        FrameLayout frameLayout = new FrameLayout(getContext()) { // from class: org.telegram.ui.Wallet.ProfileWalletCardDialog.1
            @Override // android.widget.FrameLayout, android.view.View
            public void onMeasure(int i2, int i3) {
                int size = View.MeasureSpec.getSize(i2);
                int size2 = View.MeasureSpec.getSize(i3);
                setMeasuredDimension(size, size2);
                int iMax = Math.max(1, (size - ProfileWalletCardDialog.this.insets.left) - ProfileWalletCardDialog.this.insets.right);
                ProfileWalletCardDialog.this.sendPill.measure(View.MeasureSpec.makeMeasureSpec(Math.max(1, iMax - AndroidUtilities.dp(24.0f)), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(60.0f), TLObject.FLAG_30));
                ProfileWalletCardDialog.this.publicNote.measure(View.MeasureSpec.makeMeasureSpec(Math.max(1, iMax - AndroidUtilities.dp(48.0f)), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
                int iMin = Math.min(AndroidUtilities.dp(420.0f), Math.max(1, iMax - AndroidUtilities.dp(24.0f)));
                int iMax2 = Math.max(1, (((size2 - ProfileWalletCardDialog.this.safeTop()) - ProfileWalletCardDialog.this.insets.bottom) - AndroidUtilities.dp(ProfileWalletCardDialog.this.showButton() ? 120.0f : 48.0f)) - ProfileWalletCardDialog.this.noteHeight());
                ProfileWalletCardDialog.this.card.measure(View.MeasureSpec.makeMeasureSpec(iMin, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(0, 0));
                if (ProfileWalletCardDialog.this.card.getMeasuredHeight() > iMax2) {
                    int paddingLeft = ProfileWalletCardDialog.this.card.getPaddingLeft() + ProfileWalletCardDialog.this.card.getPaddingRight();
                    int paddingTop = ProfileWalletCardDialog.this.card.getPaddingTop() + ProfileWalletCardDialog.this.card.getPaddingBottom();
                    ProfileWalletCardDialog.this.card.measure(View.MeasureSpec.makeMeasureSpec(Math.max(1, paddingLeft + Math.round(((iMin - paddingLeft) * Math.max(0, iMax2 - paddingTop)) / Math.max(1, ProfileWalletCardDialog.this.card.getMeasuredHeight() - paddingTop))), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(0, 0));
                }
                ProfileWalletCardDialog.this.stickers.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, TLObject.FLAG_30));
                ProfileWalletCardDialog.this.blurView.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, TLObject.FLAG_30));
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z3, int i2, int i3, int i4, int i5) {
                getLocationOnScreen(ProfileWalletCardDialog.this.rootLocation);
                int width = ProfileWalletCardDialog.this.insets.left + (((getWidth() - ProfileWalletCardDialog.this.insets.left) - ProfileWalletCardDialog.this.insets.right) / 2);
                int height = ((getHeight() - ProfileWalletCardDialog.this.insets.bottom) - AndroidUtilities.dp(16.0f)) - (ProfileWalletCardDialog.this.showButton() ? ProfileWalletCardDialog.this.sendPill.getMeasuredHeight() : 0);
                ProfileWalletCardDialog.this.sendPill.layout(width - (ProfileWalletCardDialog.this.sendPill.getMeasuredWidth() / 2), height, ((ProfileWalletCardDialog.this.sendPill.getMeasuredWidth() + 1) / 2) + width, ProfileWalletCardDialog.this.sendPill.getMeasuredHeight() + height);
                int iSafeTop = ProfileWalletCardDialog.this.safeTop() + AndroidUtilities.dp(36.0f);
                ProfileWalletCardDialog.this.publicNote.layout(width - (ProfileWalletCardDialog.this.publicNote.getMeasuredWidth() / 2), iSafeTop, ((ProfileWalletCardDialog.this.publicNote.getMeasuredWidth() + 1) / 2) + width, ProfileWalletCardDialog.this.publicNote.getMeasuredHeight() + iSafeTop);
                ProfileWalletCardDialog.this.updateNoteColor();
                int iSafeTop2 = ProfileWalletCardDialog.this.safeTop() + AndroidUtilities.dp(24.0f) + ProfileWalletCardDialog.this.noteHeight();
                int iMax = Math.max(iSafeTop2, Math.min(Math.max(iSafeTop2, (height - AndroidUtilities.dp(24.0f)) - ProfileWalletCardDialog.this.card.getMeasuredHeight()), (getHeight() - ProfileWalletCardDialog.this.card.getMeasuredHeight()) / 2));
                int measuredWidth = width - (ProfileWalletCardDialog.this.card.getMeasuredWidth() / 2);
                ProfileWalletCardDialog.this.card.layout(measuredWidth, iMax, ProfileWalletCardDialog.this.card.getMeasuredWidth() + measuredWidth, ProfileWalletCardDialog.this.card.getMeasuredHeight() + iMax);
                ProfileWalletCardDialog.this.stickers.layout(0, 0, getWidth(), getHeight());
                ProfileWalletCardDialog.this.blurView.layout(0, 0, getWidth(), getHeight());
                Blur3Utils.checkBitmapSourceMatrixScale(ProfileWalletCardDialog.this.buttonBlur, this);
                ProfileWalletCardDialog.this.updateProgress();
            }

            @Override // android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view, long j) {
                if (view == ProfileWalletCardDialog.this.card && ProfileWalletCardDialog.this.clipTop > 0.0f) {
                    ProfileWalletCardDialog.this.cardLayerBounds.set(0.0f, 0.0f, ProfileWalletCardDialog.this.card.getWidth(), ProfileWalletCardDialog.this.card.getHeight());
                    ProfileWalletCardDialog.this.card.getMatrix().mapRect(ProfileWalletCardDialog.this.cardLayerBounds);
                    ProfileWalletCardDialog.this.cardLayerBounds.offset(ProfileWalletCardDialog.this.card.getLeft(), ProfileWalletCardDialog.this.card.getTop());
                    ProfileWalletCardDialog.this.cardLayerBounds.inset(-AndroidUtilities.dp(4.0f), -AndroidUtilities.dp(4.0f));
                    float fDp = AndroidUtilities.dp(28.0f);
                    if (ProfileWalletCardDialog.this.cardLayerBounds.top < ProfileWalletCardDialog.this.clipTop + fDp && ProfileWalletCardDialog.this.cardLayerBounds.intersect(0.0f, 0.0f, getWidth(), getHeight())) {
                        int iSaveLayer = canvas.saveLayer(ProfileWalletCardDialog.this.cardLayerBounds, null);
                        boolean zDrawChild = super.drawChild(canvas, view, j);
                        ProfileWalletCardDialog.this.clipRect.set(ProfileWalletCardDialog.this.cardLayerBounds.left, ProfileWalletCardDialog.this.cardLayerBounds.top, ProfileWalletCardDialog.this.cardLayerBounds.right, Math.min(ProfileWalletCardDialog.this.cardLayerBounds.bottom, ProfileWalletCardDialog.this.clipTop));
                        if (ProfileWalletCardDialog.this.clipRect.height() > 0.0f) {
                            canvas.drawRect(ProfileWalletCardDialog.this.clipRect, ProfileWalletCardDialog.this.clip.getPaint(1, 1.0f));
                        }
                        ProfileWalletCardDialog.this.clipRect.set(ProfileWalletCardDialog.this.cardLayerBounds.left, ProfileWalletCardDialog.this.clipTop, ProfileWalletCardDialog.this.cardLayerBounds.right, ProfileWalletCardDialog.this.clipTop + fDp);
                        ProfileWalletCardDialog.this.clip.draw(canvas, ProfileWalletCardDialog.this.clipRect, 1, 1.0f);
                        canvas.restoreToCount(iSaveLayer);
                        return zDrawChild;
                    }
                }
                return super.drawChild(canvas, view, j);
            }
        };
        this.root = frameLayout;
        View view = new View(getContext()) { // from class: org.telegram.ui.Wallet.ProfileWalletCardDialog.2
            @Override // android.view.View
            public boolean hasOverlappingRendering() {
                return false;
            }

            @Override // android.view.View
            public void onDraw(Canvas canvas) {
                if (ProfileWalletCardDialog.this.blurBitmap == null || ProfileWalletCardDialog.this.blurBitmap.isRecycled()) {
                    return;
                }
                ProfileWalletCardDialog.this.blurBounds.set(0.0f, 0.0f, getWidth(), getHeight());
                canvas.drawBitmap(ProfileWalletCardDialog.this.blurBitmap, (Rect) null, ProfileWalletCardDialog.this.blurBounds, ProfileWalletCardDialog.this.blurPaint);
            }
        };
        this.blurView = view;
        view.setAlpha(0.0f);
        frameLayout.addView(view, LayoutHelper.createFrame(-1, -1.0f));
        frameLayout.setClipChildren(false);
        frameLayout.setClipToPadding(false);
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.ProfileWalletCardDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$0(view2);
            }
        });
        ViewCompat.setOnApplyWindowInsetsListener(frameLayout, new OnApplyWindowInsetsListener() { // from class: org.telegram.ui.Wallet.ProfileWalletCardDialog$$ExternalSyntheticLambda1
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                return this.f$0.lambda$new$1(view2, windowInsetsCompat);
            }
        });
        WalletCardComponent walletCardComponent = new WalletCardComponent(getContext());
        this.card = walletCardComponent;
        walletCardComponent.setDiamondOnCard(true);
        walletCardComponent.setProfileCard(baseFragment.getCurrentAccount(), user, cardVar);
        walletCardComponent.setCardOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.ProfileWalletCardDialog$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$2(baseFragment, view2);
            }
        });
        walletCardComponent.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.ProfileWalletCardDialog$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ProfileWalletCardDialog.$r8$lambda$SVojM_FB7ZRQ6AAFGb8xiZeDO4w(view2);
            }
        });
        walletCardComponent.setAlpha(0.0f);
        frameLayout.addView(walletCardComponent, LayoutHelper.createFrame(-2, -2.0f));
        WalletGiftStickers walletGiftStickers = new WalletGiftStickers(baseFragment, walletCardComponent, cardVar);
        this.stickers = walletGiftStickers;
        frameLayout.addView(walletGiftStickers, LayoutHelper.createFrame(-1, -1.0f));
        BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceBitmap);
        this.buttonBlurFactory = blurredBackgroundDrawableViewFactory;
        blurredBackgroundDrawableViewFactory.setSourceRootView(new ViewPositionWatcher(frameLayout), frameLayout);
        ProfileActivity.Button2 button2 = new ProfileActivity.Button2(getContext());
        this.sendPill = button2;
        BlurredBackgroundDrawable blurredBackgroundDrawableCreate = blurredBackgroundDrawableViewFactory.create(button2, new BlurredBackgroundColorProviderThemed(baseFragment.getResourceProvider(), Theme.key_windowBackgroundWhite));
        blurredBackgroundDrawableCreate.setPadding(AndroidUtilities.dp(8.0f));
        blurredBackgroundDrawableCreate.setRadius(AndroidUtilities.dp(22.0f));
        button2.setBackground(blurredBackgroundDrawableCreate);
        ScaleStateListAnimator.apply(button2, 0.02f, 1.2f);
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(getContext(), baseFragment.getResourceProvider());
        buttonWithCounterView.setUseWrapContent(true);
        buttonWithCounterView.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), 0);
        buttonWithCounterView.setRoundRadius(19);
        if (z) {
            i = C2807R.string.WalletOpenMyMoney;
        } else {
            i = z2 ? C2807R.string.WalletSendMoney : C2807R.string.HowDoesItWork;
        }
        CharSequence string2 = LocaleController.getString(i);
        if (!z2) {
            buttonWithCounterView.setText(string2, false);
        } else {
            SpannableStringBuilder spannableStringBuilderAppend = new SpannableStringBuilder("G  ").append(string2);
            ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2807R.drawable.mini_gram_24);
            coloredImageSpan.setSize(AndroidUtilities.dp(20.0f));
            spannableStringBuilderAppend.setSpan(coloredImageSpan, 0, 1, 33);
            buttonWithCounterView.setText(spannableStringBuilderAppend, false);
        }
        buttonWithCounterView.setStateListAnimator(null);
        button2.addView(buttonWithCounterView, LayoutHelper.createFrame(-2, -1, 17));
        button2.setContentDescription(string2);
        button2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.ProfileWalletCardDialog$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$7(baseFragment, cardVar, view2);
            }
        });
        button2.setAlpha(0.0f);
        button2.setVisibility(showButton() ? 0 : 8);
        frameLayout.addView(button2, LayoutHelper.createFrame(-2, 60, 81));
        TextView textView = new TextView(getContext());
        this.publicNote = textView;
        textView.setTextSize(14.0f);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setGravity(17);
        textView.setLineSpacing(AndroidUtilities.dp(18.0f) - textView.getPaint().getFontMetricsInt(null), 1.0f);
        updateNoteColor();
        textView.setAlpha(0.0f);
        if (z) {
            textView.setText(LocaleController.getString(C2807R.string.WalletPublicBalanceNote));
        } else if (user != null) {
            String firstName = UserObject.getFirstName(user);
            if (new BigDecimal(GramWallet.formatGramsBalance(cardVar.balance, false)).signum() == 0) {
                string = LocaleController.formatString(C2807R.string.WalletProfileOwnsNoGrams, firstName);
            } else {
                string = LocaleController.formatString(C2807R.string.WalletProfileOwnsGrams, firstName, GramWallet.formatGramsWithUnit(WalletCardComponent.formatBalance(cardVar.balance).toString()).toString().replace(' ', Typography.nbsp));
            }
            textView.setText(HintView2.cutInFancyHalfText(string, textView.getPaint()));
        }
        textView.setVisibility(user == null ? 8 : 0);
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2, 49));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsetsCompat lambda$new$1(View view, WindowInsetsCompat windowInsetsCompat) {
        this.insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout());
        this.root.requestLayout();
        return WindowInsetsCompat.CONSUMED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(BaseFragment baseFragment, View view) {
        if (!this.isSelf || this.dismissing) {
            return;
        }
        WalletActivity.openWalletQRAlert(getContext(), baseFragment.getCurrentAccount(), baseFragment.getResourceProvider());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(final BaseFragment baseFragment, final TL_wallet.card cardVar, View view) {
        if (this.dismissing) {
            return;
        }
        if (this.isSelf) {
            this.afterDismiss = new Runnable() { // from class: org.telegram.ui.Wallet.ProfileWalletCardDialog$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    baseFragment.presentFragment(new WalletActivity());
                }
            };
        } else if (this.showHowItWorks) {
            this.afterDismiss = new Runnable() { // from class: org.telegram.ui.Wallet.ProfileWalletCardDialog$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    BaseFragment baseFragment2 = baseFragment;
                    WalletActivity.openWalletHowItWorksAlert(baseFragment2.getContext(), baseFragment2.getResourceProvider());
                }
            };
        } else if (!this.showSendMoney || TextUtils.isEmpty(cardVar.address)) {
            return;
        } else {
            this.afterDismiss = new Runnable() { // from class: org.telegram.ui.Wallet.ProfileWalletCardDialog$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    BaseFragment baseFragment2 = baseFragment;
                    baseFragment2.presentFragment(new WalletSendEnterAmount(baseFragment2.getCurrentAccount(), cardVar.address));
                }
            };
        }
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNoteColor() {
        boolean zIsCurrentThemeDark = Theme.isCurrentThemeDark();
        Bitmap bitmap = this.blurBitmap;
        if (bitmap != null && !bitmap.isRecycled() && this.root.getWidth() > 0 && this.root.getHeight() > 0) {
            zIsCurrentThemeDark = AndroidUtilities.computePerceivedBrightness(this.blurBitmap.getPixel(Utilities.clamp((int) (((((float) (this.publicNote.getLeft() + this.publicNote.getRight())) / 2.0f) / ((float) this.root.getWidth())) * ((float) this.blurBitmap.getWidth())), this.blurBitmap.getWidth() - 1, 0), Utilities.clamp((int) (((((float) (this.publicNote.getTop() + this.publicNote.getBottom())) / 2.0f) / ((float) this.root.getHeight())) * ((float) this.blurBitmap.getHeight())), this.blurBitmap.getHeight() - 1, 0))) < 0.5f;
        }
        this.publicNote.setTextColor(Theme.multAlpha(zIsCurrentThemeDark ? -1 : -16777216, 0.41f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int noteHeight() {
        if (this.publicNote.getVisibility() == 0) {
            return AndroidUtilities.dp(12.0f) + this.publicNote.getMeasuredHeight();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean showButton() {
        return this.showSendMoney || this.showHowItWorks || this.isSelf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int safeTop() {
        return Math.max(this.insets.top, AndroidUtilities.statusBarHeight);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateProgress() {
        float interpolation = CubicBezierInterpolator.EASE_OUT.getInterpolation(clamp01(this.progress / 0.4f));
        float fClamp01 = clamp01((this.progress - 0.3f) / 0.7f);
        float interpolation2 = CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(fClamp01);
        float fSpring = this.springy ? spring(fClamp01) : interpolation2;
        float width = this.card.getWidth();
        float height = this.card.getHeight();
        float fMax = Math.max(0.2f, Math.min(1.0f, this.source.width() / Math.max(1.0f, height)));
        float fLerp = AndroidUtilities.lerp(fMax, 1.0f, fSpring);
        float fCenterY = this.source.centerY() - this.rootLocation[1];
        float f = fMax * width;
        float fCenterX = this.source.centerX() - this.rootLocation[0];
        float f2 = (fCenterY - (f / 2.0f)) + (f * interpolation);
        float f3 = width / 2.0f;
        float f4 = height / 2.0f;
        float fLerp2 = AndroidUtilities.lerp(fCenterX, this.card.getLeft() + f3, fSpring);
        float fLerp3 = AndroidUtilities.lerp(f2, this.card.getTop() + f4, fSpring);
        float f5 = 1.0f - fSpring;
        float f6 = (-90.0f) * f5;
        double d = f6;
        float fCos = (float) Math.cos(Math.toRadians(d));
        float fSin = (float) Math.sin(Math.toRadians(d));
        float f7 = fCenterX - fLerp2;
        float f8 = fCenterY - fLerp3;
        float f9 = ((((-fSin) * f7) + (f8 * fCos)) / fLerp) + f4;
        float fLerp4 = AndroidUtilities.lerp((((fCos * f7) + (fSin * f8)) / fLerp) + f3, f3, interpolation2);
        float fLerp5 = AndroidUtilities.lerp(f9, f4, interpolation2);
        float f10 = fLerp4 - f3;
        float f11 = fLerp5 - f4;
        this.card.setPivotX(fLerp4);
        this.card.setPivotY(fLerp5);
        this.card.setScaleX(fLerp);
        this.card.setScaleY(fLerp);
        this.card.setRotation(f6);
        this.card.setRotationX(f5 * 35.0f);
        this.card.setTranslationX(((fLerp2 - r2.getLeft()) - fLerp4) + (((fCos * f10) - (fSin * f11)) * fLerp));
        this.card.setTranslationY(((fLerp3 - r2.getTop()) - fLerp5) + (((fSin * f10) + (fCos * f11)) * fLerp));
        this.card.setAlpha(this.progress > 0.0f ? 1.0f : 0.0f);
        this.card.setUseGyroscope(this.gyroscope * interpolation2);
        float f12 = 1.0f - interpolation2;
        this.clipTop = Math.max(0.0f, fCenterY * f12);
        this.anchor.setEjectProgress(interpolation);
        this.blurView.setAlpha(this.progress);
        this.stickers.setAlpha(interpolation2);
        this.sendPill.setAlpha(interpolation2);
        this.publicNote.setAlpha(interpolation2);
        this.publicNote.setTranslationY((-AndroidUtilities.dp(8.0f)) * f12);
        this.sendPill.setTranslationY(AndroidUtilities.dp(16.0f) * f12);
        this.sendPill.setScaleX(AndroidUtilities.lerp(0.8f, 1.0f, interpolation2));
        this.sendPill.setScaleY(AndroidUtilities.lerp(0.8f, 1.0f, interpolation2));
        this.root.invalidate();
    }

    private static float spring(float f) {
        float fSqrt = ((float) Math.sqrt(0.4375d)) * 10.0f;
        double d = f * fSqrt;
        return 1.0f - (((float) Math.exp((-7.5f) * f)) * (((float) Math.cos(d)) + ((7.5f / fSqrt) * ((float) Math.sin(d)))));
    }

    private static float clamp01(float f) {
        return Math.max(0.0f, Math.min(1.0f, f));
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        window.setWindowAnimations(C2807R.style.DialogNoAnimation);
        setContentView(this.root, new ViewGroup.LayoutParams(-1, -1));
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.height = -1;
        attributes.width = -1;
        attributes.gravity = 119;
        attributes.dimAmount = 0.0f;
        attributes.flags = (attributes.flags & (-3)) | (-2147286784);
        window.setAttributes(attributes);
        window.setStatusBarColor(0);
        window.setNavigationBarColor(0);
        this.root.setSystemUiVisibility(1792);
        AndroidUtilities.setLightNavigationBar(this.root, !Theme.isCurrentThemeDark());
        AndroidUtilities.setLightStatusBar(window, !Theme.isCurrentThemeDark());
    }

    @Override // android.app.Dialog
    public void show() {
        if (AndroidUtilities.isSafeToShow(getContext())) {
            ScrimOptions.makeGlobalBlurBitmaps(new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.ProfileWalletCardDialog$$ExternalSyntheticLambda6
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$show$10((Bitmap) obj, (Bitmap) obj2);
                }
            });
            super.show();
            ViewCompat.requestApplyInsets(this.root);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$10(Bitmap bitmap, Bitmap bitmap2) {
        if (this.closed || this.dismissing) {
            bitmap.recycle();
            bitmap2.recycle();
            return;
        }
        this.blurBitmap = bitmap;
        this.blurView.invalidate();
        updateNoteColor();
        this.buttonBlur.setBitmap(bitmap2);
        this.root.post(new Runnable() { // from class: org.telegram.ui.Wallet.ProfileWalletCardDialog$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$show$9();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$9() {
        if (this.closed || this.dismissing) {
            return;
        }
        Blur3Utils.checkBitmapSourceMatrixScale(this.buttonBlur, this.root);
        this.buttonBlurFactory.invalidateAllLinkedViews();
        this.card.whenMaterialReady(new Runnable() { // from class: org.telegram.ui.Wallet.ProfileWalletCardDialog$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$show$8();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$8() {
        if (this.closed || this.dismissing) {
            return;
        }
        animateTo(1.0f);
    }

    private void animateTo(final float f) {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (f == 1.0f && this.opening) {
            return;
        }
        if (f == 1.0f) {
            this.opening = true;
        }
        this.springy = f == 1.0f;
        if (this.card.isUse2D()) {
            this.card.setLayerType(2, null);
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.progress, f);
        this.animator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(f == 1.0f ? 650L : 380L);
        this.animator.setInterpolator(new LinearInterpolator());
        this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Wallet.ProfileWalletCardDialog$$ExternalSyntheticLambda5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$animateTo$11(valueAnimator2);
            }
        });
        this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Wallet.ProfileWalletCardDialog.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (ProfileWalletCardDialog.this.card.isUse2D()) {
                    ProfileWalletCardDialog.this.card.setLayerType(0, null);
                }
                float f2 = f;
                ProfileWalletCardDialog profileWalletCardDialog = ProfileWalletCardDialog.this;
                if (f2 == 0.0f) {
                    profileWalletCardDialog.finishDismiss();
                } else {
                    if (profileWalletCardDialog.dismissing) {
                        return;
                    }
                    ProfileWalletCardDialog.this.startGyroscope();
                }
            }
        });
        this.animator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateTo$11(ValueAnimator valueAnimator) {
        this.progress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        updateProgress();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startGyroscope() {
        ValueAnimator valueAnimator = this.gyroscopeAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.gyroscope, 1.0f);
        this.gyroscopeAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(320L);
        this.gyroscopeAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
        this.gyroscopeAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Wallet.ProfileWalletCardDialog$$ExternalSyntheticLambda12
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$startGyroscope$12(valueAnimator2);
            }
        });
        this.gyroscopeAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startGyroscope$12(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.gyroscope = fFloatValue;
        this.card.setUseGyroscope(fFloatValue);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (this.closed || this.dismissing) {
            return;
        }
        this.dismissing = true;
        ValueAnimator valueAnimator = this.gyroscopeAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.sendPill.setEnabled(false);
        if (!this.root.isAttachedToWindow() || this.progress == 0.0f) {
            finishDismiss();
        } else {
            animateTo(0.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishDismiss() {
        if (this.closed) {
            return;
        }
        this.closed = true;
        this.card.setLayerType(0, null);
        this.anchor.setEjectProgress(0.0f);
        super.dismiss();
        this.stickers.dispose();
        this.buttonBlur.setBitmap(null);
        this.blurBitmap = null;
        if (this.afterDismiss == null || this.fragment.getParentActivity() == null) {
            return;
        }
        Runnable runnable = this.afterDismiss;
        this.afterDismiss = null;
        AndroidUtilities.runOnUIThread(runnable);
    }
}
