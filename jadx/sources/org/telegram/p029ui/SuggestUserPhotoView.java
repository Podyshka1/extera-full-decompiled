package org.telegram.p029ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.core.content.ContextCompat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.UserConfig;
import org.telegram.p029ui.Components.AvatarDrawable;
import org.telegram.p029ui.Components.Crop.CropAreaView;
import org.telegram.p029ui.Components.PhotoCropView;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes6.dex */
public class SuggestUserPhotoView extends View {
    Drawable arrowDrawable;
    AvatarDrawable avatarDrawable;
    View containterView;
    ImageReceiver currentPhoto;
    ImageReceiver newPhoto;
    Path path;
    PhotoCropView photoCropView;

    public SuggestUserPhotoView(Context context) {
        super(context);
        this.currentPhoto = new ImageReceiver(this);
        this.newPhoto = new ImageReceiver(this);
        this.avatarDrawable = new AvatarDrawable();
        this.path = new Path();
        AvatarDrawable avatarDrawable = this.avatarDrawable;
        int i = UserConfig.selectedAccount;
        avatarDrawable.setInfo(i, UserConfig.getInstance(i).getCurrentUser());
        this.currentPhoto.setForUserOrChat(UserConfig.getInstance(UserConfig.selectedAccount).getCurrentUser(), this.avatarDrawable);
        this.newPhoto.setForUserOrChat(UserConfig.getInstance(UserConfig.selectedAccount).getCurrentUser(), this.avatarDrawable);
        Drawable drawable = ContextCompat.getDrawable(context, C2888R.drawable.msg_arrow_avatar);
        this.arrowDrawable = drawable;
        drawable.setAlpha(100);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int measuredWidth = getMeasuredWidth() >> 1;
        int measuredHeight = getMeasuredHeight() - AndroidUtilities.m1124dp(30.0f);
        int iM1124dp = measuredWidth - AndroidUtilities.m1124dp(46.0f);
        int iM1124dp2 = AndroidUtilities.m1124dp(46.0f) + measuredWidth;
        setImageCoords(this.currentPhoto, iM1124dp, measuredHeight);
        setImageCoords(this.newPhoto, iM1124dp2, measuredHeight);
        Drawable drawable = this.arrowDrawable;
        drawable.setBounds(measuredWidth - (drawable.getIntrinsicWidth() / 2), measuredHeight - (this.arrowDrawable.getIntrinsicHeight() / 2), measuredWidth + (this.arrowDrawable.getIntrinsicWidth() / 2), (this.arrowDrawable.getIntrinsicHeight() / 2) + measuredHeight);
        this.arrowDrawable.draw(canvas);
        this.path.reset();
        this.path.addCircle(iM1124dp2, measuredHeight, AndroidUtilities.m1124dp(30.0f), Path.Direction.CW);
        this.currentPhoto.draw(canvas);
        if (this.containterView != null) {
            float fM1124dp = AndroidUtilities.m1124dp(60.0f);
            CropAreaView cropAreaView = this.photoCropView.cropView.areaView;
            float f = fM1124dp / cropAreaView.size;
            float top = (0.0f - this.photoCropView.getTop()) - cropAreaView.top;
            float left = (0.0f - this.photoCropView.getLeft()) - cropAreaView.left;
            canvas.save();
            canvas.clipPath(this.path);
            canvas.scale(f, f, 0.0f, 0.0f);
            canvas.translate(left, top);
            canvas.translate((iM1124dp2 - AndroidUtilities.m1124dp(30.0f)) / f, (measuredHeight - AndroidUtilities.m1124dp(30.0f)) / f);
            PhotoViewer.getInstance().skipLastFrameDraw = true;
            this.containterView.draw(canvas);
            PhotoViewer.getInstance().skipLastFrameDraw = false;
            canvas.restore();
        }
        super.draw(canvas);
        this.containterView.invalidate();
        invalidate();
    }

    private void setImageCoords(ImageReceiver imageReceiver, int i, int i2) {
        imageReceiver.setImageCoords(i - AndroidUtilities.m1124dp(30.0f), i2 - AndroidUtilities.m1124dp(30.0f), AndroidUtilities.m1124dp(60.0f), AndroidUtilities.m1124dp(60.0f));
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        this.currentPhoto.setRoundRadius(AndroidUtilities.m1124dp(30.0f));
        this.newPhoto.setRoundRadius(AndroidUtilities.m1124dp(30.0f));
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(86.0f), TLObject.FLAG_30));
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.currentPhoto.onAttachedToWindow();
        this.newPhoto.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.currentPhoto.onDetachedFromWindow();
        this.newPhoto.onDetachedFromWindow();
    }

    public void setImages(TLObject tLObject, View view, PhotoCropView photoCropView) {
        this.avatarDrawable.setInfo(tLObject);
        this.currentPhoto.setForUserOrChat(tLObject, this.avatarDrawable);
        this.containterView = view;
        this.photoCropView = photoCropView;
    }
}
