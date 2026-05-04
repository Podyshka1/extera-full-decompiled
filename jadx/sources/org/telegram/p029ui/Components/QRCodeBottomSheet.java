package org.telegram.p029ui.Components;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Outline;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.android.p003dx.p006io.Opcodes;
import com.google.zxing.EncodeHintType;
import com.google.zxing.qrcode.QRCodeWriter;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import java.util.HashMap;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes7.dex */
public class QRCodeBottomSheet extends BottomSheet {
    private TextView button2TextView;
    private final TextView buttonTextView;
    private final TextView help;
    RLottieImageView iconImage;
    int imageSize;
    Bitmap qrCode;

    public QRCodeBottomSheet(Context context, String str, String str2, String str3, boolean z) {
        this(context, str, str2, str3, z, null);
    }

    public QRCodeBottomSheet(final Context context, String str, final String str2, String str3, boolean z, Theme.ResourcesProvider resourcesProvider) {
        super(context, false, resourcesProvider);
        fixNavigationBar();
        setTitle(str, true);
        final ImageView imageView = new ImageView(context) { // from class: org.telegram.ui.Components.QRCodeBottomSheet.1
            @Override // android.widget.ImageView, android.view.View
            protected void onMeasure(int i, int i2) {
                int size = View.MeasureSpec.getSize(i);
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30));
            }
        };
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.QRCodeBottomSheet.2
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight(), AndroidUtilities.m1124dp(12.0f));
            }
        });
        imageView.setClipToOutline(true);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(0, AndroidUtilities.m1124dp(16.0f), 0, 0);
        Bitmap bitmapCreateQR = createQR(context, str2, this.qrCode);
        this.qrCode = bitmapCreateQR;
        imageView.setImageBitmap(bitmapCreateQR);
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.iconImage = rLottieImageView;
        rLottieImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.iconImage.setBackgroundColor(-1);
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.QRCodeBottomSheet.3
            float lastX;

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(i, i2);
                float measuredHeight = (QRCodeBottomSheet.this.imageSize / 768.0f) * imageView.getMeasuredHeight();
                if (this.lastX != measuredHeight) {
                    this.lastX = measuredHeight;
                    ViewGroup.LayoutParams layoutParams = QRCodeBottomSheet.this.iconImage.getLayoutParams();
                    int i3 = (int) measuredHeight;
                    QRCodeBottomSheet.this.iconImage.getLayoutParams().width = i3;
                    layoutParams.height = i3;
                    super.onMeasure(i, i2);
                }
            }
        };
        frameLayout.addView(imageView, LayoutHelper.createFrame(-1, -1.0f));
        frameLayout.addView(this.iconImage, LayoutHelper.createFrame(60, 60, 17));
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(Opcodes.REM_INT_LIT8, Opcodes.REM_INT_LIT8, 1, 30, 0, 30, 0));
        TextView textView = new TextView(context);
        this.help = textView;
        textView.setTextSize(1, 14.0f);
        textView.setText(str3);
        textView.setGravity(1);
        linearLayout.addView(textView, LayoutHelper.createFrame(-1, -2.0f, 0, 40.0f, 8.0f, 40.0f, 8.0f));
        TextView textView2 = new TextView(context);
        this.buttonTextView = textView2;
        textView2.setPadding(AndroidUtilities.m1124dp(34.0f), 0, AndroidUtilities.m1124dp(34.0f), 0);
        textView2.setGravity(17);
        textView2.setTextSize(1, 14.0f);
        textView2.setTypeface(AndroidUtilities.bold());
        textView2.setText(LocaleController.getString(C2888R.string.ShareQrCode));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.QRCodeBottomSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(context, view);
            }
        });
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, 48, 80, 16, 15, 16, 3));
        if (z) {
            TextView textView3 = new TextView(context);
            this.button2TextView = textView3;
            textView3.setPadding(AndroidUtilities.m1124dp(34.0f), 0, AndroidUtilities.m1124dp(34.0f), 0);
            this.button2TextView.setGravity(17);
            this.button2TextView.setTextSize(1, 14.0f);
            this.button2TextView.setText(LocaleController.getString(C2888R.string.ShareLink));
            this.button2TextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.QRCodeBottomSheet$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    QRCodeBottomSheet.m11851$r8$lambda$hGgDgb2IyX0ylcB_79toVXuOp0(str2, context, view);
                }
            });
            linearLayout.addView(this.button2TextView, LayoutHelper.createLinear(-1, 48, 80, 16, 3, 16, 16));
        }
        updateColors();
        ScrollView scrollView = new ScrollView(context);
        scrollView.addView(linearLayout);
        setCustomView(scrollView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Context context, View view) {
        Uri bitmapShareUri = AndroidUtilities.getBitmapShareUri(this.qrCode, "qr_tmp.png", Bitmap.CompressFormat.PNG);
        if (bitmapShareUri != null) {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("image/*");
            intent.putExtra("android.intent.extra.STREAM", bitmapShareUri);
            try {
                AndroidUtilities.findActivity(context).startActivityForResult(Intent.createChooser(intent, getTitleView().getText()), 500);
            } catch (ActivityNotFoundException e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$hGgDgb2IyX0ylcB_79toVXuOp-0, reason: not valid java name */
    public static /* synthetic */ void m11851$r8$lambda$hGgDgb2IyX0ylcB_79toVXuOp0(String str, Context context, View view) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", str);
        Intent intentCreateChooser = Intent.createChooser(intent, LocaleController.getString(C2888R.string.ShareLink));
        intentCreateChooser.setFlags(268435456);
        context.startActivity(intentCreateChooser);
    }

    public Bitmap createQR(Context context, String str, Bitmap bitmap) {
        try {
            HashMap map = new HashMap();
            map.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.M);
            map.put(EncodeHintType.MARGIN, 0);
            QRCodeWriter qRCodeWriter = new QRCodeWriter();
            Bitmap bitmapEncode = qRCodeWriter.encode(str, 768, 768, map, bitmap);
            this.imageSize = qRCodeWriter.getImageSize();
            return bitmapEncode;
        } catch (Exception e) {
            FileLog.m1136e(e);
            return null;
        }
    }

    public void setCenterAnimation(int i) {
        this.iconImage.setAutoRepeat(true);
        this.iconImage.setAnimation(i, 60, 60);
        this.iconImage.playAnimation();
    }

    public void setCenterImage(Bitmap bitmap) {
        this.iconImage.setImageBitmap(bitmap);
    }

    void updateColors() {
        this.buttonTextView.setTextColor(getThemedColor(Theme.key_featuredStickers_buttonText));
        TextView textView = this.buttonTextView;
        int iM1124dp = AndroidUtilities.m1124dp(24.0f);
        int i = Theme.key_featuredStickers_addButton;
        textView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(iM1124dp, getThemedColor(i), getThemedColor(Theme.key_featuredStickers_addButtonPressed)));
        TextView textView2 = this.button2TextView;
        if (textView2 != null) {
            textView2.setTextColor(getThemedColor(i));
            this.button2TextView.setBackground(Theme.createSelectorDrawable(ColorUtils.setAlphaComponent(getThemedColor(i), Math.min(255, Color.alpha(getThemedColor(Theme.key_listSelector)) * 2)), 7));
        }
        TextView textView3 = this.help;
        int i2 = Theme.key_windowBackgroundWhiteGrayText;
        textView3.setTextColor(getThemedColor(i2));
        this.help.setTextColor(getThemedColor(i2));
        if (getTitleView() != null) {
            getTitleView().setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        }
        setBackgroundColor(getThemedColor(Theme.key_dialogBackground));
    }
}
