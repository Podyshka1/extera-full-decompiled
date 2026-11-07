package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.RenderNode;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ProfileActivity;

/* JADX INFO: loaded from: classes7.dex */
public class ProfileMusicView extends View {
    private final Paint arrowPaint;
    private final Path arrowPath;
    private Text author;
    private ProfileActivity.AvatarImageView avatarView;
    private final Paint backgroundPaint;
    private final ButtonBounce bounce;
    private int buttonColor;
    private final Path clipAvatarPath;
    private final Path clipPath;
    private float currentHeight;
    private final PorterDuffColorFilter filterColorBlack;
    private final PorterDuffColorFilter filterColorWhite;
    private boolean hasColorById;
    protected boolean hasProfileColor;
    private final Drawable icon;
    private final Paint iconPaint;
    private boolean ignoreRect;
    private ProfileMusicView leadingView;
    private final Matrix matrix;
    private float parentExpanded;
    private RadialGradient radialGradient;
    private float radialGradientWidth;
    private final RectF rect;
    private RenderNode renderNode;
    private float renderNodeScale;
    private float renderNodeTranslateY;
    private final Theme.ResourcesProvider resourcesProvider;
    private final Paint shaderPaint;
    protected int textColor;
    private Text title;
    private ProfileMusicView trailingView;

    public void setTrailingView(ProfileMusicView profileMusicView) {
        this.trailingView = profileMusicView;
        profileMusicView.leadingView = this;
        invalidate();
        profileMusicView.invalidate();
    }

