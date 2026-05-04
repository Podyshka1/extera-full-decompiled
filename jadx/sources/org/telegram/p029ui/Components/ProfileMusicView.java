package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.RenderNode;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ProfileActivity;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes3.dex */
public class ProfileMusicView extends View {
    private final Paint arrowPaint;
    private final Path arrowPath;
    private Text author;
    private ProfileActivity.AvatarImageView avatarView;
    private int backgroundColor;
    private final Paint backgroundPaint;
    private final ButtonBounce bounce;
    private final Path clipPath;
    private float currentHeight;
    private final PorterDuffColorFilter filterColorBlack;
    private final PorterDuffColorFilter filterColorWhite;
    private final Drawable icon;
    private final Paint iconPaint;
    private boolean ignoreRect;
    private float parentExpanded;
    private final RectF rect;
    private RenderNode renderNode;
    private float renderNodeScale;
    private float renderNodeTranslateY;
    private final Theme.ResourcesProvider resourcesProvider;
    private final Paint strokePaint;
    private int textColor;
    private Text title;
    private boolean withShadows;

    public ProfileMusicView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.filterColorWhite = new PorterDuffColorFilter(-1, mode);
        this.filterColorBlack = new PorterDuffColorFilter(-16777216, mode);
        this.iconPaint = new Paint();
        Paint paint = new Paint();
        this.arrowPaint = paint;
        Path path = new Path();
        this.arrowPath = path;
        this.rect = new RectF();
        this.backgroundPaint = new Paint(1);
        this.strokePaint = new Paint(1);
        this.clipPath = new Path();
        this.bounce = new ButtonBounce(this);
        this.textColor = -1;
        this.ignoreRect = false;
        this.resourcesProvider = resourcesProvider;
        this.icon = context.getResources().getDrawable(C2888R.drawable.files_music).mutate();
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeJoin(Paint.Join.ROUND);
        path.moveTo(0.0f, -AndroidUtilities.dpf2(3.33f));
        path.lineTo(AndroidUtilities.dpf2(3.16f), 0.0f);
        path.lineTo(0.0f, AndroidUtilities.dpf2(3.33f));
        setColor(null);
        setText("Author", " - Title");
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(37.0f), TLObject.FLAG_30));
    }

    public void setColor(MessagesController.PeerColor peerColor) {
        int bgColor1;
        int bgColor2;
        if (peerColor == null) {
            bgColor1 = Theme.getColor(Theme.key_actionBarDefault, this.resourcesProvider);
            bgColor2 = bgColor1;
        } else {
            bgColor1 = peerColor.getBgColor1(Theme.isCurrentThemeDark());
            bgColor2 = peerColor.getBgColor2(Theme.isCurrentThemeDark());
        }
        if (peerColor == null) {
            this.backgroundColor = Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider);
            this.withShadows = true;
        } else {
            this.backgroundColor = Theme.adaptHSV(ColorUtils.blendARGB(bgColor1, bgColor2, 0.15f), 0.04f, -0.09f);
            this.withShadows = false;
        }
        this.backgroundPaint.setColor(this.backgroundColor);
        checkTextColor();
    }

    private void checkTextColor() {
        boolean z = this.parentExpanded < 0.8f && AndroidUtilities.computePerceivedBrightness(this.backgroundColor) > 0.85f;
        this.textColor = z ? -16777216 : -1;
        this.icon.setColorFilter(z ? this.filterColorBlack : this.filterColorWhite);
        this.iconPaint.setColor(this.textColor);
        this.arrowPaint.setColor(Theme.multAlpha(this.textColor, 0.85f));
        invalidate();
    }

    public void setParentExpanded(float f) {
        if (this.parentExpanded != f) {
            this.parentExpanded = f;
            checkTextColor();
            invalidate();
        }
    }

    public void setMusicDocument(TLRPC.Document document) {
        CharSequence author = getAuthor(document);
        CharSequence title = getTitle(document);
        if (TextUtils.isEmpty(author)) {
            if (TextUtils.isEmpty(title)) {
                author = LocaleController.getString(C2888R.string.AudioUnknownArtist);
                title = " - " + LocaleController.getString(C2888R.string.AudioUnknownTitle);
            } else {
                author = _UrlKt.FRAGMENT_ENCODE_SET;
            }
        } else if (TextUtils.isEmpty(title)) {
            title = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            title = " - " + ((Object) title);
        }
        setText(author, title);
    }

    public static CharSequence getTitle(TLRPC.Document document) {
        if (document == null) {
            return null;
        }
        for (int i = 0; i < document.attributes.size(); i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeAudio) {
                String str = documentAttribute.title;
                return (str == null || str.length() == 0) ? FileLoader.getDocumentFileName(document) : str;
            }
        }
        String documentFileName = FileLoader.getDocumentFileName(document);
        if (TextUtils.isEmpty(documentFileName)) {
            return null;
        }
        return documentFileName;
    }

    public static CharSequence getAuthor(TLRPC.Document document) {
        if (document == null) {
            return null;
        }
        for (int i = 0; i < document.attributes.size(); i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if ((documentAttribute instanceof TLRPC.TL_documentAttributeAudio) && !documentAttribute.voice) {
                return documentAttribute.performer;
            }
        }
        return null;
    }

    public void setText(CharSequence charSequence, CharSequence charSequence2) {
        this.author = new Text(charSequence, 11.0f, AndroidUtilities.bold());
        this.title = new Text(charSequence2, 11.0f);
    }

    public void drawingBlur(boolean z) {
        if (this.ignoreRect == z && this.renderNode == null) {
            return;
        }
        this.ignoreRect = z;
        this.renderNode = null;
        this.avatarView = null;
        invalidate();
    }

    public void drawingBlur(RenderNode renderNode, ProfileActivity.AvatarImageView avatarImageView, float f, float f2) {
        this.ignoreRect = false;
        this.renderNode = renderNode;
        this.avatarView = avatarImageView;
        this.renderNodeScale = f;
        this.renderNodeTranslateY = f2;
        invalidate();
    }

    public void updatePosition(float f, float f2) {
        this.currentHeight = f2;
        setTranslationY(f - AndroidUtilities.m1124dp(12.0f));
        invalidate();
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (Utilities.clamp01(this.currentHeight / AndroidUtilities.m1124dp(21.0f)) <= 0.0f) {
            return false;
        }
        if (motionEvent.getAction() == 0) {
            this.bounce.setPressed(this.rect.contains(motionEvent.getX(), motionEvent.getY()));
        } else if (motionEvent.getAction() == 2 && this.bounce.isPressed()) {
            if (!this.rect.contains(motionEvent.getX(), motionEvent.getY())) {
                this.bounce.setPressed(false);
            }
        } else if (motionEvent.getAction() == 3) {
            this.bounce.setPressed(false);
        } else if (motionEvent.getAction() == 1) {
            if (this.bounce.isPressed()) {
                performClick();
            }
            this.bounce.setPressed(false);
        }
        return this.bounce.isPressed();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.author == null || this.title == null) {
            return;
        }
        float fClamp01 = Utilities.clamp01(this.currentHeight / AndroidUtilities.m1124dp(21.0f));
        float scale = this.bounce.getScale(0.02f);
        if (fClamp01 <= 0.0f) {
            return;
        }
        int width = getWidth() - (AndroidUtilities.m1124dp(12.0f) * 2);
        this.author.ellipsize((width - AndroidUtilities.m1124dp(35.0f)) / 2.0f);
        this.title.ellipsize((width - this.author.getWidth()) - AndroidUtilities.m1124dp(35.0f));
        float fM1124dp = AndroidUtilities.m1124dp(16.6f) + this.author.getWidth() + this.title.getWidth() + AndroidUtilities.m1124dp(8.0f);
        float fM1124dp2 = AndroidUtilities.m1124dp(16.0f) + fM1124dp;
        canvas.save();
        canvas.scale(scale, scale, getWidth() / 2.0f, getHeight() / 2.0f);
        this.rect.set((getWidth() - fM1124dp2) / 2.0f, AndroidUtilities.m1124dp(10.0f), (getWidth() + fM1124dp2) / 2.0f, AndroidUtilities.m1124dp(10.0f) + (AndroidUtilities.m1124dp(17.0f) * fClamp01));
        if (this.withShadows && SharedConfig.shadowsInSections) {
            this.backgroundPaint.setShadowLayer(AndroidUtilities.dpf2(2.0f), 0.0f, AndroidUtilities.dpf2(0.33f), Theme.multAlpha(167772160, fClamp01));
            this.strokePaint.setShadowLayer(AndroidUtilities.dpf2(0.33f), 0.0f, 0.0f, Theme.multAlpha(201326592, fClamp01));
            this.strokePaint.setColor(0);
        } else {
            this.backgroundPaint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        }
        int alpha = this.backgroundPaint.getAlpha();
        this.backgroundPaint.setAlpha((int) (alpha * fClamp01));
        if (this.withShadows && SharedConfig.shadowsInSections) {
            RectF rectF = this.rect;
            canvas.drawRoundRect(rectF, rectF.height() / 2.0f, this.rect.height() / 2.0f, this.strokePaint);
        }
        RectF rectF2 = this.rect;
        canvas.drawRoundRect(rectF2, rectF2.height() / 2.0f, this.rect.height() / 2.0f, this.backgroundPaint);
        this.backgroundPaint.setAlpha(alpha);
        this.clipPath.rewind();
        Path path = this.clipPath;
        RectF rectF3 = this.rect;
        path.addRoundRect(rectF3, rectF3.height() / 2.0f, this.rect.height() / 2.0f, Path.Direction.CW);
        canvas.save();
        canvas.clipPath(this.clipPath);
        if (!this.ignoreRect && this.renderNode != null && Build.VERSION.SDK_INT >= 29 && canvas.isHardwareAccelerated()) {
            canvas.save();
            canvas.translate(0.0f, this.renderNodeTranslateY);
            float f = this.renderNodeScale;
            canvas.scale(f, f);
            canvas.drawRenderNode(this.renderNode);
            canvas.restore();
        }
        canvas.translate((getWidth() - fM1124dp) / 2.0f, 0.0f);
        float height = getHeight() / 2.0f;
        AndroidUtilities.m1124dp(6.0f);
        AndroidUtilities.m1124dp(2.0f);
        int iM1124dp = AndroidUtilities.m1124dp(13.0f);
        int i = (int) height;
        int i2 = iM1124dp / 2;
        this.icon.setBounds(0, i - i2, iM1124dp, i + i2);
        this.icon.draw(canvas);
        canvas.translate(AndroidUtilities.m1124dp(16.6f), 0.0f);
        this.author.draw(canvas, 0.0f, height, this.textColor, fClamp01);
        canvas.translate(this.author.getWidth(), 0.0f);
        this.title.draw(canvas, 0.0f, height, this.textColor, fClamp01 * 0.85f);
        canvas.translate(this.title.getWidth(), 0.0f);
        this.arrowPaint.setStrokeWidth(AndroidUtilities.dpf2(1.16f));
        canvas.translate(AndroidUtilities.dpf2(4.8f), height);
        canvas.drawPath(this.arrowPath, this.arrowPaint);
        canvas.restore();
        canvas.restore();
    }
}
