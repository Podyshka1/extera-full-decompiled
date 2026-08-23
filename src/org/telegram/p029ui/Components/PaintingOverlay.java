package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.HashMap;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.Paint.Views.EditTextOutline;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes3.dex */
public class PaintingOverlay extends FrameLayout {
    private Drawable backgroundDrawable;
    public boolean drawChildren;
    private boolean ignoreLayout;
    private HashMap mediaEntityViews;
    private Bitmap paintBitmap;

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    public PaintingOverlay(Context context) {
        super(context);
        this.drawChildren = true;
    }

    public void setData(String str, ArrayList arrayList, boolean z, boolean z2, boolean z3) {
        setEntities(arrayList, z, z2, z3);
        if (str != null) {
            this.paintBitmap = BitmapFactory.decodeFile(str);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(this.paintBitmap);
            this.backgroundDrawable = bitmapDrawable;
            setBackground(bitmapDrawable);
            return;
        }
        this.paintBitmap = null;
        this.backgroundDrawable = null;
        setBackground(null);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        if (this.drawChildren) {
            return super.drawChild(canvas, view, j);
        }
        return false;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        float measuredWidth;
        this.ignoreLayout = true;
        setMeasuredDimension(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
        if (this.mediaEntityViews != null) {
            int measuredWidth2 = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                VideoEditedInfo.MediaEntity mediaEntity = (VideoEditedInfo.MediaEntity) this.mediaEntityViews.get(childAt);
                if (mediaEntity != null) {
                    if (childAt instanceof EditTextOutline) {
                        childAt.measure(View.MeasureSpec.makeMeasureSpec(mediaEntity.viewWidth, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(0, 0));
                        if (mediaEntity.customTextView) {
                            measuredWidth = (mediaEntity.width * getMeasuredWidth()) / mediaEntity.viewWidth;
                        } else {
                            measuredWidth = mediaEntity.scale * ((mediaEntity.textViewWidth * measuredWidth2) / mediaEntity.viewWidth);
                        }
                        childAt.setScaleX(measuredWidth);
                        childAt.setScaleY(measuredWidth);
                    } else {
                        childAt.measure(View.MeasureSpec.makeMeasureSpec((int) (measuredWidth2 * mediaEntity.width), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec((int) (measuredHeight * mediaEntity.height), TLObject.FLAG_30));
                    }
                }
            }
        }
        this.ignoreLayout = false;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.ignoreLayout) {
            return;
        }
        super.requestLayout();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth;
        int i5;
        int i6;
        int measuredHeight;
        if (this.mediaEntityViews != null) {
            int measuredWidth2 = getMeasuredWidth();
            int measuredHeight2 = getMeasuredHeight();
            int childCount = getChildCount();
            for (int i7 = 0; i7 < childCount; i7++) {
                View childAt = getChildAt(i7);
                VideoEditedInfo.MediaEntity mediaEntity = (VideoEditedInfo.MediaEntity) this.mediaEntityViews.get(childAt);
                if (mediaEntity != null) {
                    int measuredWidth3 = childAt.getMeasuredWidth();
                    int measuredHeight3 = childAt.getMeasuredHeight();
                    if (childAt instanceof EditTextOutline) {
                        if (mediaEntity.customTextView) {
                            measuredWidth = ((int) (measuredWidth2 * (mediaEntity.f1623x + (mediaEntity.width / 2.0f)))) - (childAt.getMeasuredWidth() / 2);
                            i6 = (int) (measuredHeight2 * (mediaEntity.f1624y + (mediaEntity.height / 2.0f)));
                            measuredHeight = childAt.getMeasuredHeight() / 2;
                        } else {
                            measuredWidth = ((int) (measuredWidth2 * mediaEntity.textViewX)) - (childAt.getMeasuredWidth() / 2);
                            i6 = (int) (measuredHeight2 * mediaEntity.textViewY);
                            measuredHeight = childAt.getMeasuredHeight() / 2;
                        }
                        i5 = i6 - measuredHeight;
                    } else {
                        measuredWidth = (int) (measuredWidth2 * mediaEntity.f1623x);
                        i5 = (int) (measuredHeight2 * mediaEntity.f1624y);
                    }
                    childAt.layout(measuredWidth, i5, measuredWidth3 + measuredWidth, measuredHeight3 + i5);
                }
            }
        }
    }

    public void reset() {
        this.paintBitmap = null;
        this.backgroundDrawable = null;
        setBackground(null);
        HashMap map = this.mediaEntityViews;
        if (map != null) {
            map.clear();
        }
        removeAllViews();
    }

    public void showAll() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).setVisibility(0);
        }
        setBackground(this.backgroundDrawable);
    }

    public void hideEntities() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).setVisibility(4);
        }
    }

    public void hideBitmap() {
        setBackground(null);
    }

    public void setEntities(ArrayList arrayList, boolean z, boolean z2, boolean z3) {
        View view;
        int i;
        int i2;
        setClipChildren(z3);
        reset();
        this.mediaEntityViews = new HashMap();
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            VideoEditedInfo.MediaEntity mediaEntity = (VideoEditedInfo.MediaEntity) arrayList.get(i3);
            byte b = mediaEntity.type;
            if (b == 0) {
                BackupImageView backupImageView = new BackupImageView(getContext());
                backupImageView.setLayerNum(12);
                backupImageView.setAspectFit(true);
                ImageReceiver imageReceiver = backupImageView.getImageReceiver();
                if (z) {
                    imageReceiver.setAllowDecodeSingleFrame(true);
                    imageReceiver.setAllowStartLottieAnimation(false);
                    if (z2) {
                        imageReceiver.setDelegate(new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.ui.Components.PaintingOverlay$$ExternalSyntheticLambda0
                            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                            public final void didSetImage(ImageReceiver imageReceiver2, boolean z4, boolean z5, boolean z6) {
                                PaintingOverlay.$r8$lambda$c7Lu5wMs_GxYiPSrH1J8Mubbub4(imageReceiver2, z4, z5, z6);
                            }

                            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                            public /* synthetic */ void didSetImageBitmap(int i4, String str, Drawable drawable) {
                                ImageReceiver.ImageReceiverDelegate.CC.$default$didSetImageBitmap(this, i4, str, drawable);
                            }

                            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                            public /* synthetic */ void onAnimationReady(ImageReceiver imageReceiver2) {
                                ImageReceiver.ImageReceiverDelegate.CC.$default$onAnimationReady(this, imageReceiver2);
                            }
                        });
                    }
                }
                imageReceiver.setImage(ImageLocation.getForDocument(mediaEntity.document), null, null, null, ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(mediaEntity.document.thumbs, 90), mediaEntity.document), null, null, 0L, "webp", mediaEntity.parentObject, 1);
                if ((2 & mediaEntity.subType) != 0) {
                    backupImageView.setScaleX(-1.0f);
                }
                mediaEntity.view = backupImageView;
                view = backupImageView;
            } else if (b == 1) {
                EditTextOutline editTextOutline = new EditTextOutline(getContext()) { // from class: org.telegram.ui.Components.PaintingOverlay.1
                    @Override // org.telegram.p029ui.Components.EditTextEffects, android.view.View
                    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                        return false;
                    }

                    @Override // org.telegram.p029ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
                    public boolean onTouchEvent(MotionEvent motionEvent) {
                        return false;
                    }
                };
                editTextOutline.setBackgroundColor(0);
                editTextOutline.setPadding(AndroidUtilities.m1124dp(7.0f), AndroidUtilities.m1124dp(7.0f), AndroidUtilities.m1124dp(7.0f), AndroidUtilities.m1124dp(7.0f));
                editTextOutline.setTextSize(0, mediaEntity.fontSize);
                editTextOutline.setTypeface(mediaEntity.textTypeface.getTypeface());
                SpannableString spannableString = new SpannableString(Emoji.replaceEmoji(mediaEntity.text, editTextOutline.getPaint().getFontMetricsInt(), false));
                ArrayList<VideoEditedInfo.EmojiEntity> arrayList2 = mediaEntity.entities;
                int size2 = arrayList2.size();
                int i4 = 0;
                while (i4 < size2) {
                    VideoEditedInfo.EmojiEntity emojiEntity = arrayList2.get(i4);
                    i4++;
                    VideoEditedInfo.EmojiEntity emojiEntity2 = emojiEntity;
                    AnimatedEmojiSpan animatedEmojiSpan = new AnimatedEmojiSpan(emojiEntity2.document_id, editTextOutline.getPaint().getFontMetricsInt());
                    int i5 = emojiEntity2.offset;
                    spannableString.setSpan(animatedEmojiSpan, i5, emojiEntity2.length + i5, 33);
                }
                Emoji.EmojiSpan[] emojiSpanArr = (Emoji.EmojiSpan[]) spannableString.getSpans(0, spannableString.length(), Emoji.EmojiSpan.class);
                if (emojiSpanArr != null) {
                    for (Emoji.EmojiSpan emojiSpan : emojiSpanArr) {
                        emojiSpan.scale = 0.85f;
                    }
                }
                editTextOutline.setText(spannableString);
                int i6 = 17;
                editTextOutline.setGravity(17);
                int i7 = mediaEntity.textAlign;
                if (i7 != 1) {
                    i = 2;
                    i6 = i7 != 2 ? 19 : 21;
                } else {
                    i = 2;
                }
                editTextOutline.setGravity(i6);
                int i8 = mediaEntity.textAlign;
                if (i8 != 1) {
                    i2 = 3;
                    if (i8 == i ? LocaleController.isRTL : !LocaleController.isRTL) {
                        i2 = 2;
                    }
                } else {
                    i2 = 4;
                }
                editTextOutline.setTextAlignment(i2);
                editTextOutline.setHorizontallyScrolling(false);
                editTextOutline.setImeOptions(268435456);
                editTextOutline.setFocusableInTouchMode(true);
                editTextOutline.setEnabled(false);
                editTextOutline.setInputType(editTextOutline.getInputType() | 16384);
                editTextOutline.setBreakStrategy(0);
                editTextOutline.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
                int i9 = mediaEntity.color;
                byte b2 = mediaEntity.subType;
                if (b2 == 0) {
                    editTextOutline.setFrameColor(i9);
                    i9 = AndroidUtilities.computePerceivedBrightness(mediaEntity.color) >= 0.721f ? -16777216 : -1;
                } else if (b2 == 1) {
                    editTextOutline.setFrameColor(AndroidUtilities.computePerceivedBrightness(i9) >= 0.25f ? -1728053248 : -1711276033);
                } else if (b2 == 2) {
                    editTextOutline.setFrameColor(AndroidUtilities.computePerceivedBrightness(i9) >= 0.25f ? -16777216 : -1);
                } else {
                    editTextOutline.setFrameColor(0);
                }
                editTextOutline.setTextColor(i9);
                editTextOutline.setCursorColor(i9);
                editTextOutline.setHandlesColor(i9);
                editTextOutline.setHighlightColor(Theme.multAlpha(i9, 0.4f));
                mediaEntity.view = editTextOutline;
                view = editTextOutline;
            } else {
                view = null;
            }
            if (view != null) {
                addView(view);
                view.setRotation((float) ((((double) (-mediaEntity.rotation)) / 3.141592653589793d) * 180.0d));
                this.mediaEntityViews.put(view, mediaEntity);
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$c7Lu5wMs_GxYiPSrH1J8Mubbub4(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
        RLottieDrawable lottieAnimation;
        if (!z || z2 || (lottieAnimation = imageReceiver.getLottieAnimation()) == null) {
            return;
        }
        lottieAnimation.start();
    }

    public void setBitmap(Bitmap bitmap) {
        this.paintBitmap = bitmap;
        BitmapDrawable bitmapDrawable = new BitmapDrawable(bitmap);
        this.backgroundDrawable = bitmapDrawable;
        setBackground(bitmapDrawable);
    }

    public Bitmap getBitmap() {
        return this.paintBitmap;
    }

    @Override // android.view.View
    public void setAlpha(float f) {
        super.setAlpha(f);
        Drawable drawable = this.backgroundDrawable;
        if (drawable != null) {
            drawable.setAlpha((int) (255.0f * f));
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt != null && childAt.getParent() == this) {
                childAt.setAlpha(f);
            }
        }
    }

    public Bitmap getThumb() {
        float measuredWidth = getMeasuredWidth();
        float measuredHeight = getMeasuredHeight();
        float fMax = Math.max(measuredWidth / AndroidUtilities.m1124dp(120.0f), measuredHeight / AndroidUtilities.m1124dp(120.0f));
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap((int) (measuredWidth / fMax), (int) (measuredHeight / fMax), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        float f = 1.0f / fMax;
        canvas.scale(f, f);
        draw(canvas);
        return bitmapCreateBitmap;
    }
}
