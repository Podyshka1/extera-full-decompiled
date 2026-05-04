package org.telegram.p029ui.Components.Paint.Views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.p029ui.Components.AnimatedFloat;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.Paint.Views.EntityView;
import org.telegram.p029ui.Components.Point;
import org.telegram.p029ui.Components.RLottieDrawable;
import org.telegram.p029ui.Components.Rect;
import org.telegram.p029ui.Components.Size;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public class StickerView extends EntityView {
    private int anchor;
    private Size baseSize;
    public final ImageReceiver centerImage;
    private FrameLayoutDrawer containerView;
    private final AnimatedFloat mirrorT;
    private boolean mirrored;
    private Object parentObject;
    private TLRPC.Document sticker;

    protected void didSetAnimatedSticker(RLottieDrawable rLottieDrawable) {
    }

    private class FrameLayoutDrawer extends FrameLayout {
        public FrameLayoutDrawer(Context context) {
            super(context);
            setWillNotDraw(false);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            StickerView.this.stickerDraw(canvas);
        }
    }

    public StickerView(Context context, Point point, float f, float f2, Size size, TLRPC.Document document, Object obj) {
        super(context, point);
        this.anchor = -1;
        int i = 0;
        this.mirrored = false;
        this.centerImage = new ImageReceiver();
        setRotation(f);
        setScale(f2);
        this.sticker = document;
        this.baseSize = size;
        this.parentObject = obj;
        while (true) {
            if (i >= document.attributes.size()) {
                break;
            }
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeSticker) {
                TLRPC.TL_maskCoords tL_maskCoords = documentAttribute.mask_coords;
                if (tL_maskCoords != null) {
                    this.anchor = tL_maskCoords.f1745n;
                }
            } else {
                i++;
            }
        }
        FrameLayoutDrawer frameLayoutDrawer = new FrameLayoutDrawer(context);
        this.containerView = frameLayoutDrawer;
        addView(frameLayoutDrawer, LayoutHelper.createFrame(-1, -1.0f));
        this.mirrorT = new AnimatedFloat(this.containerView, 0L, 500L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.centerImage.setAspectFit(true);
        this.centerImage.setInvalidateAll(true);
        this.centerImage.setParentView(this.containerView);
        this.centerImage.setImage(ImageLocation.getForDocument(document), (String) null, ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 90), document), (String) null, "webp", obj, 1);
        this.centerImage.setDelegate(new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.ui.Components.Paint.Views.StickerView$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public final void didSetImage(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
                this.f$0.lambda$new$0(imageReceiver, z, z2, z3);
            }

            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public /* synthetic */ void didSetImageBitmap(int i2, String str, Drawable drawable) {
                ImageReceiver.ImageReceiverDelegate.CC.$default$didSetImageBitmap(this, i2, str, drawable);
            }

            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public /* synthetic */ void onAnimationReady(ImageReceiver imageReceiver) {
                ImageReceiver.ImageReceiverDelegate.CC.$default$onAnimationReady(this, imageReceiver);
            }
        });
        updatePosition();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
        RLottieDrawable lottieAnimation;
        if (!z || z2 || (lottieAnimation = imageReceiver.getLottieAnimation()) == null) {
            return;
        }
        didSetAnimatedSticker(lottieAnimation);
    }

    public StickerView(Context context, StickerView stickerView, Point point) {
        this(context, point, stickerView.getRotation(), stickerView.getScale(), stickerView.baseSize, stickerView.sticker, stickerView.parentObject);
        if (stickerView.mirrored) {
            mirror();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.centerImage.onDetachedFromWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.centerImage.onAttachedToWindow();
    }

    public int getAnchor() {
        return this.anchor;
    }

    public void mirror() {
        mirror(false);
    }

    public void mirror(boolean z) {
        boolean z2 = !this.mirrored;
        this.mirrored = z2;
        if (!z) {
            this.mirrorT.set(z2, true);
        }
        this.containerView.invalidate();
    }

    public boolean isMirrored() {
        return this.mirrored;
    }

    @Override // org.telegram.p029ui.Components.Paint.Views.EntityView
    protected void updatePosition() {
        Size size = this.baseSize;
        float f = size.width / 2.0f;
        float f2 = size.height / 2.0f;
        setX(getPositionX() - f);
        setY(getPositionY() - f2);
        updateSelectionView();
    }

    protected void stickerDraw(Canvas canvas) {
        if (this.containerView == null) {
            return;
        }
        canvas.save();
        float f = this.mirrorT.set(this.mirrored);
        canvas.scale(1.0f - (f * 2.0f), 1.0f, this.baseSize.width / 2.0f, 0.0f);
        canvas.skew(0.0f, 4.0f * f * (1.0f - f) * 0.25f);
        ImageReceiver imageReceiver = this.centerImage;
        Size size = this.baseSize;
        imageReceiver.setImageCoords(0.0f, 0.0f, (int) size.width, (int) size.height);
        this.centerImage.draw(canvas);
        canvas.restore();
    }

    public long getDuration() {
        RLottieDrawable lottieAnimation = this.centerImage.getLottieAnimation();
        if (lottieAnimation != null) {
            return lottieAnimation.getDuration();
        }
        if (this.centerImage.getAnimation() != null) {
            return r0.getDurationMs();
        }
        return 0L;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec((int) this.baseSize.width, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec((int) this.baseSize.height, TLObject.FLAG_30));
    }

    @Override // org.telegram.p029ui.Components.Paint.Views.EntityView
    public Rect getSelectionBounds() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup == null) {
            return new Rect();
        }
        float scaleX = viewGroup.getScaleX();
        float measuredWidth = getMeasuredWidth() * (getScale() + 0.5f);
        float f = measuredWidth / 2.0f;
        float f2 = measuredWidth * scaleX;
        return new Rect((getPositionX() - f) * scaleX, (getPositionY() - f) * scaleX, f2, f2);
    }

    @Override // org.telegram.p029ui.Components.Paint.Views.EntityView
    protected EntityView.SelectionView createSelectionView() {
        return new StickerViewSelectionView(getContext());
    }

    public TLRPC.Document getSticker() {
        return this.sticker;
    }

    public Object getParentObject() {
        return this.parentObject;
    }

    public Size getBaseSize() {
        return this.baseSize;
    }

    public class StickerViewSelectionView extends EntityView.SelectionView {
        private RectF arcRect;

        public StickerViewSelectionView(Context context) {
            super(context);
            this.arcRect = new RectF();
        }

        @Override // org.telegram.ui.Components.Paint.Views.EntityView.SelectionView
        protected int pointInsideHandle(float f, float f2) {
            float fM1124dp = AndroidUtilities.m1124dp(1.0f);
            float fM1124dp2 = AndroidUtilities.m1124dp(19.5f);
            float f3 = fM1124dp + fM1124dp2;
            float f4 = f3 * 2.0f;
            float measuredHeight = ((getMeasuredHeight() - f4) / 2.0f) + f3;
            if (f > f3 - fM1124dp2 && f2 > measuredHeight - fM1124dp2 && f < f3 + fM1124dp2 && f2 < measuredHeight + fM1124dp2) {
                return 1;
            }
            if (f > ((getMeasuredWidth() - f4) + f3) - fM1124dp2 && f2 > measuredHeight - fM1124dp2 && f < f3 + (getMeasuredWidth() - f4) + fM1124dp2 && f2 < measuredHeight + fM1124dp2) {
                return 2;
            }
            float measuredWidth = getMeasuredWidth() / 2.0f;
            return Math.pow((double) (f - measuredWidth), 2.0d) + Math.pow((double) (f2 - measuredWidth), 2.0d) < Math.pow((double) measuredWidth, 2.0d) ? 3 : 0;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            int saveCount = canvas.getSaveCount();
            float showAlpha = getShowAlpha();
            if (showAlpha <= 0.0f) {
                return;
            }
            if (showAlpha < 1.0f) {
                canvas.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), (int) (showAlpha * 255.0f), 31);
            }
            float fM1124dp = AndroidUtilities.m1124dp(1.0f);
            float fDpf2 = AndroidUtilities.dpf2(5.66f);
            float fM1124dp2 = fM1124dp + fDpf2 + AndroidUtilities.m1124dp(15.0f);
            float measuredWidth = (getMeasuredWidth() / 2) - fM1124dp2;
            float f = fM1124dp2 + (2.0f * measuredWidth);
            this.arcRect.set(fM1124dp2, fM1124dp2, f, f);
            canvas.drawArc(this.arcRect, 0.0f, 180.0f, false, this.paint);
            canvas.drawArc(this.arcRect, 180.0f, 180.0f, false, this.paint);
            float f2 = measuredWidth + fM1124dp2;
            canvas.drawCircle(fM1124dp2, f2, fDpf2, this.dotStrokePaint);
            canvas.drawCircle(fM1124dp2, f2, fDpf2 - AndroidUtilities.m1124dp(1.0f), this.dotPaint);
            canvas.drawCircle(f, f2, fDpf2, this.dotStrokePaint);
            canvas.drawCircle(f, f2, fDpf2 - AndroidUtilities.m1124dp(1.0f), this.dotPaint);
            canvas.restoreToCount(saveCount);
        }
    }
}
