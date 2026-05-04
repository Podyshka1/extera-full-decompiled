package org.telegram.p029ui.Components;

import android.graphics.Canvas;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.style.ReplacementSpan;
import android.view.View;
import java.util.Locale;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.p029ui.web.WebInstantView;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public class TextPaintImageReceiverSpan extends ReplacementSpan {
    private boolean alignTop;
    private int height;
    private ImageReceiver imageReceiver;
    private int width;

    public static /* synthetic */ void $r8$lambda$njb1CVCkH53R0cVT72Kh89O4uj4() {
    }

    public TextPaintImageReceiverSpan(View view, TLRPC.Document document, Object obj, int i, int i2, boolean z, boolean z2) {
        String str = String.format(Locale.US, "%d_%d_i", Integer.valueOf(i), Integer.valueOf(i2));
        this.width = i;
        this.height = i2;
        ImageReceiver imageReceiver = new ImageReceiver(view);
        this.imageReceiver = imageReceiver;
        imageReceiver.setInvalidateAll(true);
        if (z2) {
            this.imageReceiver.setDelegate(new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.ui.Components.TextPaintImageReceiverSpan$$ExternalSyntheticLambda2
                @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                public final void didSetImage(ImageReceiver imageReceiver2, boolean z3, boolean z4, boolean z5) {
                    TextPaintImageReceiverSpan.$r8$lambda$4MMEUN7lGItDcmEJ4PJPQuQdpRk(imageReceiver2, z3, z4, z5);
                }

                @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                public /* synthetic */ void didSetImageBitmap(int i3, String str2, Drawable drawable) {
                    ImageReceiver.ImageReceiverDelegate.CC.$default$didSetImageBitmap(this, i3, str2, drawable);
                }

                @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                public /* synthetic */ void onAnimationReady(ImageReceiver imageReceiver2) {
                    ImageReceiver.ImageReceiverDelegate.CC.$default$onAnimationReady(this, imageReceiver2);
                }
            });
        }
        this.imageReceiver.setImage(ImageLocation.getForDocument(document), str, ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 90), document), str, -1L, null, obj, 1);
        this.alignTop = z;
    }

    public static /* synthetic */ void $r8$lambda$4MMEUN7lGItDcmEJ4PJPQuQdpRk(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
        if (imageReceiver.canInvertBitmap()) {
            imageReceiver.setColorFilter(new ColorMatrixColorFilter(new float[]{-1.0f, 0.0f, 0.0f, 0.0f, 255.0f, 0.0f, -1.0f, 0.0f, 0.0f, 255.0f, 0.0f, 0.0f, -1.0f, 0.0f, 255.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f}));
        }
    }

    public TextPaintImageReceiverSpan(View view, WebInstantView.WebPhoto webPhoto, Object obj, int i, int i2, boolean z, boolean z2) {
        String.format(Locale.US, "%d_%d_i", Integer.valueOf(i), Integer.valueOf(i2));
        this.width = i;
        this.height = i2;
        ImageReceiver imageReceiver = new ImageReceiver(view);
        this.imageReceiver = imageReceiver;
        imageReceiver.setInvalidateAll(true);
        if (z2) {
            this.imageReceiver.setDelegate(new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.ui.Components.TextPaintImageReceiverSpan$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                public final void didSetImage(ImageReceiver imageReceiver2, boolean z3, boolean z4, boolean z5) {
                    TextPaintImageReceiverSpan.$r8$lambda$hL00ZSraoBvcqklhxroC5of8_Ck(imageReceiver2, z3, z4, z5);
                }

                @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                public /* synthetic */ void didSetImageBitmap(int i3, String str, Drawable drawable) {
                    ImageReceiver.ImageReceiverDelegate.CC.$default$didSetImageBitmap(this, i3, str, drawable);
                }

                @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                public /* synthetic */ void onAnimationReady(ImageReceiver imageReceiver2) {
                    ImageReceiver.ImageReceiverDelegate.CC.$default$onAnimationReady(this, imageReceiver2);
                }
            });
        }
        WebInstantView.loadPhoto(webPhoto, this.imageReceiver, new Runnable() { // from class: org.telegram.ui.Components.TextPaintImageReceiverSpan$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                TextPaintImageReceiverSpan.$r8$lambda$njb1CVCkH53R0cVT72Kh89O4uj4();
            }
        });
        this.alignTop = z;
    }

    public static /* synthetic */ void $r8$lambda$hL00ZSraoBvcqklhxroC5of8_Ck(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
        if (imageReceiver.canInvertBitmap()) {
            imageReceiver.setColorFilter(new ColorMatrixColorFilter(new float[]{-1.0f, 0.0f, 0.0f, 0.0f, 255.0f, 0.0f, -1.0f, 0.0f, 0.0f, 255.0f, 0.0f, 0.0f, -1.0f, 0.0f, 255.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f}));
        }
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        if (fontMetricsInt != null) {
            if (this.alignTop) {
                int iM1124dp = (fontMetricsInt.descent - fontMetricsInt.ascent) - AndroidUtilities.m1124dp(4.0f);
                int i3 = this.height - iM1124dp;
                fontMetricsInt.descent = i3;
                fontMetricsInt.bottom = i3;
                int i4 = 0 - iM1124dp;
                fontMetricsInt.ascent = i4;
                fontMetricsInt.top = i4;
            } else {
                int iM1124dp2 = ((-this.height) / 2) - AndroidUtilities.m1124dp(4.0f);
                fontMetricsInt.ascent = iM1124dp2;
                fontMetricsInt.top = iM1124dp2;
                int i5 = this.height;
                int iM1124dp3 = (i5 - (i5 / 2)) - AndroidUtilities.m1124dp(4.0f);
                fontMetricsInt.descent = iM1124dp3;
                fontMetricsInt.bottom = iM1124dp3;
            }
        }
        return this.width;
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        canvas.save();
        if (this.alignTop) {
            this.imageReceiver.setImageCoords((int) f, i3 - 1, this.width, this.height);
        } else {
            int iM1124dp = (i5 - AndroidUtilities.m1124dp(4.0f)) - i3;
            this.imageReceiver.setImageCoords((int) f, i3 + ((iM1124dp - r4) / 2), this.width, this.height);
        }
        this.imageReceiver.draw(canvas);
        canvas.restore();
    }
}
