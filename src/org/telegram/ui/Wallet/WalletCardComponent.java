package org.telegram.ui.Wallet;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.exteragram.messenger.utils.ui.FontUtils$$ExternalSyntheticApiModelOutline0;
import com.exteragram.messenger.utils.ui.FontUtils$$ExternalSyntheticApiModelOutline1;
import com.google.android.gms.cast.MediaError;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BillingController;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_wallet;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;

/* JADX INFO: loaded from: classes8.dex */
public class WalletCardComponent extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private static Typeface cardHolderTypeface;
    private static Typeface cardNumberTypeface;
    private float additionalTilt;
    private float balanceActionBarWidth;
    private final View balanceAnchor;
    private final FrameLayout.LayoutParams balanceCardLayoutParams;
    private final Matrix balanceDiamondTransform;
    private float balanceDrawScale;
    private final LinearLayout balanceLayout;
    private final AnimatedFloat balanceShadowAnimated;
    private float balanceStickerShadow;
    private float balanceTransitionProgress;
    private final AnimatedTextView balanceView;
    private View.OnClickListener cardClickListener;
    private final TextView cardHolderView;
    private int cardIconResId;
    private String cardNumber;
    private final Paint cardNumberPaint;
    private final View cardNumberView;
    private View cardView;
    private int currentAccount;
    private final RectF diamondCardBounds;
    private final RectF diamondDrawBounds;
    private final AnimatedFloat diamondFallbackAnimated;
    private boolean diamondOnCard;
    private WalletDiamondSprite diamondSprite;
    private float diamondStickerFallback;
    private final Matrix faceProjectionMatrix;
    private FrameLayout frontFace;
    private float gyroscopeTiltScale;
    private boolean hasBalanceDiamondTransform;
    private final AnimatedFloat holderShadowAnimated;
    private float holderStickerShadow;
    private final Matrix inverseDiamondFaceTransform;
    private final Matrix inverseTargetTransformMatrix;
    private int kickSignX;
    private int kickSignY;
    private final Matrix nextDiamondTransform;
    private final AnimatedFloat numberShadowAnimated;
    private float numberStickerShadow;
    private boolean outlineShadowPass;
    private int qrButtonRightPadding;
    private float[] stickerStyle;
    private final Matrix targetTransformMatrix;
    private final AnimatedTextView usdBalanceView;
    private GramWallet wallet;

    public interface ShadowLayer {
        void set(float f, float f2, float f3, int i);
    }

    public boolean isUse2D() {
        return true;
    }

    public WalletCardComponent(Context context) {
        this(context, false, C2807R.drawable.wallet_card_qr, 46);
    }

    public WalletCardComponent(Context context, boolean z) {
        this(context, z, C2807R.drawable.wallet_card_qr, 46);
    }

    public WalletCardComponent(Context context, boolean z, int i, int i2) {
        super(context);
        this.balanceDrawScale = 1.0f;
        this.balanceDiamondTransform = new Matrix();
        this.inverseDiamondFaceTransform = new Matrix();
        this.nextDiamondTransform = new Matrix();
        this.diamondDrawBounds = new RectF();
        this.diamondCardBounds = new RectF();
        this.gyroscopeTiltScale = 1.0f;
        this.faceProjectionMatrix = new Matrix();
        this.targetTransformMatrix = new Matrix();
        this.inverseTargetTransformMatrix = new Matrix();
        this.cardNumberPaint = new Paint(193);
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Wallet.WalletCardComponent$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.onNumberShadowFrame();
            }
        };
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.numberShadowAnimated = new AnimatedFloat(runnable, 0L, 240L, cubicBezierInterpolator);
        this.currentAccount = UserConfig.selectedAccount;
        this.balanceShadowAnimated = new AnimatedFloat(new Runnable() { // from class: org.telegram.ui.Wallet.WalletCardComponent$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.onBalanceShadowFrame();
            }
        }, 0L, 240L, cubicBezierInterpolator);
        this.holderShadowAnimated = new AnimatedFloat(new Runnable() { // from class: org.telegram.ui.Wallet.WalletCardComponent$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.onHolderShadowFrame();
            }
        }, 0L, 240L, cubicBezierInterpolator);
        this.diamondFallbackAnimated = new AnimatedFloat(new Runnable() { // from class: org.telegram.ui.Wallet.WalletCardComponent$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.onDiamondFallbackFrame();
            }
        }, 0L, 240L, cubicBezierInterpolator);
        this.cardIconResId = i;
        this.qrButtonRightPadding = i2;
        setClipChildren(false);
        setClipToPadding(false);
        setPadding(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f));
        createCardImplementation();
        C64791 c64791 = new C64791(context);
        this.cardHolderView = c64791;
        c64791.setTypeface(getCardHolderTypeface(context));
        c64791.setTextColor(-1);
        c64791.setTextSize(1, 13.0f);
        c64791.setEllipsize(TextUtils.TruncateAt.END);
        c64791.setMaxLines(1);
        c64791.setSingleLine();
        this.frontFace.addView(c64791, LayoutHelper.createFrame(-1, -2.0f, 83, 24.0f, 0.0f, 64.0f, 17.2f));
        View view = new View(context) { // from class: org.telegram.ui.Wallet.WalletCardComponent.2
            @Override // android.view.View
            public void onDraw(Canvas canvas) {
                float f = WalletCardComponent.this.numberShadowAnimated.set(WalletCardComponent.this.numberStickerShadow);
                if (WalletCardComponent.this.cardNumber == null || getWidth() <= 0) {
                    return;
                }
                WalletCardComponent.this.drawCardNumber(canvas, f);
            }
        };
        this.cardNumberView = view;
        this.frontFace.addView(view, LayoutHelper.createFrame(-1, -1.0f));
        View view2 = new View(context);
        this.balanceAnchor = view2;
        this.frontFace.addView(view2, LayoutHelper.createFrame(1, 1.0f, 19, 24.0f, 0.0f, 0.0f, 0.0f));
        LinearLayout linearLayout = new LinearLayout(context);
        this.balanceLayout = linearLayout;
        linearLayout.setOrientation(1);
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        FrameLayout.LayoutParams layoutParamsCreateFrame = LayoutHelper.createFrame(-1, -2.0f, 51, 24.0f, 71.0f, 24.0f, 0.0f);
        this.balanceCardLayoutParams = layoutParamsCreateFrame;
        this.frontFace.addView(linearLayout, layoutParamsCreateFrame);
        C64813 c64813 = new C64813(context, false, true, true, true, true);
        this.balanceView = c64813;
        c64813.getDrawable().setOverrideFullWidth(AndroidUtilities.dp(4096.0f));
        c64813.setAnimationProperties(0.35f, 0L, 320L, 3.5f, cubicBezierInterpolator);
        c64813.setScaleProperty(0.6f);
        c64813.setTypeface(AndroidUtilities.getTypeface("fonts/gram.ttf"));
        c64813.setTextSize(AndroidUtilities.dp(23.0f));
        c64813.setTextColor(-1);
        c64813.setIgnoreRTL(true);
        linearLayout.addView(c64813, LayoutHelper.createLinear(-1, 28));
        C64824 c64824 = new C64824(context, false, true, true, true, true);
        this.usdBalanceView = c64824;
        c64824.setAnimationProperties(0.35f, 0L, 320L, 3.5f, cubicBezierInterpolator);
        c64824.setScaleProperty(0.6f);
        c64824.setTypeface(AndroidUtilities.getTypeface("fonts/gram.ttf"));
        c64824.setTextSize(AndroidUtilities.dp(14.0f));
        c64824.setTextColor(-7868417);
        c64824.setLayoutDirection(0);
        c64824.setTextDirection(3);
        c64824.setGravity(19);
        c64824.setIgnoreRTL(true);
        linearLayout.addView(c64824, LayoutHelper.createLinear(-1, 16, 0.0f, 2.0f, 0.0f, 0.0f));
    }

    /* JADX INFO: renamed from: org.telegram.ui.Wallet.WalletCardComponent$1 */
    public class C64791 extends TextView {
        public C64791(Context context) {
            super(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onDraw$0(Canvas canvas) {
            super.onDraw(canvas);
        }

        @Override // android.widget.TextView, android.view.View
        public void onDraw(final Canvas canvas) {
            WalletCardComponent walletCardComponent = WalletCardComponent.this;
            float f = walletCardComponent.holderShadowAnimated.set(WalletCardComponent.this.holderStickerShadow);
            final TextPaint paint = getPaint();
            Objects.requireNonNull(paint);
            walletCardComponent.drawStickerShadowed(f, new ShadowLayer() { // from class: org.telegram.ui.Wallet.WalletCardComponent$1$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.Wallet.WalletCardComponent.ShadowLayer
                public final void set(float f2, float f3, float f4, int i) {
                    paint.setShadowLayer(f2, f3, f4, i);
                }
            }, new Runnable() { // from class: org.telegram.ui.Wallet.WalletCardComponent$1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onDraw$0(canvas);
                }
            });
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Wallet.WalletCardComponent$3 */
    public class C64813 extends AnimatedTextView {
        public C64813(Context context, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
            super(context, z, z2, z3, z4, z5);
        }

        @Override // org.telegram.ui.Components.AnimatedTextView, android.view.View
        public void onDraw(final Canvas canvas) {
            float currentWidth = getDrawable().getCurrentWidth();
            float fBalanceCardScale = WalletCardComponent.this.balanceCardScale();
            float fMin = fBalanceCardScale + (((currentWidth > 0.0f ? Math.min(1.0f, WalletCardComponent.this.balanceActionBarWidth / currentWidth) : 1.0f) - fBalanceCardScale) * WalletCardComponent.this.balanceTransitionProgress);
            WalletCardComponent.this.balanceDrawScale = fMin;
            int iSave = canvas.save();
            canvas.scale(fMin, fMin, 0.0f, getHeight() / 2.0f);
            WalletCardComponent walletCardComponent = WalletCardComponent.this;
            float f = walletCardComponent.balanceShadowAnimated.set(WalletCardComponent.this.balanceStickerShadow) * (1.0f - WalletCardComponent.this.balanceTransitionProgress);
            AnimatedTextView.AnimatedTextDrawable drawable = getDrawable();
            Objects.requireNonNull(drawable);
            walletCardComponent.drawStickerShadowed(f, new WalletCardComponent$3$$ExternalSyntheticLambda0(drawable), new Runnable() { // from class: org.telegram.ui.Wallet.WalletCardComponent$3$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onDraw$0(canvas);
                }
            });
            canvas.restoreToCount(iSave);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onDraw$0(Canvas canvas) {
            super.onDraw(canvas);
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Wallet.WalletCardComponent$4 */
    public class C64824 extends AnimatedTextView {
        public C64824(Context context, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
            super(context, z, z2, z3, z4, z5);
        }

        @Override // org.telegram.ui.Components.AnimatedTextView, android.view.View
        public void onDraw(final Canvas canvas) {
            WalletCardComponent walletCardComponent = WalletCardComponent.this;
            float f = walletCardComponent.balanceShadowAnimated.set(WalletCardComponent.this.balanceStickerShadow) * (1.0f - WalletCardComponent.this.balanceTransitionProgress);
            AnimatedTextView.AnimatedTextDrawable drawable = getDrawable();
            Objects.requireNonNull(drawable);
            walletCardComponent.drawStickerShadowed(f, new WalletCardComponent$3$$ExternalSyntheticLambda0(drawable), new Runnable() { // from class: org.telegram.ui.Wallet.WalletCardComponent$4$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onDraw$0(canvas);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onDraw$0(Canvas canvas) {
            super.onDraw(canvas);
        }
    }

    public void setDiamondOnCard(boolean z) {
        this.diamondOnCard = z;
        this.balanceView.invalidate();
    }

    public float[] getStickerStyle() {
        return this.stickerStyle;
    }

    public int stickerColor(int i) {
        float[] fArr = this.stickerStyle;
        return fArr == null ? i : WalletGiftPalette.tint(i, fArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float balanceCardScale() {
        float currentWidth = this.balanceView.getDrawable().getCurrentWidth();
        float fMax = Math.max(0.0f, (((this.frontFace.getWidth() * ((336.0f - this.qrButtonRightPadding) - 48.0f)) / 336.0f) - this.balanceCardLayoutParams.leftMargin) - AndroidUtilities.dp(8.0f));
        if (currentWidth > 0.0f) {
            return Math.min(1.0f, fMax / currentWidth);
        }
        return 1.0f;
    }

    public ArrayList<RectF> getStickerObstacles() {
        ArrayList<RectF> arrayList = new ArrayList<>();
        float width = this.frontFace.getWidth() / 336.0f;
        float fBalanceCardScale = balanceCardScale();
        float currentWidth = this.balanceView.getDrawable().getCurrentWidth() * fBalanceCardScale;
        float currentWidth2 = this.usdBalanceView.getDrawable().getCurrentWidth();
        FrameLayout.LayoutParams layoutParams = this.balanceCardLayoutParams;
        float f = layoutParams.leftMargin;
        float f2 = layoutParams.topMargin;
        float top = ((this.balanceView.getTop() + this.balanceView.getBottom()) / 2.0f) + f2;
        float height = (this.balanceView.getHeight() * fBalanceCardScale) / 2.0f;
        arrayList.add(new RectF(f, top - height, currentWidth + f, top + height));
        arrayList.add(new RectF(this.cardHolderView.getLeft(), this.cardHolderView.getTop(), this.cardHolderView.getLeft() + Math.min(this.cardHolderView.getWidth(), this.cardHolderView.getPaint().measureText(this.cardHolderView.getText().toString())), this.cardHolderView.getBottom()));
        arrayList.add(new RectF(this.frontFace.getWidth() - (34.0f * width), 18.0f * width, this.frontFace.getWidth() - (12.0f * width), width * 187.0f));
        Path path = new Path();
        getQrButtonPath(path, this.frontFace.getWidth(), this.frontFace.getHeight());
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        arrayList.add(rectF);
        arrayList.add(new RectF(f, this.usdBalanceView.getTop() + f2, currentWidth2 + f, f2 + this.usdBalanceView.getBottom()));
        arrayList.add(this.diamondOnCard ? new RectF(this.diamondCardBounds) : new RectF());
        return arrayList;
    }

    public void getQrButtonPath(Path path, float f, float f2) {
        float f3;
        float f4;
        float f5;
        path.rewind();
        if (isUse2D()) {
            f3 = 0.36097562f;
            f4 = 0.5365854f;
            f5 = 0.03902439f;
        } else {
            f3 = 0.37044054f;
            f4 = 0.547121f;
            f5 = 0.03926231f;
        }
        int i = this.qrButtonRightPadding;
        path.addRoundRect((((336 - i) - 48.0f) * f) / 336.0f, f3 * f2, ((336 - i) * f) / 336.0f, f4 * f2, (8.0f * f) / 336.0f, f5 * f2, Path.Direction.CW);
    }

    public void setStickerImpact(float f) {
        this.cardView.setScaleX(f);
        this.cardView.setScaleY(f);
    }

    public void setStickerKick(float f, float f2) {
        if (this.kickSignX == 0) {
            WalletCardProjection walletCardProjection = new WalletCardProjection();
            float[] fArr = new float[8];
            walletCardProjection.project(1000, MediaError.DetailedErrorCode.TEXT_UNKNOWN, 0.0f, 5.0f, false, fArr);
            this.kickSignY = Math.hypot((double) (fArr[2] - fArr[4]), (double) (fArr[3] - fArr[5])) < Math.hypot((double) (fArr[0] - fArr[6]), (double) (fArr[1] - fArr[7])) ? 1 : -1;
            walletCardProjection.project(1000, MediaError.DetailedErrorCode.TEXT_UNKNOWN, 5.0f, 0.0f, false, fArr);
            this.kickSignX = Math.hypot((double) (fArr[4] - fArr[6]), (double) (fArr[5] - fArr[7])) >= Math.hypot((double) (fArr[0] - fArr[2]), (double) (fArr[1] - fArr[3])) ? -1 : 1;
        }
        ((WalletCard2DView) this.cardView).setStickerKick(this.kickSignX * f2 * 10.0f, this.kickSignY * f * 10.0f);
    }

    public int getStickerLayerIndex() {
        int iIndexOfChild = this.frontFace.indexOfChild(this.cardHolderView);
        int iIndexOfChild2 = this.frontFace.indexOfChild(this.balanceLayout);
        return iIndexOfChild < 0 ? iIndexOfChild2 < 0 ? this.frontFace.getChildCount() : iIndexOfChild2 : iIndexOfChild2 < 0 ? iIndexOfChild : Math.min(iIndexOfChild, iIndexOfChild2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDiamondSpriteTint() {
        if (this.diamondSprite == null) {
            return;
        }
        float[] fArr = this.stickerStyle;
        float fMax = 1.0f;
        if (fArr == null) {
            fArr = new float[]{0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f, 0.5f, 0.5f, 1.0f, 1.0f};
        }
        float[] fArrMaterial = WalletGiftPalette.material(fArr);
        float[] fArr2 = this.stickerStyle;
        if (fArr2 != null && fArr2.length > 8) {
            fMax = Math.max(0.0f, Math.min(1.0f, fArr2[8]));
        }
        this.diamondSprite.setTint(AndroidUtilities.lerp(fArrMaterial[30], fArrMaterial[33], fMax), AndroidUtilities.lerp(fArrMaterial[31], fArrMaterial[34], fMax), AndroidUtilities.lerp(fArrMaterial[32], fArrMaterial[35], fMax));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onBalanceShadowFrame() {
        this.balanceView.invalidate();
        this.usdBalanceView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onHolderShadowFrame() {
        this.cardHolderView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDiamondFallbackFrame() {
        this.balanceView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNumberShadowFrame() {
        this.cardNumberView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void drawCardNumber(final Canvas canvas, float f) {
        int iCardNumberColor;
        float width = getFrontFace().getWidth();
        float height = getFrontFace().getHeight();
        float f2 = width / 1640.0f;
        float f3 = !isUse2D() ? 0.51061195f : 0.5002976f;
        this.cardNumberPaint.setTypeface(getCardNumberTypeface(getContext()));
        this.cardNumberPaint.setTextSize(47.345238f * f2);
        this.cardNumberPaint.setTextAlign(Paint.Align.CENTER);
        Paint paint = this.cardNumberPaint;
        boolean zIsUse2D = isUse2D();
        float[] fArr = this.stickerStyle;
        if (zIsUse2D) {
            iCardNumberColor = WalletGiftPalette.cardNumber2DColor(fArr);
        } else {
            iCardNumberColor = WalletGiftPalette.cardNumberColor(fArr);
        }
        paint.setColor(iCardNumberColor);
        Paint.FontMetrics fontMetrics = this.cardNumberPaint.getFontMetrics();
        final float f4 = (-(fontMetrics.ascent + fontMetrics.descent)) * 0.5f;
        final float f5 = f2 * 27.333332f;
        final String[] strArrSplit = formatCardAddress(this.cardNumber).split("\\n");
        canvas.save();
        canvas.translate(f2 * 1527.738f, f3 * height);
        canvas.rotate(90.0f);
        drawStickerShadowed(f, new ShadowLayer() { // from class: org.telegram.ui.Wallet.WalletCardComponent$$ExternalSyntheticLambda4
            @Override // org.telegram.ui.Wallet.WalletCardComponent.ShadowLayer
            public final void set(float f6, float f7, float f8, int i) {
                this.f$0.lambda$drawCardNumber$0(f6, f7, f8, i);
            }
        }, new Runnable() { // from class: org.telegram.ui.Wallet.WalletCardComponent$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$drawCardNumber$1(canvas, strArrSplit, f5, f4);
            }
        });
        canvas.restore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$drawCardNumber$0(float f, float f2, float f3, int i) {
        this.cardNumberPaint.setShadowLayer(f * 2.0f, f3, -f2, ColorUtils.setAlphaComponent(i, Math.round(Color.alpha(i) * 0.5f)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$drawCardNumber$1(Canvas canvas, String[] strArr, float f, float f2) {
        canvas.drawText(strArr[0], 0.0f, (-f) + f2, this.cardNumberPaint);
        if (strArr.length > 1) {
            canvas.drawText(strArr[1], 0.0f, f + f2, this.cardNumberPaint);
        }
    }

    public void setStickerTextShadow(float f, float f2, float f3, float f4) {
        float fRound = Math.round(f4 * 20.0f) / 20.0f;
        if (fRound != this.numberStickerShadow) {
            this.numberStickerShadow = fRound;
            this.cardNumberView.invalidate();
        }
        float f5 = Math.max(f3, f) > 0.0f ? 1.0f : 0.0f;
        if (f5 != this.diamondStickerFallback) {
            this.diamondStickerFallback = f5;
            this.balanceView.invalidate();
        }
        float fRound2 = Math.round(f * 20.0f) / 20.0f;
        float fRound3 = Math.round(f2 * 20.0f) / 20.0f;
        if (fRound2 != this.balanceStickerShadow) {
            this.balanceStickerShadow = fRound2;
            this.balanceView.invalidate();
            this.usdBalanceView.invalidate();
        }
        if (fRound3 != this.holderStickerShadow) {
            this.holderStickerShadow = fRound3;
            this.cardHolderView.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void drawStickerShadowed(float f, ShadowLayer shadowLayer, Runnable runnable) {
        shadowLayer.set(f > 0.0f ? AndroidUtilities.dp(5.0f) : 0.0f, 0.0f, AndroidUtilities.dp(1.0f), Color.argb((int) (89.0f * f), 0, 0, 0));
        runnable.run();
        if (f <= 0.0f) {
            return;
        }
        shadowLayer.set(AndroidUtilities.dpf2(1.5f), 0.0f, 0.0f, Color.argb((int) (f * 140.0f), 0, 0, 0));
        this.outlineShadowPass = true;
        runnable.run();
        this.outlineShadowPass = false;
    }

    public void setStickerStyle(float[] fArr) {
        this.stickerStyle = fArr;
        updateDiamondSpriteTint();
        this.balanceView.invalidate();
        this.cardNumberView.invalidate();
        ((WalletCard2DView) this.cardView).setStickerStyle(fArr);
        this.usdBalanceView.setTextColor(WalletGiftPalette.tint(-7868417, fArr));
        this.cardHolderView.invalidate();
    }

    public FrameLayout getFrontFace() {
        return this.frontFace;
    }

    public View getBalanceAnchor() {
        return this.balanceAnchor;
    }

    public LinearLayout getBalanceLayout() {
        return this.balanceLayout;
    }

    public AnimatedTextView getBalanceView() {
        return this.balanceView;
    }

    public void setBalanceTransition(float f, float f2) {
        if (this.balanceTransitionProgress == f && this.balanceActionBarWidth == f2) {
            return;
        }
        this.balanceTransitionProgress = f;
        if (f == 0.0f) {
            this.hasBalanceDiamondTransform = false;
        }
        this.balanceActionBarWidth = f2;
        this.balanceView.invalidate();
        this.usdBalanceView.invalidate();
    }

    public void setBalanceDiamondTransform(Matrix matrix, Matrix matrix2) {
        if (matrix.invert(this.inverseDiamondFaceTransform)) {
            this.nextDiamondTransform.setConcat(this.inverseDiamondFaceTransform, matrix2);
            if (this.hasBalanceDiamondTransform && this.balanceDiamondTransform.equals(this.nextDiamondTransform)) {
                return;
            }
            this.balanceDiamondTransform.set(this.nextDiamondTransform);
            this.hasBalanceDiamondTransform = true;
            this.balanceView.invalidate();
        }
    }

    public AnimatedTextView getUsdBalanceView() {
        return this.usdBalanceView;
    }

    public TextView getCardHolderView() {
        return this.cardHolderView;
    }

    public boolean isBackFacing() {
        View view = this.cardView;
        return (view instanceof WalletCard2DView) && ((WalletCard2DView) view).isBackFacing();
    }

    public void whenMaterialReady(Runnable runnable) {
        View view = this.cardView;
        if (view instanceof WalletCard2DView) {
            ((WalletCard2DView) view).whenMaterialReady(runnable);
        } else {
            runnable.run();
        }
    }

    public void setCardHolder(CharSequence charSequence) {
        this.cardHolderView.setText(charSequence);
    }

    public void setCardNumber(String str) {
        if (str == null || str.equals(this.cardNumber)) {
            return;
        }
        this.cardNumber = str;
        ((WalletCard2DView) this.cardView).setHasCardNumber(true);
        this.cardNumberView.invalidate();
    }

    public boolean getFrontFaceTransform(View view, Matrix matrix) {
        if (!isAttachedToWindow() || !view.isAttachedToWindow() || getRootView() != view.getRootView()) {
            return false;
        }
        View view2 = (View) ((View) this.frontFace.getParent()).getParent();
        ((WalletCard2DView) this.cardView).getFrontFaceProjection(this.faceProjectionMatrix);
        transformToRoot(view2, matrix);
        matrix.preConcat(this.faceProjectionMatrix);
        matrix.preTranslate(this.frontFace.getLeft() - r0.getScrollX(), this.frontFace.getTop() - r0.getScrollY());
        matrix.preConcat(this.frontFace.getMatrix());
        transformToRoot(view, this.targetTransformMatrix);
        if (!this.targetTransformMatrix.invert(this.inverseTargetTransformMatrix)) {
            return false;
        }
        matrix.postConcat(this.inverseTargetTransformMatrix);
        return true;
    }

    public static void transformToRoot(View view, Matrix matrix) {
        if (view.getParent() instanceof View) {
            transformToRoot((View) view.getParent(), matrix);
            matrix.preTranslate(view.getLeft() - r0.getScrollX(), view.getTop() - r0.getScrollY());
            matrix.preConcat(view.getMatrix());
            return;
        }
        matrix.reset();
    }

    public void setOnFrontContentPresented(Runnable runnable) {
        if (runnable != null) {
            runnable.run();
        }
    }

    public void attachBalanceToCard() {
        setBalanceTransition(0.0f, 0.0f);
        AndroidUtilities.removeFromParent(this.balanceLayout);
        this.balanceLayout.setScaleX(1.0f);
        this.balanceLayout.setScaleY(1.0f);
        this.balanceLayout.setRotationX(0.0f);
        this.balanceLayout.setRotationY(0.0f);
        this.balanceLayout.setTranslationX(0.0f);
        this.balanceLayout.setTranslationY(0.0f);
        this.usdBalanceView.setScaleX(1.0f);
        this.usdBalanceView.setScaleY(1.0f);
        this.frontFace.addView(this.balanceLayout, this.balanceCardLayoutParams);
    }

    public void setCardOnClickListener(View.OnClickListener onClickListener) {
        this.cardClickListener = onClickListener;
        this.cardView.setOnClickListener(onClickListener);
    }

    public void setCardIcon(int i) {
        this.cardIconResId = i;
        ((WalletCard2DView) this.cardView).setCardIcon(i);
    }

    public void setAdditionalTilt(float f) {
        this.additionalTilt = f;
        ((WalletCard2DView) this.cardView).setAdditionalTilt(f);
    }

    public void setUseGyroscope(float f) {
        this.gyroscopeTiltScale = f;
        ((WalletCard2DView) this.cardView).setUseGyroscope(f);
    }

    public float getCardRotationX() {
        return ((WalletCard2DView) this.cardView).getCardRotationX();
    }

    public float getCardRotationY() {
        return ((WalletCard2DView) this.cardView).getCardRotationY();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        View view = getParent() instanceof View ? (View) getParent() : null;
        if (view != null) {
            view.setTranslationZ(AndroidUtilities.dp(16.0f));
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                viewGroup.setClipChildren(false);
                viewGroup.setClipToPadding(false);
            }
        }
        if (this.wallet != null) {
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.walletUpdate);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        View view = getParent() instanceof View ? (View) getParent() : null;
        if (view != null) {
            view.setTranslationZ(0.0f);
        }
        super.onDetachedFromWindow();
        if (this.wallet != null) {
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.walletUpdate);
        }
    }

    public void update(GramWallet gramWallet) {
        if (gramWallet == null) {
            return;
        }
        setCardHolder(UserObject.getUserName(UserConfig.getInstance(gramWallet.currentAccount).getCurrentUser()).toUpperCase());
        if (gramWallet.getAddress() != null) {
            setCardNumber(formatAddress(gramWallet.getAddress().toUpperCase()));
        }
        if (gramWallet.isReady()) {
            setWalletBalance(gramWallet, gramWallet.getBalance());
        }
    }

    public void listen(int i, GramWallet gramWallet) {
        GramWallet gramWallet2;
        int i2;
        if (isAttachedToWindow() && (gramWallet2 = this.wallet) != null && ((i2 = this.currentAccount) != i || gramWallet2 != gramWallet)) {
            NotificationCenter.getInstance(i2).removeObserver(this, NotificationCenter.walletUpdate);
        }
        this.currentAccount = i;
        this.wallet = gramWallet;
        if (!isAttachedToWindow() || this.wallet == null) {
            return;
        }
        NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.walletUpdate);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.walletUpdate) {
            Object obj = objArr[0];
            GramWallet gramWallet = this.wallet;
            if (obj == gramWallet) {
                update(gramWallet);
            }
        }
    }

    public static SpannableStringBuilder formatBalance(long j) {
        return GramWallet.formatGramsScaled(new DecimalFormat("#,##0.#########", new DecimalFormatSymbols(Locale.US)).format(new BigDecimal(GramWallet.formatGramsBalance(j, false))), 0.8f);
    }

    public ColoredImageSpan createBalanceDiamondSpan() {
        return new ColoredImageSpan(C2807R.drawable.wallet_gram_large) { // from class: org.telegram.ui.Wallet.WalletCardComponent.5
            @Override // org.telegram.ui.Components.ColoredImageSpan, android.text.style.ReplacementSpan
            public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
                if (WalletCardComponent.this.outlineShadowPass) {
                    return;
                }
                setAlpha(1.0f);
                if (WalletCardComponent.this.diamondOnCard && WalletCardComponent.this.isUse2D()) {
                    float fMax = Math.max(0.0f, Math.min(1.0f, WalletCardComponent.this.balanceTransitionProgress));
                    if (fMax == 0.0f) {
                        float intrinsicWidth = this.drawable.getIntrinsicWidth() * WalletCardComponent.this.balanceDrawScale;
                        float intrinsicHeight = this.drawable.getIntrinsicHeight() * WalletCardComponent.this.balanceDrawScale;
                        float f2 = (WalletCardComponent.this.balanceDrawScale * f) + WalletCardComponent.this.balanceCardLayoutParams.leftMargin;
                        float height = ((WalletCardComponent.this.balanceView.getHeight() / 2.0f) - (intrinsicHeight / 2.0f)) + WalletCardComponent.this.balanceCardLayoutParams.topMargin;
                        WalletCardComponent.this.diamondCardBounds.set(f2, height, intrinsicWidth + f2, intrinsicHeight + height);
                    }
                    if (fMax < 1.0f) {
                        if (WalletCardComponent.this.diamondSprite == null) {
                            WalletCardComponent.this.diamondSprite = new WalletDiamondSprite(this.drawable.getIntrinsicWidth(), this.drawable.getIntrinsicHeight());
                            WalletCardComponent.this.updateDiamondSpriteTint();
                        }
                        Drawable drawable = this.drawable;
                        WalletCardComponent.this.diamondSprite.setBounds(drawable.getBounds());
                        WalletCardComponent.this.diamondSprite.setShadowAlpha(WalletCardComponent.this.balanceShadowAnimated.get());
                        this.drawable = WalletCardComponent.this.diamondSprite;
                        this.recolorDrawable = false;
                        setAlpha(1.0f - fMax);
                        super.draw(canvas, charSequence, i, i2, f, i3, i4, i5, paint);
                        this.drawable = drawable;
                        this.recolorDrawable = true;
                    }
                    setAlpha(fMax);
                    if (fMax == 0.0f) {
                        return;
                    }
                }
                super.draw(canvas, charSequence, i, i2, f, i3, i4, i5, paint);
            }
        };
    }

    public void setProfileCard(int i, TLRPC.User user, TL_wallet.card cardVar) {
        String userName = UserObject.getUserName(user);
        Locale locale = Locale.ROOT;
        setCardHolder(userName.toUpperCase(locale));
        if (!TextUtils.isEmpty(cardVar.address)) {
            setCardNumber(formatAddress(cardVar.address.toUpperCase(locale)));
        }
        setCardBalance(i, cardVar.balance);
        CharSequence currency = GramWallet.getInstance(i).formatCurrency(cardVar.balance);
        if (TextUtils.isEmpty(currency)) {
            return;
        }
        this.usdBalanceView.setText(currency, false);
    }

    private void setWalletBalance(GramWallet gramWallet, long j) {
        setCardBalance(gramWallet.currentAccount, j);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void setCardBalance(int i, long j) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        SpannableString spannableString = new SpannableString("GRAM");
        spannableString.setSpan(createBalanceDiamondSpan(), 0, spannableString.length(), 33);
        spannableStringBuilder.append((CharSequence) spannableString).append((CharSequence) " ");
        spannableStringBuilder.append((CharSequence) formatBalance(j));
        spannableStringBuilder.append((CharSequence) " ");
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) LocaleController.getString(C2807R.string.GramCurrency));
        spannableStringBuilder.setSpan(new CharacterStyle() { // from class: org.telegram.ui.Wallet.WalletCardComponent.6
            @Override // android.text.style.CharacterStyle
            public void updateDrawState(TextPaint textPaint) {
                textPaint.setColor(WalletCardComponent.this.stickerStyle != null ? WalletGiftPalette.tint(-9577217, WalletCardComponent.this.stickerStyle) : -9577217);
            }
        }, length, spannableStringBuilder.length(), 33);
        this.balanceView.setText(spannableStringBuilder);
        long jRound = Math.round((j / 1.0E9d) * MessagesController.getInstance(i).config.tonUsdRate.get() * 100.0d);
        this.usdBalanceView.setText(BillingController.getInstance().formatCurrency(jRound, "USD", 2, jRound % 100 == 0));
    }

    public static String formatAddress(String str) {
        StringBuilder sb = new StringBuilder(str.length() + (str.length() / 4));
        for (int i = 0; i < str.length(); i++) {
            if (i > 0 && i % 4 == 0) {
                sb.append(' ');
            }
            sb.append(str.charAt(i));
        }
        return sb.toString();
    }

    private void createCardImplementation() {
        WalletCard2DView walletCard2DView = new WalletCard2DView(getContext(), this.cardIconResId, this.qrButtonRightPadding);
        this.cardView = walletCard2DView;
        this.frontFace = walletCard2DView.getFrontFace();
        float[] fArr = this.stickerStyle;
        if (fArr != null) {
            setStickerStyle(fArr);
        }
        setAdditionalTilt(this.additionalTilt);
        setUseGyroscope(this.gyroscopeTiltScale);
        this.cardView.setOnClickListener(this.cardClickListener);
        addView(this.cardView, 0, LayoutHelper.createFrame(-1, -2.0f));
    }

    public static String formatCardAddress(String str) {
        String[] strArrSplit = str.split(" ");
        if (strArrSplit.length < 2) {
            return str;
        }
        int length = strArrSplit.length / 2;
        StringBuilder sb = new StringBuilder(str.length() + 1);
        int i = 0;
        while (i < strArrSplit.length) {
            if (i > 0) {
                sb.append(i == length ? '\n' : ' ');
            }
            sb.append(strArrSplit[i]);
            i++;
        }
        return sb.toString();
    }

    private static Typeface getCardHolderTypeface(Context context) {
        if (cardHolderTypeface == null) {
            if (Build.VERSION.SDK_INT >= 26) {
                FontUtils$$ExternalSyntheticApiModelOutline1.m298m();
                cardHolderTypeface = FontUtils$$ExternalSyntheticApiModelOutline0.m297m(context.getAssets(), "fonts/rmono_var.ttf").setFontVariationSettings("'wght' 500").setWeight(MediaError.DetailedErrorCode.SEGMENT_UNKNOWN).build();
            } else {
                cardHolderTypeface = AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MONO);
            }
        }
        return cardHolderTypeface;
    }

    private static Typeface getCardNumberTypeface(Context context) {
        if (cardNumberTypeface == null) {
            if (Build.VERSION.SDK_INT >= 26) {
                FontUtils$$ExternalSyntheticApiModelOutline1.m298m();
                cardNumberTypeface = FontUtils$$ExternalSyntheticApiModelOutline0.m297m(context.getAssets(), "fonts/rmono_var.ttf").setFontVariationSettings("'wght' 400").setWeight(MediaError.DetailedErrorCode.MANIFEST_UNKNOWN).build();
            } else {
                cardNumberTypeface = AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MONO);
            }
        }
        return cardNumberTypeface;
    }
}
