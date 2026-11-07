package org.telegram.ui.Cells;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.gms.cast.MediaError;
import java.util.ArrayList;
import java.util.Objects;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.DialogObject;
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
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_bots;
import org.telegram.ui.ActionBar.MessageDrawable;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.ClipRoundedDrawable;
import org.telegram.ui.Components.LinkPath;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.TypefaceSpan;
import org.telegram.ui.Components.URLSpanNoUnderline;

/* JADX INFO: loaded from: classes7.dex */
public abstract class BotHelpCell extends View {
    private boolean animating;
    private final int currentAccount;
    private String currentPhotoKey;
    private BotHelpCellDelegate delegate;
    private int height;
    private int imagePadding;
    private ImageReceiver imageReceiver;
    private boolean isPhotoVisible;
    private boolean isTextVisible;
    private LinkSpanDrawable.LinkCollector links;
    private String oldManagerBotName;
    private String oldText;
    private int photoHeight;
    private LinkSpanDrawable<ClickableSpan> pressedLink;
    private final Theme.ResourcesProvider resourcesProvider;
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

    public BotHelpCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.links = new LinkSpanDrawable.LinkCollector(this);
        this.imagePadding = AndroidUtilities.dp(4.0f);
        this.currentAccount = i;
        this.resourcesProvider = resourcesProvider;
        ImageReceiver imageReceiver = new ImageReceiver(this);
        this.imageReceiver = imageReceiver;
        imageReceiver.setInvalidateAll(true);
        this.imageReceiver.setCrossfadeWithOldImage(true);
        this.imageReceiver.setCrossfadeDuration(300);
        int color = Theme.getColor(Theme.key_listSelector, resourcesProvider);
        int i2 = SharedConfig.bubbleRadius;
        this.selectorDrawableRadius = i2;
        Drawable drawableCreateRadSelectorDrawable = Theme.createRadSelectorDrawable(color, i2, i2);
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
        setText(z, 0L, str, null, null, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:134:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setText(boolean z, long j, String str, TLObject tLObject, TL_bots.BotInfo botInfo, String str2) {
        float f;
        float f2;
        float f3;
        int iMin;
        int i;
        int i2 = 0;
        boolean z2 = tLObject != null;
        boolean zIsEmpty = TextUtils.isEmpty(str);
        if ((str == null || str.length() == 0) && TextUtils.isEmpty(str2) && !z2) {
            setVisibility(8);
            return;
        }
        String str3 = str == null ? _UrlKt.FRAGMENT_ENCODE_SET : str;
        if (str3.equals(this.oldText) && TextUtils.equals(this.oldManagerBotName, str2) && this.isPhotoVisible == z2) {
            return;
        }
        boolean z3 = TextUtils.isEmpty(str3) && tLObject == null && !TextUtils.isEmpty(str2) && j != 0;
        boolean z4 = z2 || z3;
        this.isPhotoVisible = z4;
        this.isTextVisible = !zIsEmpty || z3;
        float f4 = 2.0f;
        float f5 = 4.0f;
        if (z3) {
            if (!Objects.equals(this.currentPhotoKey, "setup")) {
                this.currentPhotoKey = "setup";
                this.imageReceiver.setImageBitmap(new ClipRoundedDrawable(new BotIntroDrawable(getContext())));
                int iDp = AndroidUtilities.dp(SharedConfig.bubbleRadius) - AndroidUtilities.dp(2.0f);
                int iDp2 = AndroidUtilities.dp(4.0f);
                if (!this.isTextVisible) {
                    iDp2 = iDp;
                }
                this.imageReceiver.setRoundRadius(iDp, iDp, iDp2, iDp2);
            }
        } else {
            if (z4) {
                String keyForParentObject = FileRefController.getKeyForParentObject(botInfo);
                if (!Objects.equals(this.currentPhotoKey, keyForParentObject)) {
                    this.currentPhotoKey = keyForParentObject;
                    if (tLObject instanceof TLRPC.TL_photo) {
                        TLRPC.Photo photo = (TLRPC.Photo) tLObject;
                        this.imageReceiver.setImage(ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(photo.sizes, MediaError.DetailedErrorCode.MANIFEST_UNKNOWN), photo), "400_400", null, "jpg", botInfo, 0);
                    } else {
                        if (tLObject instanceof TLRPC.Document) {
                            TLRPC.Document document = (TLRPC.Document) tLObject;
                            TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, MediaError.DetailedErrorCode.MANIFEST_UNKNOWN);
                            BitmapDrawable bitmapDrawable = null;
                            if (SharedConfig.getDevicePerformanceClass() != 0) {
                                ArrayList<TLRPC.PhotoSize> arrayList = document.thumbs;
                                int size = arrayList.size();
                                int i3 = 0;
                                while (i3 < size) {
                                    TLRPC.PhotoSize photoSize = arrayList.get(i3);
                                    i3++;
                                    TLRPC.PhotoSize photoSize2 = photoSize;
                                    float f6 = f4;
                                    if (photoSize2 instanceof TLRPC.TL_photoStrippedSize) {
                                        f3 = f5;
                                        bitmapDrawable = new BitmapDrawable(getResources(), ImageLoader.getStrippedPhotoBitmap(photoSize2.bytes, "b"));
                                    } else {
                                        f3 = f5;
                                    }
                                    f4 = f6;
                                    f5 = f3;
                                }
                            }
                            f = f4;
                            f2 = f5;
                            this.imageReceiver.setImage(ImageLocation.getForDocument(document), ImageLoader.AUTOPLAY_FILTER, ImageLocation.getForDocument(MessageObject.getDocumentVideoThumb(document), document), null, ImageLocation.getForDocument(closestPhotoSizeWithSize, document), "86_86_b", bitmapDrawable, document.size, "mp4", botInfo, 0);
                        }
                        int iDp3 = AndroidUtilities.dp(SharedConfig.bubbleRadius) - AndroidUtilities.dp(f);
                        int iDp4 = AndroidUtilities.dp(f2);
                        if (!this.isTextVisible) {
                            iDp4 = iDp3;
                        }
                        this.imageReceiver.setRoundRadius(iDp3, iDp3, iDp4, iDp4);
                    }
                    f = 2.0f;
                    f2 = 4.0f;
                    int iDp32 = AndroidUtilities.dp(SharedConfig.bubbleRadius) - AndroidUtilities.dp(f);
                    int iDp42 = AndroidUtilities.dp(f2);
                    if (!this.isTextVisible) {
                    }
                    this.imageReceiver.setRoundRadius(iDp32, iDp32, iDp42, iDp42);
                }
            }
            this.oldText = AndroidUtilities.getSafeString(str3);
            this.oldManagerBotName = str2;
            setVisibility(0);
            if (!AndroidUtilities.isTablet()) {
                iMin = AndroidUtilities.getMinTabletSide();
            } else {
                Point point = AndroidUtilities.displaySize;
                iMin = Math.min(point.x, point.y);
            }
            int i4 = (int) (iMin * 0.7f);
            if (!this.isTextVisible) {
                String[] strArrSplit = str3.split("\n");
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                if (z3) {
                    spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.ManagedBotChatInfo, DialogObject.getName(this.currentAccount, j), str2)));
                } else {
                    String string = LocaleController.getString(C2807R.string.BotInfoTitle);
                    if (z) {
                        spannableStringBuilder.append((CharSequence) string);
                        spannableStringBuilder.append((CharSequence) "\n\n");
                    }
                    for (int i5 = 0; i5 < strArrSplit.length; i5++) {
                        spannableStringBuilder.append((CharSequence) strArrSplit[i5].trim());
                        if (i5 != strArrSplit.length - 1) {
                            spannableStringBuilder.append((CharSequence) "\n");
                        }
                    }
                    MessageObject.addLinks(false, spannableStringBuilder);
                    if (z) {
                        spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, string.length(), 33);
                    }
                }
                Emoji.replaceEmoji(spannableStringBuilder, Theme.chat_msgTextPaint.getFontMetricsInt(), false);
                try {
                    StaticLayout staticLayout = new StaticLayout(spannableStringBuilder, Theme.chat_msgTextPaint, i4 - (this.isPhotoVisible ? AndroidUtilities.dp(5.0f) : 0), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                    this.textLayout = staticLayout;
                    this.width = 0;
                    this.height = staticLayout.getHeight() + AndroidUtilities.dp(22.0f);
                    int lineCount = this.textLayout.getLineCount();
                    while (true) {
                        i = this.width;
                        if (i2 >= lineCount) {
                            break;
                        }
                        this.width = (int) Math.ceil(Math.max(i, this.textLayout.getLineWidth(i2) + this.textLayout.getLineLeft(i2)));
                        i2++;
                    }
                    if (i > i4 || this.isPhotoVisible) {
                        this.width = i4;
                    }
                } catch (Exception e) {
                    FileLog.m1040e(e);
                }
            } else if (this.isPhotoVisible) {
                this.width = i4;
            }
            int iDp5 = this.width + AndroidUtilities.dp(22.0f);
            this.width = iDp5;
            if (this.isPhotoVisible) {
                return;
            }
            int i6 = this.height;
            int i7 = (int) (((double) iDp5) * 0.5625d);
            this.photoHeight = i7;
            this.height = i6 + i7 + AndroidUtilities.dp(f2);
            return;
        }
        f2 = 4.0f;
        this.oldText = AndroidUtilities.getSafeString(str3);
        this.oldManagerBotName = str2;
        setVisibility(0);
        if (!AndroidUtilities.isTablet()) {
        }
        int i42 = (int) (iMin * 0.7f);
        if (!this.isTextVisible) {
        }
        int iDp52 = this.width + AndroidUtilities.dp(22.0f);
        this.width = iDp52;
        if (this.isPhotoVisible) {
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
                                this.pressedLink = new LinkSpanDrawable<>(clickableSpanArr[0], this.resourcesProvider, f, i);
                                try {
                                    try {
                                        int spanStart = spannable.getSpanStart(clickableSpanArr[0]);
                                        LinkPath linkPathObtainNewPath = this.pressedLink.obtainNewPath();
                                        linkPathObtainNewPath.setCurrentLayout(this.textLayout, spanStart, 0.0f);
                                        this.textLayout.getSelectionPath(spanStart, spannable.getSpanEnd(clickableSpanArr[0]), linkPathObtainNewPath);
                                    } catch (Exception e) {
                                        FileLog.m1040e(e);
                                    }
                                    this.links.addLink(this.pressedLink);
                                    invalidate();
                                    z = true;
                                } catch (Exception e2) {
                                    e = e2;
                                    z2 = true;
                                    resetPressedLink();
                                    FileLog.m1040e(e);
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
                    LinkSpanDrawable<ClickableSpan> linkSpanDrawable = this.pressedLink;
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
                            FileLog.m1040e(e4);
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
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), this.height + AndroidUtilities.dp(8.0f));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        canvas.save();
        canvas.translate(getSideMenuWidth() / 2.0f, 0.0f);
        int width = (getWidth() - this.width) / 2;
        int iDp = this.photoHeight + AndroidUtilities.dp(2.0f);
        Drawable shadowDrawable = Theme.chat_msgInMediaDrawable.getShadowDrawable();
        if (shadowDrawable != null) {
            shadowDrawable.setBounds(width, iDp, this.width + width, this.height + iDp);
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
        MessageDrawable messageDrawable = (MessageDrawable) getThemedDrawable("drawableMsgInMedia");
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
            this.selectorDrawable.setBounds(AndroidUtilities.dp(2.0f) + width, AndroidUtilities.dp(2.0f), (this.width + width) - AndroidUtilities.dp(2.0f), this.height - AndroidUtilities.dp(2.0f));
            this.selectorDrawable.draw(canvas);
        }
        this.imageReceiver.setImageCoords(width + r3, this.imagePadding, this.width - (r3 * 2), this.photoHeight - r3);
        this.imageReceiver.draw(canvas);
        Theme.chat_msgTextPaint.setColor(getThemedColor(Theme.key_chat_messageTextIn));
        ((TextPaint) Theme.chat_msgTextPaint).linkColor = getThemedColor(Theme.key_chat_messageLinkIn);
        canvas.save();
        int iDp2 = AndroidUtilities.dp(this.isPhotoVisible ? 14.0f : 11.0f) + width;
        this.textX = iDp2;
        float f = iDp2;
        int iDp3 = AndroidUtilities.dp(11.0f) + iDp;
        this.textY = iDp3;
        canvas.translate(f, iDp3);
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
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.imageReceiver.onAttachedToWindow();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
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
    public boolean verifyDrawable(Drawable drawable) {
        return drawable == this.selectorDrawable || super.verifyDrawable(drawable);
    }

    public class BotIntroDrawable extends Drawable {
        private int alpha;
        private final Paint backgroundPaint;
        private final Paint codePaint;
        private ColorFilter colorFilter;
        private final Drawable icon;
        private final Paint layerPaint;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        public BotIntroDrawable(Context context) {
            Paint paint = new Paint(1);
            this.backgroundPaint = paint;
            Paint paint2 = new Paint(1);
            this.codePaint = paint2;
            this.layerPaint = new Paint();
            this.alpha = 255;
            Drawable drawableMutate = context.getResources().getDrawable(C2807R.drawable.msg_folders_bots).mutate();
            this.icon = drawableMutate;
            drawableMutate.setColorFilter(new PorterDuffColorFilter(-13628751, PorterDuff.Mode.SRC_IN));
            paint.setShader(new RadialGradient(400.0f, 213.0f, 500.0f, -4811527, -9674273, Shader.TileMode.CLAMP));
            paint2.setColor(-1);
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setStrokeCap(Paint.Cap.ROUND);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            Canvas canvas2;
            int iSaveLayer;
            Rect bounds = getBounds();
            if (bounds.isEmpty() || this.alpha == 0) {
                return;
            }
            ColorFilter colorFilter = this.colorFilter;
            if (colorFilter != null) {
                this.layerPaint.setColorFilter(colorFilter);
                iSaveLayer = canvas.saveLayer(bounds.left, bounds.top, bounds.right, bounds.bottom, this.layerPaint);
                canvas2 = canvas;
            } else {
                canvas2 = canvas;
                iSaveLayer = -1;
            }
            float fWidth = bounds.width() / 800.0f;
            float fHeight = bounds.height() / 427.0f;
            this.backgroundPaint.setAlpha(this.alpha);
            canvas2.save();
            canvas2.translate(bounds.left, bounds.top);
            canvas2.scale(fWidth, fHeight);
            Canvas canvas3 = canvas2;
            canvas3.drawRect(0.0f, 0.0f, 800.0f, 427.0f, this.backgroundPaint);
            canvas3.restore();
            this.codePaint.setAlpha(this.alpha);
            this.codePaint.setStrokeWidth(Math.min(fWidth, fHeight) * 16.4f);
            drawLine(canvas3, bounds, fWidth, fHeight, 449.809f, 246.04f, 483.703f, 212.418f);
            drawLine(canvas3, bounds, fWidth, fHeight, 483.703f, 212.418f, 451.291f, 179.901f);
            drawLine(canvas3, bounds, fWidth, fHeight, 350.197f, 246.04f, 316.302f, 212.418f);
            drawLine(canvas3, bounds, fWidth, fHeight, 316.302f, 212.418f, 348.716f, 179.901f);
            drawLine(canvas3, bounds, fWidth, fHeight, 379.613f, 278.0f, 420.657f, 146.0f);
            canvas3.save();
            canvas3.translate(bounds.left, bounds.top);
            canvas3.scale(fWidth, fHeight);
            drawBot(canvas3, 299.339f, 60.9305f, 56.0f, 0.1629f);
            drawBot(canvas3, 500.651f, 60.9305f, 56.0f, 0.1629f);
            drawBot(canvas3, 579.018f, 225.477f, 56.0f, 0.2239f);
            drawBot(canvas3, 220.979f, 225.477f, 56.0f, 0.2239f);
            drawBot(canvas3, 548.102f, 359.18f, 52.0f, 0.1816f);
            drawBot(canvas3, 400.0f, 382.172f, 52.0f, 0.123f);
            drawBot(canvas3, 251.891f, 359.18f, 52.0f, 0.1816f);
            drawBot(canvas3, 698.424f, 175.361f, 42.0f, 0.12f);
            drawBot(canvas3, 572.549f, 125.064f, 42.0f, 0.2409f);
            drawBot(canvas3, 650.19f, 61.1149f, 42.0f, 0.0764f);
            drawBot(canvas3, 399.994f, 18.0016f, 42.0f, 0.1231f);
            drawBot(canvas3, 149.799f, 61.1149f, 42.0f, 0.0753f);
            drawBot(canvas3, 227.44f, 125.064f, 42.0f, 0.2409f);
            drawBot(canvas3, 101.565f, 175.361f, 42.0f, 0.12f);
            drawBot(canvas3, 167.057f, 316.916f, 42.0f, 0.15f);
            drawBot(canvas3, 114.502f, 408.888f, 42.0f, 0.075f);
            drawBot(canvas3, 678.299f, 408.888f, 42.0f, 0.075f);
            drawBot(canvas3, 655.947f, 316.916f, 42.0f, 0.15f);
            canvas3.restore();
            if (iSaveLayer >= 0) {
                canvas3.restoreToCount(iSaveLayer);
            }
        }

        private void drawLine(Canvas canvas, Rect rect, float f, float f2, float f3, float f4, float f5, float f6) {
            int i = rect.left;
            int i2 = rect.top;
            canvas.drawLine(i + (f3 * f), i2 + (f4 * f2), i + (f5 * f), i2 + (f6 * f2), this.codePaint);
        }

        private void drawBot(Canvas canvas, float f, float f2, float f3, float f4) {
            int intrinsicWidth = this.icon.getIntrinsicWidth();
            int intrinsicHeight = this.icon.getIntrinsicHeight();
            if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
                return;
            }
            this.icon.setAlpha(Math.round(this.alpha * f4));
            this.icon.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            canvas.save();
            canvas.translate(f, f2);
            canvas.scale(f3 / intrinsicWidth, f3 / intrinsicHeight);
            canvas.translate((-intrinsicWidth) / 2.0f, (-intrinsicHeight) / 2.0f);
            this.icon.draw(canvas);
            canvas.restore();
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return AndroidUtilities.dp(800.0f);
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return AndroidUtilities.dp(427.0f);
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            int iMax = Math.max(0, Math.min(255, i));
            if (this.alpha != iMax) {
                this.alpha = iMax;
                invalidateSelf();
            }
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
            if (this.colorFilter != colorFilter) {
                this.colorFilter = colorFilter;
                invalidateSelf();
            }
        }
    }
}
