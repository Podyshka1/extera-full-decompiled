package org.telegram.ui.Wallet;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.ActivityManager;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.text.style.RelativeSizeSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.graphics.ColorUtils;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.exteragram.messenger.export.output.html.HtmlContext$$ExternalSyntheticBackport0;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Stack;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.tgnet.tl.TL_wallet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.ButtonBounce;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LoadingDrawable;
import org.telegram.ui.Components.Premium.GLIcon.WalletDiamondTextureView;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.Shaker$$ExternalSyntheticLambda0;
import org.telegram.ui.Components.Text;
import org.telegram.ui.Components.TextStyleSpan;
import org.telegram.ui.Components.spoilers.SpoilerEffect;
import org.telegram.ui.Gifts.GiftSheet;

/* JADX INFO: loaded from: classes8.dex */
public class WalletActionLayout {
    private TLRPC.TL_messageActionGramTransfer action;
    private Text addressText;
    private Text amountText;
    private final Matrix backdropShaderMatrix;
    private final ButtonBounce bounce;
    private int cardAccount;
    private TL_stars.starGiftAttributeBackdrop cardBackdrop;
    private final AnimatedFloat cardBackdropAnimation;
    private TL_stars.starGiftAttributeBackdrop cardBackdropFrom;
    private final Paint cardBackdropFromPaint;
    private final Paint cardBackdropPaint;
    private final Drawable cardDrawable;
    private final WalletCardMotion cardMotion;
    private long cardUserId;
    private Text commentText;
    private boolean diamondHeldForFlight;
    private float diamondPitch;
    private ValueAnimator diamondReturn;
    private boolean diamondReturning;
    private SpringAnimation diamondSpring;
    private WalletDiamondTextureView diamondSurface;
    private float diamondX;
    private float diamondY;
    private float diamondYaw;
    private boolean gramAnimationStarted;
    private final RLottieDrawable gramDrawable;
    private boolean highlightShimmerDisappearing;
    private long highlightShimmerStarted;
    private float landingPress;
    private SpringAnimation landingSpring;
    private LoadingDrawable loadingDrawable;
    private int observingAccount;
    private Runnable onClick;
    private Runnable onReceiveAnimationEnd;
    private boolean out;
    private final View parentView;
    private Text peerLinkText;
    private boolean preparingCommentRevealed;
    private ValueAnimator receiveAnimator;
    private final Theme.ResourcesProvider resourcesProvider;
    private final GiftSheet.RibbonDrawable ribbon;
    private final AnimatedFloat ribbonColorAnimation;
    private int ribbonColorCurrent;
    private int ribbonColorFrom;
    private int ribbonColorTo;
    private final Paint ribbonHighlightPaint;
    private boolean ribbonHighlightPending;
    private long ribbonHighlightStarted;
    private final Paint ribbonInnerStrokePaint;
    private final Path ribbonInnerStrokePath;
    private final AnimatedFloat ribbonRevealAnimation;
    private final Paint sendingClockPaint;
    private final AnimatedFloat sendingClockReveal;
    private long sendingClockStarted;
    private float sendingGradientRotation;
    private long sendingGradientUpdated;
    private float sentScale;
    private float sentSpinMomentum;
    private SpringAnimation sentSpring;
    private float spinOffset;
    private float spinSpeed;
    private long spinUpdated;
    private boolean spoilersSuppressed;
    private boolean surfaceEnabled;
    private boolean surfaceFailed;
    private float surfaceOriginX;
    private float surfaceOriginY;
    private int textColor;
    private boolean touchCaptured;
    private final CharacterStyle unitColorSpan;
    private final NotificationCenter.NotificationCenterDelegate userInfoObserver;
    private boolean waitingForReceive;
    private boolean wasSending;
    private final ArrayList<SpoilerEffect> commentSpoilers = new ArrayList<>();
    private final Stack<SpoilerEffect> commentSpoilersPool = new Stack<>();
    private final RectF cardRect = new RectF();
    private final RectF loadingRect = new RectF();
    private final Path loadingPath = new Path();
    private final Path cardClip = new Path();
    private final WalletSendParticles sentParticles = new WalletSendParticles();
    private final Rect diamondBounds = new Rect();
    private int diamondPointer = -1;
    private float diamondScale = 1.0f;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(int i, int i2, Object[] objArr) {
        if (i != NotificationCenter.userInfoDidLoad || i2 != this.cardAccount || this.cardUserId == 0 || objArr.length <= 1) {
            return;
        }
        Object obj = objArr[0];
        if ((obj instanceof Long) && ((Long) obj).longValue() == this.cardUserId) {
            setCardBackdrop(getCardBackdrop((TLRPC.UserFull) objArr[1]), true);
        }
    }

