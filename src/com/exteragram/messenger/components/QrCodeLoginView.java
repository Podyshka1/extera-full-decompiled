package com.exteragram.messenger.components;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.google.zxing.EncodeHintType;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import java.util.HashMap;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.TelegramQRCodeWriter;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.SlideView;

/* JADX INFO: loaded from: classes4.dex */
public abstract class QrCodeLoginView extends SlideView {
    private final QrRenderView qrRenderView;
    private final TextView subtitleView;
    private final TextView titleView;

    @Override // org.telegram.ui.Components.SlideView
    public boolean needBackButton() {
        return true;
    }

    public QrCodeLoginView(Context context) {
        super(context);
        setOrientation(1);
        setGravity(17);
        TextView textView = new TextView(context);
        this.titleView = textView;
        textView.setTextSize(1, 18.0f);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setText(LocaleController.getString(C2807R.string.LoginQrTitle));
        textView.setGravity(17);
        textView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
        addView(textView, LayoutHelper.createLinear(-1, -2, 1, 32, 16, 32, 0));
        TextView textView2 = new TextView(context);
        this.subtitleView = textView2;
        textView2.setTextSize(1, 14.0f);
        textView2.setGravity(1);
        textView2.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
        textView2.setText(LocaleController.getString(C2807R.string.LoginQrSubtitle));
        addView(textView2, LayoutHelper.createLinear(-2, -2, 1, 12, 8, 12, 0));
        QrRenderView qrRenderView = new QrRenderView(context);
        this.qrRenderView = qrRenderView;
        addView(qrRenderView, LayoutHelper.createLinear(280, 280, 1, 30, 30, 30, 30));
    }

    @Override // org.telegram.ui.Components.SlideView
    public String getHeaderName() {
        return LocaleController.getString(C2807R.string.LoginQrTitle);
    }

    public void setData(String str) {
        this.qrRenderView.setData(str);
    }

    public void clear() {
        this.qrRenderView.clear();
    }

    public void clear(boolean z) {
        this.qrRenderView.clear(z);
    }

