package org.telegram.p029ui.Cells;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.FileRefController;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.SharedConfig;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.LinkPath;
import org.telegram.p029ui.Components.LinkSpanDrawable;
import org.telegram.p029ui.Components.TypefaceSpan;
import org.telegram.p029ui.Components.URLSpanNoUnderline;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_bots;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public abstract class BotHelpCell extends View {
    private boolean animating;
    private String currentPhotoKey;
    private BotHelpCellDelegate delegate;
    private int height;
    private int imagePadding;
    private ImageReceiver imageReceiver;
    private boolean isPhotoVisible;
    private boolean isTextVisible;
    private LinkSpanDrawable.LinkCollector links;
    private String oldText;
    private int photoHeight;
    private LinkSpanDrawable pressedLink;
    private Theme.ResourcesProvider resourcesProvider;
    private Drawable selectorDrawable;
    private int selectorDrawableRadius;
    private StaticLayout textLayout;
    private int textX;
    private int textY;
    public boolean wasDraw;
    private int width;

    public interface BotHelpCellDelegate {
        void didPressUrl(String str);
    }

    public int getSideMenuWidth() {
        return 0;
    }

    public BotHelpCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.links = new LinkSpanDrawable.LinkCollector(this);
        this.imagePadding = AndroidUtilities.m1124dp(4.0f);
        this.resourcesProvider = resourcesProvider;
        ImageReceiver imageReceiver = new ImageReceiver(this);
        this.imageReceiver = imageReceiver;
        imageReceiver.setInvalidateAll(true);
        this.imageReceiver.setCrossfadeWithOldImage(true);
        this.imageReceiver.setCrossfadeDuration(300);
        int color = Theme.getColor(Theme.key_listSelector, resourcesProvider);
        int i = SharedConfig.bubbleRadius;
        this.selectorDrawableRadius = i;
        Drawable drawableCreateRadSelectorDrawable = Theme.createRadSelectorDrawable(color, i, i);
        this.selectorDrawable = drawableCreateRadSelectorDrawable;
        drawableCreateRadSelectorDrawable.setCallback(this);
    }

    public void setDelegate(BotHelpCellDelegate botHelpCellDelegate) {
        this.delegate = botHelpCellDelegate;
    }

    private void resetPressedLink() {
        if (this.pressedLink != null) {
            this.pressedLink = null;
        }
        this.links.clear();
        invalidate();
    }

    public void setText(boolean z, String str) {
        setText(z, str, null, null);
    }

    public void setText(boolean z, String str, TLObject tLObject, TL_bots.BotInfo botInfo) {
        int iMin;
        boolean z2 = tLObject != null;
        boolean z3 = !TextUtils.isEmpty(str);
        if ((str == null || str.length() == 0) && !z2) {
            setVisibility(8);
            return;
        }
        String str2 = str == null ? _UrlKt.FRAGMENT_ENCODE_SET : str;
        if (str2.equals(this.oldText) && this.isPhotoVisible == z2) {
            return;
        }
        this.isPhotoVisible = z2;
        this.isTextVisible = z3;
        if (z2) {
            String keyForParentObject = FileRefController.getKeyForParentObject(botInfo);
            if (!Objects.equals(this.currentPhotoKey, keyForParentObject)) {
                this.currentPhotoKey = keyForParentObject;
                if (tLObject instanceof TLRPC.TL_photo) {
                    TLRPC.Photo photo = (TLRPC.Photo) tLObject;
                    this.imageReceiver.setImage(ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(photo.sizes, 400), photo), "400_400", null, "jpg", botInfo, 0);
                } else if (tLObject instanceof TLRPC.Document) {
                    TLRPC.Document document = (TLRPC.Document) tLObject;
                    TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 400);
                    BitmapDrawable bitmapDrawable = null;
                    if (SharedConfig.getDevicePerformanceClass() != 0) {
                        ArrayList<TLRPC.PhotoSize> arrayList = document.thumbs;
                        int size = arrayList.size();
                        int i = 0;
                        while (i < size) {
                            TLRPC.PhotoSize photoSize = arrayList.get(i);
                            i++;
                            TLRPC.PhotoSize photoSize2 = photoSize;
                            if (photoSize2 instanceof TLRPC.TL_photoStrippedSize) {
                                bitmapDrawable = new BitmapDrawable(getResources(), ImageLoader.getStrippedPhotoBitmap(photoSize2.bytes, "b"));
                            }
                        }
                    }
                    this.imageReceiver.setImage(ImageLocation.getForDocument(document), ImageLoader.AUTOPLAY_FILTER, ImageLocation.getForDocument(MessageObject.getDocumentVideoThumb(document), document), null, ImageLocation.getForDocument(closestPhotoSizeWithSize, document), "86_86_b", bitmapDrawable, document.size, "mp4", botInfo, 0);
                }
                int iM1124dp = AndroidUtilities.m1124dp(SharedConfig.bubbleRadius) - AndroidUtilities.m1124dp(2.0f);
                int iM1124dp2 = AndroidUtilities.m1124dp(4.0f);
                if (!this.isTextVisible) {
                    iM1124dp2 = iM1124dp;
                }
                this.imageReceiver.setRoundRadius(iM1124dp, iM1124dp, iM1124dp2, iM1124dp2);
            }
        }
        this.oldText = AndroidUtilities.getSafeString(str2);
        setVisibility(0);
        if (AndroidUtilities.isTablet()) {
            iMin = AndroidUtilities.getMinTabletSide();
        } else {
            Point point = AndroidUtilities.displaySize;
            iMin = Math.min(point.x, point.y);
        }
        int i2 = (int) (iMin * 0.7f);
        if (this.isTextVisible) {
            String[] strArrSplit = str2.split("\n");
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            String string = LocaleController.getString(C2888R.string.BotInfoTitle);
            if (z) {
                spannableStringBuilder.append((CharSequence) string);
                spannableStringBuilder.append((CharSequence) "\n\n");
            }
            for (int i3 = 0; i3 < strArrSplit.length; i3++) {
                spannableStringBuilder.append((CharSequence) strArrSplit[i3].trim());
                if (i3 != strArrSplit.length - 1) {
                    spannableStringBuilder.append((CharSequence) "\n");
                }
            }
            MessageObject.addLinks(false, spannableStringBuilder);
            if (z) {
                spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, string.length(), 33);
            }
            Emoji.replaceEmoji(spannableStringBuilder, Theme.chat_msgTextPaint.getFontMetricsInt(), false);
            try {
                StaticLayout staticLayout = new StaticLayout(spannableStringBuilder, Theme.chat_msgTextPaint, i2 - (this.isPhotoVisible ? AndroidUtilities.m1124dp(5.0f) : 0), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                this.textLayout = staticLayout;
                this.width = 0;
                this.height = staticLayout.getHeight() + AndroidUtilities.m1124dp(22.0f);
                int lineCount = this.textLayout.getLineCount();
                for (int i4 = 0; i4 < lineCount; i4++) {
                    this.width = (int) Math.ceil(Math.max(this.width, this.textLayout.getLineWidth(i4) + this.textLayout.getLineLeft(i4)));
                }
                if (this.width > i2 || this.isPhotoVisible) {
                    this.width = i2;
                }
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        } else if (this.isPhotoVisible) {
            this.width = i2;
        }
        int iM1124dp3 = this.width + AndroidUtilities.m1124dp(22.0f);
        this.width = iM1124dp3;
        if (this.isPhotoVisible) {
            int i5 = this.height;
            int i6 = (int) (((double) iM1124dp3) * 0.5625d);
            this.photoHeight = i6;
            this.height = i5 + i6 + AndroidUtilities.m1124dp(4.0f);
        }
    }

    public CharSequence getText() {
        StaticLayout staticLayout = this.textLayout;
        if (staticLayout == null) {
            return null;
        }
        return staticLayout.getText();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (this.textLayout == null) {
            z = false;
        } else {
            if (motionEvent.getAction() == 0 || (this.pressedLink != null && motionEvent.getAction() == 1)) {
                if (motionEvent.getAction() == 0) {
                    resetPressedLink();
                    try {
                        int i = (int) (y - this.textY);
                        int lineForVertical = this.textLayout.getLineForVertical(i);
                        float f = (int) (x - this.textX);
                        int offsetForHorizontal = this.textLayout.getOffsetForHorizontal(lineForVertical, f);
                        float lineLeft = this.textLayout.getLineLeft(lineForVertical);
                        if (lineLeft <= f && lineLeft + this.textLayout.getLineWidth(lineForVertical) >= f) {
                            Spannable spannable = (Spannable) this.textLayout.getText();
                            ClickableSpan[] clickableSpanArr = (ClickableSpan[]) spannable.getSpans(offsetForHorizontal, offsetForHorizontal, ClickableSpan.class);
                            if (clickableSpanArr.length != 0) {
                                resetPressedLink();
                                this.pressedLink = new LinkSpanDrawable(clickableSpanArr[0], this.resourcesProvider, f, i);
                                try {
                                    try {
                                        int spanStart = spannable.getSpanStart(clickableSpanArr[0]);
                                        LinkPath linkPathObtainNewPath = this.pressedLink.obtainNewPath();
                                        linkPathObtainNewPath.setCurrentLayout(this.textLayout, spanStart, 0.0f);
                                        this.textLayout.getSelectionPath(spanStart, spannable.getSpanEnd(clickableSpanArr[0]), linkPathObtainNewPath);
                                    } catch (Exception e) {
                                        FileLog.m1136e(e);
                                    }
                                    this.links.addLink(this.pressedLink);
                                    invalidate();
                                    z = true;
                                } catch (Exception e2) {
                                    e = e2;
                                    z2 = true;
                                    resetPressedLink();
                                    FileLog.m1136e(e);
                                    z = z2;
                                }
                            } else {
                                resetPressedLink();
                            }
                        } else {
                            resetPressedLink();
                        }
                    } catch (Exception e3) {
                        e = e3;
                        z2 = false;
                    }
                } else {
                    LinkSpanDrawable linkSpanDrawable = this.pressedLink;
                    if (linkSpanDrawable != null) {
                        try {
                            ClickableSpan clickableSpan = (ClickableSpan) linkSpanDrawable.getSpan();
                            if (clickableSpan instanceof URLSpanNoUnderline) {
                                String url = ((URLSpanNoUnderline) clickableSpan).getURL();
                                if (url.startsWith("@") || url.startsWith("#") || url.startsWith("/") || url.startsWith("$")) {
                                    BotHelpCellDelegate botHelpCellDelegate = this.delegate;
                                    if (botHelpCellDelegate != null) {
                                        botHelpCellDelegate.didPressUrl(url);
                                    }
                                }
                            } else if (clickableSpan instanceof URLSpan) {
                                BotHelpCellDelegate botHelpCellDelegate2 = this.delegate;
                                if (botHelpCellDelegate2 != null) {
                                    botHelpCellDelegate2.didPressUrl(((URLSpan) clickableSpan).getURL());
                                }
                            } else if (clickableSpan != null) {
                                clickableSpan.onClick(this);
                            }
                        } catch (Exception e4) {
                            FileLog.m1136e(e4);
                        }
                        resetPressedLink();
                        z = true;
                    }
                }
            } else if (motionEvent.getAction() == 3) {
                resetPressedLink();
            }
            z = false;
        }
        if (this.selectorDrawable != null) {
            if (!z && y > 0.0f && motionEvent.getAction() == 0 && isClickable()) {
                this.selectorDrawable.setState(new int[]{R.attr.state_pressed, R.attr.state_enabled});
                this.selectorDrawable.setHotspot(motionEvent.getX(), motionEvent.getY());
                invalidate();
            } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                this.selectorDrawable.setState(new int[0]);
                invalidate();
                if (!z && motionEvent.getAction() == 1) {
                    performClick();
                }
            }
            z = true;
        }
        return z || super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), this.height + AndroidUtilities.m1124dp(8.0f));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.save();
        canvas.translate(getSideMenuWidth() / 2.0f, 0.0f);
        int width = (getWidth() - this.width) / 2;
        int iM1124dp = this.photoHeight + AndroidUtilities.m1124dp(2.0f);
        Drawable shadowDrawable = Theme.chat_msgInMediaDrawable.getShadowDrawable();
        if (shadowDrawable != null) {
            shadowDrawable.setBounds(width, iM1124dp, this.width + width, this.height + iM1124dp);
            shadowDrawable.draw(canvas);
        }
        Point point = AndroidUtilities.displaySize;
        int measuredWidth = point.x;
        int measuredHeight = point.y;
        if (getParent() instanceof View) {
            View view = (View) getParent();
            measuredWidth = view.getMeasuredWidth();
            measuredHeight = view.getMeasuredHeight();
        }
        Theme.MessageDrawable messageDrawable = (Theme.MessageDrawable) getThemedDrawable("drawableMsgInMedia");
        messageDrawable.setTop((int) getY(), measuredWidth, measuredHeight, false, false);
        messageDrawable.setBounds(width, 0, this.width + width, this.height);
        messageDrawable.draw(canvas);
        Drawable drawable = this.selectorDrawable;
        if (drawable != null) {
            int i = this.selectorDrawableRadius;
            int i2 = SharedConfig.bubbleRadius;
            if (i != i2) {
                this.selectorDrawableRadius = i2;
                Theme.setMaskDrawableRad(drawable, i2, i2);
            }
            this.selectorDrawable.setBounds(AndroidUtilities.m1124dp(2.0f) + width, AndroidUtilities.m1124dp(2.0f), (this.width + width) - AndroidUtilities.m1124dp(2.0f), this.height - AndroidUtilities.m1124dp(2.0f));
            this.selectorDrawable.draw(canvas);
        }
        this.imageReceiver.setImageCoords(width + r3, this.imagePadding, this.width - (r3 * 2), this.photoHeight - r3);
        this.imageReceiver.draw(canvas);
        Theme.chat_msgTextPaint.setColor(getThemedColor(Theme.key_chat_messageTextIn));
        Theme.chat_msgTextPaint.linkColor = getThemedColor(Theme.key_chat_messageLinkIn);
        canvas.save();
        int iM1124dp2 = AndroidUtilities.m1124dp(this.isPhotoVisible ? 14.0f : 11.0f) + width;
        this.textX = iM1124dp2;
        float f = iM1124dp2;
        int iM1124dp3 = AndroidUtilities.m1124dp(11.0f) + iM1124dp;
        this.textY = iM1124dp3;
        canvas.translate(f, iM1124dp3);
        if (this.links.draw(canvas)) {
            invalidate();
        }
        StaticLayout staticLayout = this.textLayout;
        if (staticLayout != null) {
            staticLayout.draw(canvas);
        }
        canvas.restore();
        canvas.restore();
        this.wasDraw = true;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.imageReceiver.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.imageReceiver.onDetachedFromWindow();
        this.wasDraw = false;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        StaticLayout staticLayout = this.textLayout;
        if (staticLayout != null) {
            accessibilityNodeInfo.setText(staticLayout.getText());
        }
    }

    public boolean animating() {
        return this.animating;
    }

    public void setAnimating(boolean z) {
        this.animating = z;
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    private Drawable getThemedDrawable(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Drawable drawable = resourcesProvider != null ? resourcesProvider.getDrawable(str) : null;
        return drawable != null ? drawable : Theme.getThemeDrawable(str);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.selectorDrawable || super.verifyDrawable(drawable);
    }
}