    public WalletActionLayout(final View view, Theme.ResourcesProvider resourcesProvider) {
        Paint paint = new Paint(1);
        this.ribbonHighlightPaint = paint;
        Paint paint2 = new Paint(1);
        this.sendingClockPaint = paint2;
        Path path = new Path();
        this.ribbonInnerStrokePath = path;
        Paint paint3 = new Paint(1);
        this.ribbonInnerStrokePaint = paint3;
        this.sentScale = 1.0f;
        this.backdropShaderMatrix = new Matrix();
        this.textColor = -10624001;
        this.unitColorSpan = new CharacterStyle() { // from class: org.telegram.ui.Wallet.WalletActionLayout.1
            @Override // android.text.style.CharacterStyle
            public void updateDrawState(TextPaint textPaint) {
                textPaint.setColor(WalletActionLayout.this.textColor);
            }
        };
        this.cardAccount = -1;
        this.observingAccount = -1;
        this.cardBackdropPaint = new Paint(1);
        this.cardBackdropFromPaint = new Paint(1);
        this.userInfoObserver = new NotificationCenter.NotificationCenterDelegate() { // from class: org.telegram.ui.Wallet.WalletActionLayout$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
            public final void didReceivedNotification(int i, int i2, Object[] objArr) {
                this.f$0.lambda$new$0(i, i2, objArr);
            }
        };
        this.parentView = view;
        this.resourcesProvider = resourcesProvider;
        this.cardDrawable = view.getResources().getDrawable(C2807R.drawable.wallet_action_card_gradient).mutate();
        this.cardMotion = WalletCardMotion.get(view.getContext());
        RLottieDrawable rLottieDrawable = new RLottieDrawable(C2807R.raw.wallet_diamond_white, AndroidUtilities.dp(42.0f), AndroidUtilities.dp(42.0f), false, null);
        this.gramDrawable = rLottieDrawable;
        rLottieDrawable.setMasterParent(view);
        rLottieDrawable.setAutoRepeat(0);
        view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: org.telegram.ui.Wallet.WalletActionLayout.2
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view2) {
                if (WalletActionLayout.this.diamondSurface != null) {
                    WalletActionLayout.this.diamondSurface.setPaused(!WalletActionLayout.this.surfaceEnabled);
                }
                WalletActionLayout.this.updateUserInfoObserver();
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view2) {
                WalletActionLayout.this.finishReceiveAnimation();
                WalletActionLayout.this.resetRibbonHighlight();
                WalletActionLayout.this.resetDiamond();
                WalletActionLayout.this.resetSentBounce();
                WalletActionLayout.this.resetLanding();
                WalletActionLayout.this.cardMotion.detach(view);
                WalletActionLayout.this.updateUserInfoObserver();
                if (WalletActionLayout.this.diamondSurface != null) {
                    WalletActionLayout.this.diamondSurface.setPaused(true);
                }
                WalletActionLayout.this.gramDrawable.stop();
                WalletActionLayout.this.gramAnimationStarted = false;
            }
        });
        paint2.setColor(-10033409);
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        paint2.setStrokeWidth(AndroidUtilities.dpf2(1.0f));
        Shaker$$ExternalSyntheticLambda0 shaker$$ExternalSyntheticLambda0 = new Shaker$$ExternalSyntheticLambda0(view);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.sendingClockReveal = new AnimatedFloat(1.0f, shaker$$ExternalSyntheticLambda0, 0L, 180L, cubicBezierInterpolator);
        this.ribbonRevealAnimation = new AnimatedFloat(new Shaker$$ExternalSyntheticLambda0(view), 0L, 320L, cubicBezierInterpolator);
        this.ribbonColorAnimation = new AnimatedFloat(new Shaker$$ExternalSyntheticLambda0(view), 0L, 320L, cubicBezierInterpolator);
        GiftSheet.RibbonDrawable ribbonDrawable = new GiftSheet.RibbonDrawable(view, 1.0f) { // from class: org.telegram.ui.Wallet.WalletActionLayout.3
            @Override // android.graphics.drawable.Drawable
            public void invalidateSelf() {
                super.invalidateSelf();
                view.invalidate();
            }
        };
        this.ribbon = ribbonDrawable;
        ribbonDrawable.setTextColor(-1);
        GiftSheet.RibbonDrawable.fillRibbonPath(path, 1.0f, false);
        paint3.setStyle(style);
        paint3.setStrokeWidth(AndroidUtilities.dpf2(4.0f));
        paint3.setPathEffect(new CornerPathEffect(AndroidUtilities.dp(2.33f)));
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint3.setShader(new LinearGradient(0.0f, 0.0f, AndroidUtilities.dp(48.0f), AndroidUtilities.dp(48.0f), new int[]{16777215, Theme.multAlpha(16777215, 0.35f), 16777215}, new float[]{0.0f, 0.5f, 1.0f}, tileMode));
        paint.setShader(new LinearGradient(-AndroidUtilities.dp(10.0f), 0.0f, AndroidUtilities.dp(10.0f), 0.0f, new int[]{16777215, -2130706433, 16777215}, new float[]{0.0f, 0.5f, 1.0f}, tileMode));
        ButtonBounce buttonBounce = new ButtonBounce(view);
        this.bounce = buttonBounce;
        buttonBounce.setAdditionalInvalidate(new Runnable() { // from class: org.telegram.ui.Wallet.WalletActionLayout$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.invalidateCardBackground();
            }
        });
        this.cardBackdropAnimation = new AnimatedFloat(1.0f, new Shaker$$ExternalSyntheticLambda0(view), 0L, 400L, cubicBezierInterpolator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateUserInfoObserver() {
        int i = (!this.parentView.isAttachedToWindow() || this.cardUserId == 0) ? -1 : this.cardAccount;
        int i2 = this.observingAccount;
        if (i == i2) {
            return;
        }
        if (i2 >= 0) {
            NotificationCenter.getInstance(i2).removeObserver(this.userInfoObserver, NotificationCenter.userInfoDidLoad);
        }
        this.observingAccount = i;
        if (i >= 0) {
            NotificationCenter.getInstance(i).addObserver(this.userInfoObserver, NotificationCenter.userInfoDidLoad);
        }
    }

    private static TL_stars.starGiftAttributeBackdrop getCardBackdrop(TLRPC.UserFull userFull) {
        TL_wallet.card cardVar;
        TL_wallet.nftItem nftitem;
        TL_stars.StarGift starGift;
        ArrayList<TL_stars.StarGiftAttribute> arrayList;
        if (userFull != null && (cardVar = userFull.wallet_card) != null && (nftitem = cardVar.bg_nft_item) != null && (starGift = nftitem.gift) != null && (arrayList = starGift.attributes) != null) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TL_stars.StarGiftAttribute starGiftAttribute = arrayList.get(i);
                i++;
                TL_stars.StarGiftAttribute starGiftAttribute2 = starGiftAttribute;
                if (starGiftAttribute2 instanceof TL_stars.starGiftAttributeBackdrop) {
                    return (TL_stars.starGiftAttributeBackdrop) starGiftAttribute2;
                }
            }
        }
        return null;
    }

    private static boolean sameBackdrop(TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop, TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop2) {
        return (stargiftattributebackdrop == null || stargiftattributebackdrop2 == null) ? stargiftattributebackdrop == stargiftattributebackdrop2 : stargiftattributebackdrop.center_color == stargiftattributebackdrop2.center_color && stargiftattributebackdrop.edge_color == stargiftattributebackdrop2.edge_color && stargiftattributebackdrop.pattern_color == stargiftattributebackdrop2.pattern_color && stargiftattributebackdrop.text_color == stargiftattributebackdrop2.text_color;
    }

    private void setCardBackdrop(TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop, boolean z) {
        if (sameBackdrop(this.cardBackdrop, stargiftattributebackdrop)) {
            if (z || this.cardBackdropAnimation.get() >= 1.0f) {
                return;
            }
            this.cardBackdropFrom = null;
            this.cardBackdropFromPaint.setShader(null);
            this.cardBackdropAnimation.force(1.0f);
            return;
        }
        if (z) {
            this.cardBackdropFrom = this.cardBackdrop;
            this.cardBackdropFromPaint.setShader(this.cardBackdropPaint.getShader());
            this.cardBackdropAnimation.force(0.0f);
        } else {
            this.cardBackdropFrom = null;
            this.cardBackdropFromPaint.setShader(null);
            this.cardBackdropAnimation.force(1.0f);
        }
        this.cardBackdrop = stargiftattributebackdrop;
        this.cardBackdropPaint.setShader(stargiftattributebackdrop != null ? createBackdropShader(stargiftattributebackdrop) : null);
        invalidateCard();
    }

    private static Shader createBackdropShader(TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop) {
        int iSurface = WalletGiftPalette.surface(-16216082, stargiftattributebackdrop.center_color, stargiftattributebackdrop.edge_color);
        int iSurface2 = WalletGiftPalette.surface(-15291399, stargiftattributebackdrop.center_color, stargiftattributebackdrop.edge_color);
        SweepGradient sweepGradient = new SweepGradient(0.0f, 0.0f, new int[]{iSurface, iSurface2, iSurface, iSurface2, iSurface}, new float[]{0.0f, 0.25f, 0.5f, 0.75f, 1.0f});
        if (SharedConfig.getDevicePerformanceClass() == 0) {
            return sweepGradient;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(96, 96, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        paint.setShader(sweepGradient);
        canvas.translate(48.0f, 48.0f);
        canvas.drawPaint(paint);
        Utilities.stackBlurBitmap(bitmapCreateBitmap, 16);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        return new BitmapShader(bitmapCreateBitmap, tileMode, tileMode);
    }

    private void drawBackdrop(Canvas canvas, float f, Paint paint) {
        Shader shader = paint.getShader();
        if (shader instanceof BitmapShader) {
            this.backdropShaderMatrix.setTranslate(-48.0f, -48.0f);
            float f2 = (2.0f * f) / 96.0f;
            this.backdropShaderMatrix.postScale(f2, f2);
            shader.setLocalMatrix(this.backdropShaderMatrix);
        }
        float f3 = -f;
        canvas.drawRect(f3, f3, f, f, paint);
    }

    private static int getNameColor(TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop) {
        if (stargiftattributebackdrop == null) {
            return -10624001;
        }
        return stargiftattributebackdrop.text_color | (-16777216);
    }

    private static int getCardNumberColor(TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop) {
        if (stargiftattributebackdrop == null) {
            return -16693808;
        }
        return WalletGiftPalette.cardNumberColor(stargiftattributebackdrop.pattern_color, stargiftattributebackdrop.edge_color);
    }

    public void set(boolean z, TLRPC.TL_messageActionGramTransfer tL_messageActionGramTransfer, String str, int i, boolean z2, boolean z3) {
        int color;
        String string;
        if (z2) {
            finishReceiveAnimation();
            resetRibbonHighlight();
            this.wasSending = false;
            resetDiamond();
            resetSentBounce();
            resetLanding();
            this.sendingGradientRotation = 0.0f;
            this.sendingGradientUpdated = 0L;
            this.gramDrawable.stop();
            this.gramAnimationStarted = false;
        }
        this.out = z;
        this.action = tL_messageActionGramTransfer;
        boolean z4 = !z && z3;
        this.waitingForReceive = z4;
        if (z4) {
            forceRibbonReveal(0.0f);
        } else if (z2) {
            forceRibbonReveal(1.0f);
        }
        this.preparingCommentRevealed = false;
        boolean z5 = z && i == 2;
        boolean z6 = z && i == 1;
        if (this.wasSending && z && i == 0) {
            animateSentBounce();
            getDiamondRestingYaw();
            this.sentSpinMomentum = 18.0f;
            this.sentParticles.sent(0.0f, 0.0f);
            this.parentView.invalidate();
        }
        if (z6) {
            if (!this.wasSending) {
                this.sendingClockStarted = SystemClock.elapsedRealtime();
            }
            forceRibbonReveal(0.0f);
        } else if (z5) {
            forceRibbonReveal(1.0f);
        }
        updateSendingGradient();
        this.wasSending = z6;
        this.sendingGradientUpdated = z6 ? SystemClock.elapsedRealtime() : 0L;
        if (z6) {
            ensureLoadingDrawable();
            this.loadingDrawable.setSingleCycleDuration(0L);
            if (this.loadingDrawable.isDisappearing() || this.loadingDrawable.isDisappeared()) {
                this.loadingDrawable.reset();
                this.loadingDrawable.resetDisappear();
            }
            this.parentView.invalidate();
        } else {
            LoadingDrawable loadingDrawable = this.loadingDrawable;
            if (loadingDrawable != null && this.highlightShimmerStarted == 0 && !loadingDrawable.isDisappearing() && !this.loadingDrawable.isDisappeared()) {
                this.loadingDrawable.disappear();
                this.parentView.invalidate();
            }
        }
        if (z5) {
            color = Theme.getColor(Theme.key_text_RedBold, this.resourcesProvider);
        } else {
            color = z ? -15352320 : -11814402;
        }
        int i2 = this.ribbonColorTo;
        if (i2 == 0) {
            this.ribbonColorCurrent = color;
            this.ribbonColorTo = color;
            this.ribbonColorFrom = color;
        } else if (color != i2) {
            this.ribbonColorFrom = this.ribbonColorCurrent;
            this.ribbonColorTo = color;
            this.ribbonColorAnimation.force(0.0f);
            this.parentView.invalidate();
        }
        if (z5) {
            string = LocaleController.getString(C2807R.string.WalletTransferStatusFailed);
        } else if (z) {
            string = LocaleController.getString(C2807R.string.WalletTransferStatusSent);
        } else {
            string = LocaleController.getString(C2807R.string.WalletTransferStatusReceived);
        }
        GiftSheet.RibbonDrawable ribbonDrawable = this.ribbon;
        if (z6) {
            ribbonDrawable.setText(10, string, true);
        } else {
            ribbonDrawable.setTextAnimated(10, string, true);
        }
        SpannableStringBuilder gramsScaled = GramWallet.formatGramsScaled(Math.abs(tL_messageActionGramTransfer.amount), 0.75f);
        for (RelativeSizeSpan relativeSizeSpan : (RelativeSizeSpan[]) gramsScaled.getSpans(0, gramsScaled.length(), RelativeSizeSpan.class)) {
            gramsScaled.removeSpan(relativeSizeSpan);
        }
        gramsScaled.insert(0, (CharSequence) (z ? "–" : "+"));
        int iIndexOf = gramsScaled.toString().indexOf(46);
        if (iIndexOf >= 0) {
            gramsScaled.setSpan(new RelativeSizeSpan(0.75f), iIndexOf, gramsScaled.length(), 33);
        }
        Object obj = new Object();
        gramsScaled.setSpan(obj, 0, gramsScaled.length(), 33);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(GramWallet.formatGramsWithUnit(gramsScaled));
        int spanStart = spannableStringBuilder.getSpanStart(obj);
        int spanEnd = spannableStringBuilder.getSpanEnd(obj);
        spannableStringBuilder.removeSpan(obj);
        if (spanStart > 0) {
            spannableStringBuilder.setSpan(CharacterStyle.wrap(this.unitColorSpan), 0, spanStart, 33);
        }
        if (spanEnd >= 0 && spanEnd < spannableStringBuilder.length()) {
            spannableStringBuilder.setSpan(CharacterStyle.wrap(this.unitColorSpan), spanEnd, spannableStringBuilder.length(), 33);
        }
        this.amountText = new Text(spannableStringBuilder, 16.0f, AndroidUtilities.bold());
        String str2 = tL_messageActionGramTransfer.peer_address;
        Locale locale = Locale.US;
        String cardAddress = WalletCardComponent.formatCardAddress(WalletCardComponent.formatAddress(str2.toUpperCase(locale)));
        Text textMultiline = new Text(_UrlKt.FRAGMENT_ENCODE_SET, 9.3f, AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MONO)).multiline(2);
        this.addressText = textMultiline;
        textMultiline.setText(cardAddress);
        if (TextUtils.isEmpty(str)) {
            this.peerLinkText = null;
        } else {
            Text text = new Text(_UrlKt.FRAGMENT_ENCODE_SET, 10.0f, Typeface.create(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MONO), 1));
            this.peerLinkText = text;
            text.setText(TextUtils.ellipsize(AndroidUtilities.replaceNewLines(str.toUpperCase(locale)), this.peerLinkText.paint, getWidth() - AndroidUtilities.dp(24.0f), TextUtils.TruncateAt.END));
        }
        this.commentSpoilersPool.addAll(this.commentSpoilers);
        this.commentSpoilers.clear();
        if (TextUtils.isEmpty(tL_messageActionGramTransfer.comment)) {
            this.commentText = null;
            return;
        }
        Text maxWidth = new Text(_UrlKt.FRAGMENT_ENCODE_SET, 12.0f).multiline(Integer.MAX_VALUE).align(Layout.Alignment.ALIGN_CENTER).setMaxWidth(AndroidUtilities.dp(184.0f));
        this.commentText = maxWidth;
        if ((tL_messageActionGramTransfer.comment_encrypted || tL_messageActionGramTransfer.comment_encrypted_preparing) && !this.preparingCommentRevealed) {
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(HtmlContext$$ExternalSyntheticBackport0.m257m("a", 25));
            TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
            textStyleRun.flags |= 256;
            spannableStringBuilder2.setSpan(new TextStyleSpan(textStyleRun), 0, spannableStringBuilder2.length(), 33);
            this.commentText.setText(spannableStringBuilder2);
            SpoilerEffect.addSpoilers(this.parentView, this.commentText.getLayout(), this.commentSpoilersPool, this.commentSpoilers);
            setSpoilersSuppressed(this.spoilersSuppressed);
            return;
        }
        maxWidth.setText(Emoji.replaceEmoji(tL_messageActionGramTransfer.comment, maxWidth.paint.getFontMetricsInt(), false));
    }

    public int getWidth() {
        return AndroidUtilities.dp(206.0f);
    }

    public int getHeight() {
        if (this.commentText == null) {
            return AndroidUtilities.dp(140.0f);
        }
        return AndroidUtilities.dp(150.0f) + ((int) Math.ceil(this.commentText.getHeight()));
    }

    private float getCardScaleX() {
        return this.bounce.getScale(0.025f) * this.sentScale * ((this.landingPress * 0.012f) + 1.0f);
    }

    private float getCardScaleY() {
        return this.bounce.getScale(0.025f) * this.sentScale * (1.0f - (this.landingPress * 0.04f));
    }

    private float getCardOffsetY() {
        return AndroidUtilities.dp(4.0f) * this.landingPress;
    }

    public void applyCardTransform(Canvas canvas, float f, float f2) {
        canvas.translate(0.0f, getCardOffsetY());
        canvas.scale(getCardScaleX(), getCardScaleY(), f + (getWidth() / 2.0f), f2 + AndroidUtilities.dp(70.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidateCardBackground() {
        if (this.parentView.getParent() instanceof View) {
            ((View) this.parentView.getParent()).invalidate();
        }
    }

    private void invalidateCard() {
        this.parentView.invalidate();
        invalidateCardBackground();
    }

    public void draw(Canvas canvas) {
        int iBlendARGB;
        int i;
        Canvas canvas2;
        int i2;
        int iBlendARGB2;
        WalletDiamondTextureView walletDiamondTextureView;
        canvas.save();
        float cardScaleX = getCardScaleX();
        float cardScaleY = getCardScaleY();
        float cardOffsetY = getCardOffsetY();
        applyCardTransform(canvas, 0.0f, 0.0f);
        float fDp = AndroidUtilities.dp(4.0f);
        this.cardRect.set(fDp, fDp, getWidth() - fDp, AndroidUtilities.dp(140.0f) - fDp);
        RectF rectF = this.cardRect;
        Canvas.EdgeType edgeType = Canvas.EdgeType.AA;
        if (!canvas.quickReject(rectF, edgeType)) {
            this.cardMotion.drawn(this.parentView);
        }
        this.cardClip.rewind();
        Path path = this.cardClip;
        RectF rectF2 = this.cardRect;
        float fDp2 = AndroidUtilities.dp(16.0f);
        float fDp3 = AndroidUtilities.dp(16.0f);
        Path.Direction direction = Path.Direction.CW;
        path.addRoundRect(rectF2, fDp2, fDp3, direction);
        canvas.save();
        canvas.clipPath(this.cardClip);
        canvas.translate(this.cardRect.centerX() + (AndroidUtilities.dp(10.0f) * this.cardMotion.f1257x), this.cardRect.centerY() + (AndroidUtilities.dp(8.0f) * this.cardMotion.f1258y));
        updateSendingGradient();
        WalletCardMotion walletCardMotion = this.cardMotion;
        canvas.rotate((walletCardMotion.f1257x * 14.0f) + (walletCardMotion.f1258y * 6.0f) + this.sendingGradientRotation);
        float fHypot = (((float) Math.hypot(this.cardRect.width(), this.cardRect.height())) / 2.0f) + AndroidUtilities.dp(16.0f);
        int iMax = Math.max(1, this.cardDrawable.getIntrinsicWidth());
        int iMax2 = Math.max(1, this.cardDrawable.getIntrinsicHeight());
        float fMin = fHypot / Math.min(iMax, iMax2);
        int iCeil = (int) Math.ceil(iMax * fMin);
        int iCeil2 = (int) Math.ceil(iMax2 * fMin);
        float f = this.cardBackdropAnimation.set(1.0f);
        boolean z = this.cardBackdropFrom != null && f < 1.0f;
        if (this.cardBackdrop == null || (f < 1.0f && !z)) {
            this.cardDrawable.setBounds(-iCeil, -iCeil2, iCeil, iCeil2);
            this.cardDrawable.draw(canvas);
        }
        if (z) {
            this.cardBackdropFromPaint.setAlpha(this.cardBackdrop == null ? Math.round((1.0f - f) * 255.0f) : 255);
            drawBackdrop(canvas, fHypot, this.cardBackdropFromPaint);
        }
        if (this.cardBackdrop != null) {
            this.cardBackdropPaint.setAlpha(Math.round(255.0f * f));
            drawBackdrop(canvas, fHypot, this.cardBackdropPaint);
        }
        if (f >= 1.0f) {
            iBlendARGB = getNameColor(this.cardBackdrop);
        } else {
            iBlendARGB = ColorUtils.blendARGB(getNameColor(this.cardBackdropFrom), getNameColor(this.cardBackdrop), f);
        }
        this.textColor = iBlendARGB;
        canvas.restore();
        int iDp = AndroidUtilities.dp(42.0f);
        float f2 = iDp / 2.0f;
        int iRound = Math.round(this.cardRect.centerX() - f2);
        float fMax = Math.max(0.0f, Math.min(1.0f, (this.diamondScale - 1.0f) / 2.0f));
        float fDp4 = this.cardRect.top + AndroidUtilities.dp(8.0f);
        int iRound2 = Math.round(fDp4 + (((this.cardRect.centerY() - f2) - fDp4) * fMax));
        int i3 = iRound + iDp;
        int i4 = iDp + iRound2;
        this.gramDrawable.setBounds(iRound, iRound2, i3, i4);
        boolean zQuickReject = canvas.quickReject(iRound, iRound2, i3, i4, edgeType);
        this.diamondBounds.set(this.gramDrawable.getBounds());
        if (this.sentParticles.isActive()) {
            canvas.save();
            canvas.clipPath(this.cardClip);
            canvas.translate(this.diamondBounds.exactCenterX(), this.diamondBounds.exactCenterY());
            this.sentParticles.draw(canvas);
            canvas.restore();
            this.parentView.postInvalidateOnAnimation();
        }
        updateDiamondPose();
        if (this.diamondSurface != null) {
            float width = (getWidth() / 2.0f) + ((this.diamondBounds.exactCenterX() - (getWidth() / 2.0f)) * cardScaleX);
            float fDp5 = cardOffsetY + AndroidUtilities.dp(70.0f) + ((this.diamondBounds.exactCenterY() - AndroidUtilities.dp(70.0f)) * cardScaleY);
            this.diamondSurface.setTranslationX((this.surfaceOriginX + width) - f2);
            this.diamondSurface.setTranslationY((this.surfaceOriginY + fDp5) - f2);
            this.diamondSurface.setScaleX(cardScaleX * this.diamondScale);
            this.diamondSurface.setScaleY(cardScaleY * this.diamondScale);
        }
        boolean z2 = (zQuickReject || (walletDiamondTextureView = this.diamondSurface) == null || !walletDiamondTextureView.isReady()) ? false : true;
        if (z2) {
            this.gramDrawable.stop();
            i = 0;
            this.gramAnimationStarted = false;
        } else {
            i = 0;
            if (!this.gramAnimationStarted && !zQuickReject) {
                this.gramAnimationStarted = true;
                this.gramDrawable.setProgress(0.0f);
                this.gramDrawable.start();
            }
        }
        if (!z2 && !this.diamondHeldForFlight) {
            this.gramDrawable.draw(canvas);
        }
        Text text = this.amountText;
        if (text != null) {
            float width2 = text.getWidth();
            float fWidth = this.cardRect.width() - AndroidUtilities.dp(16.0f);
            float f3 = width2 > fWidth ? fWidth / width2 : 1.0f;
            float fDp6 = this.cardRect.top + AndroidUtilities.dp(55.0f) + (this.amountText.getHeight() / 2.0f);
            canvas.save();
            canvas.scale(f3, f3, this.cardRect.centerX(), fDp6);
            this.amountText.draw(canvas, this.cardRect.centerX() - (width2 / 2.0f), fDp6, -1, 1.0f);
            canvas.restore();
        }
        if (this.addressText != null) {
            float width3 = (getWidth() - this.addressText.getWidth()) / 2.0f;
            float fDp7 = (this.cardRect.bottom - AndroidUtilities.dp(7.0f)) - this.addressText.getHeight();
            Text text2 = this.peerLinkText;
            if (text2 != null) {
                text2.draw(canvas, (getWidth() - this.peerLinkText.getWidth()) / 2.0f, (fDp7 - AndroidUtilities.dp(4.0f)) - (this.peerLinkText.getHeight() / 2.0f), this.textColor, 1.0f);
            }
            this.addressText.draw(canvas, width3, fDp7 + AndroidUtilities.dp(1.0f), 268435455, 1.0f);
            if (f >= 1.0f) {
                iBlendARGB2 = getCardNumberColor(this.cardBackdrop);
            } else {
                iBlendARGB2 = ColorUtils.blendARGB(getCardNumberColor(this.cardBackdropFrom), getCardNumberColor(this.cardBackdrop), f);
            }
            canvas2 = canvas;
            this.addressText.draw(canvas2, width3, fDp7, iBlendARGB2, 1.0f);
        } else {
            canvas2 = canvas;
        }
        LoadingDrawable loadingDrawable = this.loadingDrawable;
        if (loadingDrawable == null || loadingDrawable.isDisappeared()) {
            i2 = 1;
        } else {
            if (this.highlightShimmerStarted == 0 || this.wasSending || this.highlightShimmerDisappearing || SystemClock.elapsedRealtime() - this.highlightShimmerStarted < 600) {
                i2 = 1;
            } else {
                this.loadingDrawable.disappear();
                i2 = 1;
                this.highlightShimmerDisappearing = true;
            }
            float strokeWidth = this.loadingDrawable.strokePaint.getStrokeWidth() / 2.0f;
            this.loadingRect.set(this.cardRect);
            this.loadingRect.inset(strokeWidth, strokeWidth);
            float fMax2 = Math.max(0.0f, AndroidUtilities.dp(16.0f) - strokeWidth);
            this.loadingPath.rewind();
            this.loadingPath.addRoundRect(this.loadingRect, fMax2, fMax2, direction);
            this.loadingDrawable.setBounds(this.cardRect);
            this.loadingDrawable.draw(canvas2);
            if (this.highlightShimmerStarted != 0 && this.loadingDrawable.isDisappeared()) {
                this.highlightShimmerStarted = 0L;
            }
        }
        ValueAnimator valueAnimator = this.receiveAnimator;
        int i5 = (valueAnimator == null || valueAnimator.getCurrentPlayTime() >= 1000) ? i : i2;
        float f4 = this.ribbonRevealAnimation.set((this.wasSending || this.waitingForReceive || i5 != 0) ? 0.0f : 1.0f);
        if (!this.wasSending && !this.waitingForReceive && i5 == 0) {
            drawRibbon(canvas2, f4);
        }
        float f5 = this.sendingClockReveal.set(this.diamondHeldForFlight ? 0.0f : 1.0f);
        if (this.out && !this.diamondHeldForFlight && f4 < 1.0f && f5 > 0.0f) {
            drawSendingClock(canvas2, (1.0f - f4) * f5);
        }
        Text text3 = this.commentText;
        if (text3 != null) {
            TLRPC.TL_messageActionGramTransfer tL_messageActionGramTransfer = this.action;
            if ((tL_messageActionGramTransfer.comment_encrypted || tL_messageActionGramTransfer.comment_encrypted_preparing) && !this.preparingCommentRevealed) {
                canvas2.save();
                canvas2.translate((getWidth() - this.commentText.getWidth()) / 2.0f, AndroidUtilities.dp(143.0f));
                int color = Theme.getColor(Theme.key_chat_serviceText, this.resourcesProvider);
                ArrayList<SpoilerEffect> arrayList = this.commentSpoilers;
                int size = arrayList.size();
                int i6 = i;
                while (i6 < size) {
                    SpoilerEffect spoilerEffect = arrayList.get(i6);
                    i6++;
                    SpoilerEffect spoilerEffect2 = spoilerEffect;
                    spoilerEffect2.setColor(color);
                    spoilerEffect2.draw(canvas2);
                }
                canvas2.restore();
            } else {
                text3.draw(canvas2, (getWidth() - this.commentText.getWidth()) / 2.0f, AndroidUtilities.dp(143.0f), Theme.getColor(Theme.key_chat_serviceText, this.resourcesProvider), 1.0f);
            }
        }
        canvas.restore();
    }

    public boolean playReceiveAnimation(Runnable runnable) {
        if (!this.waitingForReceive || this.receiveAnimator != null) {
            return false;
        }
        this.waitingForReceive = false;
        this.onReceiveAnimationEnd = runnable;
        forceRibbonReveal(0.0f);
        animateSentBounce();
        getDiamondRestingYaw();
        this.sentSpinMomentum = 18.0f;
        this.sentParticles.sent(0.0f, 0.0f);
        this.gramDrawable.setProgress(0.0f);
        this.gramDrawable.start();
        this.gramAnimationStarted = true;
        final float f = this.sendingGradientRotation;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.receiveAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(2400L);
        this.receiveAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.receiveAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Wallet.WalletActionLayout$$ExternalSyntheticLambda5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$playReceiveAnimation$1(f, valueAnimator);
            }
        });
        this.receiveAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Wallet.WalletActionLayout.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                WalletActionLayout.this.finishReceiveAnimation();
            }
        });
        this.receiveAnimator.start();
        this.parentView.invalidate();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playReceiveAnimation$1(float f, ValueAnimator valueAnimator) {
        this.sendingGradientRotation = (f + (((Float) valueAnimator.getAnimatedValue()).floatValue() * 240.0f)) % 360.0f;
        this.parentView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishReceiveAnimation() {
        ValueAnimator valueAnimator = this.receiveAnimator;
        if (valueAnimator == null) {
            return;
        }
        this.receiveAnimator = null;
        valueAnimator.removeAllListeners();
        valueAnimator.cancel();
        if (this.ribbonRevealAnimation.isInProgress()) {
            resetRibbonHighlight();
        }
        this.ribbonRevealAnimation.force(1.0f);
        this.sentSpinMomentum = 0.0f;
        this.sentParticles.clear();
        Runnable runnable = this.onReceiveAnimationEnd;
        this.onReceiveAnimationEnd = null;
        this.parentView.invalidate();
        if (runnable != null) {
            AndroidUtilities.runOnUIThread(runnable, 1L);
        }
    }

    public void playLanding(float f) {
        resetLanding();
        SpringAnimation springAnimation = new SpringAnimation(new FloatValueHolder(0.0f));
        this.landingSpring = springAnimation;
        springAnimation.setSpring(new SpringForce(0.0f).setDampingRatio(0.65f).setStiffness(200.0f));
        this.landingSpring.setMinimumVisibleChange(0.001f);
        this.landingSpring.setStartVelocity(Math.max(20.0f, Math.min(36.0f, f * 0.04f)));
        this.landingSpring.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Wallet.WalletActionLayout$$ExternalSyntheticLambda4
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f2, float f3) {
                this.f$0.lambda$playLanding$2(dynamicAnimation, f2, f3);
            }
        });
        this.landingSpring.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playLanding$2(DynamicAnimation dynamicAnimation, float f, float f2) {
        this.landingPress = f;
        invalidateCard();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetLanding() {
        SpringAnimation springAnimation = this.landingSpring;
        if (springAnimation != null) {
            springAnimation.cancel();
            this.landingSpring = null;
        }
        this.landingPress = 0.0f;
        invalidateCard();
    }

    private void animateSentBounce() {
        if (this.parentView.isShown()) {
            AndroidUtilities.vibrateCursor(this.parentView);
        }
        SpringAnimation springAnimation = this.sentSpring;
        if (springAnimation != null) {
            springAnimation.cancel();
        }
        SpringAnimation springAnimation2 = new SpringAnimation(new FloatValueHolder(this.sentScale));
        this.sentSpring = springAnimation2;
        springAnimation2.setSpring(new SpringForce(1.0f).setDampingRatio(0.55f).setStiffness(280.0f));
        this.sentSpring.setMinimumVisibleChange(0.001f);
        this.sentSpring.setStartVelocity(-3.0f);
        this.sentSpring.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Wallet.WalletActionLayout$$ExternalSyntheticLambda7
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                this.f$0.lambda$animateSentBounce$3(dynamicAnimation, f, f2);
            }
        });
        this.sentSpring.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateSentBounce$3(DynamicAnimation dynamicAnimation, float f, float f2) {
        this.sentScale = f;
        invalidateCard();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetSentBounce() {
        SpringAnimation springAnimation = this.sentSpring;
        if (springAnimation != null) {
            springAnimation.cancel();
            this.sentSpring = null;
        }
        this.sentScale = 1.0f;
        invalidateCard();
    }

    public void animateHighlight() {
        LoadingDrawable loadingDrawable;
        if (this.wasSending) {
            return;
        }
        if (this.highlightShimmerStarted == 0 || (loadingDrawable = this.loadingDrawable) == null || loadingDrawable.isDisappeared()) {
            ensureLoadingDrawable();
            this.loadingDrawable.setSingleCycleDuration(600L);
            this.loadingDrawable.reset();
            this.loadingDrawable.resetDisappear();
            this.highlightShimmerStarted = SystemClock.elapsedRealtime();
            this.highlightShimmerDisappearing = false;
            this.parentView.invalidate();
        }
    }

    private void ensureLoadingDrawable() {
        if (this.loadingDrawable != null) {
            return;
        }
        LoadingDrawable loadingDrawable = new LoadingDrawable(this.resourcesProvider) { // from class: org.telegram.ui.Wallet.WalletActionLayout.5
            private final Paint numberGradientPaint;

            {
                Paint paint = new Paint(1);
                this.numberGradientPaint = paint;
                paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            }

            @Override // org.telegram.ui.Components.LoadingDrawable
            public void drawContent(Canvas canvas, Path path) {
                super.drawContent(canvas, path);
                if (WalletActionLayout.this.addressText != null) {
                    canvas.saveLayer(WalletActionLayout.this.cardRect, null);
                    WalletActionLayout.this.addressText.draw(canvas, (WalletActionLayout.this.getWidth() - WalletActionLayout.this.addressText.getWidth()) / 2.0f, (WalletActionLayout.this.cardRect.bottom - AndroidUtilities.dp(7.0f)) - WalletActionLayout.this.addressText.getHeight(), -1, 1.0f);
                    this.numberGradientPaint.setShader(this.strokePaint.getShader());
                    canvas.drawRect(WalletActionLayout.this.cardRect, this.numberGradientPaint);
                    canvas.restore();
                }
            }

            @Override // android.graphics.drawable.Drawable
            public void invalidateSelf() {
                super.invalidateSelf();
                WalletActionLayout.this.parentView.invalidate();
            }
        };
        this.loadingDrawable = loadingDrawable;
        loadingDrawable.setColors(4969977, Theme.multAlpha(-11807239, 0.125f), 4969977, Theme.multAlpha(-11807239, 0.75f));
        this.loadingDrawable.strokePaint.setStrokeWidth(AndroidUtilities.dpf2(2.0f));
        this.loadingDrawable.setGradientScale(2.0f);
        this.loadingDrawable.usePath(this.loadingPath);
        this.loadingDrawable.setAppearByGradient(true);
    }

    private float getDiamondRestingYaw() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (this.spinUpdated != 0) {
            float fMin = Math.min(0.1f, (jUptimeMillis - r2) / 1000.0f);
            float f = this.wasSending ? 1.7883515f : 0.0f;
            float f2 = -fMin;
            float fExp = (float) Math.exp(f2 / 0.2f);
            float f3 = this.spinOffset + (fMin * f);
            float f4 = this.spinSpeed;
            this.spinOffset = (f3 + (((f4 - f) * 0.2f) * (1.0f - fExp))) % 6.2831855f;
            this.spinSpeed = f + ((f4 - f) * fExp);
            float fExp2 = (float) Math.exp(f2 / 0.75f);
            float f5 = this.spinOffset;
            float f6 = this.sentSpinMomentum;
            this.spinOffset = (f5 + ((0.75f * f6) * (1.0f - fExp2))) % 6.2831855f;
            float f7 = f6 * fExp2;
            this.sentSpinMomentum = f7;
            if (f7 < 0.001f) {
                this.sentSpinMomentum = 0.0f;
            }
        }
        this.spinUpdated = jUptimeMillis;
        return ((float) (((jUptimeMillis / 1000.0d) * 0.5961171984672546d) % 6.283185307179586d)) + this.spinOffset + (this.cardMotion.f1257x * 0.14f);
    }

    private float getDiamondRestingPitch() {
        return this.cardMotion.f1258y * 0.14f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDiamondPose() {
        if (this.diamondSurface == null) {
            return;
        }
        if (!isDiamondDragging() && !this.diamondReturning) {
            this.diamondYaw = getDiamondRestingYaw();
            this.diamondPitch = getDiamondRestingPitch();
        }
        boolean z = true;
        boolean z2 = isDiamondDragging() || this.diamondReturning || this.diamondScale > 1.001f;
        WalletDiamondTextureView walletDiamondTextureView = this.diamondSurface;
        float f = this.diamondYaw;
        float f2 = this.diamondPitch;
        if (!z2 && !this.wasSending && this.spinOffset == 0.0f && this.spinSpeed == 0.0f && this.sentSpinMomentum == 0.0f) {
            z = false;
        }
        walletDiamondTextureView.setPose(f, f2, z, z2);
    }

    public void setSurfaceOrigin(float f, float f2) {
        this.surfaceOriginX = f;
        this.surfaceOriginY = f2;
    }

    public void holdDiamondForFlight(boolean z) {
        if (z) {
            this.sendingClockReveal.force(0.0f);
        } else if (this.diamondHeldForFlight && this.wasSending) {
            this.sendingClockStarted = SystemClock.elapsedRealtime();
        }
        this.diamondHeldForFlight = z;
        WalletDiamondTextureView walletDiamondTextureView = this.diamondSurface;
        if (walletDiamondTextureView != null) {
            walletDiamondTextureView.setAlpha(z ? 0.0f : 1.0f);
        }
        this.parentView.invalidate();
    }

    public float getFlightYaw() {
        return getDiamondRestingYaw();
    }

    public float getFlightPitch() {
        return getDiamondRestingPitch();
    }

    public View getDiamondSurface() {
        return this.diamondSurface;
    }

    public void setSurfaceEnabled(boolean z) {
        ActivityManager activityManager;
        this.surfaceEnabled = z;
        if (z && this.diamondSurface == null && !this.surfaceFailed && (this.parentView instanceof ViewGroup) && SharedConfig.getDevicePerformanceClass() != 0 && (activityManager = (ActivityManager) this.parentView.getContext().getSystemService("activity")) != null && activityManager.getDeviceConfigurationInfo().reqGlEsVersion >= 196608) {
            WalletDiamondTextureView walletDiamondTextureView = new WalletDiamondTextureView(this.parentView.getContext(), new Runnable() { // from class: org.telegram.ui.Wallet.WalletActionLayout$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.updateDiamondPose();
                }
            }) { // from class: org.telegram.ui.Wallet.WalletActionLayout.6
                @Override // org.telegram.ui.Components.Premium.GLIcon.WalletDiamondTextureView
                public void onRenderError() {
                    WalletActionLayout.this.surfaceFailed = true;
                    setPaused(true);
                    setVisibility(8);
                    WalletActionLayout.this.parentView.invalidate();
                }
            };
            this.diamondSurface = walletDiamondTextureView;
            ((ViewGroup) this.parentView).addView(walletDiamondTextureView, new ViewGroup.LayoutParams(AndroidUtilities.dp(42.0f), AndroidUtilities.dp(42.0f)));
        }
        WalletDiamondTextureView walletDiamondTextureView2 = this.diamondSurface;
        if (walletDiamondTextureView2 != null) {
            walletDiamondTextureView2.setVisibility((!z || this.surfaceFailed) ? 8 : 0);
            this.diamondSurface.setPaused(!z || this.surfaceFailed);
        }
        if (z) {
            return;
        }
        finishReceiveAnimation();
        resetDiamond();
    }

    private void updateSendingGradient() {
        if (!this.wasSending || this.sendingGradientUpdated == 0) {
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.sendingGradientRotation = (this.sendingGradientRotation + (((jElapsedRealtime - this.sendingGradientUpdated) * 360.0f) / 4000.0f)) % 360.0f;
        this.sendingGradientUpdated = jElapsedRealtime;
    }

    private void drawSendingClock(Canvas canvas, float f) {
        this.sendingClockPaint.setAlpha(Math.round(f * 255.0f));
        float fDpf2 = this.cardRect.right - AndroidUtilities.dpf2(15.5f);
        float fDpf22 = this.cardRect.top + AndroidUtilities.dpf2(15.5f);
        canvas.drawCircle(fDpf2, fDpf22, AndroidUtilities.dpf2(5.0f), this.sendingClockPaint);
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.sendingClockStarted;
        float f2 = ((jElapsedRealtime % 2000) / 2000.0f) * 360.0f;
        canvas.save();
        canvas.rotate(f2, fDpf2, fDpf22);
        canvas.drawLine(fDpf2, fDpf22, fDpf2, fDpf22 - AndroidUtilities.dpf2(4.0f), this.sendingClockPaint);
        canvas.rotate((((jElapsedRealtime % 24000) / 24000.0f) * 360.0f) - f2, fDpf2, fDpf22);
        canvas.drawLine(fDpf2, fDpf22, fDpf2 + AndroidUtilities.dpf2(2.5f), fDpf22, this.sendingClockPaint);
        canvas.restore();
        this.parentView.postInvalidateOnAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetRibbonHighlight() {
        this.ribbonHighlightPending = false;
        this.ribbonHighlightStarted = 0L;
    }

    private void forceRibbonReveal(float f) {
        this.ribbonRevealAnimation.force(f);
        resetRibbonHighlight();
    }

    private void drawRibbonHighlight(Canvas canvas, float f) {
        if (f < 1.0f || this.ribbonRevealAnimation.isInProgress()) {
            this.ribbonHighlightPending = true;
            this.ribbonHighlightStarted = 0L;
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.ribbonHighlightPending) {
            this.ribbonHighlightPending = false;
            this.ribbonHighlightStarted = jElapsedRealtime + 500;
            this.parentView.postInvalidateDelayed(500L);
        }
        long j = this.ribbonHighlightStarted;
        if (j == 0 || jElapsedRealtime < j) {
            return;
        }
        float f2 = (jElapsedRealtime - j) / 600.0f;
        if (f2 >= 1.0f) {
            this.ribbonHighlightStarted = 0L;
            return;
        }
        Rect bounds = this.ribbon.getBounds();
        canvas.save();
        canvas.translate(bounds.right - AndroidUtilities.dp(48.0f), bounds.top);
        canvas.clipPath(this.ribbonInnerStrokePath);
        canvas.rotate(45.0f);
        float fDp = AndroidUtilities.dp(10.0f);
        float f3 = -fDp;
        canvas.translate((((AndroidUtilities.dp(48.0f) * ((float) Math.sqrt(2.0d))) + (2.0f * fDp)) * f2) + f3, 0.0f);
        canvas.drawRect(f3, -AndroidUtilities.dp(48.0f), fDp, AndroidUtilities.dp(48.0f), this.ribbonHighlightPaint);
        canvas.restore();
        this.parentView.postInvalidateOnAnimation();
    }

    private void drawRibbon(Canvas canvas, float f) {
        int iBlendARGB;
        float f2 = this.ribbonColorAnimation.set(1.0f);
        if (f2 >= 1.0f) {
            iBlendARGB = this.ribbonColorTo;
        } else {
            iBlendARGB = ColorUtils.blendARGB(this.ribbonColorFrom, this.ribbonColorTo, f2);
        }
        this.ribbonColorCurrent = iBlendARGB;
        this.ribbon.setColor(iBlendARGB);
        this.ribbon.setBounds(((int) this.cardRect.right) - AndroidUtilities.dp(46.0f), ((int) this.cardRect.top) - AndroidUtilities.dp(2.0f), ((int) this.cardRect.right) + AndroidUtilities.dp(2.0f), ((int) this.cardRect.top) + AndroidUtilities.dp(46.0f));
        canvas.save();
        if (f < 1.0f) {
            float fExactCenterX = this.ribbon.getBounds().exactCenterX();
            float fExactCenterY = this.ribbon.getBounds().exactCenterY();
            float fDp = AndroidUtilities.dp(48.0f) * ((float) Math.sqrt(0.5d)) * f;
            canvas.rotate(45.0f, fExactCenterX, fExactCenterY);
            canvas.clipRect(fExactCenterX - fDp, fExactCenterY - AndroidUtilities.dp(48.0f), fDp + fExactCenterX, AndroidUtilities.dp(48.0f) + fExactCenterY);
            canvas.rotate(-45.0f, fExactCenterX, fExactCenterY);
        }
        this.ribbon.draw(canvas);
        if (this.ribbonColorTo != -15352320) {
            f2 = this.ribbonColorFrom == -15352320 ? 1.0f - f2 : 0.0f;
        }
        if (f2 > 0.0f) {
            Rect bounds = this.ribbon.getBounds();
            canvas.save();
            canvas.translate(bounds.right - AndroidUtilities.dp(48.0f), bounds.top);
            canvas.clipPath(this.ribbonInnerStrokePath);
            this.ribbonInnerStrokePaint.setAlpha((int) (f2 * 255.0f));
            canvas.drawPath(this.ribbonInnerStrokePath, this.ribbonInnerStrokePaint);
            canvas.restore();
        }
        drawRibbonHighlight(canvas, f);
        canvas.restore();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0084  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(float f, float f2, MotionEvent motionEvent) {
        boolean z;
        Runnable runnable;
        float x = motionEvent.getX() - f;
        float y = motionEvent.getY() - f2;
        if (onDiamondTouch(f, f2, motionEvent)) {
            return true;
        }
        float fDp = AndroidUtilities.dp(4.0f);
        boolean z2 = x >= fDp && x <= ((float) getWidth()) - fDp && y >= fDp && y <= ((float) AndroidUtilities.dp(140.0f)) - fDp;
        if (this.commentText != null) {
            TLRPC.TL_messageActionGramTransfer tL_messageActionGramTransfer = this.action;
            if ((tL_messageActionGramTransfer.comment_encrypted || tL_messageActionGramTransfer.comment_encrypted_preparing) && !this.preparingCommentRevealed) {
                float width = x - ((getWidth() - this.commentText.getWidth()) / 2.0f);
                float fDp2 = y - AndroidUtilities.dp(143.0f);
                ArrayList<SpoilerEffect> arrayList = this.commentSpoilers;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    SpoilerEffect spoilerEffect = arrayList.get(i);
                    i++;
                    if (spoilerEffect.getBounds().contains((int) width, (int) fDp2)) {
                        z = true;
                        break;
                    }
                }
                z = false;
            } else {
                z = false;
            }
        }
        boolean z3 = z2 || z;
        if (motionEvent.getAction() == 0) {
            this.touchCaptured = z3;
            this.bounce.setPressed(z3);
        } else if (motionEvent.getAction() == 2) {
            if (this.touchCaptured) {
                this.bounce.setPressed(z3);
            }
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            boolean z4 = this.touchCaptured;
            boolean z5 = motionEvent.getAction() == 1 && z4 && z3;
            this.touchCaptured = false;
            this.bounce.setPressed(false);
            if (z5 && z) {
                TLRPC.TL_messageActionGramTransfer tL_messageActionGramTransfer2 = this.action;
                if (tL_messageActionGramTransfer2.comment_encrypted_preparing) {
                    this.preparingCommentRevealed = true;
                    Text text = this.commentText;
                    text.setText(Emoji.replaceEmoji(tL_messageActionGramTransfer2.comment, text.paint.getFontMetricsInt(), false));
                    this.commentSpoilersPool.addAll(this.commentSpoilers);
                    this.commentSpoilers.clear();
                    this.parentView.requestLayout();
                    this.parentView.invalidate();
                    return z4;
                }
            }
            if (z5 && (runnable = this.onClick) != null) {
                runnable.run();
            }
            return z4;
        }
        return this.touchCaptured;
    }

    public void setOnClickListener(Runnable runnable) {
        this.onClick = runnable;
    }

    public boolean isDiamondDragging() {
        return this.diamondPointer != -1;
    }

    public boolean isDiamondTouch(float f, float f2) {
        WalletDiamondTextureView walletDiamondTextureView = this.diamondSurface;
        return walletDiamondTextureView != null && walletDiamondTextureView.isReady() && this.diamondBounds.contains((int) f, (int) f2);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00f0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean onDiamondTouch(float f, float f2, MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            if (!isDiamondTouch(motionEvent.getX() - f, motionEvent.getY() - f2)) {
                return false;
            }
            if (!this.diamondReturning && this.diamondScale <= 1.001f) {
                this.diamondYaw = getDiamondRestingYaw();
                this.diamondPitch = getDiamondRestingPitch();
            }
            ValueAnimator valueAnimator = this.diamondReturn;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.diamondReturn = null;
            }
            this.diamondReturning = false;
            this.diamondPointer = motionEvent.getPointerId(0);
            this.diamondX = motionEvent.getX();
            this.diamondY = motionEvent.getY();
            this.touchCaptured = false;
            this.bounce.setPressed(false);
            if (this.parentView.getParent() != null) {
                this.parentView.getParent().requestDisallowInterceptTouchEvent(true);
            }
            animateDiamondScale(3.0f);
            return true;
        }
        if (!isDiamondDragging()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1) {
            releaseDiamond();
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.diamondPointer);
            if (iFindPointerIndex < 0) {
                releaseDiamond();
                return true;
            }
            float radians = ((float) Math.toRadians(0.800000011920929d)) / AndroidUtilities.density;
            this.diamondYaw += (motionEvent.getX(iFindPointerIndex) - this.diamondX) * radians;
            this.diamondPitch += (motionEvent.getY(iFindPointerIndex) - this.diamondY) * radians;
            this.diamondX = motionEvent.getX(iFindPointerIndex);
            this.diamondY = motionEvent.getY(iFindPointerIndex);
            this.parentView.invalidate();
        } else if (actionMasked != 3) {
            if (actionMasked == 6 && motionEvent.getPointerId(motionEvent.getActionIndex()) == this.diamondPointer) {
                int i = motionEvent.getActionIndex() == 0 ? 1 : 0;
                this.diamondPointer = motionEvent.getPointerId(i);
                this.diamondX = motionEvent.getX(i);
                this.diamondY = motionEvent.getY(i);
            }
        }
        return true;
    }

    private void animateDiamondScale(float f) {
        if (this.diamondSpring == null) {
            SpringAnimation springAnimation = new SpringAnimation(new FloatValueHolder(this.diamondScale));
            this.diamondSpring = springAnimation;
            springAnimation.setSpring(new SpringForce(f).setDampingRatio(0.55f).setStiffness(280.0f));
            this.diamondSpring.setMinimumVisibleChange(0.001f);
            this.diamondSpring.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Wallet.WalletActionLayout$$ExternalSyntheticLambda0
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f2, float f3) {
                    this.f$0.lambda$animateDiamondScale$4(dynamicAnimation, f2, f3);
                }
            });
        }
        this.diamondSpring.animateToFinalPosition(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateDiamondScale$4(DynamicAnimation dynamicAnimation, float f, float f2) {
        this.diamondScale = f;
        this.parentView.invalidate();
    }

    private void releaseDiamond() {
        this.diamondPointer = -1;
        if (this.parentView.getParent() != null) {
            this.parentView.getParent().requestDisallowInterceptTouchEvent(false);
        }
        final float fIEEEremainder = (float) Math.IEEEremainder(this.diamondYaw - getDiamondRestingYaw(), 6.283185307179586d);
        final float fIEEEremainder2 = (float) Math.IEEEremainder(this.diamondPitch - getDiamondRestingPitch(), 6.283185307179586d);
        this.diamondReturning = true;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.diamondReturn = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(350L);
        this.diamondReturn.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.diamondReturn.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Wallet.WalletActionLayout$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$releaseDiamond$5(fIEEEremainder, fIEEEremainder2, valueAnimator);
            }
        });
        this.diamondReturn.start();
        animateDiamondScale(1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$releaseDiamond$5(float f, float f2, ValueAnimator valueAnimator) {
        float fFloatValue = 1.0f - ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.diamondYaw = getDiamondRestingYaw() + (f * fFloatValue);
        this.diamondPitch = getDiamondRestingPitch() + (f2 * fFloatValue);
        this.diamondReturning = fFloatValue > 0.0f;
        this.parentView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetDiamond() {
        holdDiamondForFlight(false);
        this.sendingClockReveal.force(1.0f);
        if (isDiamondDragging() && this.parentView.getParent() != null) {
            this.parentView.getParent().requestDisallowInterceptTouchEvent(false);
        }
        this.diamondPointer = -1;
        ValueAnimator valueAnimator = this.diamondReturn;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.diamondReturn = null;
        }
        SpringAnimation springAnimation = this.diamondSpring;
        if (springAnimation != null) {
            springAnimation.cancel();
            this.diamondSpring = null;
        }
        this.diamondReturning = false;
        this.diamondScale = 1.0f;
        this.diamondPitch = 0.0f;
        this.spinUpdated = 0L;
        this.sentSpinMomentum = 0.0f;
        this.spinSpeed = 0.0f;
        this.spinOffset = 0.0f;
        this.sentParticles.clear();
        WalletDiamondTextureView walletDiamondTextureView = this.diamondSurface;
        if (walletDiamondTextureView != null) {
            walletDiamondTextureView.setScaleX(1.0f);
            this.diamondSurface.setScaleY(1.0f);
        }
    }

    public void setSpoilersSuppressed(boolean z) {
        this.spoilersSuppressed = z;
        ArrayList<SpoilerEffect> arrayList = this.commentSpoilers;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            SpoilerEffect spoilerEffect = arrayList.get(i);
            i++;
            spoilerEffect.setSuppressUpdates(z);
        }
    }
}
