package org.telegram.messenger.pip.source;

import android.graphics.Canvas;
import android.graphics.Picture;
import android.graphics.RenderNode;
import android.os.Build;
import android.view.View;
import org.telegram.messenger.BotFullscreenButtons$$ExternalSyntheticApiModelOutline0;
import org.telegram.messenger.Utilities;

/* JADX INFO: loaded from: classes5.dex */
class PipSourceSnapshot {
    private final RenderNode node;
    private final Picture picture;

    public PipSourceSnapshot(int i, int i2, Utilities.Callback<Canvas> callback) {
        Picture picture = new Picture();
        this.picture = picture;
        callback.run(picture.beginRecording(i, i2));
        picture.endRecording();
        if (Build.VERSION.SDK_INT >= 29) {
            PipSourceSnapshot$$ExternalSyntheticApiModelOutline0.m918m();
            RenderNode renderNodeM892m = BotFullscreenButtons$$ExternalSyntheticApiModelOutline0.m892m("pip-node-" + View.generateViewId());
            this.node = renderNodeM892m;
            renderNodeM892m.setPosition(0, 0, i, i2);
            renderNodeM892m.beginRecording().drawPicture(picture);
            renderNodeM892m.endRecording();
            return;
        }
        this.node = null;
    }

    public void draw(Canvas canvas, float f) {
        Canvas canvas2;
        if (Build.VERSION.SDK_INT >= 29) {
            RenderNode renderNode = this.node;
            if (renderNode != null) {
                renderNode.setAlpha(f);
                canvas.drawRenderNode(this.node);
                return;
            }
            return;
        }
        if (this.picture == null || f <= 0.001f) {
            return;
        }
        boolean z = f < 0.999f;
        if (z) {
            canvas2 = canvas;
            canvas2.saveLayerAlpha(0.0f, 0.0f, r0.getWidth(), this.picture.getHeight(), (int) (f * 255.0f), 31);
        } else {
            canvas2 = canvas;
        }
        canvas2.drawPicture(this.picture);
        if (z) {
            canvas2.restore();
        }
    }

    public void release() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.node.discardDisplayList();
        }
    }
}
