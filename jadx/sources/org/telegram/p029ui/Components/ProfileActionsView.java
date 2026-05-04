package org.telegram.p029ui.Components;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.RenderNode;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import com.exteragram.messenger.icons.IconManager;
import com.exteragram.messenger.utils.system.VibratorUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.function.Predicate;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.ProfileActionsView;
import org.telegram.p029ui.ProfileActivity;
import org.telegram.tgnet.TLObject;
import p022j$.util.Collection;
import p022j$.util.function.Predicate$CC;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ProfileActionsView extends View {
    private final List actions;
    private int activeCount;
    private final Set allAvailableActions;
    private ProfileActivity.AvatarImageView avatarView;
    private Action callAction;
    private boolean callAnimationStateLoaded;
    private float callBackwardAnimateFromX;
    private float callBackwardAnimateFromY;
    private final Path clipAvatarPath;
    public float clipHeight;
    private final Path clipPath;
    private int color;
    private float currentHeight;
    private long downTime;
    private float downX;
    private float downY;
    private Action firstAction;
    private boolean hasColorById;
    private Action hit;
    private boolean ignoreRect;
    public boolean isAnimatingCallAction;
    private boolean isApplying;
    private boolean isNotificationsEnabled;
    public boolean isOpeningLayout;
    private Action lastAction;
    private ColorFilter lastColorFilter;
    private int lastColorFilterColor;
    private final Matrix matrix;
    public int mode;
    private OnActionClickListener onActionClickListener;
    private final Paint paint;
    private float parentExpanded;
    private final Path pathTmp;
    private RadialGradient radialGradient;
    private RenderNode renderNode;
    private float renderNodeScale;
    private float renderNodeTranslateY;
    private final Paint shaderPaint;
    private final int targetHeight;
    private int textColor;
    final float textPadding;
    final float top;
    final float xpadding;
    final float ypadding;

    /* JADX INFO: loaded from: classes7.dex */
    public interface OnActionClickListener {
        void onClick(int i, float f, float f2);
    }

    private void checkPaints() {
    }

    private void updateClipPath(Action action, float f, Path path) {
        path.rewind();
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(action.rect);
        rectF.inset((action.rect.width() / 2.0f) * (1.0f - action.getScale()), (action.rect.height() / 2.0f) * (1.0f - action.getScale()));
        path.addRoundRect(rectF, f, f, Path.Direction.CCW);
    }

    public ProfileActionsView(Context context, int i) {
        super(context);
        this.actions = new ArrayList();
        Paint paint = new Paint();
        this.paint = paint;
        this.shaderPaint = new Paint();
        this.isAnimatingCallAction = false;
        this.isOpeningLayout = true;
        this.clipHeight = -1.0f;
        this.clipAvatarPath = new Path();
        this.clipPath = new Path();
        this.pathTmp = new Path();
        this.activeCount = 0;
        this.ignoreRect = false;
        this.currentHeight = 0.0f;
        this.onActionClickListener = null;
        this.allAvailableActions = new HashSet();
        this.mode = 6;
        this.callAction = null;
        this.color = 0;
        this.matrix = new Matrix();
        this.textColor = -1;
        this.hit = null;
        this.callAnimationStateLoaded = false;
        this.callBackwardAnimateFromX = -1.0f;
        this.callBackwardAnimateFromY = -1.0f;
        paint.setColor(-16777216);
        paint.setAlpha(40);
        float fDpf2 = AndroidUtilities.dpf2(12.0f);
        this.ypadding = fDpf2;
        this.xpadding = fDpf2;
        float fDpf22 = AndroidUtilities.dpf2(8.0f);
        this.top = fDpf22;
        this.textPadding = AndroidUtilities.dpf2(4.0f);
        this.targetHeight = (int) ((i - fDpf2) - fDpf22);
        setBackgroundColor(0);
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

    public void setOnActionClickListener(OnActionClickListener onActionClickListener) {
        this.onActionClickListener = onActionClickListener;
    }

    public void setParentExpanded(float f) {
        if (this.parentExpanded != f) {
            this.parentExpanded = f;
            checkPaints();
            invalidate();
        }
    }

    public void setActionsColor(int i, int i2, boolean z) {
        if (this.radialGradient != null && this.color == i && this.textColor == i2 && this.hasColorById == z) {
            return;
        }
        this.color = i;
        this.textColor = i2;
        this.hasColorById = z;
        createColorShader();
        checkPaints();
    }

    private boolean isButtonColorLight() {
        return AndroidUtilities.computePerceivedBrightness(this.color) > 0.72f;
    }

    private void createColorShader() {
        int i = this.color;
        if (i == 0) {
            return;
        }
        if (!this.hasColorById) {
            this.paint.setColor(i);
            return;
        }
        int measuredWidth = getMeasuredWidth();
        if (measuredWidth <= 0) {
            return;
        }
        float gap = ((measuredWidth - (getGap() * Math.max(0, this.activeCount - 1))) - (this.xpadding * 2.0f)) / Math.max(1, this.activeCount);
        RadialGradient radialGradient = new RadialGradient(gap / 2.0f, this.targetHeight / 2.0f, this.hasColorById ? gap * 0.65f : 1.0f, Theme.multAlpha(this.color, 0.8f), this.color, Shader.TileMode.CLAMP);
        this.radialGradient = radialGradient;
        this.shaderPaint.setShader(radialGradient);
    }

    private void measureActions() {
        if (getMeasuredWidth() <= 0 || this.activeCount <= 0) {
            return;
        }
        float itemWidth = getItemWidth();
        for (int i = 0; i < this.actions.size(); i++) {
            Action action = (Action) this.actions.get(i);
            if (action.text != null) {
                action.text.setMaxWidth(itemWidth - AndroidUtilities.m1124dp(2.0f));
                action.textScale = action.text.getLineCount() >= 3 ? 0.75f : action.text.getLineCount() >= 2 ? 0.85f : 1.0f;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(View.MeasureSpec.getSize(i), View.MeasureSpec.makeMeasureSpec((int) (this.targetHeight + this.top + this.ypadding), TLObject.FLAG_30));
        measureActions();
    }

    public void updatePosition(float f, float f2) {
        this.currentHeight = f2;
        setTranslationY(f);
        invalidate();
    }

    private float getGap() {
        return this.xpadding / 2.0f;
    }

    private float getItemWidth() {
        int measuredWidth = getMeasuredWidth();
        float gap = getGap();
        return ((measuredWidth - (gap * (r2 - 1))) - (this.xpadding * 2.0f)) / this.activeCount;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        float f2 = this.clipHeight;
        float f3 = 0.0f;
        if (f2 >= 0.0f) {
            float y = f2 - getY();
            if (y <= 0.0f) {
                return;
            } else {
                canvas.clipRect(0.0f, 0.0f, getMeasuredWidth(), y);
            }
        }
        float fMax = Math.max(0.0f, (this.currentHeight - this.ypadding) - this.top);
        if (fMax <= 0.0f) {
            return;
        }
        float gap = getGap();
        float itemWidth = getItemWidth();
        float f4 = this.xpadding;
        float roundRadius = getRoundRadius();
        if (this.renderNode != null) {
            this.clipPath.rewind();
        }
        int size = this.actions.size();
        Action action = null;
        Action action2 = null;
        int i = 0;
        while (i < size) {
            Action action3 = (Action) this.actions.get(i);
            if (action3.isDeleted) {
                f = f3;
            } else {
                if (action3.isDeleting) {
                    f = f3;
                } else {
                    RectF rectF = action3.rect;
                    float f5 = this.top;
                    f = f3;
                    rectF.set(f4, f5, f4 + itemWidth, f5 + fMax);
                    f4 += itemWidth + gap;
                    if (action == null) {
                        action = action3;
                    }
                    action2 = action3;
                }
                action3.updatePosition();
                if (this.renderNode != null) {
                    RectF rectF2 = AndroidUtilities.rectTmp;
                    rectF2.set(action3.rect);
                    rectF2.inset((action3.rect.width() / 2.0f) * (1.0f - action3.getScale()), (action3.rect.height() / 2.0f) * (1.0f - action3.getScale()));
                    rectF2.inset(-1.0f, -1.0f);
                    this.clipPath.addRoundRect(rectF2, roundRadius, roundRadius, Path.Direction.CCW);
                }
            }
            i++;
            f3 = f;
        }
        float f6 = f3;
        this.firstAction = action;
        this.lastAction = action2;
        if (this.renderNode != null) {
            for (int i2 = 0; i2 < size; i2++) {
                Action action4 = (Action) this.actions.get(i2);
                if (!action4.isDeleted) {
                    updateClipPath(action4, roundRadius, this.pathTmp);
                    this.clipPath.addPath(this.pathTmp);
                }
            }
        }
        float fClamp01 = Utilities.clamp01(fMax / this.targetHeight);
        float fClamp012 = Utilities.clamp01((fClamp01 - 0.2f) / 0.8f);
        if (fClamp012 <= f6) {
            return;
        }
        if (!this.ignoreRect) {
            for (int i3 = 0; i3 < size; i3++) {
                Action action5 = (Action) this.actions.get(i3);
                if (!action5.isDeleted) {
                    int alpha = this.paint.getAlpha();
                    this.paint.setAlpha((int) (((int) (action5.getAlpha() * fClamp012 * alpha)) * (this.radialGradient != null ? 0.1f : 1.0f)));
                    updateClipPath(action5, roundRadius, this.pathTmp);
                    RectF rectF3 = AndroidUtilities.rectTmp;
                    canvas.drawRoundRect(rectF3, roundRadius, roundRadius, this.paint);
                    if (this.radialGradient != null) {
                        drawGradient(canvas, action5, fClamp012);
                    }
                    this.paint.setAlpha(alpha);
                    action5.rippleDrawable.setBounds((int) rectF3.left, (int) rectF3.top, (int) rectF3.right, (int) rectF3.bottom);
                    action5.rippleDrawable.draw(canvas);
                }
            }
        }
        drawRenderNode(canvas);
        float fClamp013 = Utilities.clamp01((fClamp01 - 0.4f) / 0.6f);
        if (fClamp013 > f6) {
            for (int i4 = 0; i4 < size; i4++) {
                drawAction(canvas, (Action) this.actions.get(i4), fClamp01, fClamp013);
            }
        }
    }

    private void drawGradient(Canvas canvas, Action action, float f) {
        if (this.radialGradient != null) {
            int alpha = this.shaderPaint.getAlpha();
            this.shaderPaint.setAlpha((int) (action.getAlpha() * f * alpha));
            Matrix matrix = this.matrix;
            RectF rectF = AndroidUtilities.rectTmp;
            matrix.setTranslate(rectF.left, rectF.top);
            this.radialGradient.setLocalMatrix(this.matrix);
            float roundRadius = getRoundRadius();
            canvas.drawRoundRect(rectF, roundRadius, roundRadius, this.shaderPaint);
            this.shaderPaint.setAlpha(alpha);
        }
    }

    private void drawRenderNode(Canvas canvas) {
        RenderNode renderNode = this.renderNode;
        if (renderNode == null || Build.VERSION.SDK_INT < 29 || !renderNode.hasDisplayList() || !canvas.isHardwareAccelerated()) {
            return;
        }
        canvas.save();
        ProfileActivity.AvatarImageView avatarImageView = this.avatarView;
        if (avatarImageView != null) {
            View view = (View) avatarImageView.getParent();
            float x = view.getX();
            float y = view.getY() - getTranslationY();
            float width = view.getWidth() * view.getScaleX();
            float height = view.getHeight() * view.getScaleY();
            this.clipAvatarPath.rewind();
            this.clipAvatarPath.addRoundRect(x, y, width + x, height + y, this.avatarView.getRoundRadiusForExpand() * view.getScaleX(), this.avatarView.getRoundRadiusForExpand() * view.getScaleY(), Path.Direction.CCW);
            canvas.clipPath(this.clipAvatarPath);
        }
        canvas.clipPath(this.clipPath);
        canvas.translate(0.0f, this.renderNodeTranslateY);
        float f = this.renderNodeScale;
        canvas.scale(f, f);
        canvas.drawRenderNode(this.renderNode);
        canvas.restore();
    }

    public void stopLoading(int i) {
        stopLoading(find(i));
    }

    private void stopLoading(Action action) {
        if (action == null || !action.isLoading) {
            return;
        }
        action.isLoading = false;
        invalidate();
    }

    private void updateBounds(Action action) {
        float fCenterX = action.rect.centerX();
        action.rect.centerY();
        float fM1124dp = AndroidUtilities.m1124dp(24.0f);
        float f = 0.5f * fM1124dp;
        float fMax = Math.max(0.0f, ((this.targetHeight - (action.text.getHeight() * action.textScale)) / 3.0f) + AndroidUtilities.dpf2(2.0f));
        action.setBounds((int) (fCenterX - f), (int) fMax, (int) (fCenterX + f), (int) (fMax + fM1124dp));
    }

    private void drawAction(Canvas canvas, Action action, float f, float f2) {
        if (action == null || action.isDeleted) {
            return;
        }
        boolean zIsButtonColorLight = isButtonColorLight();
        float fClamp = !zIsButtonColorLight ? 1.0f : MathUtils.clamp((this.parentExpanded - 0.75f) / 0.25f, 0.0f, 1.0f);
        if (zIsButtonColorLight && Build.VERSION.SDK_INT < 31) {
            fClamp = 0.0f;
        }
        int iBlendARGB = ColorUtils.blendARGB(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText), -1, fClamp);
        if (this.lastColorFilter == null || this.lastColorFilterColor != iBlendARGB) {
            this.lastColorFilterColor = iBlendARGB;
            this.lastColorFilter = new PorterDuffColorFilter(iBlendARGB, PorterDuff.Mode.SRC_IN);
        }
        canvas.save();
        float alpha = f2 * action.getAlpha();
        float fCenterX = action.rect.centerX();
        float fCenterY = action.rect.centerY();
        float scale = f * action.getScale();
        canvas.scale(scale, scale, fCenterX, fCenterY);
        canvas.clipRect(action.rect);
        updateBounds(action);
        float height = ((action.bounds.bottom + action.bounds.top) - ((action.text.getHeight() * action.textScale) / 2.0f)) - AndroidUtilities.m1124dp(6.0f);
        canvas.save();
        canvas.scale(action.textScale, action.textScale, fCenterX, ((action.text.getHeight() * action.textScale) / 2.0f) + height);
        action.text.draw(canvas, fCenterX - (action.text.getWidth() / 2.0f), height, iBlendARGB, alpha);
        canvas.restore();
        int i = action.iconTranslationY;
        if (i != 0) {
            canvas.translate(0.0f, i);
        }
        float f3 = action.iconScale;
        if (f3 != 1.0f) {
            canvas.scale(f3, f3, action.bounds.centerX(), action.bounds.centerY());
        }
        if (!this.isAnimatingCallAction || action.key != 5) {
            boolean zIsBasePackOnly = IconManager.INSTANCE.isBasePackOnly(0);
            float f4 = zIsBasePackOnly ? (1.0f - fClamp) * alpha : 0.0f;
            float f5 = !zIsBasePackOnly ? alpha : fClamp * alpha;
            if (action.drawableAnimated != null) {
                if (action.key == 1) {
                    drawActionDrawable(canvas, action.drawableOutline, f4);
                    drawActionDrawable(canvas, action.drawableAnimated, f5);
                } else {
                    drawActionDrawable(canvas, action.drawableAnimated, alpha);
                }
            } else {
                drawActionDrawable(canvas, action.drawableOutline, f4);
                drawActionDrawable(canvas, action.drawableFilled, f5);
            }
        }
        canvas.restore();
        drawLoading(canvas, action, alpha);
    }

    private void drawActionDrawable(Canvas canvas, Drawable drawable, float f) {
        if (drawable == null) {
            return;
        }
        drawable.setColorFilter(this.lastColorFilter);
        drawable.setAlpha((int) (f * 255.0f));
        drawable.draw(canvas);
    }

    private void drawLoading(Canvas canvas, Action action, float f) {
        if (action.stopDelay > 0 && System.currentTimeMillis() > ((long) action.stopDelay) + action.startTime) {
            action.isLoading = false;
        }
        if (action.isLoading) {
            LoadingDrawable loadingDrawable = action.loadingDrawable;
            if (loadingDrawable == null) {
                LoadingDrawable loadingDrawable2 = new LoadingDrawable();
                action.loadingDrawable = loadingDrawable2;
                loadingDrawable2.setCallback(this);
                action.loadingDrawable.setColors(Theme.multAlpha(-1, 0.1f), Theme.multAlpha(-1, 0.3f), Theme.multAlpha(-1, 0.35f), Theme.multAlpha(-1, 0.8f));
                action.loadingDrawable.setAppearByGradient(true);
                action.loadingDrawable.strokePaint.setStrokeWidth(AndroidUtilities.dpf2(1.25f));
            } else if (loadingDrawable.isDisappeared() || action.loadingDrawable.isDisappearing()) {
                action.loadingDrawable.reset();
                action.loadingDrawable.resetDisappear();
            }
        } else {
            LoadingDrawable loadingDrawable3 = action.loadingDrawable;
            if (loadingDrawable3 != null && !loadingDrawable3.isDisappearing() && !action.loadingDrawable.isDisappeared()) {
                action.loadingDrawable.disappear();
            }
        }
        LoadingDrawable loadingDrawable4 = action.loadingDrawable;
        if (loadingDrawable4 != null) {
            loadingDrawable4.setBounds(action.rect);
            action.loadingDrawable.setRadii(getRoundRadius());
            action.loadingDrawable.setAlpha((int) (f * 255.0f));
            action.loadingDrawable.draw(canvas);
        }
    }

    public float getRoundRadius() {
        return AndroidUtilities.m1124dp(16.0f);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Action action;
        if (this.currentHeight < AndroidUtilities.m1124dp(8.0f)) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        int action2 = motionEvent.getAction();
        if (action2 == 0) {
            this.hit = null;
            int size = this.actions.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                }
                Action action3 = (Action) this.actions.get(i);
                if (!action3.isDeleting && action3.rect.contains(x, y)) {
                    this.hit = action3;
                    this.downX = x;
                    this.downY = y;
                    this.downTime = System.currentTimeMillis();
                    this.hit.bounce.setPressed(true);
                    this.hit.rippleDrawable.setHotspot(x, y);
                    this.hit.rippleDrawable.setState(new int[]{R.attr.state_pressed, R.attr.state_enabled});
                    break;
                }
                i++;
            }
        } else if (action2 == 2) {
            if (this.hit != null && (Math.abs(x - this.downX) > 20.0f || Math.abs(y - this.downY) > 20.0f)) {
                this.hit.bounce.setPressed(false);
                this.hit.rippleDrawable.setState(new int[0]);
                this.hit = null;
            }
        } else if ((action2 == 1 || action2 == 3) && (action = this.hit) != null) {
            action.bounce.setPressed(false);
            this.hit.rippleDrawable.setState(new int[0]);
            if (action2 == 1 && this.hit.rect.contains(x, y)) {
                if (System.currentTimeMillis() - this.downTime > 250) {
                    try {
                        performHapticFeedback(VibratorUtils.getType(0), 1);
                    } catch (Exception unused) {
                    }
                }
                Action action4 = this.hit;
                if (action4.supportsLoading && !action4.isLoading) {
                    action4.isLoading = true;
                    invalidate();
                }
                if (this.hit.supportsAnimate != 0 && IconManager.INSTANCE.isBasePackOnly(0)) {
                    Action action5 = this.hit;
                    action5.updateDrawable(true, action5.supportsAnimate);
                }
                this.hit.startTime = System.currentTimeMillis();
                final Action action6 = this.hit;
                OnActionClickListener onActionClickListener = this.onActionClickListener;
                if (onActionClickListener != null) {
                    if (action6.callDelay == 0) {
                        int i2 = action6.key;
                        RectF rectF = action6.rect;
                        onActionClickListener.onClick(i2, rectF.left, rectF.top);
                    } else {
                        postDelayed(new Runnable() { // from class: org.telegram.ui.Components.ProfileActionsView$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onTouchEvent$0(action6);
                            }
                        }, action6.callDelay);
                    }
                }
            }
            this.hit = null;
            return true;
        }
        return this.hit != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTouchEvent$0(Action action) {
        OnActionClickListener onActionClickListener = this.onActionClickListener;
        int i = action.key;
        RectF rectF = action.rect;
        onActionClickListener.onClick(i, rectF.left, rectF.top);
    }

    public static /* synthetic */ boolean $r8$lambda$6l_EqQDYfg9tJMBcXflockeZmGs(Drawable drawable, Action action) {
        return action.rippleDrawable == drawable;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(final Drawable drawable) {
        return Collection.EL.stream(this.actions).anyMatch(new Predicate() { // from class: org.telegram.ui.Components.ProfileActionsView$$ExternalSyntheticLambda0
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            /* JADX INFO: renamed from: or */
            public /* synthetic */ Predicate m1267or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ProfileActionsView.$r8$lambda$6l_EqQDYfg9tJMBcXflockeZmGs(drawable, (ProfileActionsView.Action) obj);
            }
        }) || super.verifyDrawable(drawable) || (drawable instanceof LoadingDrawable);
    }

    public void beginApplyingActions() {
        this.isApplying = true;
    }

    public void commitActions() {
        if (this.isApplying) {
            this.isApplying = false;
            applyVisibleActions();
        }
    }

    public void set(int i, boolean z) {
        boolean zRemove;
        if (z) {
            zRemove = this.allAvailableActions.add(Integer.valueOf(i));
        } else {
            zRemove = this.allAvailableActions.remove(Integer.valueOf(i));
        }
        if (zRemove) {
            applyVisibleActions();
        }
    }

    public void setNotifications(boolean z) {
        boolean z2 = this.isNotificationsEnabled != z;
        this.isNotificationsEnabled = z;
        Action actionFind = find(1);
        if (actionFind != null) {
            updateNotification(actionFind, z2);
            invalidate();
        } else {
            this.allAvailableActions.add(1);
            applyVisibleActions();
        }
    }

    public void addCameraAction() {
        Action action = new Action(ActionButton.SET_PHOTO);
        action.key = 14;
        this.actions.add(action);
    }

    public void addEditInfo() {
        Action action = new Action(ActionButton.EDIT_INFO);
        action.key = 16;
        this.actions.add(action);
    }

    public void addSettings() {
        Action action = new Action(ActionButton.SETTINGS);
        action.key = 17;
        this.actions.add(action);
    }

    public void startAnimatedActions() {
        if (this.mode == 6) {
            int size = this.actions.size();
            for (int i = 0; i < size; i++) {
                Action action = (Action) this.actions.get(i);
                if (action.drawableAnimated != null) {
                    if (action.key == 15) {
                        action.drawableAnimated.setCurrentFrame(14);
                    } else {
                        action.drawableAnimated.setCurrentFrame(0);
                    }
                    action.drawableAnimated.start();
                }
            }
        }
    }

    public boolean supportsEditInfo() {
        return this.mode == 6;
    }

    public void startCameraAnimation() {
        Action actionFind = find(14);
        if (actionFind == null || actionFind.drawableAnimated == null) {
            return;
        }
        actionFind.drawableAnimated.start();
    }

    public boolean canHaveJoinAction() {
        int i = this.mode;
        return i == 1 || i == 3;
    }

    private void updateNotification(Action action, boolean z) {
        if (z && IconManager.INSTANCE.isBasePackOnly(0)) {
            if (this.isNotificationsEnabled) {
                ActionButton actionButton = ActionButton.NOTIFICATION_MUTE;
                action.setText(LocaleController.getString(actionButton.title));
                action.updateDrawable(C2888R.raw.profile_unmuting, actionButton.filledIcon, actionButton.outlineIcon);
                return;
            } else {
                ActionButton actionButton2 = ActionButton.NOTIFICATION_UNMUTE;
                action.setText(LocaleController.getString(actionButton2.title));
                action.updateDrawable(C2888R.raw.profile_muting, actionButton2.filledIcon, actionButton2.outlineIcon);
                return;
            }
        }
        action.update(this.isNotificationsEnabled ? ActionButton.NOTIFICATION_MUTE : ActionButton.NOTIFICATION_UNMUTE);
    }

    private void applyVisibleActions() {
        if (this.isApplying) {
            return;
        }
        if (this.mode == 6) {
            this.activeCount = this.actions.size();
            invalidate();
            return;
        }
        final ArrayList arrayList = new ArrayList();
        boolean zHasJoin = hasJoin();
        int i = this.mode;
        if (i == 0) {
            insertIfAvailable(arrayList, 0);
            insertIfAvailable(arrayList, 5);
            insertIfAvailable(arrayList, 6);
            insertIfAvailable(arrayList, 1);
            insertIfNotAvailable(arrayList, 3, 6);
        } else if (i == 1) {
            if (zHasJoin) {
                insertIfAvailable(arrayList, 7);
            } else {
                insertIfAvailable(arrayList, 10);
                insertIfNotAvailable(arrayList, 11, 10);
            }
            insertIfAvailable(arrayList, 1);
            if (!zHasJoin) {
                insertIfAvailable(arrayList, 2);
                insertIfNotAvailable2(arrayList, 3, 2, 12);
            }
            insertIfNotAvailable(arrayList, 4, 12);
            if (zHasJoin) {
                arrayList.add(getOrCreate(8));
            } else {
                insertIfAvailable(arrayList, 12);
                insertIfNotAvailable(arrayList, 9, 12);
            }
        } else if (i == 2) {
            insertIfAvailable(arrayList, 0);
            insertIfAvailable(arrayList, 1);
            insertIfAvailable(arrayList, 4);
            arrayList.add(getOrCreate(13));
        } else if (i == 3 || i == 4) {
            if (zHasJoin) {
                insertIfAvailable(arrayList, 7);
            } else {
                insertIfAvailable(arrayList, 0);
            }
            insertIfAvailable(arrayList, 1);
            if (zHasJoin) {
                arrayList.add(getOrCreate(8));
            } else {
                insertIfAvailable(arrayList, 10);
                insertIfNotAvailable(arrayList, 11, 10);
                insertIfAvailable(arrayList, 9);
            }
        } else if (i == 5) {
            insertIfAvailable(arrayList, 0);
            insertIfAvailable(arrayList, 1);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ProfileActionsView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$applyVisibleActions$2(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$applyVisibleActions$2(List list) {
        int i = this.activeCount;
        int size = list.size();
        this.activeCount = size;
        if (i != size && this.radialGradient != null) {
            createColorShader();
        }
        int size2 = this.actions.size();
        for (int i2 = 0; i2 < size2; i2++) {
            Action action = (Action) this.actions.get(i2);
            if (action.isDeleting && !action.isDeleted) {
                list.add(action);
            } else if (find(list, action.key) == null) {
                action.delete();
                list.add(action);
            }
        }
        this.actions.clear();
        this.actions.addAll(list);
        invalidate();
    }

    private void insertIfAvailable(List list, int i) {
        if (this.allAvailableActions.contains(Integer.valueOf(i))) {
            list.add(getOrCreate(i));
        }
    }

    private void insertIfNotAvailable(List list, int i, int i2) {
        if (!this.allAvailableActions.contains(Integer.valueOf(i)) || this.allAvailableActions.contains(Integer.valueOf(i2))) {
            return;
        }
        list.add(getOrCreate(i));
    }

    private void insertIfNotAvailable2(List list, int i, int i2, int i3) {
        if (!this.allAvailableActions.contains(Integer.valueOf(i)) || this.allAvailableActions.contains(Integer.valueOf(i2)) || this.allAvailableActions.contains(Integer.valueOf(i3))) {
            return;
        }
        list.add(getOrCreate(i));
    }

    private boolean hasJoin() {
        return this.allAvailableActions.contains(7) && !this.allAvailableActions.contains(9);
    }

    private Action getOrCreate(int i) {
        Action actionFind = find(i);
        if (actionFind != null) {
            if (i == 1) {
                updateNotification(actionFind, false);
            }
            return actionFind;
        }
        switch (i) {
            case 0:
                actionFind = new Action(ActionButton.MESSAGE);
                break;
            case 1:
                actionFind = new Action();
                updateNotification(actionFind, false);
                break;
            case 2:
                actionFind = new Action(ActionButton.DISCUSS);
                break;
            case 3:
                actionFind = new Action(ActionButton.GIFT);
                actionFind.supportsLoading = true;
                actionFind.stopDelay = 200;
                break;
            case 4:
                actionFind = new Action(ActionButton.SHARE);
                break;
            case 5:
                actionFind = new Action(ActionButton.CALL);
                this.callAction = actionFind;
                actionFind.supportsLoading = true;
                actionFind.stopDelay = 500;
                break;
            case 6:
                actionFind = new Action(ActionButton.VIDEO);
                actionFind.supportsLoading = true;
                actionFind.stopDelay = 500;
                break;
            case 7:
                actionFind = new Action(ActionButton.JOIN);
                actionFind.supportsLoading = true;
                actionFind.callDelay = 300;
                break;
            case 8:
                actionFind = new Action(ActionButton.REPORT);
                actionFind.supportsLoading = true;
                actionFind.stopDelay = 500;
                break;
            case 9:
                actionFind = new Action(ActionButton.LEAVE);
                actionFind.supportsLoading = true;
                actionFind.supportsAnimate = C2888R.raw.profile_leave;
                actionFind.stopDelay = 300;
                break;
            case 10:
                actionFind = new Action(ActionButton.VOICE_CHAT);
                actionFind.supportsLoading = true;
                actionFind.supportsAnimate = C2888R.raw.profile_voicechat;
                actionFind.stopDelay = 500;
                break;
            case 11:
                actionFind = new Action(ActionButton.STREAM);
                actionFind.supportsLoading = true;
                actionFind.supportsAnimate = C2888R.raw.profile_voicechat;
                actionFind.stopDelay = 500;
                break;
            case 12:
                actionFind = new Action(ActionButton.STORY);
                break;
            case 13:
                actionFind = new Action(ActionButton.STOP);
                actionFind.supportsLoading = true;
                actionFind.stopDelay = 300;
                break;
        }
        if (actionFind != null) {
            actionFind.key = i;
        }
        return actionFind;
    }

    private Action find(int i) {
        return find(this.actions, i);
    }

    private Action find(List list, int i) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            Action action = (Action) list.get(i2);
            if (!action.isDeleting && action.key == i) {
                return action;
            }
        }
        return null;
    }

    public boolean hasCall() {
        return this.allAvailableActions.contains(5) && this.callAction != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    class Action {
        private final ButtonBounce bounce;
        private RLottieDrawable drawableAnimated;
        private Drawable drawableFilled;
        private Drawable drawableOutline;
        boolean isLoading;
        int key;
        LoadingDrawable loadingDrawable;
        private final AnimatedFloat positionFraction;
        long startTime;
        int stopDelay;
        int supportsAnimate;
        boolean supportsLoading;
        private Text text;
        boolean wasFirst;
        boolean wasLast;
        final RectF prevRect = new RectF();
        final RectF rect = new RectF();

        /* JADX INFO: renamed from: to */
        private final RectF f2050to = new RectF();
        private final RectF from = new RectF();
        private final Rect bounds = new Rect();
        private float textScale = 1.0f;
        boolean isOpening = false;
        boolean isDeleting = false;
        boolean isDeleted = false;
        int iconTranslationY = 0;
        float iconScale = 1.0f;
        int callDelay = 0;
        private final Drawable rippleDrawable = createRippleDrawable();

        public void setBounds(int i, int i2, int i3, int i4) {
            this.bounds.set(i, i2, i3, i4);
            checkBounds();
        }

        private void checkBounds() {
            RLottieDrawable rLottieDrawable = this.drawableAnimated;
            if (rLottieDrawable != null) {
                rLottieDrawable.setBounds(this.bounds);
            }
            Drawable drawable = this.drawableFilled;
            if (drawable != null) {
                drawable.setBounds(this.bounds);
            }
            Drawable drawable2 = this.drawableOutline;
            if (drawable2 != null) {
                drawable2.setBounds(this.bounds);
            }
        }

        public void setText(CharSequence charSequence) {
            this.text = new Text(charSequence, 11.0f, AndroidUtilities.bold()).multiline(3).align(Layout.Alignment.ALIGN_CENTER);
        }

        public Action() {
            this.bounce = new ButtonBounce(ProfileActionsView.this);
            this.positionFraction = new AnimatedFloat(ProfileActionsView.this, 0L, 250L, CubicBezierInterpolator.DEFAULT);
        }

        public Action(ActionButton actionButton) {
            this.bounce = new ButtonBounce(ProfileActionsView.this);
            this.positionFraction = new AnimatedFloat(ProfileActionsView.this, 0L, 250L, CubicBezierInterpolator.DEFAULT);
            update(actionButton);
        }

        public float getAlpha() {
            if (this.isDeleting) {
                return 1.0f - this.positionFraction.set(1.0f);
            }
            if (this.isOpening) {
                return this.positionFraction.set(1.0f);
            }
            return 1.0f;
        }

        private Drawable createRippleDrawable() {
            Drawable drawableCreateRadSelectorDrawable = Theme.createRadSelectorDrawable(0, 285212671, 16, 16);
            drawableCreateRadSelectorDrawable.setCallback(ProfileActionsView.this);
            return drawableCreateRadSelectorDrawable;
        }

        public void delete() {
            LoadingDrawable loadingDrawable = this.loadingDrawable;
            boolean z = false;
            if (loadingDrawable != null) {
                loadingDrawable.disappear();
                this.supportsLoading = false;
                this.isLoading = false;
            }
            this.isDeleting = true;
            this.wasFirst = this == ProfileActionsView.this.firstAction;
            this.wasLast = this == ProfileActionsView.this.lastAction;
            RectF rectF = this.prevRect;
            float f = rectF.left - 1.0f;
            ProfileActionsView profileActionsView = ProfileActionsView.this;
            boolean z2 = f <= profileActionsView.xpadding;
            boolean z3 = rectF.right + 1.0f >= ((float) profileActionsView.getMeasuredWidth()) - ProfileActionsView.this.xpadding;
            if (z2 && z3) {
                z3 = false;
            } else {
                z = z2;
            }
            this.from.set(this.prevRect);
            this.f2050to.set(this.prevRect);
            if (z) {
                RectF rectF2 = this.f2050to;
                rectF2.right = rectF2.left;
            } else if (z3) {
                RectF rectF3 = this.f2050to;
                rectF3.left = rectF3.right;
            } else {
                int i = this.key;
                if ((i == 3 || i == 2) && ProfileActionsView.this.mode == 1) {
                    RectF rectF4 = this.f2050to;
                    rectF4.left = rectF4.right;
                } else {
                    RectF rectF5 = this.f2050to;
                    float fCenterX = rectF5.centerX();
                    rectF5.right = fCenterX;
                    rectF5.left = fCenterX;
                }
            }
            this.positionFraction.set(0.0f, true);
        }

        public void updateDrawable(boolean z, int i) {
            if (z) {
                updateDrawable(i, 0, 0);
            } else {
                updateDrawable(0, i, i);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:37:0x00a6  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x00e4  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x00eb  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void updatePosition() {
            if (this.isDeleting) {
                animatePosition();
                return;
            }
            boolean z = false;
            if (ProfileActionsView.this.isOpeningLayout) {
                this.isOpening = false;
                this.prevRect.set(this.rect);
                this.from.set(this.rect);
                this.f2050to.set(this.rect);
                this.positionFraction.set(1.0f, true);
                return;
            }
            if (this.f2050to.isEmpty()) {
                this.isOpening = true;
                this.f2050to.set(this.rect);
                this.from.set(this.rect);
                RectF rectF = this.rect;
                float f = rectF.left - 1.0f;
                ProfileActionsView profileActionsView = ProfileActionsView.this;
                boolean z2 = f <= profileActionsView.xpadding;
                float f2 = rectF.right + 1.0f;
                float measuredWidth = profileActionsView.getMeasuredWidth();
                ProfileActionsView profileActionsView2 = ProfileActionsView.this;
                boolean z3 = f2 >= measuredWidth - profileActionsView2.xpadding;
                if ((z2 && z3) || ((profileActionsView2.firstAction != null && ProfileActionsView.this.firstAction.key == this.key) || (ProfileActionsView.this.lastAction != null && ProfileActionsView.this.lastAction.key == this.key))) {
                    z3 = false;
                    z2 = false;
                }
                int i = this.key;
                if (((i != 5 && i != 6) || ProfileActionsView.this.mode != 0) && ((i != 3 && i != 2) || ProfileActionsView.this.mode != 1)) {
                    if (z2 && ProfileActionsView.this.firstAction != null && !ProfileActionsView.this.firstAction.isDeleting) {
                        z3 = true;
                    } else if (!z3 || ProfileActionsView.this.lastAction == null || ProfileActionsView.this.lastAction.isDeleting) {
                        z = z2;
                    }
                    if (!z) {
                    }
                    this.positionFraction.set(0.0f, true);
                } else {
                    z3 = false;
                    z = true;
                    if (!z) {
                        RectF rectF2 = this.from;
                        rectF2.left = rectF2.right;
                    } else if (z3) {
                        RectF rectF3 = this.from;
                        rectF3.right = rectF3.left;
                    } else {
                        RectF rectF4 = this.from;
                        float fCenterX = this.f2050to.centerX();
                        rectF4.right = fCenterX;
                        rectF4.left = fCenterX;
                    }
                    this.positionFraction.set(0.0f, true);
                }
            }
            if (!this.rect.equals(this.f2050to)) {
                this.from.set(this.prevRect);
                this.f2050to.set(this.rect);
                this.positionFraction.set(0.0f, true);
            }
            animatePosition();
            this.prevRect.set(this.rect);
        }

        private void animatePosition() {
            float f = this.positionFraction.set(1.0f);
            if (f != 1.0f) {
                this.rect.left = AndroidUtilities.lerp(this.from.left, this.f2050to.left, f);
                this.rect.right = AndroidUtilities.lerp(this.from.right, this.f2050to.right, f);
                return;
            }
            this.isOpening = false;
            if (this.isDeleting) {
                this.isDeleted = true;
            }
        }

        public float getScale() {
            return this.bounce.getScale(0.04f);
        }

        public void update(ActionButton actionButton) {
            updateDrawable(0, actionButton.filledIcon, actionButton.outlineIcon);
            setText(LocaleController.getString(actionButton.title));
        }

        public void updateDrawable(int i, int i2, int i3) {
            if (i != 0) {
                RLottieDrawable rLottieDrawable = new RLottieDrawable(i, String.valueOf(i), AndroidUtilities.m1124dp(56.0f), AndroidUtilities.m1124dp(56.0f), false, null);
                rLottieDrawable.setMasterParent(ProfileActionsView.this);
                rLottieDrawable.start();
                this.drawableAnimated = rLottieDrawable;
            } else {
                this.drawableAnimated = null;
            }
            this.drawableFilled = i2 != 0 ? ProfileActionsView.this.getResources().getDrawable(i2).mutate() : null;
            this.drawableOutline = i3 != 0 ? ProfileActionsView.this.getResources().getDrawable(i3).mutate() : null;
            checkBounds();
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'LEAVE' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:293)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:266)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class ActionButton {
        private static final /* synthetic */ ActionButton[] $VALUES;
        public static final ActionButton EDIT_INFO;
        public static final ActionButton EDIT_USERNAME;
        public static final ActionButton LEAVE;
        public static final ActionButton SETTINGS;
        public static final ActionButton SET_PHOTO;
        public static final ActionButton STOP;
        public static final ActionButton STORY;
        public static final ActionButton STREAM;
        public static final ActionButton VOICE_CHAT;
        final int filledIcon;
        final int outlineIcon;
        final int title;
        public static final ActionButton MESSAGE = new ActionButton("MESSAGE", 0, C2888R.string.ProfileActionsMessage, C2888R.drawable.filled_profile_message_24, C2888R.drawable.outline_profile_message_24);
        public static final ActionButton NOTIFICATION_MUTE = new ActionButton("NOTIFICATION_MUTE", 1, C2888R.string.ProfileButtonMute, C2888R.drawable.filled_profile_mute_24, C2888R.drawable.outline_profile_mute_24);
        public static final ActionButton NOTIFICATION_UNMUTE = new ActionButton("NOTIFICATION_UNMUTE", 2, C2888R.string.ProfileButtonUnmute, C2888R.drawable.filled_profile_unmute_24, C2888R.drawable.outline_profile_unmute_24);
        public static final ActionButton DISCUSS = new ActionButton("DISCUSS", 3, C2888R.string.ProfileActionsDiscuss, C2888R.drawable.filled_profile_message_24, C2888R.drawable.outline_profile_message_24);
        public static final ActionButton GIFT = new ActionButton("GIFT", 4, C2888R.string.ProfileActionsGift, C2888R.drawable.gift, C2888R.drawable.input_gift_s);
        public static final ActionButton SHARE = new ActionButton("SHARE", 5, C2888R.string.ProfileActionsShare, C2888R.drawable.action_share, C2888R.drawable.msg_share);
        public static final ActionButton CALL = new ActionButton("CALL", 6, C2888R.string.ProfileActionsCall, C2888R.drawable.filled_profile_call_24, C2888R.drawable.outline_profile_call_24);
        public static final ActionButton VIDEO = new ActionButton("VIDEO", 7, C2888R.string.ProfileActionsVideo, C2888R.drawable.filled_profile_video_24, C2888R.drawable.outline_profile_video_24);
        public static final ActionButton JOIN = new ActionButton("JOIN", 8, C2888R.string.ProfileActionsJoin, C2888R.drawable.filled_profile_member_24, C2888R.drawable.outline_profile_member_24);
        public static final ActionButton REPORT = new ActionButton("REPORT", 9, C2888R.string.ProfileActionsReport, C2888R.drawable.report, C2888R.drawable.msg_report);

        private static /* synthetic */ ActionButton[] $values() {
            return new ActionButton[]{MESSAGE, NOTIFICATION_MUTE, NOTIFICATION_UNMUTE, DISCUSS, GIFT, SHARE, CALL, VIDEO, JOIN, REPORT, LEAVE, VOICE_CHAT, STREAM, STORY, STOP, SET_PHOTO, EDIT_USERNAME, EDIT_INFO, SETTINGS};
        }

        public static ActionButton valueOf(String str) {
            return (ActionButton) Enum.valueOf(ActionButton.class, str);
        }

        public static ActionButton[] values() {
            return (ActionButton[]) $VALUES.clone();
        }

        static {
            int i = C2888R.string.ProfileActionsLeave;
            int i2 = C2888R.drawable.leave;
            LEAVE = new ActionButton("LEAVE", 10, i, i2, i2);
            int i3 = C2888R.string.ProfileActionsVoiceChat;
            int i4 = C2888R.drawable.live_stream;
            VOICE_CHAT = new ActionButton("VOICE_CHAT", 11, i3, i4, i4);
            int i5 = C2888R.string.ProfileActionsLiveStream;
            int i6 = C2888R.drawable.live_stream;
            STREAM = new ActionButton("STREAM", 12, i5, i6, i6);
            STORY = new ActionButton("STORY", 13, C2888R.string.ProfileActionsAddStory, C2888R.drawable.filled_profile_story, C2888R.drawable.outline_profile_story);
            STOP = new ActionButton("STOP", 14, C2888R.string.ProfileActionsStop, C2888R.drawable.filled_profile_stop_24, C2888R.drawable.outline_profile_stop_24);
            SET_PHOTO = new ActionButton("SET_PHOTO", 15, C2888R.string.ProfileActionsEditPhoto2, C2888R.drawable.filled_profile_photo, C2888R.drawable.outline_profile_photo);
            EDIT_USERNAME = new ActionButton("EDIT_USERNAME", 16, C2888R.string.ProfileActionsEditUsername, C2888R.drawable.filled_profile_edit_24, C2888R.drawable.outline_profile_edit_24);
            EDIT_INFO = new ActionButton("EDIT_INFO", 17, C2888R.string.ProfileActionsEditInfo, C2888R.drawable.filled_profile_edit_24, C2888R.drawable.outline_profile_edit_24);
            SETTINGS = new ActionButton("SETTINGS", 18, C2888R.string.Settings, C2888R.drawable.filled_profile_settings, C2888R.drawable.outline_profile_settings);
            $VALUES = $values();
        }

        private ActionButton(String str, int i, int i2, int i3, int i4) {
            this.title = i2;
            this.filledIcon = i3;
            this.outlineIcon = i4;
        }
    }
}
