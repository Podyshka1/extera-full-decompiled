package org.telegram.p029ui;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.Spannable;
import android.text.style.ReplacementSpan;
import android.view.View;
import com.exteragram.messenger.ExteraConfig;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MessagesController;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AvatarDrawable;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes3.dex */
public class AvatarSpan extends ReplacementSpan {
    private final AvatarDrawable avatarDrawable;
    private final int currentAccount;
    private final ImageReceiver imageReceiver;
    public boolean needDrawShadow;
    private View parent;
    private final View.OnAttachStateChangeListener parentAttachListener;
    private final Paint shadowPaint;
    private int shadowPaintAlpha;

    /* JADX INFO: renamed from: sz */
    private float f1885sz;
    private float translateX;
    private float translateY;
    public boolean usePaintAlpha;

    public AvatarSpan(View view, int i) {
        this(view, i, 18.0f);
    }

    public AvatarSpan(View view, int i, float f) {
        this.needDrawShadow = true;
        this.parentAttachListener = new View.OnAttachStateChangeListener() { // from class: org.telegram.ui.AvatarSpan.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view2) {
                AvatarSpan.this.imageReceiver.onAttachedToWindow();
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view2) {
                AvatarSpan.this.imageReceiver.onDetachedFromWindow();
            }
        };
        this.shadowPaintAlpha = 255;
        this.usePaintAlpha = true;
        this.currentAccount = i;
        ImageReceiver imageReceiver = new ImageReceiver(view);
        this.imageReceiver = imageReceiver;
        imageReceiver.setInvalidateAll(true);
        this.avatarDrawable = new AvatarDrawable();
        setSize(f);
        Paint paint = new Paint(1);
        this.shadowPaint = paint;
        paint.setShadowLayer(AndroidUtilities.m1124dp(1.0f), 0.0f, AndroidUtilities.m1124dp(0.66f), AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
        setParent(view);
    }

    public void setSize(float f) {
        this.avatarDrawable.setTextSize(AndroidUtilities.m1124dp(5.0f + f));
        this.imageReceiver.setRoundRadius(ExteraConfig.getAvatarCorners(f));
        this.f1885sz = f;
    }

    public void setParent(View view) {
        View view2 = this.parent;
        if (view2 == view) {
            return;
        }
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this.parentAttachListener);
            if (this.parent.isAttachedToWindow() && !view.isAttachedToWindow()) {
                this.imageReceiver.onDetachedFromWindow();
            }
        }
        View view3 = this.parent;
        if ((view3 == null || !view3.isAttachedToWindow()) && view != null && view.isAttachedToWindow()) {
            this.imageReceiver.onAttachedToWindow();
        }
        this.parent = view;
        this.imageReceiver.setParentView(view);
        if (view != null) {
            view.addOnAttachStateChangeListener(this.parentAttachListener);
        }
    }

    public static void checkSpansParent(CharSequence charSequence, View view) {
        if (charSequence != null && (charSequence instanceof Spannable)) {
            Spannable spannable = (Spannable) charSequence;
            for (AvatarSpan avatarSpan : (AvatarSpan[]) spannable.getSpans(0, spannable.length(), AvatarSpan.class)) {
                avatarSpan.setParent(view);
            }
        }
    }

    public void setDialogId(long j) {
        if (j >= 0) {
            setUser(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j)));
        } else {
            setChat(MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-j)));
        }
    }

    public void setChat(TLRPC.Chat chat) {
        this.avatarDrawable.setInfo(this.currentAccount, chat);
        this.imageReceiver.setForUserOrChat(chat, this.avatarDrawable);
    }

    public void setUser(TLRPC.User user) {
        this.avatarDrawable.setInfo(this.currentAccount, user);
        this.imageReceiver.setForUserOrChat(user, this.avatarDrawable);
    }

    public void setObject(TLObject tLObject) {
        this.avatarDrawable.setInfo(this.currentAccount, tLObject);
        this.imageReceiver.setForUserOrChat(tLObject, this.avatarDrawable);
    }

    public void setImageDrawable(Drawable drawable) {
        this.imageReceiver.setImageBitmap(drawable);
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        return AndroidUtilities.m1124dp(this.f1885sz);
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        if (this.needDrawShadow) {
            if (this.shadowPaintAlpha != paint.getAlpha()) {
                Paint paint2 = this.shadowPaint;
                int alpha = paint.getAlpha();
                this.shadowPaintAlpha = alpha;
                paint2.setAlpha(alpha);
                this.shadowPaint.setShadowLayer(AndroidUtilities.m1124dp(1.0f), 0.0f, AndroidUtilities.m1124dp(0.66f), Theme.multAlpha(AndroidUtilities.DARK_STATUS_BAR_OVERLAY, this.shadowPaintAlpha / 255.0f));
            }
            float f2 = (i3 + i5) / 2.0f;
            canvas.drawRoundRect(this.translateX + f, (this.translateY + f2) - (AndroidUtilities.m1124dp(this.f1885sz) / 2.0f), AndroidUtilities.m1124dp(this.f1885sz) + this.translateX + f, ((this.translateY + f2) - (AndroidUtilities.m1124dp(this.f1885sz) / 2.0f)) + AndroidUtilities.m1124dp(this.f1885sz), ExteraConfig.getAvatarCorners(this.f1885sz), ExteraConfig.getAvatarCorners(this.f1885sz), this.shadowPaint);
        }
        this.imageReceiver.setImageCoords(this.translateX + f, (this.translateY + ((i3 + i5) / 2.0f)) - (AndroidUtilities.m1124dp(this.f1885sz) / 2.0f), AndroidUtilities.m1124dp(this.f1885sz), AndroidUtilities.m1124dp(this.f1885sz));
        this.imageReceiver.setAlpha(this.usePaintAlpha ? paint.getAlpha() / 255.0f : 1.0f);
        this.imageReceiver.draw(canvas);
    }

    public void translate(float f, float f2) {
        this.translateX = f;
        this.translateY = f2;
    }
}
