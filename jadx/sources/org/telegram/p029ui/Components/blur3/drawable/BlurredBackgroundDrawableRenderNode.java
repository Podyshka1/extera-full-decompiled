package org.telegram.p029ui.Components.blur3.drawable;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.RecordingCanvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.RenderNode;
import android.os.Build;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotFullscreenButtons$$ExternalSyntheticApiModelOutline0;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.blur3.LiquidGlassEffect;
import org.telegram.p029ui.Components.blur3.drawable.BlurredBackgroundDrawable;
import org.telegram.p029ui.Components.blur3.source.BlurredBackgroundSource;

/* JADX INFO: loaded from: classes3.dex */
public class BlurredBackgroundDrawableRenderNode extends BlurredBackgroundDrawable {
    private LiquidGlassEffect liquidGlassEffect;
    private final Outline outline = new Outline();
    private final Rect outlineRect = new Rect();
    private final Paint paintShadow;
    private final Paint paintStrokeBottom;
    private final Paint paintStrokeTop;
    private final RenderNode renderNode;
    private final RenderNode renderNodeFill;
    private boolean renderNodeInvalidated;
    private final BlurredBackgroundSource source;

    public BlurredBackgroundDrawableRenderNode(BlurredBackgroundSource blurredBackgroundSource) {
        Paint paint = new Paint(1);
        this.paintShadow = paint;
        Paint paint2 = new Paint(1);
        this.paintStrokeTop = paint2;
        Paint paint3 = new Paint(1);
        this.paintStrokeBottom = paint3;
        RenderNode renderNodeM1129m = BotFullscreenButtons$$ExternalSyntheticApiModelOutline0.m1129m("BlurredNode");
        this.renderNode = renderNodeM1129m;
        this.renderNodeFill = BotFullscreenButtons$$ExternalSyntheticApiModelOutline0.m1129m("BlurredFill");
        renderNodeM1129m.setClipToOutline(true);
        renderNodeM1129m.setClipToBounds(true);
        this.source = blurredBackgroundSource;
        paint.setColor(0);
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        paint3.setStyle(style);
    }

    public void setLiquidGlassEffectAllowed() {
        this.liquidGlassEffect = new LiquidGlassEffect(this.renderNodeFill);
    }

    @Override // org.telegram.p029ui.Components.blur3.drawable.BlurredBackgroundDrawable
    public BlurredBackgroundSource getSource() {
        return this.source;
    }

    @Override // org.telegram.p029ui.Components.blur3.drawable.BlurredBackgroundDrawable
    protected void onBoundPropsChanged() {
        super.onBoundPropsChanged();
        BlurredBackgroundDrawable.Props props = this.boundProps;
        if (props.useFullStroke) {
            this.paintStrokeTop.setStrokeWidth(props.strokeWidthFull);
        } else {
            this.paintStrokeTop.setStrokeWidth(props.strokeWidthTop);
            this.paintStrokeBottom.setStrokeWidth(this.boundProps.strokeWidthBottom);
        }
        this.outlineRect.set(0, 0, this.boundProps.boundsWithPadding.width(), this.boundProps.boundsWithPadding.height());
        BlurredBackgroundDrawable.getOutline(this.outline, this.outlineRect, this.boundProps.radii);
        this.outline.setAlpha(1.0f);
        if (this.boundProps.boundsWithPadding.isEmpty()) {
            return;
        }
        this.renderNodeFill.setPosition(0, 0, this.boundProps.boundsWithPadding.width(), this.boundProps.boundsWithPadding.height());
        this.renderNode.setPosition(0, 0, this.boundProps.boundsWithPadding.width(), this.boundProps.boundsWithPadding.height());
        this.renderNode.setOutline(this.outline);
        this.renderNodeInvalidated = true;
    }

    @Override // org.telegram.p029ui.Components.blur3.drawable.BlurredBackgroundDrawable
    protected void onSourceOffsetChange(float f, float f2) {
        super.onSourceOffsetChange(f, f2);
        this.renderNodeInvalidated = true;
    }

    public boolean hasDisplayList() {
        return this.renderNode.hasDisplayList();
    }

