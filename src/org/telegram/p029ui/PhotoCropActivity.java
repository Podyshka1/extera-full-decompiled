package org.telegram.p029ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import java.io.File;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Bitmaps;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.BaseFragment;

/* JADX INFO: loaded from: classes6.dex */
public class PhotoCropActivity extends BaseFragment {
    private String bitmapKey;
    private PhotoEditActivityDelegate delegate;
    private boolean doneButtonPressed;
    private BitmapDrawable drawable;
    private Bitmap imageToCrop;
    private boolean sameBitmap;
    private PhotoCropView view;

    /* JADX INFO: loaded from: classes3.dex */
    public interface PhotoEditActivityDelegate {
        void didFinishEdit(Bitmap bitmap);
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    class PhotoCropView extends FrameLayout {
        int bitmapHeight;
        int bitmapWidth;
        int bitmapX;
        int bitmapY;
        Paint circlePaint;
        int draggingState;
        boolean freeform;
        Paint halfPaint;
        float oldX;
        float oldY;
        Paint rectPaint;
        float rectSizeX;
        float rectSizeY;
        float rectX;
        float rectY;
        int viewHeight;
        int viewWidth;

        public PhotoCropView(Context context) {
            super(context);
            this.rectPaint = null;
            this.circlePaint = null;
            this.halfPaint = null;
            this.rectSizeX = 600.0f;
            this.rectSizeY = 600.0f;
            this.rectX = -1.0f;
            this.rectY = -1.0f;
            this.draggingState = 0;
            this.oldX = 0.0f;
            this.oldY = 0.0f;
            init();
        }

        private void init() {
            Paint paint = new Paint();
            this.rectPaint = paint;
            paint.setColor(1073412858);
            this.rectPaint.setStrokeWidth(AndroidUtilities.m1124dp(2.0f));
            this.rectPaint.setStyle(Paint.Style.STROKE);
            Paint paint2 = new Paint();
            this.circlePaint = paint2;
            paint2.setColor(-1);
            Paint paint3 = new Paint();
            this.halfPaint = paint3;
            paint3.setColor(-939524096);
            setBackgroundColor(-13421773);
            setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.PhotoCropActivity$PhotoCropView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return this.f$0.lambda$init$0(view, motionEvent);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:13:0x003a  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x005a  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x007a  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x009c  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x00b5  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x00bb  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public /* synthetic */ boolean lambda$init$0(View view, MotionEvent motionEvent) {
            int i;
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int iM1124dp = AndroidUtilities.m1124dp(14.0f);
            if (motionEvent.getAction() == 0) {
                float f = this.rectX;
                float f2 = iM1124dp;
                if (f - f2 >= x || f + f2 <= x) {
                    float f3 = this.rectSizeX;
                    if ((f - f2) + f3 < x && f + f2 + f3 > x) {
                        float f4 = this.rectY;
                        if (f4 - f2 < y && f4 + f2 > y) {
                            this.draggingState = 2;
                        }
                        if (this.draggingState != 0) {
                        }
                        this.oldX = x;
                        this.oldY = y;
                    } else if (f - f2 < x && f + f2 > x) {
                        float f5 = this.rectY;
                        float f6 = this.rectSizeY;
                        if ((f5 - f2) + f6 < y && f5 + f2 + f6 > y) {
                            this.draggingState = 3;
                        }
                        if (this.draggingState != 0) {
                        }
                        this.oldX = x;
                        this.oldY = y;
                    } else if ((f - f2) + f3 < x && f + f2 + f3 > x) {
                        float f7 = this.rectY;
                        float f8 = this.rectSizeY;
                        if ((f7 - f2) + f8 < y && f7 + f2 + f8 > y) {
                            this.draggingState = 4;
                        }
                        if (this.draggingState != 0) {
                        }
                        this.oldX = x;
                        this.oldY = y;
                    } else if (f < x && f + f3 > x) {
                        float f9 = this.rectY;
                        if (f9 < y && f9 + this.rectSizeY > y) {
                            this.draggingState = 5;
                        }
                        if (this.draggingState != 0) {
                        }
                        this.oldX = x;
                        this.oldY = y;
                    } else {
                        this.draggingState = 0;
                        if (this.draggingState != 0) {
                            requestDisallowInterceptTouchEvent(true);
                        }
                        this.oldX = x;
                        this.oldY = y;
                    }
                } else {
                    float f10 = this.rectY;
                    if (f10 - f2 < y && f10 + f2 > y) {
                        this.draggingState = 1;
                    }
                    if (this.draggingState != 0) {
                    }
                    this.oldX = x;
                    this.oldY = y;
                }
            } else if (motionEvent.getAction() == 1) {
                this.draggingState = 0;
            } else if (motionEvent.getAction() == 2 && (i = this.draggingState) != 0) {
                float f11 = x - this.oldX;
                float f12 = y - this.oldY;
                if (i == 5) {
                    float f13 = this.rectX + f11;
                    this.rectX = f13;
                    float f14 = this.rectY + f12;
                    this.rectY = f14;
                    int i2 = this.bitmapX;
                    if (f13 < i2) {
                        this.rectX = i2;
                    } else {
                        float f15 = this.rectSizeX;
                        float f16 = f13 + f15;
                        int i3 = this.bitmapWidth;
                        if (f16 > i2 + i3) {
                            this.rectX = (i2 + i3) - f15;
                        }
                    }
                    int i4 = this.bitmapY;
                    if (f14 < i4) {
                        this.rectY = i4;
                    } else {
                        float f17 = this.rectSizeY;
                        float f18 = f14 + f17;
                        int i5 = this.bitmapHeight;
                        if (f18 > i4 + i5) {
                            this.rectY = (i4 + i5) - f17;
                        }
                    }
                } else if (i == 1) {
                    float f19 = this.rectSizeX;
                    if (f19 - f11 < 160.0f) {
                        f11 = f19 - 160.0f;
                    }
                    float f20 = this.rectX;
                    float f21 = f20 + f11;
                    int i6 = this.bitmapX;
                    if (f21 < i6) {
                        f11 = i6 - f20;
                    }
                    if (!this.freeform) {
                        float f22 = this.rectY;
                        float f23 = f22 + f11;
                        int i7 = this.bitmapY;
                        if (f23 < i7) {
                            f11 = i7 - f22;
                        }
                        this.rectX = f20 + f11;
                        this.rectY = f22 + f11;
                        this.rectSizeX = f19 - f11;
                        this.rectSizeY -= f11;
                    } else {
                        float f24 = this.rectSizeY;
                        if (f24 - f12 < 160.0f) {
                            f12 = f24 - 160.0f;
                        }
                        float f25 = this.rectY;
                        float f26 = f25 + f12;
                        int i8 = this.bitmapY;
                        if (f26 < i8) {
                            f12 = i8 - f25;
                        }
                        this.rectX = f20 + f11;
                        this.rectY = f25 + f12;
                        this.rectSizeX = f19 - f11;
                        this.rectSizeY = f24 - f12;
                    }
                } else if (i == 2) {
                    float f27 = this.rectSizeX;
                    if (f27 + f11 < 160.0f) {
                        f11 = -(f27 - 160.0f);
                    }
                    float f28 = this.rectX;
                    float f29 = f28 + f27 + f11;
                    int i9 = this.bitmapX;
                    int i10 = this.bitmapWidth;
                    if (f29 > i9 + i10) {
                        f11 = ((i9 + i10) - f28) - f27;
                    }
                    if (!this.freeform) {
                        float f30 = this.rectY;
                        float f31 = f30 - f11;
                        int i11 = this.bitmapY;
                        if (f31 < i11) {
                            f11 = f30 - i11;
                        }
                        this.rectY = f30 - f11;
                        this.rectSizeX = f27 + f11;
                        this.rectSizeY += f11;
                    } else {
                        float f32 = this.rectSizeY;
                        if (f32 - f12 < 160.0f) {
                            f12 = f32 - 160.0f;
                        }
                        float f33 = this.rectY;
                        float f34 = f33 + f12;
                        int i12 = this.bitmapY;
                        if (f34 < i12) {
                            f12 = i12 - f33;
                        }
                        this.rectY = f33 + f12;
                        this.rectSizeX = f27 + f11;
                        this.rectSizeY = f32 - f12;
                    }
                } else if (i == 3) {
                    float f35 = this.rectSizeX;
                    if (f35 - f11 < 160.0f) {
                        f11 = f35 - 160.0f;
                    }
                    float f36 = this.rectX;
                    float f37 = f36 + f11;
                    int i13 = this.bitmapX;
                    if (f37 < i13) {
                        f11 = i13 - f36;
                    }
                    if (!this.freeform) {
                        float f38 = this.rectY;
                        float f39 = (f38 + f35) - f11;
                        int i14 = this.bitmapY;
                        int i15 = this.bitmapHeight;
                        if (f39 > i14 + i15) {
                            f11 = ((f38 + f35) - i14) - i15;
                        }
                        this.rectX = f36 + f11;
                        this.rectSizeX = f35 - f11;
                        this.rectSizeY -= f11;
                    } else {
                        float f40 = this.rectY;
                        float f41 = this.rectSizeY;
                        float f42 = f40 + f41 + f12;
                        int i16 = this.bitmapY;
                        int i17 = this.bitmapHeight;
                        if (f42 > i16 + i17) {
                            f12 = ((i16 + i17) - f40) - f41;
                        }
                        this.rectX = f36 + f11;
                        this.rectSizeX = f35 - f11;
                        float f43 = f41 + f12;
                        this.rectSizeY = f43;
                        if (f43 < 160.0f) {
                            this.rectSizeY = 160.0f;
                        }
                    }
                } else if (i == 4) {
                    float f44 = this.rectX;
                    float f45 = this.rectSizeX;
                    float f46 = f44 + f45 + f11;
                    int i18 = this.bitmapX;
                    int i19 = this.bitmapWidth;
                    if (f46 > i18 + i19) {
                        f11 = ((i18 + i19) - f44) - f45;
                    }
                    if (!this.freeform) {
                        float f47 = this.rectY;
                        float f48 = f47 + f45 + f11;
                        int i20 = this.bitmapY;
                        int i21 = this.bitmapHeight;
                        if (f48 > i20 + i21) {
                            f11 = ((i20 + i21) - f47) - f45;
                        }
                        this.rectSizeX = f45 + f11;
                        this.rectSizeY += f11;
                    } else {
                        float f49 = this.rectY;
                        float f50 = this.rectSizeY;
                        float f51 = f49 + f50 + f12;
                        int i22 = this.bitmapY;
                        int i23 = this.bitmapHeight;
                        if (f51 > i22 + i23) {
                            f12 = ((i22 + i23) - f49) - f50;
                        }
                        this.rectSizeX = f45 + f11;
                        this.rectSizeY = f50 + f12;
                    }
                    if (this.rectSizeX < 160.0f) {
                        this.rectSizeX = 160.0f;
                    }
                    if (this.rectSizeY < 160.0f) {
                        this.rectSizeY = 160.0f;
                    }
                }
                this.oldX = x;
                this.oldY = y;
                invalidate();
            }
            return true;
        }

        private void updateBitmapSize() {
            if (this.viewWidth == 0 || this.viewHeight == 0 || PhotoCropActivity.this.imageToCrop == null) {
                return;
            }
            float f = this.rectX - this.bitmapX;
            int i = this.bitmapWidth;
            float f2 = f / i;
            float f3 = this.rectY - this.bitmapY;
            int i2 = this.bitmapHeight;
            float f4 = f3 / i2;
            float f5 = this.rectSizeX / i;
            float f6 = this.rectSizeY / i2;
            float width = PhotoCropActivity.this.imageToCrop.getWidth();
            float height = PhotoCropActivity.this.imageToCrop.getHeight();
            int i3 = this.viewWidth;
            float f7 = i3 / width;
            int i4 = this.viewHeight;
            if (f7 > i4 / height) {
                this.bitmapHeight = i4;
                this.bitmapWidth = (int) Math.ceil(width * r9);
            } else {
                this.bitmapWidth = i3;
                this.bitmapHeight = (int) Math.ceil(height * f7);
            }
            this.bitmapX = ((this.viewWidth - this.bitmapWidth) / 2) + AndroidUtilities.m1124dp(14.0f);
            int iM1124dp = ((this.viewHeight - this.bitmapHeight) / 2) + AndroidUtilities.m1124dp(14.0f);
            this.bitmapY = iM1124dp;
            if (this.rectX == -1.0f && this.rectY == -1.0f) {
                if (this.freeform) {
                    this.rectY = iM1124dp;
                    this.rectX = this.bitmapX;
                    this.rectSizeX = this.bitmapWidth;
                    this.rectSizeY = this.bitmapHeight;
                } else {
                    if (this.bitmapWidth > this.bitmapHeight) {
                        this.rectY = iM1124dp;
                        this.rectX = ((this.viewWidth - r1) / 2) + AndroidUtilities.m1124dp(14.0f);
                        int i5 = this.bitmapHeight;
                        this.rectSizeX = i5;
                        this.rectSizeY = i5;
                    } else {
                        this.rectX = this.bitmapX;
                        this.rectY = ((this.viewHeight - r0) / 2) + AndroidUtilities.m1124dp(14.0f);
                        int i6 = this.bitmapWidth;
                        this.rectSizeX = i6;
                        this.rectSizeY = i6;
                    }
                }
            } else {
                int i7 = this.bitmapWidth;
                this.rectX = (f2 * i7) + this.bitmapX;
                int i8 = this.bitmapHeight;
                this.rectY = (f4 * i8) + iM1124dp;
                this.rectSizeX = f5 * i7;
                this.rectSizeY = f6 * i8;
            }
            invalidate();
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            this.viewWidth = (i3 - i) - AndroidUtilities.m1124dp(28.0f);
            this.viewHeight = (i4 - i2) - AndroidUtilities.m1124dp(28.0f);
            updateBitmapSize();
        }

        public Bitmap getBitmap() {
            float f = this.rectX - this.bitmapX;
            int i = this.bitmapWidth;
            float f2 = (this.rectY - this.bitmapY) / this.bitmapHeight;
            float f3 = this.rectSizeX / i;
            float f4 = this.rectSizeY / i;
            int width = (int) ((f / i) * PhotoCropActivity.this.imageToCrop.getWidth());
            int height = (int) (f2 * PhotoCropActivity.this.imageToCrop.getHeight());
            int width2 = (int) (f3 * PhotoCropActivity.this.imageToCrop.getWidth());
            int width3 = (int) (f4 * PhotoCropActivity.this.imageToCrop.getWidth());
            if (width < 0) {
                width = 0;
            }
            if (height < 0) {
                height = 0;
            }
            if (width + width2 > PhotoCropActivity.this.imageToCrop.getWidth()) {
                width2 = PhotoCropActivity.this.imageToCrop.getWidth() - width;
            }
            if (height + width3 > PhotoCropActivity.this.imageToCrop.getHeight()) {
                width3 = PhotoCropActivity.this.imageToCrop.getHeight() - height;
            }
            try {
                return Bitmaps.createBitmap(PhotoCropActivity.this.imageToCrop, width, height, width2, width3);
            } catch (Throwable th) {
                FileLog.m1136e(th);
                return null;
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (PhotoCropActivity.this.drawable != null) {
                try {
                    BitmapDrawable bitmapDrawable = PhotoCropActivity.this.drawable;
                    int i = this.bitmapX;
                    int i2 = this.bitmapY;
                    bitmapDrawable.setBounds(i, i2, this.bitmapWidth + i, this.bitmapHeight + i2);
                    PhotoCropActivity.this.drawable.draw(canvas);
                } catch (Throwable th) {
                    FileLog.m1136e(th);
                }
            }
            canvas.drawRect(this.bitmapX, this.bitmapY, r0 + this.bitmapWidth, this.rectY, this.halfPaint);
            float f = this.bitmapX;
            float f2 = this.rectY;
            canvas.drawRect(f, f2, this.rectX, f2 + this.rectSizeY, this.halfPaint);
            float f3 = this.rectX + this.rectSizeX;
            float f4 = this.rectY;
            canvas.drawRect(f3, f4, this.bitmapX + this.bitmapWidth, f4 + this.rectSizeY, this.halfPaint);
            canvas.drawRect(this.bitmapX, this.rectY + this.rectSizeY, r14 + this.bitmapWidth, this.bitmapY + this.bitmapHeight, this.halfPaint);
            float f5 = this.rectX;
            float f6 = this.rectY;
            canvas.drawRect(f5, f6, f5 + this.rectSizeX, f6 + this.rectSizeY, this.rectPaint);
            int iM1124dp = AndroidUtilities.m1124dp(1.0f);
            float f7 = this.rectX;
            float f8 = iM1124dp;
            float f9 = iM1124dp * 3;
            canvas.drawRect(f7 + f8, this.rectY + f8, f7 + f8 + AndroidUtilities.m1124dp(20.0f), this.rectY + f9, this.circlePaint);
            float f10 = this.rectX;
            float f11 = this.rectY;
            canvas.drawRect(f10 + f8, f11 + f8, f10 + f9, f11 + f8 + AndroidUtilities.m1124dp(20.0f), this.circlePaint);
            float fM1124dp = ((this.rectX + this.rectSizeX) - f8) - AndroidUtilities.m1124dp(20.0f);
            float f12 = this.rectY;
            canvas.drawRect(fM1124dp, f12 + f8, (this.rectX + this.rectSizeX) - f8, f12 + f9, this.circlePaint);
            float f13 = this.rectX;
            float f14 = this.rectSizeX;
            float f15 = this.rectY;
            canvas.drawRect((f13 + f14) - f9, f15 + f8, (f13 + f14) - f8, f15 + f8 + AndroidUtilities.m1124dp(20.0f), this.circlePaint);
            canvas.drawRect(this.rectX + f8, ((this.rectY + this.rectSizeY) - f8) - AndroidUtilities.m1124dp(20.0f), this.rectX + f9, (this.rectY + this.rectSizeY) - f8, this.circlePaint);
            float f16 = this.rectX;
            canvas.drawRect(f16 + f8, (this.rectY + this.rectSizeY) - f9, f16 + f8 + AndroidUtilities.m1124dp(20.0f), (this.rectY + this.rectSizeY) - f8, this.circlePaint);
            float fM1124dp2 = ((this.rectX + this.rectSizeX) - f8) - AndroidUtilities.m1124dp(20.0f);
            float f17 = this.rectY;
            float f18 = this.rectSizeY;
            canvas.drawRect(fM1124dp2, (f17 + f18) - f9, (this.rectX + this.rectSizeX) - f8, (f17 + f18) - f8, this.circlePaint);
            canvas.drawRect((this.rectX + this.rectSizeX) - f9, ((this.rectY + this.rectSizeY) - f8) - AndroidUtilities.m1124dp(20.0f), (this.rectX + this.rectSizeX) - f8, (this.rectY + this.rectSizeY) - f8, this.circlePaint);
            for (int i3 = 1; i3 < 3; i3++) {
                float f19 = this.rectX;
                float f20 = this.rectSizeX;
                float f21 = i3;
                float f22 = this.rectY;
                canvas.drawRect(f19 + ((f20 / 3.0f) * f21), f22 + f8, f19 + f8 + ((f20 / 3.0f) * f21), (f22 + this.rectSizeY) - f8, this.circlePaint);
                float f23 = this.rectX;
                float f24 = this.rectY;
                float f25 = this.rectSizeY;
                canvas.drawRect(f23 + f8, ((f25 / 3.0f) * f21) + f24, this.rectSizeX + (f23 - f8), f24 + ((f25 / 3.0f) * f21) + f8, this.circlePaint);
            }
        }
    }

    public PhotoCropActivity(Bundle bundle) {
        super(bundle);
        this.delegate = null;
        this.sameBitmap = false;
        this.doneButtonPressed = false;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        int iMax;
        if (this.imageToCrop == null) {
            String string = getArguments().getString("photoPath");
            Uri uri = (Uri) getArguments().getParcelable("photoUri");
            if (string == null && uri == null) {
                return false;
            }
            if (string != null && !new File(string).exists()) {
                return false;
            }
            if (AndroidUtilities.isTablet()) {
                iMax = AndroidUtilities.m1124dp(520.0f);
            } else {
                Point point = AndroidUtilities.displaySize;
                iMax = Math.max(point.x, point.y);
            }
            float f = iMax;
            Bitmap bitmapLoadBitmap = ImageLoader.loadBitmap(string, uri, f, f, true);
            this.imageToCrop = bitmapLoadBitmap;
            if (bitmapLoadBitmap == null) {
                return false;
            }
        }
        this.drawable = new BitmapDrawable(this.imageToCrop);
        super.onFragmentCreate();
        return true;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        Bitmap bitmap;
        super.onFragmentDestroy();
        if (this.bitmapKey != null && ImageLoader.getInstance().decrementUseCount(this.bitmapKey) && !ImageLoader.getInstance().isInMemCache(this.bitmapKey, false)) {
            this.bitmapKey = null;
        }
        if (this.bitmapKey == null && (bitmap = this.imageToCrop) != null && !this.sameBitmap) {
            bitmap.recycle();
            this.imageToCrop = null;
        }
        this.drawable = null;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackgroundColor(-13421773);
        this.actionBar.setItemsBackgroundColor(-12763843, false);
        this.actionBar.setTitleColor(-1);
        this.actionBar.setItemsColor(-1, false);
        this.actionBar.setBackButtonImage(C2888R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setTitle(LocaleController.getString(C2888R.string.CropImage));
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.PhotoCropActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    PhotoCropActivity.this.finishFragment();
                    return;
                }
                if (i == 1) {
                    if (PhotoCropActivity.this.delegate != null && !PhotoCropActivity.this.doneButtonPressed) {
                        Bitmap bitmap = PhotoCropActivity.this.view.getBitmap();
                        if (bitmap == PhotoCropActivity.this.imageToCrop) {
                            PhotoCropActivity.this.sameBitmap = true;
                        }
                        PhotoCropActivity.this.delegate.didFinishEdit(bitmap);
                        PhotoCropActivity.this.doneButtonPressed = true;
                    }
                    PhotoCropActivity.this.finishFragment();
                }
            }
        });
        this.actionBar.createMenu().addItemWithWidth(1, C2888R.drawable.ic_ab_done, AndroidUtilities.m1124dp(56.0f), LocaleController.getString(C2888R.string.Done));
        PhotoCropView photoCropView = new PhotoCropView(context);
        this.view = photoCropView;
        this.fragmentView = photoCropView;
        photoCropView.freeform = getArguments().getBoolean("freeform", false);
        this.fragmentView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        return this.fragmentView;
    }

    public void setDelegate(PhotoEditActivityDelegate photoEditActivityDelegate) {
        this.delegate = photoEditActivityDelegate;
    }
}