    @Override // org.telegram.ui.Components.SlideView
    public void updateColors() {
        this.titleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        this.subtitleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText6));
        this.qrRenderView.updateColors();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.qrRenderView.dispose();
    }

    public static class QrRenderView extends View {
        private final Path clipPath;
        private Bitmap contentBitmap;
        private final AnimatedFloat contentBitmapAlpha;
        private final Paint crossfadeFromPaint;
        private final Paint crossfadeToPaint;
        private final int crossfadeWidthDp;
        private boolean firstPrepare;
        private Integer hadHeight;
        private String hadLink;
        private Integer hadWidth;
        private String link;
        private RLottieDrawable loadingMatrix;
        private boolean loadingVisible;
        private Bitmap oldContentBitmap;
        private final Paint paint;
        private final Path qrAreaClipPath;
        private Bitmap qrLogo;
        private int qrLogoSize;
        private int transitionDirection;

        public QrRenderView(Context context) {
            super(context);
            this.crossfadeWidthDp = 140;
            this.paint = new Paint(1);
            this.contentBitmapAlpha = new AnimatedFloat(1.0f, this, 0L, 2000L, CubicBezierInterpolator.EASE_OUT_QUINT);
            Paint paint = new Paint(1);
            this.crossfadeFromPaint = paint;
            Paint paint2 = new Paint(1);
            this.crossfadeToPaint = paint2;
            this.clipPath = new Path();
            this.qrAreaClipPath = new Path();
            this.firstPrepare = true;
            this.loadingVisible = true;
            this.transitionDirection = 0;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            paint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, AndroidUtilities.dp(140.0f), new int[]{-1, 0}, new float[]{0.0f, 1.0f}, tileMode));
            PorterDuff.Mode mode = PorterDuff.Mode.DST_OUT;
            paint.setXfermode(new PorterDuffXfermode(mode));
            paint2.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, AndroidUtilities.dp(140.0f), new int[]{0, -1}, new float[]{0.0f, 1.0f}, tileMode));
            paint2.setXfermode(new PorterDuffXfermode(mode));
            clear();
        }

        public void setData(final String str) {
            this.link = str;
            if (!TextUtils.isEmpty(str) && this.contentBitmap == null) {
                this.loadingVisible = true;
            }
            final int width = getWidth();
            final int height = getHeight();
            Utilities.themeQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.components.QrCodeLoginView$QrRenderView$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setData$0(width, height, str);
                }
            });
            invalidate();
        }

        public void clear() {
            clear(true);
        }

        public void clear(boolean z) {
            RLottieDrawable rLottieDrawable;
            this.link = null;
            this.hadLink = null;
            this.hadWidth = null;
            this.hadHeight = null;
            this.firstPrepare = true;
            Bitmap bitmap = this.oldContentBitmap;
            if (bitmap != null) {
                bitmap.recycle();
                this.oldContentBitmap = null;
            }
            Bitmap bitmap2 = this.contentBitmap;
            if (bitmap2 != null && z) {
                this.oldContentBitmap = bitmap2;
                this.contentBitmap = null;
                this.loadingVisible = true;
                this.transitionDirection = 1;
                this.contentBitmapAlpha.set(0.0f, true);
                this.contentBitmapAlpha.set(1.0f);
            } else {
                if (bitmap2 != null) {
                    bitmap2.recycle();
                    this.contentBitmap = null;
                }
                this.loadingVisible = z;
                this.contentBitmapAlpha.set(1.0f, true);
            }
            if (!z && (rLottieDrawable = this.loadingMatrix) != null && rLottieDrawable.isRunning()) {
                this.loadingMatrix.stop();
            }
            invalidate();
        }

        public void updateColors() {
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: prepareContent, reason: merged with bridge method [inline-methods] */
        public void lambda$setData$0(final int i, final int i2, final String str) {
            Bitmap bitmapEncode;
            Integer num;
            if (i == 0 || i2 == 0) {
                return;
            }
            if (TextUtils.isEmpty(str)) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.components.QrCodeLoginView$QrRenderView$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$prepareContent$1(str);
                    }
                });
                return;
            }
            if (TextUtils.equals(str, this.hadLink) && (num = this.hadWidth) != null && this.hadHeight != null && num.intValue() == i && this.hadHeight.intValue() == i2) {
                return;
            }
            HashMap map = new HashMap();
            map.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.M);
            map.put(EncodeHintType.MARGIN, 0);
            int iMax = (Math.max(1, i / 37) * 37) + 32;
            try {
                bitmapEncode = new TelegramQRCodeWriter().encode(str, iMax, iMax, map, null, 0.75f, 0, -16777216);
            } catch (Exception e) {
                FileLog.m1040e(e);
                bitmapEncode = null;
            }
            final Bitmap bitmap = bitmapEncode;
            if (bitmap == null) {
                return;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.components.QrCodeLoginView$QrRenderView$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$prepareContent$3(str, bitmap, i, i2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$prepareContent$1(String str) {
            if (TextUtils.equals(this.link, str)) {
                this.firstPrepare = false;
                Bitmap bitmap = this.contentBitmap;
                if (bitmap != null) {
                    this.contentBitmap = null;
                    this.contentBitmapAlpha.set(0.0f, true);
                    Bitmap bitmap2 = this.oldContentBitmap;
                    if (bitmap2 != null) {
                        bitmap2.recycle();
                    }
                    this.oldContentBitmap = bitmap;
                    invalidate();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$prepareContent$3(String str, final Bitmap bitmap, int i, int i2) {
            if (!TextUtils.equals(this.link, str)) {
                if (bitmap == null || bitmap.isRecycled()) {
                    return;
                }
                bitmap.recycle();
                return;
            }
            this.hadWidth = Integer.valueOf(i);
            this.hadHeight = Integer.valueOf(i2);
            this.hadLink = str;
            new Runnable() { // from class: com.exteragram.messenger.components.QrCodeLoginView$QrRenderView$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$prepareContent$2(bitmap);
                }
            }.run();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$prepareContent$2(Bitmap bitmap) {
            boolean z = this.firstPrepare;
            boolean z2 = z && this.loadingVisible;
            Bitmap bitmap2 = this.contentBitmap;
            this.contentBitmap = bitmap;
            if (!z || z2) {
                this.transitionDirection = 0;
                this.contentBitmapAlpha.set(0.0f, true);
            }
            this.firstPrepare = false;
            Bitmap bitmap3 = this.oldContentBitmap;
            if (bitmap3 != null) {
                bitmap3.recycle();
            }
            this.oldContentBitmap = bitmap2;
            this.loadingVisible = z2;
            invalidate();
        }

        private void drawLoading(Canvas canvas, int i, int i2, float f) {
            RLottieDrawable rLottieDrawable = this.loadingMatrix;
            if (rLottieDrawable == null) {
                RLottieDrawable rLottieDrawable2 = new RLottieDrawable(C2807R.raw.qr_matrix, AndroidUtilities.dp(200.0f), AndroidUtilities.dp(200.0f));
                this.loadingMatrix = rLottieDrawable2;
                rLottieDrawable2.setMasterParent(this);
                this.loadingMatrix.setAutoRepeat(1);
                this.loadingMatrix.setColorFilter(new PorterDuffColorFilter(-16777216, PorterDuff.Mode.MULTIPLY));
                this.loadingMatrix.start();
            } else if (!rLottieDrawable.isRunning()) {
                this.loadingMatrix.start();
            }
            int width = getWidth();
            int iRound = Math.round(16.0f * f);
            int i3 = width - iRound;
            this.loadingMatrix.setBounds(iRound, iRound, i3, i3);
            this.loadingMatrix.setAlpha(255);
            this.loadingMatrix.draw(canvas);
            float f2 = i;
            int iRound2 = Math.round(((i2 - 32) / 4.65f) / f2);
            if (iRound2 % 2 != 1) {
                iRound2++;
            }
            int i4 = iRound2 * i;
            int i5 = i4 - 24;
            int i6 = (i2 - i4) / 2;
            int i7 = (i2 - i5) / 2;
            canvas.save();
            canvas.scale(f, f);
            drawFinderPatterns(canvas, i2, i);
            this.paint.setColor(-1);
            float f3 = ((f2 * 7.0f) / 4.0f) * 0.75f;
            float f4 = i6;
            float f5 = i6 + i4;
            canvas.drawRoundRect(f4, f4, f5, f5, f3, f3, this.paint);
            Bitmap bitmap = this.qrLogo;
            if (bitmap == null) {
                this.qrLogo = SvgHelper.getBitmap(AndroidUtilities.readRes(null, C2807R.raw.qr_logo), i5, i5, false);
                this.qrLogoSize = i5;
            } else if (this.qrLogoSize != i5) {
                bitmap.recycle();
                this.qrLogo = SvgHelper.getBitmap(AndroidUtilities.readRes(null, C2807R.raw.qr_logo), i5, i5, false);
                this.qrLogoSize = i5;
            }
            Bitmap bitmap2 = this.qrLogo;
            if (bitmap2 != null) {
                float f6 = i7;
                canvas.drawBitmap(bitmap2, f6, f6, (Paint) null);
            }
            canvas.restore();
        }

        private void drawFinderPatterns(Canvas canvas, int i, int i2) {
            float f;
            float f2;
            float f3 = i2;
            float f4 = 2.0f * f3;
            float f5 = 7.0f * f3;
            float f6 = (f5 / 3.0f) * 0.75f;
            float f7 = (f5 / 4.0f) * 0.75f;
            float f8 = ((5.0f * f3) / 4.0f) * 0.75f;
            for (int i3 = 0; i3 < 3; i3++) {
                if (i3 == 0) {
                    f = 16.0f;
                    f2 = 16.0f;
                } else if (i3 == 1) {
                    f2 = 16.0f;
                    f = (i - f5) - 16.0f;
                } else {
                    f = 16.0f;
                    f2 = (i - f5) - 16.0f;
                }
                this.paint.setColor(-16777216);
                float f9 = f + f5;
                float f10 = f2 + f5;
                canvas.drawRoundRect(f, f2, f9, f10, f6, f6, this.paint);
                this.paint.setColor(-1);
                float f11 = 6.0f * f3;
                canvas.drawRoundRect(f + f3, f2 + f3, f + f11, f2 + f11, f7, f7, this.paint);
                this.paint.setColor(-16777216);
                canvas.drawRoundRect(f + f4, f2 + f4, f9 - f4, f10 - f4, f8, f8, this.paint);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0114  */
        /* JADX WARN: Type inference failed for: r15v1 */
        /* JADX WARN: Type inference failed for: r15v2, types: [android.graphics.Bitmap, android.graphics.Paint] */
        /* JADX WARN: Type inference failed for: r15v3 */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onDraw(Canvas canvas) {
            ?? r15;
            float f;
            int i;
            RLottieDrawable rLottieDrawable;
            super.onDraw(canvas);
            this.paint.setColor(-1);
            canvas.drawRoundRect(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight(), AndroidUtilities.dp(14.0f), AndroidUtilities.dp(14.0f), this.paint);
            this.clipPath.reset();
            Path path = this.clipPath;
            float measuredWidth = getMeasuredWidth();
            float measuredHeight = getMeasuredHeight();
            float fDp = AndroidUtilities.dp(14.0f);
            float fDp2 = AndroidUtilities.dp(14.0f);
            Path.Direction direction = Path.Direction.CW;
            path.addRoundRect(0.0f, 0.0f, measuredWidth, measuredHeight, fDp, fDp2, direction);
            canvas.save();
            canvas.clipPath(this.clipPath);
            int width = getWidth();
            int iMax = Math.max(1, width / 37);
            int i2 = (iMax * 37) + 32;
            float f2 = width;
            float f3 = f2 / i2;
            float f4 = ((iMax * 7.0f) / 4.0f) * 0.75f * f3;
            this.qrAreaClipPath.reset();
            this.qrAreaClipPath.addRoundRect(0.0f, 0.0f, f2, f2, f4, f4, direction);
            canvas.save();
            canvas.clipPath(this.qrAreaClipPath);
            float f5 = this.contentBitmapAlpha.set(1.0f);
            boolean z = f5 > 0.0f && f5 < 1.0f;
            boolean z2 = this.transitionDirection == 1;
            if (f5 >= 1.0f) {
                r15 = 0;
                f = 1.0f;
                i = 255;
            } else {
                if (z) {
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(0.0f, 0.0f, f2, f2);
                    canvas.saveLayerAlpha(rectF, 255);
                }
                if (this.oldContentBitmap != null) {
                    canvas.save();
                    canvas.scale(f3, f3);
                    canvas.drawBitmap(this.oldContentBitmap, 0.0f, 0.0f, (Paint) null);
                    canvas.restore();
                } else if (this.loadingVisible) {
                    drawLoading(canvas, iMax, i2, f3);
                }
                if (z) {
                    float fDp3 = AndroidUtilities.dp(140.0f);
                    canvas.save();
                    canvas.translate(0.0f, getScanLineY(f5, width, fDp3));
                    f = 1.0f;
                    i = 255;
                    r15 = 0;
                    canvas.drawRect(0.0f, z2 ? (-fDp3) - f2 : 0.0f, f2, fDp3 + f2, getOldLayerMaskPaint());
                    canvas.restore();
                    canvas.restore();
                }
            }
            if (f5 > 0.0f) {
                if (z) {
                    RectF rectF2 = AndroidUtilities.rectTmp;
                    rectF2.set(0.0f, 0.0f, f2, f2);
                    canvas.saveLayerAlpha(rectF2, i);
                }
                if (this.contentBitmap != null) {
                    canvas.save();
                    canvas.scale(f3, f3);
                    canvas.drawBitmap(this.contentBitmap, 0.0f, 0.0f, (Paint) r15);
                    canvas.restore();
                } else if (this.loadingVisible) {
                    drawLoading(canvas, iMax, i2, f3);
                }
                if (z) {
                    float fDp4 = AndroidUtilities.dp(140.0f);
                    canvas.save();
                    canvas.translate(0.0f, getScanLineY(f5, width, fDp4));
                    canvas.drawRect(0.0f, z2 ? 0.0f : (-fDp4) - f2, f2, f2 + fDp4, getNewLayerMaskPaint());
                    canvas.restore();
                    canvas.restore();
                }
            }
            canvas.restore();
            if (this.loadingVisible && this.contentBitmap != null && !this.contentBitmapAlpha.isInProgress() && f5 >= f) {
                this.loadingVisible = false;
                invalidate();
            }
            if (this.oldContentBitmap != null && this.contentBitmap == null && !this.contentBitmapAlpha.isInProgress() && f5 >= f) {
                this.oldContentBitmap.recycle();
                this.oldContentBitmap = r15;
                invalidate();
            }
            if (!this.loadingVisible && (rLottieDrawable = this.loadingMatrix) != null && rLottieDrawable.isRunning()) {
                this.loadingMatrix.stop();
            }
            canvas.restore();
        }

        private float getScanLineY(float f, int i, float f2) {
            float f3;
            float f4;
            if (this.transitionDirection == 1) {
                f3 = -f2;
                f4 = (i + f2) * f;
            } else {
                f3 = -f2;
                f4 = (i + f2) * (1.0f - f);
            }
            return f3 + f4;
        }

        private Paint getOldLayerMaskPaint() {
            return this.transitionDirection == 1 ? this.crossfadeFromPaint : this.crossfadeToPaint;
        }

        private Paint getNewLayerMaskPaint() {
            return this.transitionDirection == 1 ? this.crossfadeToPaint : this.crossfadeFromPaint;
        }

        public void dispose() {
            RLottieDrawable rLottieDrawable = this.loadingMatrix;
            if (rLottieDrawable != null) {
                rLottieDrawable.stop();
                this.loadingMatrix.recycle(false);
                this.loadingMatrix = null;
            }
            Bitmap bitmap = this.qrLogo;
            if (bitmap != null) {
                bitmap.recycle();
                this.qrLogo = null;
                this.qrLogoSize = 0;
            }
            Bitmap bitmap2 = this.contentBitmap;
            if (bitmap2 != null) {
                bitmap2.recycle();
                this.contentBitmap = null;
            }
            Bitmap bitmap3 = this.oldContentBitmap;
            if (bitmap3 != null) {
                bitmap3.recycle();
                this.oldContentBitmap = null;
            }
        }
    }
}