    private void updateDisplayList() {
        float f = this.sourceOffsetX;
        float f2 = this.sourceOffsetY;
        Rect rect = this.boundProps.boundsWithPadding;
        float f3 = rect.left + f;
        float f4 = rect.top + f2;
        float f5 = rect.right + f;
        float f6 = rect.bottom + f2;
        RecordingCanvas recordingCanvasBeginRecording = this.renderNodeFill.beginRecording();
        recordingCanvasBeginRecording.save();
        recordingCanvasBeginRecording.translate(-f3, -f4);
        LiquidGlassEffect liquidGlassEffect = this.liquidGlassEffect;
        if (liquidGlassEffect != null && Build.VERSION.SDK_INT >= 33) {
            float fWidth = this.boundProps.boundsWithPadding.width();
            float fHeight = this.boundProps.boundsWithPadding.height();
            BlurredBackgroundDrawable.Props props = this.boundProps;
            float[] fArr = props.shaderRadii;
            float f7 = fArr[0];
            float f8 = fArr[2];
            float f9 = fArr[4];
            float f10 = fArr[6];
            int iM1124dp = props.liquidThickness;
            if (iM1124dp <= 0) {
                iM1124dp = AndroidUtilities.m1124dp(11.0f);
            }
            float f11 = iM1124dp;
            BlurredBackgroundDrawable.Props props2 = this.boundProps;
            liquidGlassEffect.update(0.0f, 0.0f, fWidth, fHeight, f7, f8, f9, f10, f11, props2.liquidIntensity, props2.liquidIndex, this.backgroundColor);
        }
        this.source.draw(recordingCanvasBeginRecording, f3, f4, f5, f6);
        recordingCanvasBeginRecording.save();
        this.renderNodeFill.endRecording();
        if (this.boundProps.useFullStroke) {
            if (this.strokeColorFull == 0) {
                return;
            }
        } else if (this.strokeColorTop == 0 && this.strokeColorBottom == 0) {
            return;
        }
        RecordingCanvas recordingCanvasBeginRecording2 = this.renderNode.beginRecording();
        if (Color.alpha(this.backgroundColor) == 255) {
            recordingCanvasBeginRecording2.drawColor(this.backgroundColor);
        } else {
            recordingCanvasBeginRecording2.drawRenderNode(this.renderNodeFill);
            if (this.liquidGlassEffect == null && Color.alpha(this.backgroundColor) != 0) {
                recordingCanvasBeginRecording2.drawColor(this.backgroundColor);
            }
        }
        BlurredBackgroundDrawable.Props props3 = this.boundProps;
        if (props3.useFullStroke) {
            if (props3.radiiAreSame) {
                float f12 = props3.strokeWidthFull / 2.0f;
                float f13 = this.boundProps.radii[0];
                recordingCanvasBeginRecording2.drawRoundRect(f12, f12, props3.boundsWithPadding.width() - f12, this.boundProps.boundsWithPadding.height() - f12, f13, f13, this.paintStrokeTop);
            } else {
                recordingCanvasBeginRecording2.drawPath(props3.strokePathTop, this.paintStrokeTop);
            }
        } else {
            if (this.strokeColorTop != 0) {
                float fWidth2 = props3.boundsWithPadding.width();
                float fHeight2 = this.boundProps.boundsWithPadding.height();
                BlurredBackgroundDrawable.Props props4 = this.boundProps;
                BlurredBackgroundDrawable.drawStroke((Canvas) recordingCanvasBeginRecording2, 0.0f, 0.0f, fWidth2, fHeight2, props4.radii, props4.strokeWidthTop, true, this.paintStrokeTop);
            }
            if (this.strokeColorBottom != 0) {
                float fWidth3 = this.boundProps.boundsWithPadding.width();
                float fHeight3 = this.boundProps.boundsWithPadding.height();
                BlurredBackgroundDrawable.Props props5 = this.boundProps;
                BlurredBackgroundDrawable.drawStroke((Canvas) recordingCanvasBeginRecording2, 0.0f, 0.0f, fWidth3, fHeight3, props5.radii, props5.strokeWidthBottom, false, this.paintStrokeBottom);
            }
        }
        this.renderNode.endRecording();
    }

    @Override // org.telegram.p029ui.Components.blur3.drawable.BlurredBackgroundDrawable
    public void updateColors() {
        super.updateColors();
        this.paintShadow.setShadowLayer(this.shadowLayerRadius, this.shadowLayerDx, this.shadowLayerDy, this.shadowColor);
        if (this.boundProps.useFullStroke) {
            this.paintStrokeTop.setColor(this.strokeColorFull);
        } else {
            this.paintStrokeTop.setColor(this.strokeColorTop);
            this.paintStrokeBottom.setColor(this.strokeColorBottom);
        }
        this.renderNodeInvalidated = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.boundProps.boundsWithPadding.isEmpty()) {
            return;
        }
        if (!canvas.isHardwareAccelerated()) {
            drawSource(canvas, this.source);
            return;
        }
        if (!this.renderNode.hasDisplayList()) {
            this.source.dispatchOnDrawablesRelativePositionChange();
            updateDisplayList();
        } else if (this.renderNodeInvalidated) {
            updateDisplayList();
        }
        this.renderNodeInvalidated = false;
        int iMultAlpha = Theme.multAlpha(this.shadowColor, this.renderNode.getAlpha() * this.shadowAlpha);
        if (this.shadowLayerRadius > 0.0f && Color.alpha(iMultAlpha) != 0) {
            this.paintShadow.setShadowLayer(this.shadowLayerRadius, this.shadowLayerDx, this.shadowLayerDy, iMultAlpha);
            this.boundProps.drawShadows(canvas, this.paintShadow, this.inAppKeyboardOptimization);
        }
        canvas.save();
        Rect rect = this.boundProps.boundsWithPadding;
        canvas.translate(rect.left, rect.top);
        canvas.drawRenderNode(this.renderNode);
        canvas.restore();
    }

    public void invalidateDisplayList() {
        this.renderNodeInvalidated = true;
    }

    @Override // org.telegram.p029ui.Components.blur3.drawable.BlurredBackgroundDrawable, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        int alpha = getAlpha();
        super.setAlpha(i);
        this.renderNode.setAlpha(i / 255.0f);
        this.renderNodeInvalidated = true;
        if (alpha != 0 || i <= 0) {
            return;
        }
        this.source.dispatchOnDrawablesRelativePositionChange();
    }

    @Override // org.telegram.p029ui.Components.blur3.drawable.BlurredBackgroundDrawable
    protected void onSourceRelativePositionChanged(RectF rectF) {
        super.onSourceRelativePositionChanged(rectF);
        this.source.dispatchOnDrawablesRelativePositionChange();
    }
}
