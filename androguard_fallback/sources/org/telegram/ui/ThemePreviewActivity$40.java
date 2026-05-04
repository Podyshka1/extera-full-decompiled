package org.telegram.ui;
 class ThemePreviewActivity$40 extends android.view.View {
    final synthetic org.telegram.ui.ThemePreviewActivity this$0;
    final synthetic android.graphics.Bitmap val$bitmap;
    final synthetic android.graphics.Canvas val$bitmapCanvas;
    final synthetic android.graphics.Paint val$bitmapPaint;
    final synthetic float val$cx;
    final synthetic float val$cy;
    final synthetic float val$r;
    final synthetic float val$x;
    final synthetic android.graphics.Paint val$xRefPaint;
    final synthetic float val$y;

    ThemePreviewActivity$40(org.telegram.ui.ThemePreviewActivity p1, android.content.Context p2, android.graphics.Canvas p3, float p4, float p5, float p6, android.graphics.Paint p7, android.graphics.Bitmap p8, android.graphics.Paint p9, float p10, float p11)
    {
        this.this$0 = p1;
        this.val$bitmapCanvas = p3;
        this.val$cx = p4;
        this.val$cy = p5;
        this.val$r = p6;
        this.val$xRefPaint = p7;
        this.val$bitmap = p8;
        this.val$bitmapPaint = p9;
        this.val$x = p10;
        this.val$y = p11;
        super(p2);
        return;
    }

    protected void onDraw(android.graphics.Canvas p7)
    {
        super.onDraw(p7);
        if (!this.this$0.themeDelegate.isDark()) {
            p7.drawCircle(this.val$cx, this.val$cy, (this.val$r * (1065353216 - org.telegram.ui.ThemePreviewActivity.-$$Nest$fgetchangeDayNightViewProgress(this.this$0))), this.val$bitmapPaint);
        } else {
            if (org.telegram.ui.ThemePreviewActivity.-$$Nest$fgetchangeDayNightViewProgress(this.this$0) > 0) {
                this.val$bitmapCanvas.drawCircle(this.val$cx, this.val$cy, (this.val$r * org.telegram.ui.ThemePreviewActivity.-$$Nest$fgetchangeDayNightViewProgress(this.this$0)), this.val$xRefPaint);
            }
            p7.drawBitmap(this.val$bitmap, 0, 0, this.val$bitmapPaint);
        }
        p7.save();
        p7.translate(this.val$x, this.val$y);
        org.telegram.ui.ThemePreviewActivity.-$$Nest$fgetdayNightItem(this.this$0).draw(p7);
        p7.restore();
        return;
    }
}
