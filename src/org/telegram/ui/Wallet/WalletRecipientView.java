package org.telegram.ui.Wallet;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import java.util.Arrays;
import java.util.Random;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.UserObject;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.CombinedDrawable;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.ScaleStateListAnimator;

/* JADX INFO: loaded from: classes8.dex */
public class WalletRecipientView extends FrameLayout {
    private String address;
    private final AddressView addressInfoAddress;
    private final AvatarDrawable addressInfoAvatarDrawable;
    private final ImageView addressInfoIcon;
    private final BackupImageView addressInfoImage;
    private final TextView addressInfoName;
    private final FrameLayout content;
    private TLRPC.User recipientUser;
    private final Theme.ResourcesProvider resourcesProvider;

    public WalletRecipientView(Context context, final Theme.ResourcesProvider resourcesProvider, final Runnable runnable, final Runnable runnable2) {
        super(context);
        this.addressInfoAvatarDrawable = new AvatarDrawable();
        this.resourcesProvider = resourcesProvider;
        FrameLayout frameLayout = new FrameLayout(context);
        this.content = frameLayout;
        frameLayout.setDuplicateParentStateEnabled(true);
        frameLayout.setPivotX(0.0f);
        frameLayout.setPivotY(0.0f);
        addView(frameLayout, LayoutHelper.createFrame(-1, -1.0f));
        int i = Theme.key_windowBackgroundGray;
        frameLayout.setBackground(Theme.createRadSelectorDrawable(getThemedColor(i), Theme.blendOver(getThemedColor(i), getThemedColor(Theme.key_listSelector)), AndroidUtilities.dp(32.0f), AndroidUtilities.dp(32.0f)));
        ScaleStateListAnimator.apply(this, 0.02f, 1.2f);
        BackupImageView backupImageView = new BackupImageView(context);
        this.addressInfoImage = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.dp(18.0f));
        frameLayout.addView(backupImageView, LayoutHelper.createFrame(34, 34.0f, 19, 15.0f, 0.0f, 0.0f, 0.0f));
        TextView textView = new TextView(context);
        this.addressInfoName = textView;
        textView.setTextSize(1, 14.0f);
        textView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        textView.setSingleLine();
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTypeface(AndroidUtilities.bold());
        frameLayout.addView(textView, LayoutHelper.createFrame(-1, -2.0f, 51, 60.0f, 7.0f, 52.0f, 0.0f));
        AddressView addressView = new AddressView(context);
        this.addressInfoAddress = addressView;
        frameLayout.addView(addressView, LayoutHelper.createFrame(-1, -2.0f, 51, 60.0f, 26.0f, 52.0f, 0.0f));
        ImageView imageView = new ImageView(context);
        this.addressInfoIcon = imageView;
        imageView.setImageResource(C2807R.drawable.msg2_help);
        imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_windowBackgroundWhiteGrayText6), PorterDuff.Mode.SRC_IN));
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setScaleX(0.9f);
        imageView.setScaleY(0.9f);
        frameLayout.addView(imageView, LayoutHelper.createFrame(24, 24.0f, 21, 0.0f, 0.0f, 14.0f, 0.0f));
        setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletRecipientView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$2(runnable, resourcesProvider, runnable2, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(final Runnable runnable, Theme.ResourcesProvider resourcesProvider, final Runnable runnable2, View view) {
        if (TextUtils.isEmpty(this.address) || this.recipientUser == null) {
            return;
        }
        final AlertDialog[] alertDialogArr = new AlertDialog[1];
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setPadding(AndroidUtilities.dp(18.0f), 0, AndroidUtilities.dp(18.0f), 0);
        TLRPC.User user = this.recipientUser;
        if (user != null) {
            String forcedFirstName = UserObject.getForcedFirstName(user);
            LinearLayout linearLayout2 = new LinearLayout(getContext());
            linearLayout2.setOrientation(0);
            linearLayout2.setPadding(AndroidUtilities.dp(4.0f), 0, AndroidUtilities.dp(4.0f), 0);
            BackupImageView backupImageView = new BackupImageView(getContext());
            backupImageView.setRoundRadius(AndroidUtilities.dp(15.0f));
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            avatarDrawable.setInfo(this.recipientUser);
            backupImageView.setForUserOrChat(this.recipientUser, avatarDrawable);
            linearLayout2.addView(backupImageView, LayoutHelper.createLinear(30, 30, 16));
            TextView textView = new TextView(getContext());
            int i = Theme.key_windowBackgroundWhiteBlackText;
            textView.setTextColor(getThemedColor(i));
            textView.setTextSize(1, 20.0f);
            textView.setText(LocaleController.formatString(C2807R.string.WalletUserWallet, forcedFirstName));
            textView.setTypeface(AndroidUtilities.bold());
            textView.setPadding(AndroidUtilities.dp(4.0f), 0, AndroidUtilities.dp(4.0f), 0);
            linearLayout2.addView(textView, LayoutHelper.createLinear(-1, -2, 16, 9, 0, 0, 0));
            linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 55));
            LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(getContext());
            linksTextView.setTextColor(getThemedColor(i));
            linksTextView.setLinkTextColor(getThemedColor(Theme.key_chat_messageLinkIn));
            linksTextView.setTextSize(1, 16.0f);
            linksTextView.setPadding(AndroidUtilities.dp(4.0f), 0, AndroidUtilities.dp(4.0f), 0);
            linksTextView.setText(AndroidUtilities.replaceSingleTag(LocaleController.formatString(C2807R.string.WalletAddressLinkedToUser, UserObject.getUserName(this.recipientUser)), new Runnable() { // from class: org.telegram.ui.Wallet.WalletRecipientView$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    WalletRecipientView.m23490$r8$lambda$rLqXJALNiUbf1TKxPOQiYS6AD8(alertDialogArr, runnable);
                }
            }));
            linearLayout.addView(linksTextView, LayoutHelper.createLinear(-1, -2, 55, 0, 14, 0, 0));
        }
        FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.setPadding(AndroidUtilities.dp(4.0f), 0, AndroidUtilities.dp(4.0f), 0);
        TextView textView2 = new TextView(getContext());
        textView2.setTextSize(1, 14.0f);
        textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        textView2.setText(WalletImportFragment.formatAddressTwoLines(this.address));
        textView2.setPadding(AndroidUtilities.dp(10.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(12.0f));
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MONO));
        int i2 = Theme.key_windowBackgroundGray;
        textView2.setBackground(Theme.createRadSelectorDrawable(getThemedColor(i2), Theme.blendOver(getThemedColor(i2), getThemedColor(Theme.key_listSelector)), 10, 10));
        textView2.setGravity(17);
        frameLayout.addView(textView2, LayoutHelper.createFrame(-1, -2.0f, 7, 0.0f, 0.0f, 0.0f, 0.0f));
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 55, 0, 14, 0, 0));
        ScaleStateListAnimator.apply(textView2, 0.02f, 1.2f);
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletRecipientView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$1(alertDialogArr, runnable2, view2);
            }
        });
        alertDialogArr[0] = new AlertDialog.Builder(getContext(), resourcesProvider).setView(linearLayout).setPositiveButton(LocaleController.getString(C2807R.string.OK), null).show();
    }

    /* JADX INFO: renamed from: $r8$lambda$rLqXJALNiUbf-1TKxPOQiYS6AD8, reason: not valid java name */
    public static /* synthetic */ void m23490$r8$lambda$rLqXJALNiUbf1TKxPOQiYS6AD8(AlertDialog[] alertDialogArr, Runnable runnable) {
        alertDialogArr[0].dismiss();
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(AlertDialog[] alertDialogArr, Runnable runnable, View view) {
        alertDialogArr[0].dismiss();
        AndroidUtilities.addToClipboard(this.address);
        runnable.run();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.addressInfoAddress.getLayoutParams();
        int iCeil = ((int) Math.ceil(this.addressInfoAddress.getAddressWidth())) + 1 + layoutParams.leftMargin + layoutParams.rightMargin;
        setMeasuredDimension(View.resolveSize(Math.max(getMeasuredWidth(), iCeil), i), getMeasuredHeight());
        int iMax = Math.max(getMeasuredWidth(), iCeil);
        float measuredWidth = getMeasuredWidth() / iMax;
        this.content.measure(View.MeasureSpec.makeMeasureSpec(iMax, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), TLObject.FLAG_30));
        this.content.setScaleX(measuredWidth);
        this.content.setScaleY(measuredWidth);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int iRound = Math.round((getMeasuredHeight() - (this.content.getMeasuredHeight() * this.content.getScaleY())) / 2.0f);
        FrameLayout frameLayout = this.content;
        frameLayout.layout(0, iRound, frameLayout.getMeasuredWidth(), this.content.getMeasuredHeight() + iRound);
    }

    public float getContentBottom() {
        return this.content.getY() + this.content.getPivotY() + ((this.content.getHeight() - this.content.getPivotY()) * this.content.getScaleY());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    public static CombinedDrawable createGramAvatar(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        int color = Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider);
        int color2 = Theme.getColor(Theme.key_featuredStickers_buttonText, resourcesProvider);
        int alphaComponent = ColorUtils.setAlphaComponent(color, 255);
        if (ColorUtils.calculateContrast(ColorUtils.setAlphaComponent(color2, 255), alphaComponent) < 1.7999999523162842d) {
            color2 = ColorUtils.blendARGB(alphaComponent, ColorUtils.calculateContrast(-16777216, alphaComponent) <= ColorUtils.calculateContrast(-1, alphaComponent) ? -1 : -16777216, 0.75f);
        }
        Drawable drawableMutate = context.getResources().getDrawable(C2807R.drawable.menu_gram_24).mutate();
        drawableMutate.setColorFilter(new PorterDuffColorFilter(color2, PorterDuff.Mode.SRC_IN));
        return new CombinedDrawable(Theme.createCircleDrawable(AndroidUtilities.dp(i), color), drawableMutate);
    }

    public void setRecipient(TLRPC.User user, String str) {
        TLRPC.User user2 = this.recipientUser;
        boolean z = (user2 == null ? 0L : user2.id) != (user != null ? user.id : 0L);
        this.recipientUser = user;
        this.address = str;
        setClickable(!TextUtils.isEmpty(str));
        if (this.recipientUser != null) {
            setClickable(true);
            setVisibility(0);
            this.addressInfoAvatarDrawable.setInfo(this.recipientUser);
            this.addressInfoImage.setForUserOrChat(this.recipientUser, this.addressInfoAvatarDrawable);
            this.addressInfoName.setText(UserObject.getUserName(this.recipientUser));
            boolean zIsEmpty = TextUtils.isEmpty(str);
            AddressView addressView = this.addressInfoAddress;
            if (!zIsEmpty) {
                addressView.setAddress(str, z);
                this.addressInfoIcon.setVisibility(0);
                return;
            } else {
                addressView.setAddress(null, z);
                this.addressInfoIcon.setVisibility(8);
                return;
            }
        }
        if (!TextUtils.isEmpty(str)) {
            setClickable(false);
            setVisibility(0);
            this.addressInfoImage.setImageDrawable(createGramAvatar(getContext(), 34, this.resourcesProvider));
            this.addressInfoName.setText(LocaleController.getString(C2807R.string.WalletGramWalletAddress));
            this.addressInfoAddress.setAddress(str, z);
            this.addressInfoIcon.setVisibility(8);
            return;
        }
        setClickable(false);
        setVisibility(8);
        this.addressInfoAddress.setAddress(null, true);
    }

    public class AddressView extends View {
        private ValueAnimator animator;
        private final float baseline;
        private final float characterWidth;
        private float elapsed;
        private final float lineHeight;
        private final Paint.FontMetrics metrics;
        private final Paint paint;
        private boolean pendingReveal;
        private final Random random;
        private final int[] shadeSteps;
        private final float[] shades;
        private final char[] symbol;
        private final float textHeight;
        private String value;

        public AddressView(Context context) {
            super(context);
            Paint paint = new Paint(1);
            this.paint = paint;
            this.symbol = new char[1];
            this.random = new Random();
            this.shadeSteps = new int[48];
            this.shades = new float[48];
            paint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MONO));
            paint.setTextSize(AndroidUtilities.dp(12.0f));
            this.characterWidth = paint.measureText("U");
            Paint.FontMetrics fontMetrics = paint.getFontMetrics();
            this.metrics = fontMetrics;
            float f = fontMetrics.top;
            this.baseline = -f;
            float f2 = fontMetrics.descent - fontMetrics.ascent;
            this.lineHeight = f2;
            this.textHeight = (fontMetrics.bottom - f) + f2;
            setImportantForAccessibility(1);
            setContentDescription(LocaleController.getString(C2807R.string.Loading));
        }

        public void setAddress(String str, boolean z) {
            if (TextUtils.isEmpty(str)) {
                str = null;
            }
            if (z || !TextUtils.equals(this.value, str)) {
                stopAnimator();
                this.value = str;
                this.elapsed = 0.0f;
                Arrays.fill(this.shadeSteps, -1);
                String string = this.value;
                this.pendingReveal = string != null;
                if (string == null) {
                    string = LocaleController.getString(C2807R.string.Loading);
                }
                setContentDescription(string);
                requestLayout();
                startReveal();
                invalidate();
            }
        }

        public float getAddressWidth() {
            String str = this.value;
            int iMin = str != null ? Math.min(24, str.length()) : 24;
            return this.characterWidth * (iMin + Math.max(0, (iMin - 1) / 4));
        }

        private void startReveal() {
            if (this.pendingReveal && isAttachedToWindow() && isShown()) {
                this.pendingReveal = false;
                int revealDuration = getRevealDuration();
                if (Build.VERSION.SDK_INT >= 26 && !ValueAnimator.areAnimatorsEnabled()) {
                    this.elapsed = revealDuration;
                    invalidate();
                    return;
                }
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, revealDuration);
                this.animator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.setDuration(revealDuration);
                this.animator.setInterpolator(new LinearInterpolator());
                this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Wallet.WalletRecipientView$AddressView$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f$0.lambda$startReveal$0(valueAnimator);
                    }
                });
                this.animator.start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$startReveal$0(ValueAnimator valueAnimator) {
            this.elapsed = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }

        private int getRevealDuration() {
            int iMax = Math.max(0, Math.min(24, this.value.length()) - 1);
            return ((iMax + (iMax / 4)) * 18) + 560;
        }

        private void stopAnimator() {
            ValueAnimator valueAnimator = this.animator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.animator = null;
            }
        }

        @Override // android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            startReveal();
        }

        @Override // android.view.View
        public void onDetachedFromWindow() {
            stopAnimator();
            if (this.value != null && !this.pendingReveal) {
                this.elapsed = getRevealDuration();
            }
            super.onDetachedFromWindow();
        }

        @Override // android.view.View
        public void onVisibilityChanged(View view, int i) {
            super.onVisibilityChanged(view, i);
            if (isShown()) {
                startReveal();
            } else if (this.animator != null) {
                stopAnimator();
                this.elapsed = this.value == null ? 0.0f : getRevealDuration();
            }
        }

        @Override // android.view.View
        public void onMeasure(int i, int i2) {
            setMeasuredDimension(View.resolveSize((int) Math.ceil(getAddressWidth()), i), View.resolveSize((int) Math.ceil(this.textHeight), i2));
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            Canvas canvas2;
            int i;
            float f;
            float f2;
            int i2;
            int i3;
            int i4;
            float fExp;
            float f3;
            char cCharAt;
            int iBlendARGB;
            float f4;
            int i5;
            super.onDraw(canvas);
            int themedColor = WalletRecipientView.this.getThemedColor(Theme.key_windowBackgroundWhiteGrayText6);
            int themedColor2 = WalletRecipientView.this.getThemedColor(Theme.key_windowBackgroundWhiteBlackText);
            String str = this.value;
            int iMin = str != null ? Math.min(48, str.length()) : 48;
            int i6 = 0;
            while (true) {
                int i7 = i6 * 4;
                if (i7 >= iMin) {
                    return;
                }
                int i8 = i7 / 24;
                int i9 = (i6 % 6) * 5;
                float f5 = i9 * this.characterWidth;
                float f6 = this.baseline + (i8 * this.lineHeight);
                float fClamp = this.value == null ? 1.0f : 1.0f - clamp((this.elapsed - (r1 * 90)) / 180.0f);
                if (fClamp > 0.0f) {
                    this.paint.setColor(themedColor);
                    this.paint.setAlpha(Math.round(r5.getAlpha() * 0.22f * fClamp));
                    Paint.FontMetrics fontMetrics = this.metrics;
                    float f7 = f6 + ((fontMetrics.ascent + fontMetrics.descent) / 2.0f);
                    i = i9;
                    i2 = 4;
                    f2 = 0.0f;
                    i3 = 0;
                    canvas2 = canvas;
                    canvas2.drawRoundRect(f5, f7 - AndroidUtilities.dp(2.0f), (Math.min(4, iMin - i7) * this.characterWidth) + f5, f7 + AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f), this.paint);
                    f = f5;
                } else {
                    canvas2 = canvas;
                    i = i9;
                    f = f5;
                    f2 = 0.0f;
                    i2 = 4;
                    i3 = 0;
                }
                if (this.value != null) {
                    int i10 = i3;
                    while (i10 < i2) {
                        int i11 = i7 + i10;
                        if (i11 >= iMin) {
                            break;
                        }
                        float f8 = this.elapsed - ((i + i10) * 18);
                        if (f8 <= f2) {
                            i4 = i6;
                            f4 = f2;
                            i5 = i10;
                        } else {
                            if (clamp(f8 / 560.0f) >= 1.0f) {
                                i4 = i6;
                                fExp = f2;
                            } else {
                                i4 = i6;
                                fExp = (float) (Math.exp((-8.0f) * r4) * Math.cos(r4 * 12.0f));
                            }
                            int i12 = (int) (f8 / 50.0f);
                            int i13 = f8 < 260.0f ? 1 : i3;
                            char[] cArr = this.symbol;
                            if (i13 != 0) {
                                f3 = fExp;
                                cCharAt = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(((i11 * 17) + (i12 * 13)) % 64);
                            } else {
                                f3 = fExp;
                                cCharAt = this.value.charAt(i11);
                            }
                            cArr[i3] = cCharAt;
                            if (i13 != 0) {
                                int[] iArr = this.shadeSteps;
                                if (iArr[i11] != i12) {
                                    iArr[i11] = i12;
                                    this.shades[i11] = this.random.nextFloat();
                                }
                            }
                            Paint paint = this.paint;
                            if (i13 != 0) {
                                iBlendARGB = ColorUtils.blendARGB(themedColor, themedColor2, this.shades[i11]);
                            } else {
                                iBlendARGB = (i4 + i8) % 2 == 0 ? themedColor : themedColor2;
                            }
                            paint.setColor(iBlendARGB);
                            this.paint.setAlpha(Math.round(r3.getAlpha() * clamp(f8 / 100.0f)));
                            int iSave = canvas2.save();
                            float fDp = AndroidUtilities.dp(1.0f) + this.baseline + this.metrics.descent;
                            float f9 = i8 == 0 ? f2 : fDp;
                            float width = getWidth();
                            if (i8 != 0) {
                                fDp = getHeight();
                            }
                            f4 = f2;
                            canvas2.clipRect(f4, f9, width, fDp);
                            i5 = i10;
                            canvas2.drawText(this.symbol, 0, 1, f + (i10 * this.characterWidth), f6 - (AndroidUtilities.dp(24.0f) * f3), this.paint);
                            canvas2.restoreToCount(iSave);
                        }
                        i10 = i5 + 1;
                        f2 = f4;
                        i6 = i4;
                        i2 = 4;
                    }
                }
                i6++;
            }
        }

        private float clamp(float f) {
            return Math.max(0.0f, Math.min(1.0f, f));
        }
    }
}