    public void getButtonBoundsOnScreen(RectF rectF) {
        getLocationOnScreen(new int[2]);
        rectF.set(this.rect);
        rectF.offset(r0[0], r0[1]);
    }

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
        this.clipPath = new Path();
        this.clipAvatarPath = new Path();
        this.bounce = new ButtonBounce(this);
        this.textColor = -1;
        this.shaderPaint = new Paint(1);
        this.matrix = new Matrix();
        this.ignoreRect = false;
        this.resourcesProvider = resourcesProvider;
        this.icon = context.getResources().getDrawable(C2807R.drawable.files_music).mutate();
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
    public void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(37.0f), TLObject.FLAG_30));
    }

    public void setColor(MessagesController.PeerColor peerColor) {
        this.hasProfileColor = peerColor != null;
        ProfileMusicView profileMusicView = this.trailingView;
        if (profileMusicView != null) {
            profileMusicView.setColor(peerColor);
        }
        invalidate();
    }

    public void setButtonColor(int i, boolean z) {
        ProfileMusicView profileMusicView = this.trailingView;
        if (profileMusicView != null) {
            profileMusicView.setButtonColor(i, z);
        }
        if (this.buttonColor == i && this.hasColorById == z) {
            return;
        }
        this.buttonColor = i;
        this.hasColorById = z;
        this.radialGradient = null;
        this.backgroundPaint.setColor(i);
        checkTextColor();
    }

    private boolean isButtonColorLight() {
        return AndroidUtilities.computePerceivedBrightness(this.buttonColor) > 0.72f;
    }

    private void checkTextColor() {
        boolean z = this.parentExpanded < 0.8f && isButtonColorLight();
        this.textColor = z ? -16777216 : -1;
        this.icon.setColorFilter(z ? this.filterColorBlack : this.filterColorWhite);
        this.iconPaint.setColor(this.textColor);
        this.arrowPaint.setColor(Theme.multAlpha(this.textColor, 0.85f));
        invalidate();
    }

    public void setParentExpanded(float f) {
        ProfileMusicView profileMusicView = this.trailingView;
        if (profileMusicView != null) {
            profileMusicView.setParentExpanded(f);
        }
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
                author = LocaleController.getString(C2807R.string.AudioUnknownArtist);
                title = " - " + LocaleController.getString(C2807R.string.AudioUnknownTitle);
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
        setContentDescription(LocaleController.getString(C2807R.string.AccDescrProfileMusic) + " " + ((Object) charSequence) + " — " + ((Object) charSequence2));
    }

    public void drawingBlur(boolean z) {
        ProfileMusicView profileMusicView = this.trailingView;
        if (profileMusicView != null) {
            profileMusicView.drawingBlur(z);
        }
        if (this.ignoreRect == z && this.renderNode == null) {
            return;
        }
        this.ignoreRect = z;
        this.renderNode = null;
        this.avatarView = null;
        invalidate();
    }

    public void drawingBlur(RenderNode renderNode, ProfileActivity.AvatarImageView avatarImageView, float f, float f2) {
        ProfileMusicView profileMusicView = this.trailingView;
        if (profileMusicView != null) {
            profileMusicView.drawingBlur(renderNode, avatarImageView, f, (f2 - getMeasuredHeight()) + this.trailingView.getMeasuredHeight());
        }
        this.ignoreRect = false;
        this.renderNode = renderNode;
        this.avatarView = avatarImageView;
        this.renderNodeScale = f;
        this.renderNodeTranslateY = f2;
        invalidate();
    }

    @Override // android.view.View
    public void setAlpha(float f) {
        super.setAlpha(f);
        ProfileMusicView profileMusicView = this.trailingView;
        if (profileMusicView != null) {
            profileMusicView.setAlpha(f);
        }
    }

    public boolean isOnProfilePhoto() {
        return this.parentExpanded >= 0.8f;
    }

    public void updatePosition(float f, float f2) {
        ProfileMusicView profileMusicView = this.trailingView;
        if (profileMusicView != null) {
            profileMusicView.updatePosition(f, f2);
        }
        this.currentHeight = f2;
        setTranslationY(f - AndroidUtilities.dp(12.0f));
        invalidate();
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (Utilities.clamp01(this.currentHeight / AndroidUtilities.dp(21.0f)) <= 0.0f) {
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

    public float getContentWidth(float f) {
        float fMax = Math.max(0.0f, ((f - AndroidUtilities.dp(16.0f)) - AndroidUtilities.dp(16.6f)) - AndroidUtilities.dp(8.0f));
        this.author.ellipsize(fMax / 2.0f);
        this.title.ellipsize(Math.max(0.0f, fMax - this.author.getWidth()));
        return AndroidUtilities.dp(16.6f) + this.author.getWidth() + this.title.getWidth() + AndroidUtilities.dp(8.0f);
    }

    public void drawContent(Canvas canvas, float f) {
        float height = getHeight() / 2.0f;
        int iDp = AndroidUtilities.dp(13.0f);
        int i = (int) height;
        int i2 = iDp / 2;
        this.icon.setBounds(0, i - i2, iDp, i + i2);
        this.icon.draw(canvas);
        canvas.translate(AndroidUtilities.dp(16.6f), 0.0f);
        this.author.draw(canvas, 0.0f, height, this.textColor, f);
        canvas.translate(this.author.getWidth(), 0.0f);
        this.title.draw(canvas, 0.0f, height, this.textColor, f * 0.85f);
        canvas.translate(this.title.getWidth(), 0.0f);
        this.arrowPaint.setStrokeWidth(AndroidUtilities.dpf2(1.16f));
        canvas.translate(AndroidUtilities.dpf2(4.8f), height);
        canvas.drawPath(this.arrowPath, this.arrowPaint);
    }

    private boolean hasVisibleCompanion() {
        ProfileMusicView profileMusicView = this.trailingView;
        if (profileMusicView == null) {
            profileMusicView = this.leadingView;
        }
        return profileMusicView != null && profileMusicView.getVisibility() == 0;
    }

    private float getPillWidth(float f) {
        return AndroidUtilities.dp(16.0f) + getContentWidth(f);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float pillWidth;
        float width;
        RenderNode renderNode;
        if (this.author == null || this.title == null) {
            return;
        }
        float fClamp01 = Utilities.clamp01(this.currentHeight / AndroidUtilities.dp(21.0f));
        float scale = this.bounce.getScale(0.02f);
        if (fClamp01 <= 0.0f) {
            return;
        }
        int width2 = getWidth() - (AndroidUtilities.dp(12.0f) * 2);
        if (hasVisibleCompanion()) {
            ProfileMusicView profileMusicView = this.leadingView;
            if (profileMusicView == null) {
                profileMusicView = this;
            }
            ProfileMusicView profileMusicView2 = this.trailingView;
            if (profileMusicView2 == null) {
                profileMusicView2 = this;
            }
            float f = width2;
            pillWidth = profileMusicView2.getPillWidth(f / 2.0f);
            float pillWidth2 = profileMusicView.getPillWidth(Math.max(0.0f, (f - pillWidth) - AndroidUtilities.dp(6.0f)));
            width = (((getWidth() - pillWidth2) - AndroidUtilities.dp(6.0f)) - pillWidth) / 2.0f;
            ProfileMusicView profileMusicView3 = this.leadingView;
            if (profileMusicView3 == null) {
                pillWidth = pillWidth2;
            }
            if (profileMusicView3 != null) {
                width += pillWidth2 + AndroidUtilities.dp(6.0f);
            }
        } else {
            pillWidth = getPillWidth(width2);
            width = (getWidth() - pillWidth) / 2.0f;
        }
        this.rect.set(width, AndroidUtilities.dp(10.0f), pillWidth + width, AndroidUtilities.dp(10.0f) + (AndroidUtilities.dp(17.0f) * fClamp01));
        canvas.save();
        canvas.scale(scale, scale, this.rect.centerX(), getHeight() / 2.0f);
        boolean z = SharedConfig.shadowsInSections && isButtonColorLight() && this.parentExpanded < 0.5f;
        float f2 = this.hasColorById ? 0.1f : 1.0f;
        Paint paint = this.backgroundPaint;
        if (z) {
            paint.setShadowLayer(AndroidUtilities.dpf2(1.5f), 0.0f, 0.0f, Theme.multAlpha(536870912, fClamp01 * f2));
        } else {
            paint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        }
        int alpha = this.backgroundPaint.getAlpha();
        this.backgroundPaint.setAlpha((int) (alpha * fClamp01 * f2));
        RectF rectF = this.rect;
        canvas.drawRoundRect(rectF, rectF.height() / 2.0f, this.rect.height() / 2.0f, this.backgroundPaint);
        this.backgroundPaint.setAlpha(alpha);
        if (this.hasColorById && this.buttonColor != 0) {
            if (this.radialGradient == null || this.radialGradientWidth != this.rect.width()) {
                this.radialGradientWidth = this.rect.width();
                RadialGradient radialGradient = new RadialGradient(this.rect.width() / 2.0f, AndroidUtilities.dp(17.0f) / 2.0f, this.rect.width() * 0.65f, Theme.multAlpha(this.buttonColor, 0.8f), this.buttonColor, Shader.TileMode.CLAMP);
                this.radialGradient = radialGradient;
                this.shaderPaint.setShader(radialGradient);
            }
            Matrix matrix = this.matrix;
            RectF rectF2 = this.rect;
            matrix.setTranslate(rectF2.left, rectF2.top);
            this.radialGradient.setLocalMatrix(this.matrix);
            this.shaderPaint.setAlpha((int) (255.0f * fClamp01));
            RectF rectF3 = this.rect;
            canvas.drawRoundRect(rectF3, rectF3.height() / 2.0f, this.rect.height() / 2.0f, this.shaderPaint);
        }
        this.clipPath.rewind();
        Path path = this.clipPath;
        RectF rectF4 = this.rect;
        path.addRoundRect(rectF4, rectF4.height() / 2.0f, this.rect.height() / 2.0f, Path.Direction.CW);
        canvas.save();
        canvas.clipPath(this.clipPath);
        if (!this.ignoreRect && (renderNode = this.renderNode) != null && Build.VERSION.SDK_INT >= 29 && renderNode.hasDisplayList() && canvas.isHardwareAccelerated()) {
            canvas.save();
            ProfileActivity.AvatarImageView avatarImageView = this.avatarView;
            if (avatarImageView != null) {
                View view = (View) avatarImageView.getParent();
                float x = view.getX() - getX();
                float y = view.getY() - getTranslationY();
                float width3 = view.getWidth() * view.getScaleX();
                float height = view.getHeight() * view.getScaleY();
                this.clipAvatarPath.rewind();
                this.clipAvatarPath.addRoundRect(x, y, x + width3, y + height, this.avatarView.getRoundRadiusForExpand() * view.getScaleX(), this.avatarView.getRoundRadiusForExpand() * view.getScaleY(), Path.Direction.CCW);
                canvas.clipPath(this.clipAvatarPath);
            }
            canvas.translate(0.0f, this.renderNodeTranslateY);
            float f3 = this.renderNodeScale;
            canvas.scale(f3, f3);
            canvas.drawRenderNode(this.renderNode);
            canvas.restore();
        }
        canvas.translate(this.rect.left + AndroidUtilities.dp(8.0f), 0.0f);
        drawContent(canvas, fClamp01);
        canvas.restore();
        canvas.restore();
    }
}
