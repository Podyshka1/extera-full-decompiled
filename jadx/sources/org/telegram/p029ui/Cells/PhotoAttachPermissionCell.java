package org.telegram.p029ui.Cells;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes6.dex */
public class PhotoAttachPermissionCell extends FrameLayout {
    private ImageView imageView;
    private ImageView imageView2;
    private int itemSize;
    private final Theme.ResourcesProvider resourcesProvider;
    private TextView textView;

    public PhotoAttachPermissionCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        ImageView imageView = new ImageView(context);
        this.imageView = imageView;
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
        imageView.setScaleType(scaleType);
        ImageView imageView2 = this.imageView;
        int themedColor = getThemedColor(Theme.key_chat_attachPermissionImage);
        PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
        imageView2.setColorFilter(new PorterDuffColorFilter(themedColor, mode));
        addView(this.imageView, LayoutHelper.createFrame(44, 44.0f, 17, 5.0f, 0.0f, 0.0f, 27.0f));
        ImageView imageView3 = new ImageView(context);
        this.imageView2 = imageView3;
        imageView3.setScaleType(scaleType);
        this.imageView2.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_chat_attachPermissionMark), mode));
        addView(this.imageView2, LayoutHelper.createFrame(44, 44.0f, 17, 5.0f, 0.0f, 0.0f, 27.0f));
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextColor(getThemedColor(Theme.key_chat_attachPermissionText));
        this.textView.setTextSize(1, 12.0f);
        this.textView.setGravity(17);
        addView(this.textView, LayoutHelper.createFrame(-2, -2.0f, 17, 5.0f, 13.0f, 5.0f, 0.0f));
        this.itemSize = AndroidUtilities.m1124dp(80.0f);
    }

    public void setItemSize(int i) {
        this.itemSize = i;
    }

    public void setType(int i) {
        if (i == 0) {
            this.imageView.setImageResource(C2888R.drawable.permissions_camera1);
            this.imageView2.setImageResource(C2888R.drawable.permissions_camera2);
            this.textView.setText(LocaleController.getString(C2888R.string.CameraPermissionText));
            this.imageView.setLayoutParams(LayoutHelper.createFrame(44, 44.0f, 17, 5.0f, 0.0f, 0.0f, 27.0f));
            this.imageView2.setLayoutParams(LayoutHelper.createFrame(44, 44.0f, 17, 5.0f, 0.0f, 0.0f, 27.0f));
            return;
        }
        this.imageView.setImageResource(C2888R.drawable.permissions_gallery1);
        this.imageView2.setImageResource(C2888R.drawable.permissions_gallery2);
        this.textView.setText(LocaleController.getString(C2888R.string.GalleryPermissionText));
        this.imageView.setLayoutParams(LayoutHelper.createFrame(44, 44.0f, 17, 0.0f, 0.0f, 2.0f, 27.0f));
        this.imageView2.setLayoutParams(LayoutHelper.createFrame(44, 44.0f, 17, 0.0f, 0.0f, 2.0f, 27.0f));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.itemSize, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(this.itemSize + AndroidUtilities.m1124dp(2.0f), TLObject.FLAG_30));
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
