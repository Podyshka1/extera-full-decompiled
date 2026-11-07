package org.telegram.ui.Components.blur3.drawable;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.RecordingCanvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.RenderNode;
import android.os.Build;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.GlassOutlineStyle;
import com.exteragram.messenger.utils.ui.AbstractC1422xd47ee21c;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.blur3.LiquidGlassEffect;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSource;

/* JADX INFO: loaded from: classes3.dex */
public class BlurredBackgroundDrawableRenderNode extends BlurredBackgroundDrawable {
    private LiquidGlassEffect liquidGlassEffect;
    private final Outline outline = new Outline();
    private final Rect outlineRect = new Rect();
    private final Paint paintShadow;
    private final Paint paintStrokeBottom;
    private final Paint paintStrokeFull;
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
        Paint paint4 = new Paint(1);
        this.paintStrokeFull = paint4;
        RenderNode renderNodeM278m = AbstractC1422xd47ee21c.m278m("BlurredNode");
        this.renderNode = renderNodeM278m;
        this.renderNodeFill = AbstractC1422xd47ee21c.m278m("BlurredFill");
        renderNodeM278m.setClipToOutline(true);
        renderNodeM278m.setClipToBounds(true);
        updateFillCompositingLayer();
        this.source = blurredBackgroundSource;
        paint.setColor(0);
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        paint3.setStyle(style);
        paint4.setStyle(Paint.Style.FILL);
    }

    @Override // org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable
    public BlurredBackgroundDrawable setClipToOutline(boolean z) {
        this.renderNode.setClipToOutline(z);
        return super.setClipToOutline(z);
    }

    private void updateFillCompositingLayer() {
        this.renderNodeFill.setUseCompositingLayer(ExteraConfig.getGlassOutlineStyle() == GlassOutlineStyle.HIDDEN, null);
    }

    public void setLiquidGlassEffectAllowed() {
        this.liquidGlassEffect = new LiquidGlassEffect(this.renderNodeFill);
    }

    @Override // org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable
    public BlurredBackgroundSource getSource() {
        return this.source;
    }

    @Override // org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable
    public void onBoundPropsChanged() {
        super.onBoundPropsChanged();
        BlurredBackgroundDrawable.Props props = this.boundProps;
        boolean z = props.useFullStroke;
        Paint paint = this.paintStrokeTop;
        if (z) {
            paint.setStrokeWidth(props.strokeWidthFull);
        } else {
            paint.setStrokeWidth(props.strokeWidthTop);
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

    @Override // org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable
    public void onSourceOffsetChange(float f, float f2) {
        super.onSourceOffsetChange(f, f2);
        this.renderNodeInvalidated = true;
    }

    @Override // org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable
    public boolean hasDisplayList() {
        return this.renderNode.hasDisplayList();
    }

    @Override // org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable
    public void updateDisplayList() {
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
        if (this.liquidGlassEffect != null && Build.VERSION.SDK_INT >= 33) {
            int iDp = this.boundProps.liquidThickness;
            if (iDp <= 0) {
                iDp = AndroidUtilities.dp(11.0f);
            }
            int iMax = Math.max(Math.min(iDp, Math.min(this.boundProps.boundsWithPadding.width(), this.boundProps.boundsWithPadding.height()) / 5), 1);
            LiquidGlassEffect liquidGlassEffect = this.liquidGlassEffect;
            float fWidth = this.boundProps.boundsWithPadding.width();
            float fHeight = this.boundProps.boundsWithPadding.height();
            BlurredBackgroundDrawable.Props props = this.boundProps;
            float[] fArr = props.shaderRadii;
            liquidGlassEffect.update(0.0f, 0.0f, fWidth, fHeight, fArr[0], fArr[2], fArr[4], fArr[6], iMax, props.liquidIntensity, props.liquidIndex, this.backgroundColor);
        }
        this.source.draw(recordingCanvasBeginRecording, f3, f4, f5, f6);
        recordingCanvasBeginRecording.restore();
        if (this.liquidGlassEffect == null && Color.alpha(this.backgroundColor) != 0) {
            recordingCanvasBeginRecording.drawColor(this.backgroundColor);
        }
        this.renderNodeFill.endRecording();
        RecordingCanvas recordingCanvasBeginRecording2 = this.renderNode.beginRecording();
        if (Color.alpha(this.backgroundColor) == 255) {
            recordingCanvasBeginRecording2.drawColor(this.backgroundColor);
        } else {
            recordingCanvasBeginRecording2.drawRenderNode(this.renderNodeFill);
        }
        if (this.boundProps.useFullStroke) {
            if (Color.alpha(this.strokeColorFull) != 0) {
                recordingCanvasBeginRecording2.save();
                Rect rect2 = this.boundProps.boundsWithPadding;
                recordingCanvasBeginRecording2.translate(-rect2.left, -rect2.top);
                recordingCanvasBeginRecording2.drawPath(this.boundProps.strokePathTop, this.paintStrokeFull);
                recordingCanvasBeginRecording2.restore();
            }
        } else {
            if (Color.alpha(this.strokeColorTop) != 0) {
                float fWidth2 = this.boundProps.boundsWithPadding.width();
                float fHeight2 = this.boundProps.boundsWithPadding.height();
                BlurredBackgroundDrawable.Props props2 = this.boundProps;
                BlurredBackgroundDrawable.drawStroke((Canvas) recordingCanvasBeginRecording2, 0.0f, 0.0f, fWidth2, fHeight2, props2.radii, props2.strokeWidthTop, true, this.paintStrokeTop);
            }
            if (Color.alpha(this.strokeColorBottom) != 0) {
                float fWidth3 = this.boundProps.boundsWithPadding.width();
                float fHeight3 = this.boundProps.boundsWithPadding.height();
                BlurredBackgroundDrawable.Props props3 = this.boundProps;
                BlurredBackgroundDrawable.drawStroke((Canvas) recordingCanvasBeginRecording2, 0.0f, 0.0f, fWidth3, fHeight3, props3.radii, props3.strokeWidthBottom, false, this.paintStrokeBottom);
            }
        }
        this.renderNode.endRecording();
    }

    @Override // org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable
    public void updateColors() {
        super.updateColors();
        updateFillCompositingLayer();
        this.paintShadow.setShadowLayer(this.shadowLayerRadius, this.shadowLayerDx, this.shadowLayerDy, this.shadowColor);
        if (this.boundProps.useFullStroke) {
            this.paintStrokeFull.setColor(this.strokeColorFull);
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

    @Override // org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable, android.graphics.drawable.Drawable
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

    @Override // org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable
    public void onSourceRelativePositionChanged(RectF rectF) {
        super.onSourceRelativePositionChanged(rectF);
        this.source.dispatchOnDrawablesRelativePositionChange();
    }
}
