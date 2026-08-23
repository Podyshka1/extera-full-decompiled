package org.telegram.p029ui.Cells;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextUtils;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AccelerateInterpolator;
import android.widget.FrameLayout;
import java.io.File;
import java.util.ArrayList;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.WebFile;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimationProperties;
import org.telegram.p029ui.Components.ButtonBounce;
import org.telegram.p029ui.Components.CheckBox2;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.LetterDrawable;
import org.telegram.p029ui.Components.RadialProgress2;
import org.telegram.p029ui.PhotoViewer;
import org.telegram.tgnet.TLRPC;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes6.dex */
public class ContextLinkCell extends FrameLayout implements DownloadController.FileDownloadProgressListener {
    private static AccelerateInterpolator interpolator = new AccelerateInterpolator(0.5f);
    public final Property IMAGE_SCALE;
    private int TAG;
    private AnimatorSet animator;
    private Paint backgroundPaint;
    private ButtonBounce buttonBounce;
    private boolean buttonPressed;
    private int buttonState;
    File cacheFile;
    private boolean canPreviewGif;
    private CheckBox2 checkBox;
    private int currentAccount;
    private int currentDate;
    private MessageObject currentMessageObject;
    private TLRPC.PhotoSize currentPhotoObject;
    private ContextLinkCellDelegate delegate;
    private StaticLayout descriptionLayout;
    private int descriptionY;
    private TLRPC.Document documentAttach;
    private int documentAttachType;
    private boolean drawLinkImageView;
    boolean fileExist;
    String fileName;
    private float imageScale;
    private TLRPC.User inlineBot;
    private TLRPC.BotInlineResult inlineResult;
    private boolean isForceGif;
    private boolean isKeyboard;
    private LetterDrawable letterDrawable;
    private ImageReceiver linkImageView;
    private StaticLayout linkLayout;
    private int linkY;
    private boolean mediaWebpage;
    private boolean needDivider;
    private boolean needShadow;
    private Object parentObject;
    private TLRPC.Photo photoAttach;
    private RadialProgress2 radialProgress;
    int resolveFileNameId;
    boolean resolvingFileName;
    private Theme.ResourcesProvider resourcesProvider;
    private boolean scaled;
    private StaticLayout titleLayout;
    private int titleY;

    public interface ContextLinkCellDelegate {
        void didPressedImage(ContextLinkCell contextLinkCell);
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressUpload(String str, long j, long j2, boolean z) {
    }

    public ContextLinkCell(Context context) {
        this(context, false, null);
    }

    public ContextLinkCell(Context context, boolean z, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.currentAccount = UserConfig.selectedAccount;
        this.titleY = AndroidUtilities.m1124dp(7.0f);
        this.descriptionY = AndroidUtilities.m1124dp(27.0f);
        this.cacheFile = null;
        this.imageScale = 1.0f;
        this.IMAGE_SCALE = new AnimationProperties.FloatProperty("animationValue") { // from class: org.telegram.ui.Cells.ContextLinkCell.2
            @Override // org.telegram.ui.Components.AnimationProperties.FloatProperty
            public void setValue(ContextLinkCell contextLinkCell, float f) {
                ContextLinkCell.this.imageScale = f;
                ContextLinkCell.this.invalidate();
            }

            @Override // android.util.Property
            public Float get(ContextLinkCell contextLinkCell) {
                return Float.valueOf(ContextLinkCell.this.imageScale);
            }
        };
        this.resourcesProvider = resourcesProvider;
        ImageReceiver imageReceiver = new ImageReceiver(this);
        this.linkImageView = imageReceiver;
        imageReceiver.setAllowLoadingOnAttachedOnly(true);
        this.linkImageView.setLayerNum(1);
        this.linkImageView.setUseSharedAnimationQueue(true);
        this.letterDrawable = new LetterDrawable(resourcesProvider, 0);
        this.radialProgress = new RadialProgress2(this);
        this.TAG = DownloadController.getInstance(this.currentAccount).generateObserverTag();
        setFocusable(true);
        if (z) {
            Paint paint = new Paint();
            this.backgroundPaint = paint;
            int i = Theme.key_sharedMedia_photoPlaceholder;
            paint.setColor(Theme.getColor(i, resourcesProvider));
            CheckBox2 checkBox2 = new CheckBox2(context, 21, resourcesProvider);
            this.checkBox = checkBox2;
            checkBox2.setVisibility(4);
            this.checkBox.setColor(-1, i, Theme.key_checkboxCheck);
            this.checkBox.setDrawUnchecked(false);
            this.checkBox.setDrawBackgroundAsArc(1);
            addView(this.checkBox, LayoutHelper.createFrame(24, 24.0f, 53, 0.0f, 1.0f, 1.0f, 0.0f));
        }
        setWillNotDraw(false);
    }

    public void allowButtonBounce(boolean z) {
        if (z != (this.buttonBounce != null)) {
            this.buttonBounce = z ? new ButtonBounce(this, 1.0f, 3.0f).setReleaseDelay(120L) : null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:108:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x02c5  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x02f1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0316 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0321  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0335  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x03b5  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x03c4  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x03c6  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x03cf  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x04a7  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x05a9  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x05cd  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x060a  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x06d4  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x0146 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:283:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01f9  */
    /* JADX WARN: Type inference failed for: r0v126 */
    /* JADX WARN: Type inference failed for: r0v127 */
    /* JADX WARN: Type inference failed for: r0v128 */
    /* JADX WARN: Type inference failed for: r0v129 */
    /* JADX WARN: Type inference failed for: r0v130 */
    /* JADX WARN: Type inference failed for: r0v131 */
    /* JADX WARN: Type inference failed for: r0v132 */
    /* JADX WARN: Type inference failed for: r0v34, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r0v37, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r0v49 */
    /* JADX WARN: Type inference failed for: r0v50, types: [int] */
    /* JADX WARN: Type inference failed for: r0v51, types: [int] */
    /* JADX WARN: Type inference failed for: r0v52, types: [int] */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11, types: [boolean] */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r2v15, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v54 */
    /* JADX WARN: Type inference failed for: r3v55 */
    /* JADX WARN: Type inference failed for: r3v56 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v35 */
    /* JADX WARN: Type inference failed for: r5v36 */
    /* JADX WARN: Type inference failed for: r5v37 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onMeasure(int i, int i2) {
        ArrayList arrayList;
        ArrayList arrayList2;
        int i3;
        float f;
        float f2;
        float f3;
        ?? r5;
        TLRPC.Document document;
        TLRPC.PhotoSize closestPhotoSizeWithSize;
        String str;
        TLRPC.BotInlineResult botInlineResult;
        String strFormapMapUrl;
        WebFile webFileCreateWithWebDocument;
        int iM1124dp;
        int i4;
        TLRPC.PhotoSize photoSize;
        String str2;
        String str3;
        int i5;
        ?? r3;
        String str4;
        String str5;
        ?? r32;
        ?? lineBottom;
        CheckBox2 checkBox2;
        TLRPC.TL_webDocument tL_webDocument;
        String str6;
        TLRPC.BotInlineResult botInlineResult2;
        boolean z;
        char c;
        int i6;
        char c2;
        boolean z2;
        this.drawLinkImageView = false;
        this.descriptionLayout = null;
        this.titleLayout = null;
        this.linkLayout = null;
        this.currentPhotoObject = null;
        this.linkY = AndroidUtilities.m1124dp(27.0f);
        if (this.inlineResult == null && this.documentAttach == null) {
            setMeasuredDimension(AndroidUtilities.m1124dp(100.0f), AndroidUtilities.m1124dp(100.0f));
            return;
        }
        int size = View.MeasureSpec.getSize(i);
        int iM1124dp2 = (size - AndroidUtilities.m1124dp(AndroidUtilities.leftBaseline)) - AndroidUtilities.m1124dp(8.0f);
        if (this.documentAttach != null) {
            arrayList2 = new ArrayList(this.documentAttach.thumbs);
        } else {
            TLRPC.BotInlineResult botInlineResult3 = this.inlineResult;
            if (botInlineResult3 != null && botInlineResult3.photo != null) {
                arrayList2 = new ArrayList(this.inlineResult.photo.sizes);
            } else {
                arrayList = null;
                if (!this.mediaWebpage || (botInlineResult2 = this.inlineResult) == null) {
                    i3 = 0;
                    f = 100.0f;
                    f2 = 8.0f;
                    f3 = 1.0f;
                    r5 = 1;
                } else {
                    if (botInlineResult2.title != null) {
                        try {
                            f = 100.0f;
                        } catch (Exception e) {
                            e = e;
                            f = 100.0f;
                        }
                        try {
                            this.titleLayout = new StaticLayout(TextUtils.ellipsize(Emoji.replaceEmoji(this.inlineResult.title.replace('\n', ' '), Theme.chat_contextResult_titleTextPaint.getFontMetricsInt(), false), Theme.chat_contextResult_titleTextPaint, Math.min((int) Math.ceil(Theme.chat_contextResult_titleTextPaint.measureText(r0)), iM1124dp2), TextUtils.TruncateAt.END), Theme.chat_contextResult_titleTextPaint, iM1124dp2 + AndroidUtilities.m1124dp(4.0f), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                        } catch (Exception e2) {
                            e = e2;
                            FileLog.m1136e(e);
                        }
                        this.letterDrawable.setTitle(this.inlineResult.title);
                    } else {
                        f = 100.0f;
                    }
                    String str7 = this.inlineResult.description;
                    if (str7 != null) {
                        try {
                            z = true;
                        } catch (Exception e3) {
                            e = e3;
                            i3 = 0;
                            f2 = 8.0f;
                            f3 = 1.0f;
                            z = true;
                        }
                        try {
                            i6 = iM1124dp2;
                            i3 = 0;
                            c2 = '\n';
                            f2 = 8.0f;
                            f3 = 1.0f;
                            c = ' ';
                            try {
                                StaticLayout staticLayoutGenerateStaticLayout = ChatMessageCell.generateStaticLayout(Emoji.replaceEmoji(str7, Theme.chat_contextResult_descriptionTextPaint.getFontMetricsInt(), false), Theme.chat_contextResult_descriptionTextPaint, i6, iM1124dp2, 0, 3);
                                this.descriptionLayout = staticLayoutGenerateStaticLayout;
                                z2 = true;
                                if (staticLayoutGenerateStaticLayout.getLineCount() > 0) {
                                    int i7 = this.descriptionY;
                                    StaticLayout staticLayout = this.descriptionLayout;
                                    this.linkY = i7 + staticLayout.getLineBottom(staticLayout.getLineCount() - 1) + AndroidUtilities.m1124dp(1.0f);
                                    z2 = true;
                                }
                            } catch (Exception e4) {
                                e = e4;
                                FileLog.m1136e(e);
                                z2 = z;
                            }
                        } catch (Exception e5) {
                            e = e5;
                            i3 = 0;
                            f2 = 8.0f;
                            f3 = 1.0f;
                            z = true;
                            c = ' ';
                            i6 = iM1124dp2;
                            c2 = '\n';
                            FileLog.m1136e(e);
                            z2 = z;
                            r5 = z2;
                            if (this.inlineResult.url != null) {
                            }
                            document = this.documentAttach;
                            if (document != null) {
                            }
                            closestPhotoSizeWithSize = null;
                            str = null;
                            botInlineResult = this.inlineResult;
                            if (botInlineResult == null) {
                            }
                            if (this.documentAttach != null) {
                            }
                            if (iM1124dp == 0) {
                            }
                            if (iM1124dp == 0) {
                            }
                            if (this.documentAttach == null) {
                            }
                            if (this.mediaWebpage) {
                            }
                            checkBox2 = this.checkBox;
                            if (checkBox2 != null) {
                            }
                        }
                    } else {
                        i3 = 0;
                        f2 = 8.0f;
                        f3 = 1.0f;
                        z2 = true;
                        c = ' ';
                        i6 = iM1124dp2;
                        c2 = '\n';
                    }
                    r5 = z2;
                    if (this.inlineResult.url != null) {
                        try {
                            this.linkLayout = new StaticLayout(TextUtils.ellipsize(this.inlineResult.url.replace(c2, c), Theme.chat_contextResult_descriptionTextPaint, Math.min((int) Math.ceil(Theme.chat_contextResult_descriptionTextPaint.measureText(r0)), i6), TextUtils.TruncateAt.MIDDLE), Theme.chat_contextResult_descriptionTextPaint, i6, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                            r5 = z2;
                        } catch (Exception e6) {
                            FileLog.m1136e(e6);
                            r5 = z2;
                        }
                    }
                }
                document = this.documentAttach;
                if (document != null) {
                    if (this.isForceGif || MessageObject.isGifDocument(document)) {
                        this.currentPhotoObject = FileLoader.getClosestPhotoSizeWithSize(this.documentAttach.thumbs, 90);
                    } else {
                        if (MessageObject.isStickerDocument(this.documentAttach) || MessageObject.isAnimatedStickerDocument(this.documentAttach, r5)) {
                            this.currentPhotoObject = FileLoader.getClosestPhotoSizeWithSize(this.documentAttach.thumbs, 90);
                            str = "webp";
                            closestPhotoSizeWithSize = null;
                            botInlineResult = this.inlineResult;
                            if (botInlineResult == null) {
                                strFormapMapUrl = null;
                                webFileCreateWithWebDocument = null;
                            } else if ((botInlineResult.content instanceof TLRPC.TL_webDocument) && (str6 = botInlineResult.type) != null) {
                                if (str6.startsWith("gif")) {
                                    TLRPC.WebDocument webDocument = this.inlineResult.thumb;
                                    if ((webDocument instanceof TLRPC.TL_webDocument) && "video/mp4".equals(webDocument.mime_type)) {
                                        tL_webDocument = (TLRPC.TL_webDocument) this.inlineResult.thumb;
                                    } else {
                                        tL_webDocument = (TLRPC.TL_webDocument) this.inlineResult.content;
                                    }
                                    this.documentAttachType = 2;
                                } else if (this.inlineResult.type.equals("photo")) {
                                    TLRPC.BotInlineResult botInlineResult4 = this.inlineResult;
                                    TLRPC.WebDocument webDocument2 = botInlineResult4.thumb;
                                    if (webDocument2 instanceof TLRPC.TL_webDocument) {
                                        tL_webDocument = (TLRPC.TL_webDocument) webDocument2;
                                    } else {
                                        tL_webDocument = (TLRPC.TL_webDocument) botInlineResult4.content;
                                    }
                                }
                                if (tL_webDocument == null) {
                                }
                                if (tL_webDocument != null) {
                                    strFormapMapUrl = null;
                                    webFileCreateWithWebDocument = null;
                                    if (tL_webDocument != null) {
                                    }
                                }
                            } else {
                                tL_webDocument = null;
                                if (tL_webDocument == null) {
                                    TLRPC.WebDocument webDocument3 = this.inlineResult.thumb;
                                    if (webDocument3 instanceof TLRPC.TL_webDocument) {
                                        tL_webDocument = (TLRPC.TL_webDocument) webDocument3;
                                    }
                                }
                                if (tL_webDocument != null && this.currentPhotoObject == null && closestPhotoSizeWithSize == null) {
                                    TLRPC.BotInlineMessage botInlineMessage = this.inlineResult.send_message;
                                    if ((botInlineMessage instanceof TLRPC.TL_botInlineMessageMediaVenue) || (botInlineMessage instanceof TLRPC.TL_botInlineMessageMediaGeo)) {
                                        TLRPC.GeoPoint geoPoint = botInlineMessage.geo;
                                        double d = geoPoint.lat;
                                        double d2 = geoPoint._long;
                                        if (MessagesController.getInstance(this.currentAccount).mapProvider == 2) {
                                            webFileCreateWithWebDocument = WebFile.createWithGeoPoint(this.inlineResult.send_message.geo, 72, 72, 15, Math.min(2, (int) Math.ceil(AndroidUtilities.density)));
                                            strFormapMapUrl = null;
                                            if (tL_webDocument != null) {
                                            }
                                        } else {
                                            strFormapMapUrl = AndroidUtilities.formapMapUrl(this.currentAccount, d, d2, 72, 72, true, 15, -1);
                                        }
                                    }
                                    webFileCreateWithWebDocument = null;
                                    if (tL_webDocument != null) {
                                    }
                                } else {
                                    strFormapMapUrl = null;
                                    webFileCreateWithWebDocument = null;
                                    if (tL_webDocument != null) {
                                        webFileCreateWithWebDocument = WebFile.createWithWebDocument(tL_webDocument);
                                    }
                                }
                            }
                            if (this.documentAttach != null) {
                                for (int i8 = i3; i8 < this.documentAttach.attributes.size(); i8++) {
                                    TLRPC.DocumentAttribute documentAttribute = this.documentAttach.attributes.get(i8);
                                    if ((documentAttribute instanceof TLRPC.TL_documentAttributeImageSize) || (documentAttribute instanceof TLRPC.TL_documentAttributeVideo)) {
                                        iM1124dp = documentAttribute.f1671w;
                                        i4 = documentAttribute.f1670h;
                                        break;
                                    }
                                }
                                iM1124dp = i3;
                                i4 = iM1124dp;
                            } else {
                                iM1124dp = i3;
                                i4 = iM1124dp;
                            }
                            if (iM1124dp == 0 || i4 == 0) {
                                photoSize = this.currentPhotoObject;
                                if (photoSize == null) {
                                    if (closestPhotoSizeWithSize != null) {
                                        closestPhotoSizeWithSize.size = -1;
                                    }
                                    iM1124dp = photoSize.f1694w;
                                    i4 = photoSize.f1693h;
                                } else {
                                    TLRPC.BotInlineResult botInlineResult5 = this.inlineResult;
                                    if (botInlineResult5 != null) {
                                        int[] inlineResultWidthAndHeight = MessageObject.getInlineResultWidthAndHeight(botInlineResult5);
                                        int i9 = inlineResultWidthAndHeight[i3];
                                        i4 = inlineResultWidthAndHeight[r5];
                                        iM1124dp = i9;
                                    }
                                }
                            }
                            if (iM1124dp == 0 || i4 == 0) {
                                iM1124dp = AndroidUtilities.m1124dp(80.0f);
                                i4 = iM1124dp;
                            }
                            if (this.documentAttach == null && this.currentPhotoObject == null && webFileCreateWithWebDocument == null && strFormapMapUrl == null) {
                                i5 = 2;
                                r32 = i3;
                            } else {
                                if (!this.mediaWebpage) {
                                    int iM1124dp3 = (int) (iM1124dp / (i4 / AndroidUtilities.m1124dp(80.0f)));
                                    if (this.documentAttachType == 2) {
                                        Locale locale = Locale.US;
                                        Object[] objArr = new Object[2];
                                        objArr[i3] = Integer.valueOf((int) (iM1124dp3 / AndroidUtilities.density));
                                        objArr[r5] = 80;
                                        String str8 = String.format(locale, "%d_%d_b", objArr);
                                        if (SharedConfig.isAutoplayGifs() || this.isKeyboard) {
                                            str3 = str8;
                                            str2 = str3;
                                        } else {
                                            str5 = str8 + "_firstframe";
                                            str4 = str8 + "_firstframe";
                                        }
                                    } else {
                                        Locale locale2 = Locale.US;
                                        Object[] objArr2 = new Object[2];
                                        objArr2[i3] = Integer.valueOf((int) (iM1124dp3 / AndroidUtilities.density));
                                        objArr2[r5] = 80;
                                        str4 = String.format(locale2, "%d_%d", objArr2);
                                        str5 = str4 + "_b";
                                    }
                                    str3 = str4;
                                    str2 = str5;
                                } else {
                                    str2 = "52_52_b";
                                    str3 = "52_52";
                                }
                                this.linkImageView.setAspectFit(this.documentAttachType != 6 ? r5 : i3);
                                if (this.documentAttachType != 2) {
                                    TLRPC.Document document2 = this.documentAttach;
                                    if (document2 != null) {
                                        TLRPC.VideoSize documentVideoThumb = MessageObject.getDocumentVideoThumb(document2);
                                        if (documentVideoThumb != null) {
                                            ImageReceiver imageReceiver = this.linkImageView;
                                            ImageLocation forDocument = ImageLocation.getForDocument(documentVideoThumb, this.documentAttach);
                                            StringBuilder sb = new StringBuilder();
                                            sb.append("100_100");
                                            sb.append((SharedConfig.isAutoplayGifs() || this.isKeyboard) ? _UrlKt.FRAGMENT_ENCODE_SET : "_firstframe");
                                            imageReceiver.setImage(forDocument, sb.toString(), ImageLocation.getForDocument(this.currentPhotoObject, this.documentAttach), str3, -1L, str, this.parentObject, 1);
                                        } else {
                                            ImageLocation forDocument2 = ImageLocation.getForDocument(this.documentAttach);
                                            if (this.isForceGif) {
                                                forDocument2.imageType = 2;
                                            }
                                            ImageReceiver imageReceiver2 = this.linkImageView;
                                            StringBuilder sb2 = new StringBuilder();
                                            sb2.append("100_100");
                                            sb2.append((SharedConfig.isAutoplayGifs() || this.isKeyboard) ? _UrlKt.FRAGMENT_ENCODE_SET : "_firstframe");
                                            imageReceiver2.setImage(forDocument2, sb2.toString(), ImageLocation.getForDocument(this.currentPhotoObject, this.documentAttach), str3, this.documentAttach.size, str, this.parentObject, 0);
                                        }
                                    } else if (webFileCreateWithWebDocument != null) {
                                        this.linkImageView.setImage(ImageLocation.getForWebFile(webFileCreateWithWebDocument), "100_100", ImageLocation.getForPhoto(this.currentPhotoObject, this.photoAttach), str3, -1L, str, this.parentObject, 1);
                                    } else {
                                        this.linkImageView.setImage(ImageLocation.getForPath(strFormapMapUrl), "100_100", ImageLocation.getForPhoto(this.currentPhotoObject, this.photoAttach), str3, -1L, str, this.parentObject, 1);
                                    }
                                    i5 = 2;
                                } else if (this.currentPhotoObject != null) {
                                    SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(this.documentAttach, Theme.key_windowBackgroundGray, f3);
                                    if (!MessageObject.canAutoplayAnimatedSticker(this.documentAttach)) {
                                        i5 = 2;
                                        TLRPC.Document document3 = this.documentAttach;
                                        if (document3 == null) {
                                            this.linkImageView.setImage(ImageLocation.getForPhoto(this.currentPhotoObject, this.photoAttach), str3, ImageLocation.getForPhoto(closestPhotoSizeWithSize, this.photoAttach), str2, this.currentPhotoObject.size, str, this.parentObject, 0);
                                        } else if (svgThumb != null) {
                                            this.linkImageView.setImage(ImageLocation.getForDocument(this.currentPhotoObject, document3), str3, svgThumb, this.currentPhotoObject.size, str, this.parentObject, 0);
                                        } else {
                                            this.linkImageView.setImage(ImageLocation.getForDocument(this.currentPhotoObject, document3), str3, ImageLocation.getForPhoto(closestPhotoSizeWithSize, this.photoAttach), str2, this.currentPhotoObject.size, str, this.parentObject, 0);
                                        }
                                    } else if (svgThumb != null) {
                                        i5 = 2;
                                        this.linkImageView.setImage(ImageLocation.getForDocument(this.documentAttach), "80_80", svgThumb, this.currentPhotoObject.size, str, this.parentObject, 0);
                                    } else {
                                        i5 = 2;
                                        this.linkImageView.setImage(ImageLocation.getForDocument(this.documentAttach), "80_80", ImageLocation.getForDocument(this.currentPhotoObject, this.documentAttach), str2, this.currentPhotoObject.size, str, this.parentObject, 0);
                                    }
                                } else {
                                    i5 = 2;
                                    if (webFileCreateWithWebDocument != null) {
                                        this.linkImageView.setImage(ImageLocation.getForWebFile(webFileCreateWithWebDocument), str3, ImageLocation.getForPhoto(closestPhotoSizeWithSize, this.photoAttach), str2, -1L, str, this.parentObject, 1);
                                    } else {
                                        this.linkImageView.setImage(ImageLocation.getForPath(strFormapMapUrl), str3, ImageLocation.getForPhoto(closestPhotoSizeWithSize, this.photoAttach), str2, -1L, str, this.parentObject, 1);
                                    }
                                }
                                if (!SharedConfig.isAutoplayGifs() || this.isKeyboard) {
                                    r3 = i3;
                                    this.linkImageView.setAllowStartAnimation(r5);
                                    this.linkImageView.startAnimation();
                                } else {
                                    ?? r33 = i3;
                                    this.linkImageView.setAllowStartAnimation(r33);
                                    this.linkImageView.stopAnimation();
                                    r3 = r33;
                                }
                                this.drawLinkImageView = r5;
                                r32 = r3;
                            }
                            if (this.mediaWebpage) {
                                int size2 = View.MeasureSpec.getSize(i2);
                                if (size2 == 0) {
                                    size2 = AndroidUtilities.m1124dp(f);
                                }
                                setMeasuredDimension(size, size2);
                                int iM1124dp4 = (size - AndroidUtilities.m1124dp(24.0f)) / i5;
                                int iM1124dp5 = (size2 - AndroidUtilities.m1124dp(24.0f)) / i5;
                                this.radialProgress.setProgressRect(iM1124dp4, iM1124dp5, AndroidUtilities.m1124dp(24.0f) + iM1124dp4, AndroidUtilities.m1124dp(24.0f) + iM1124dp5);
                                this.radialProgress.setCircleRadius(AndroidUtilities.m1124dp(12.0f));
                                this.linkImageView.setImageCoords(0.0f, 0.0f, size, size2);
                            } else {
                                StaticLayout staticLayout2 = this.titleLayout;
                                if (staticLayout2 == null || staticLayout2.getLineCount() == 0) {
                                    lineBottom = r32;
                                } else {
                                    StaticLayout staticLayout3 = this.titleLayout;
                                    lineBottom = staticLayout3.getLineBottom(staticLayout3.getLineCount() - r5);
                                }
                                StaticLayout staticLayout4 = this.descriptionLayout;
                                ?? lineBottom2 = lineBottom;
                                if (staticLayout4 != null) {
                                    lineBottom2 = lineBottom;
                                    if (staticLayout4.getLineCount() != 0) {
                                        StaticLayout staticLayout5 = this.descriptionLayout;
                                        lineBottom2 = lineBottom + staticLayout5.getLineBottom(staticLayout5.getLineCount() - r5);
                                    }
                                }
                                StaticLayout staticLayout6 = this.linkLayout;
                                ?? lineBottom3 = lineBottom2;
                                if (staticLayout6 != null) {
                                    lineBottom3 = lineBottom2;
                                    if (staticLayout6.getLineCount() > 0) {
                                        StaticLayout staticLayout7 = this.linkLayout;
                                        lineBottom3 = lineBottom2 + staticLayout7.getLineBottom(staticLayout7.getLineCount() - r5);
                                    }
                                }
                                setMeasuredDimension(View.MeasureSpec.getSize(i), Math.max(AndroidUtilities.m1124dp(68.0f), Math.max(AndroidUtilities.m1124dp(52.0f), (int) lineBottom3) + AndroidUtilities.m1124dp(16.0f)) + (this.needDivider ? 1 : 0));
                                int iM1124dp6 = AndroidUtilities.m1124dp(52.0f);
                                int size3 = LocaleController.isRTL ? (View.MeasureSpec.getSize(i) - AndroidUtilities.m1124dp(f2)) - iM1124dp6 : AndroidUtilities.m1124dp(f2);
                                this.letterDrawable.setBounds(size3, AndroidUtilities.m1124dp(f2), size3 + iM1124dp6, AndroidUtilities.m1124dp(60.0f));
                                float f4 = iM1124dp6;
                                this.linkImageView.setImageCoords(size3, AndroidUtilities.m1124dp(f2), f4, f4);
                                int i10 = this.documentAttachType;
                                if (i10 == 3 || i10 == 5) {
                                    this.radialProgress.setCircleRadius(AndroidUtilities.m1124dp(24.0f));
                                    this.radialProgress.setProgressRect(AndroidUtilities.m1124dp(4.0f) + size3, AndroidUtilities.m1124dp(12.0f), size3 + AndroidUtilities.m1124dp(48.0f), AndroidUtilities.m1124dp(56.0f));
                                }
                            }
                            checkBox2 = this.checkBox;
                            if (checkBox2 != null) {
                                measureChildWithMargins(checkBox2, i, 0, i2, 0);
                                return;
                            }
                            return;
                        }
                        int i11 = this.documentAttachType;
                        if (i11 != 5 && i11 != 3) {
                            this.currentPhotoObject = FileLoader.getClosestPhotoSizeWithSize(this.documentAttach.thumbs, 90);
                        }
                    }
                } else {
                    TLRPC.BotInlineResult botInlineResult6 = this.inlineResult;
                    if (botInlineResult6 != null && botInlineResult6.photo != null) {
                        this.currentPhotoObject = FileLoader.getClosestPhotoSizeWithSize(arrayList, AndroidUtilities.getPhotoSize(), r5);
                        closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(arrayList, 80);
                        if (closestPhotoSizeWithSize == this.currentPhotoObject) {
                        }
                        str = null;
                    }
                    botInlineResult = this.inlineResult;
                    if (botInlineResult == null) {
                    }
                    if (this.documentAttach != null) {
                    }
                    if (iM1124dp == 0) {
                        photoSize = this.currentPhotoObject;
                        if (photoSize == null) {
                        }
                    }
                    if (iM1124dp == 0) {
                        iM1124dp = AndroidUtilities.m1124dp(80.0f);
                        i4 = iM1124dp;
                    }
                    if (this.documentAttach == null) {
                        if (!this.mediaWebpage) {
                        }
                        this.linkImageView.setAspectFit(this.documentAttachType != 6 ? r5 : i3);
                        if (this.documentAttachType != 2) {
                        }
                        if (!SharedConfig.isAutoplayGifs()) {
                            r3 = i3;
                            this.linkImageView.setAllowStartAnimation(r5);
                            this.linkImageView.startAnimation();
                            this.drawLinkImageView = r5;
                            r32 = r3;
                        }
                    }
                    if (this.mediaWebpage) {
                    }
                    checkBox2 = this.checkBox;
                    if (checkBox2 != null) {
                    }
                }
                closestPhotoSizeWithSize = null;
                str = null;
                botInlineResult = this.inlineResult;
                if (botInlineResult == null) {
                }
                if (this.documentAttach != null) {
                }
                if (iM1124dp == 0) {
                }
                if (iM1124dp == 0) {
                }
                if (this.documentAttach == null) {
                }
                if (this.mediaWebpage) {
                }
                checkBox2 = this.checkBox;
                if (checkBox2 != null) {
                }
            }
        }
        arrayList = arrayList2;
        if (this.mediaWebpage) {
            i3 = 0;
            f = 100.0f;
            f2 = 8.0f;
            f3 = 1.0f;
            r5 = 1;
        }
        document = this.documentAttach;
        if (document != null) {
        }
        closestPhotoSizeWithSize = null;
        str = null;
        botInlineResult = this.inlineResult;
        if (botInlineResult == null) {
        }
        if (this.documentAttach != null) {
        }
        if (iM1124dp == 0) {
        }
        if (iM1124dp == 0) {
        }
        if (this.documentAttach == null) {
        }
        if (this.mediaWebpage) {
        }
        checkBox2 = this.checkBox;
        if (checkBox2 != null) {
        }
    }

    private void setAttachType() {
        this.currentMessageObject = null;
        this.documentAttachType = 0;
        TLRPC.Document document = this.documentAttach;
        if (document != null) {
            if (MessageObject.isGifDocument(document)) {
                this.documentAttachType = 2;
            } else if (MessageObject.isStickerDocument(this.documentAttach) || MessageObject.isAnimatedStickerDocument(this.documentAttach, true)) {
                this.documentAttachType = 6;
            } else if (MessageObject.isMusicDocument(this.documentAttach)) {
                this.documentAttachType = 5;
            } else if (MessageObject.isVoiceDocument(this.documentAttach)) {
                this.documentAttachType = 3;
            }
        } else {
            TLRPC.BotInlineResult botInlineResult = this.inlineResult;
            if (botInlineResult != null) {
                if (botInlineResult.photo != null) {
                    this.documentAttachType = 7;
                } else if (botInlineResult.type.equals(MediaStreamTrack.AUDIO_TRACK_KIND)) {
                    this.documentAttachType = 5;
                } else if (this.inlineResult.type.equals("voice")) {
                    this.documentAttachType = 3;
                }
            }
        }
        int i = this.documentAttachType;
        if (i == 3 || i == 5) {
            TLRPC.TL_message tL_message = new TLRPC.TL_message();
            tL_message.out = true;
            tL_message.f1686id = -Utilities.random.nextInt();
            tL_message.peer_id = new TLRPC.TL_peerUser();
            TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
            tL_message.from_id = tL_peerUser;
            TLRPC.Peer peer = tL_message.peer_id;
            long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
            tL_peerUser.user_id = clientUserId;
            peer.user_id = clientUserId;
            tL_message.date = (int) (System.currentTimeMillis() / 1000);
            String str = _UrlKt.FRAGMENT_ENCODE_SET;
            tL_message.message = _UrlKt.FRAGMENT_ENCODE_SET;
            TLRPC.TL_messageMediaDocument tL_messageMediaDocument = new TLRPC.TL_messageMediaDocument();
            tL_message.media = tL_messageMediaDocument;
            tL_messageMediaDocument.flags |= 3;
            tL_messageMediaDocument.document = new TLRPC.TL_document();
            TLRPC.MessageMedia messageMedia = tL_message.media;
            messageMedia.document.file_reference = new byte[0];
            tL_message.flags |= 768;
            TLRPC.Document document2 = this.documentAttach;
            if (document2 != null) {
                messageMedia.document = document2;
                tL_message.attachPath = _UrlKt.FRAGMENT_ENCODE_SET;
            } else {
                String httpUrlExtension = ImageLoader.getHttpUrlExtension(this.inlineResult.content.url, this.documentAttachType == 5 ? "mp3" : "ogg");
                TLRPC.Document document3 = tL_message.media.document;
                document3.f1668id = 0L;
                document3.access_hash = 0L;
                document3.date = tL_message.date;
                document3.mime_type = "audio/" + httpUrlExtension;
                TLRPC.Document document4 = tL_message.media.document;
                document4.size = 0L;
                document4.dc_id = 0;
                TLRPC.TL_documentAttributeAudio tL_documentAttributeAudio = new TLRPC.TL_documentAttributeAudio();
                tL_documentAttributeAudio.duration = MessageObject.getInlineResultDuration(this.inlineResult);
                TLRPC.BotInlineResult botInlineResult2 = this.inlineResult;
                String str2 = botInlineResult2.title;
                if (str2 == null) {
                    str2 = _UrlKt.FRAGMENT_ENCODE_SET;
                }
                tL_documentAttributeAudio.title = str2;
                String str3 = botInlineResult2.description;
                if (str3 != null) {
                    str = str3;
                }
                tL_documentAttributeAudio.performer = str;
                tL_documentAttributeAudio.flags |= 3;
                if (this.documentAttachType == 3) {
                    tL_documentAttributeAudio.voice = true;
                }
                tL_message.media.document.attributes.add(tL_documentAttributeAudio);
                TLRPC.TL_documentAttributeFilename tL_documentAttributeFilename = new TLRPC.TL_documentAttributeFilename();
                StringBuilder sb = new StringBuilder();
                sb.append(Utilities.MD5(this.inlineResult.content.url));
                sb.append(".");
                sb.append(ImageLoader.getHttpUrlExtension(this.inlineResult.content.url, this.documentAttachType == 5 ? "mp3" : "ogg"));
                tL_documentAttributeFilename.file_name = sb.toString();
                tL_message.media.document.attributes.add(tL_documentAttributeFilename);
                File directory = FileLoader.getDirectory(4);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(Utilities.MD5(this.inlineResult.content.url));
                sb2.append(".");
                sb2.append(ImageLoader.getHttpUrlExtension(this.inlineResult.content.url, this.documentAttachType == 5 ? "mp3" : "ogg"));
                tL_message.attachPath = new File(directory, sb2.toString()).getAbsolutePath();
            }
            this.currentMessageObject = new MessageObject(this.currentAccount, tL_message, false, true);
        }
    }

    public void setLink(TLRPC.BotInlineResult botInlineResult, TLRPC.User user, boolean z, boolean z2, boolean z3, boolean z4) {
        this.needDivider = z2;
        this.needShadow = z3;
        this.inlineBot = user;
        this.inlineResult = botInlineResult;
        this.parentObject = botInlineResult;
        if (botInlineResult != null) {
            this.documentAttach = botInlineResult.document;
            this.photoAttach = botInlineResult.photo;
        } else {
            this.documentAttach = null;
            this.photoAttach = null;
        }
        this.mediaWebpage = z;
        this.isForceGif = z4;
        setAttachType();
        if (z4) {
            this.documentAttachType = 2;
        }
        requestLayout();
        this.fileName = null;
        this.cacheFile = null;
        this.fileExist = false;
        this.resolvingFileName = false;
        updateButtonState(false, false);
    }

    public TLRPC.User getInlineBot() {
        return this.inlineBot;
    }

    public Object getParentObject() {
        return this.parentObject;
    }

    public void setGif(TLRPC.Document document, boolean z) {
        setGif(document, "gif" + document, 0, z);
    }

    public void setGif(TLRPC.Document document, Object obj, int i, boolean z) {
        this.needDivider = z;
        this.needShadow = false;
        this.currentDate = i;
        this.inlineResult = null;
        this.parentObject = obj;
        this.documentAttach = document;
        this.photoAttach = null;
        this.mediaWebpage = true;
        this.isForceGif = true;
        setAttachType();
        this.documentAttachType = 2;
        requestLayout();
        this.fileName = null;
        this.cacheFile = null;
        this.fileExist = false;
        this.resolvingFileName = false;
        updateButtonState(false, false);
    }

    public boolean isSticker() {
        return this.documentAttachType == 6;
    }

    public boolean isGif() {
        return this.documentAttachType == 2 && this.canPreviewGif;
    }

    public boolean showingBitmap() {
        return this.linkImageView.getBitmap() != null;
    }

    public int getDate() {
        return this.currentDate;
    }

    public TLRPC.Document getDocument() {
        return this.documentAttach;
    }

    public TLRPC.BotInlineResult getBotInlineResult() {
        return this.inlineResult;
    }

    public ImageReceiver getPhotoImage() {
        return this.linkImageView;
    }

    public void setScaled(boolean z) {
        this.scaled = z;
        ButtonBounce buttonBounce = this.buttonBounce;
        if (buttonBounce != null) {
            buttonBounce.setPressed(isPressed() || this.scaled);
        }
    }

    public void setCanPreviewGif(boolean z) {
        this.canPreviewGif = z;
    }

    public void setIsKeyboard(boolean z) {
        this.isKeyboard = z;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.linkImageView.onDetachedFromWindow();
        this.radialProgress.onDetachedFromWindow();
        DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.linkImageView.onAttachedToWindow()) {
            updateButtonState(false, false);
        }
        this.radialProgress.onAttachedToWindow();
    }

    public MessageObject getMessageObject() {
        return this.currentMessageObject;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        TLRPC.WebDocument webDocument;
        if (this.mediaWebpage || this.delegate == null || this.inlineResult == null) {
            return super.onTouchEvent(motionEvent);
        }
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        AndroidUtilities.m1124dp(48.0f);
        int i = this.documentAttachType;
        boolean z = true;
        if (i == 3 || i == 5) {
            boolean zContains = this.letterDrawable.getBounds().contains(x, y);
            if (motionEvent.getAction() == 0) {
                if (zContains) {
                    this.buttonPressed = true;
                    this.radialProgress.setPressed(true, false);
                    invalidate();
                }
            } else if (this.buttonPressed) {
                if (motionEvent.getAction() == 1) {
                    this.buttonPressed = false;
                    playSoundEffect(0);
                    didPressedButton();
                    invalidate();
                } else if (motionEvent.getAction() == 3) {
                    this.buttonPressed = false;
                    invalidate();
                } else if (motionEvent.getAction() == 2 && !zContains) {
                    this.buttonPressed = false;
                    invalidate();
                }
                this.radialProgress.setPressed(this.buttonPressed, false);
            }
            z = false;
        } else {
            TLRPC.BotInlineResult botInlineResult = this.inlineResult;
            if (botInlineResult == null || (webDocument = botInlineResult.content) == null || TextUtils.isEmpty(webDocument.url)) {
                z = false;
            } else {
                if (motionEvent.getAction() == 0) {
                    if (this.letterDrawable.getBounds().contains(x, y)) {
                        this.buttonPressed = true;
                    }
                } else if (this.buttonPressed) {
                    if (motionEvent.getAction() == 1) {
                        this.buttonPressed = false;
                        playSoundEffect(0);
                        this.delegate.didPressedImage(this);
                    } else if (motionEvent.getAction() == 3) {
                        this.buttonPressed = false;
                    } else if (motionEvent.getAction() == 2 && !this.letterDrawable.getBounds().contains(x, y)) {
                        this.buttonPressed = false;
                    }
                }
                z = false;
            }
        }
        return !z ? super.onTouchEvent(motionEvent) : z;
    }

    private void didPressedButton() {
        int i = this.documentAttachType;
        if (i == 3 || i == 5) {
            int i2 = this.buttonState;
            if (i2 == 0) {
                if (MediaController.getInstance().playMessage(this.currentMessageObject)) {
                    this.buttonState = 1;
                    this.radialProgress.setIcon(getIconForCurrentState(), false, true);
                    invalidate();
                    return;
                }
                return;
            }
            if (i2 == 1) {
                if (MediaController.getInstance().lambda$startAudioAgain$7(this.currentMessageObject)) {
                    this.buttonState = 0;
                    this.radialProgress.setIcon(getIconForCurrentState(), false, true);
                    invalidate();
                    return;
                }
                return;
            }
            if (i2 == 2) {
                this.radialProgress.setProgress(0.0f, false);
                if (this.documentAttach != null) {
                    FileLoader.getInstance(this.currentAccount).loadFile(this.documentAttach, this.inlineResult, 1, 0);
                } else if (this.inlineResult.content instanceof TLRPC.TL_webDocument) {
                    FileLoader.getInstance(this.currentAccount).loadFile(WebFile.createWithWebDocument(this.inlineResult.content), 3, 1);
                }
                this.buttonState = 4;
                this.radialProgress.setIcon(getIconForCurrentState(), false, true);
                invalidate();
                return;
            }
            if (i2 == 4) {
                if (this.documentAttach != null) {
                    FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.documentAttach);
                } else if (this.inlineResult.content instanceof TLRPC.TL_webDocument) {
                    FileLoader.getInstance(this.currentAccount).cancelLoadFile(WebFile.createWithWebDocument(this.inlineResult.content));
                }
                this.buttonState = 2;
                this.radialProgress.setIcon(getIconForCurrentState(), false, true);
                invalidate();
            }
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Canvas canvas2;
        int i;
        CheckBox2 checkBox2 = this.checkBox;
        if (checkBox2 == null || (!checkBox2.isChecked() && this.linkImageView.hasBitmapImage() && this.linkImageView.getCurrentAlpha() == 1.0f && !PhotoViewer.isShowingImage((MessageObject) this.parentObject))) {
            canvas2 = canvas;
        } else {
            canvas.drawRect(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight(), this.backgroundPaint);
            canvas2 = canvas;
        }
        if (this.titleLayout != null) {
            canvas2.save();
            canvas2.translate(AndroidUtilities.m1124dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline), this.titleY);
            this.titleLayout.draw(canvas2);
            canvas2.restore();
        }
        if (this.descriptionLayout != null) {
            Theme.chat_contextResult_descriptionTextPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, this.resourcesProvider));
            canvas2.save();
            canvas2.translate(AndroidUtilities.m1124dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline), this.descriptionY);
            this.descriptionLayout.draw(canvas2);
            canvas2.restore();
        }
        if (this.linkLayout != null) {
            Theme.chat_contextResult_descriptionTextPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText, this.resourcesProvider));
            canvas2.save();
            canvas2.translate(AndroidUtilities.m1124dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline), this.linkY);
            this.linkLayout.draw(canvas2);
            canvas2.restore();
        }
        if (!this.mediaWebpage) {
            if (this.drawLinkImageView && !PhotoViewer.isShowingImage(this.inlineResult)) {
                this.letterDrawable.setAlpha((int) ((1.0f - this.linkImageView.getCurrentAlpha()) * 255.0f));
            } else {
                this.letterDrawable.setAlpha(255);
            }
            int i2 = this.documentAttachType;
            if (i2 == 3 || i2 == 5) {
                this.radialProgress.setProgressColor(Theme.getColor(this.buttonPressed ? Theme.key_chat_inAudioSelectedProgress : Theme.key_chat_inAudioProgress, this.resourcesProvider));
                this.radialProgress.draw(canvas2);
            } else {
                TLRPC.BotInlineResult botInlineResult = this.inlineResult;
                if (botInlineResult != null && botInlineResult.type.equals("file")) {
                    int intrinsicWidth = Theme.chat_inlineResultFile.getIntrinsicWidth();
                    int intrinsicHeight = Theme.chat_inlineResultFile.getIntrinsicHeight();
                    int imageX = (int) (this.linkImageView.getImageX() + ((AndroidUtilities.m1124dp(52.0f) - intrinsicWidth) / 2));
                    int imageY = (int) (this.linkImageView.getImageY() + ((AndroidUtilities.m1124dp(52.0f) - intrinsicHeight) / 2));
                    canvas2.drawRect(this.linkImageView.getImageX(), this.linkImageView.getImageY(), this.linkImageView.getImageX() + AndroidUtilities.m1124dp(52.0f), this.linkImageView.getImageY() + AndroidUtilities.m1124dp(52.0f), LetterDrawable.paint);
                    Theme.chat_inlineResultFile.setBounds(imageX, imageY, intrinsicWidth + imageX, intrinsicHeight + imageY);
                    Theme.chat_inlineResultFile.draw(canvas2);
                } else {
                    TLRPC.BotInlineResult botInlineResult2 = this.inlineResult;
                    if (botInlineResult2 != null && (botInlineResult2.type.equals(MediaStreamTrack.AUDIO_TRACK_KIND) || this.inlineResult.type.equals("voice"))) {
                        int intrinsicWidth2 = Theme.chat_inlineResultAudio.getIntrinsicWidth();
                        int intrinsicHeight2 = Theme.chat_inlineResultAudio.getIntrinsicHeight();
                        int imageX2 = (int) (this.linkImageView.getImageX() + ((AndroidUtilities.m1124dp(52.0f) - intrinsicWidth2) / 2));
                        int imageY2 = (int) (this.linkImageView.getImageY() + ((AndroidUtilities.m1124dp(52.0f) - intrinsicHeight2) / 2));
                        canvas2.drawRect(this.linkImageView.getImageX(), this.linkImageView.getImageY(), this.linkImageView.getImageX() + AndroidUtilities.m1124dp(52.0f), this.linkImageView.getImageY() + AndroidUtilities.m1124dp(52.0f), LetterDrawable.paint);
                        Theme.chat_inlineResultAudio.setBounds(imageX2, imageY2, intrinsicWidth2 + imageX2, intrinsicHeight2 + imageY2);
                        Theme.chat_inlineResultAudio.draw(canvas2);
                    } else {
                        TLRPC.BotInlineResult botInlineResult3 = this.inlineResult;
                        if (botInlineResult3 != null && (botInlineResult3.type.equals("venue") || this.inlineResult.type.equals("geo"))) {
                            int intrinsicWidth3 = Theme.chat_inlineResultLocation.getIntrinsicWidth();
                            int intrinsicHeight3 = Theme.chat_inlineResultLocation.getIntrinsicHeight();
                            int imageX3 = (int) (this.linkImageView.getImageX() + ((AndroidUtilities.m1124dp(52.0f) - intrinsicWidth3) / 2));
                            int imageY3 = (int) (this.linkImageView.getImageY() + ((AndroidUtilities.m1124dp(52.0f) - intrinsicHeight3) / 2));
                            canvas2.drawRect(this.linkImageView.getImageX(), this.linkImageView.getImageY(), this.linkImageView.getImageX() + AndroidUtilities.m1124dp(52.0f), this.linkImageView.getImageY() + AndroidUtilities.m1124dp(52.0f), LetterDrawable.paint);
                            Theme.chat_inlineResultLocation.setBounds(imageX3, imageY3, intrinsicWidth3 + imageX3, intrinsicHeight3 + imageY3);
                            Theme.chat_inlineResultLocation.draw(canvas2);
                        } else {
                            this.letterDrawable.draw(canvas2);
                        }
                    }
                }
            }
        } else {
            TLRPC.BotInlineResult botInlineResult4 = this.inlineResult;
            if (botInlineResult4 != null) {
                TLRPC.BotInlineMessage botInlineMessage = botInlineResult4.send_message;
                if ((botInlineMessage instanceof TLRPC.TL_botInlineMessageMediaGeo) || (botInlineMessage instanceof TLRPC.TL_botInlineMessageMediaVenue)) {
                    int intrinsicWidth4 = Theme.chat_inlineResultLocation.getIntrinsicWidth();
                    int intrinsicHeight4 = Theme.chat_inlineResultLocation.getIntrinsicHeight();
                    int imageX4 = (int) (this.linkImageView.getImageX() + ((this.linkImageView.getImageWidth() - intrinsicWidth4) / 2.0f));
                    int imageY4 = (int) (this.linkImageView.getImageY() + ((this.linkImageView.getImageHeight() - intrinsicHeight4) / 2.0f));
                    canvas2.drawRect(this.linkImageView.getImageX(), this.linkImageView.getImageY(), this.linkImageView.getImageX() + this.linkImageView.getImageWidth(), this.linkImageView.getImageY() + this.linkImageView.getImageHeight(), LetterDrawable.paint);
                    Theme.chat_inlineResultLocation.setBounds(imageX4, imageY4, intrinsicWidth4 + imageX4, intrinsicHeight4 + imageY4);
                    Theme.chat_inlineResultLocation.draw(canvas2);
                }
            }
        }
        if (this.drawLinkImageView) {
            if (this.inlineResult != null) {
                this.linkImageView.setVisible(!PhotoViewer.isShowingImage(r15), false);
            }
            canvas2.save();
            float scale = this.imageScale;
            ButtonBounce buttonBounce = this.buttonBounce;
            if (buttonBounce != null) {
                scale *= buttonBounce.getScale(0.1f);
            }
            canvas2.scale(scale, scale, getMeasuredWidth() / 2, getMeasuredHeight() / 2);
            this.linkImageView.draw(canvas2);
            canvas2.restore();
        }
        if (this.mediaWebpage && ((i = this.documentAttachType) == 7 || i == 2)) {
            this.radialProgress.draw(canvas2);
        }
        if (this.needDivider && !this.mediaWebpage) {
            if (LocaleController.isRTL) {
                canvas2.drawLine(0.0f, getMeasuredHeight() - 1, getMeasuredWidth() - AndroidUtilities.m1124dp(AndroidUtilities.leftBaseline), getMeasuredHeight() - 1, Theme.dividerPaint);
            } else {
                canvas2.drawLine(AndroidUtilities.m1124dp(AndroidUtilities.leftBaseline), getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight() - 1, Theme.dividerPaint);
            }
        }
        if (this.needShadow) {
            Theme.chat_contextResult_shadowUnderSwitchDrawable.setBounds(0, 0, getMeasuredWidth(), AndroidUtilities.m1124dp(3.0f));
            Theme.chat_contextResult_shadowUnderSwitchDrawable.draw(canvas2);
        }
    }

    private int getIconForCurrentState() {
        int i = this.documentAttachType;
        if (i == 3 || i == 5) {
            this.radialProgress.setColorKeys(Theme.key_chat_inLoader, Theme.key_chat_inLoaderSelected, Theme.key_chat_inMediaIcon, Theme.key_chat_inMediaIconSelected);
            int i2 = this.buttonState;
            if (i2 == 1) {
                return 1;
            }
            if (i2 == 2) {
                return 2;
            }
            return i2 == 4 ? 3 : 0;
        }
        this.radialProgress.setColorKeys(Theme.key_chat_mediaLoaderPhoto, Theme.key_chat_mediaLoaderPhotoSelected, Theme.key_chat_mediaLoaderPhotoIcon, Theme.key_chat_mediaLoaderPhotoIconSelected);
        return this.buttonState == 1 ? 10 : 4;
    }

    public void updateButtonState(boolean z, boolean z2) {
        boolean zIsLoadingHttpFile;
        String str = this.fileName;
        if (str == null && !this.resolvingFileName) {
            this.resolvingFileName = true;
            int i = this.resolveFileNameId;
            this.resolveFileNameId = i;
            Utilities.searchQueue.postRunnable(new RunnableC33561(i, z));
            this.radialProgress.setIcon(4, z, false);
            return;
        }
        if (TextUtils.isEmpty(str)) {
            this.buttonState = -1;
            this.radialProgress.setIcon(4, z, false);
            return;
        }
        if (this.documentAttach != null) {
            zIsLoadingHttpFile = FileLoader.getInstance(this.currentAccount).isLoadingFile(this.fileName);
        } else {
            zIsLoadingHttpFile = ImageLoader.getInstance().isLoadingHttpFile(this.fileName);
        }
        if (zIsLoadingHttpFile || !this.fileExist) {
            DownloadController.getInstance(this.currentAccount).addLoadingFileObserver(this.fileName, this);
            int i2 = this.documentAttachType;
            if (i2 != 5 && i2 != 3) {
                this.buttonState = 1;
                Float fileProgress = ImageLoader.getInstance().getFileProgress(this.fileName);
                this.radialProgress.setProgress(fileProgress != null ? fileProgress.floatValue() : 0.0f, false);
            } else if (!zIsLoadingHttpFile) {
                this.buttonState = 2;
            } else {
                this.buttonState = 4;
                Float fileProgress2 = ImageLoader.getInstance().getFileProgress(this.fileName);
                if (fileProgress2 != null) {
                    this.radialProgress.setProgress(fileProgress2.floatValue(), z2);
                } else {
                    this.radialProgress.setProgress(0.0f, z2);
                }
            }
        } else {
            DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
            int i3 = this.documentAttachType;
            if (i3 == 5 || i3 == 3) {
                boolean zIsPlayingMessage = MediaController.getInstance().isPlayingMessage(this.currentMessageObject);
                if (!zIsPlayingMessage || (zIsPlayingMessage && MediaController.getInstance().isMessagePaused())) {
                    this.buttonState = 0;
                } else {
                    this.buttonState = 1;
                }
                this.radialProgress.setProgress(1.0f, z2);
            } else {
                this.buttonState = -1;
            }
        }
        this.radialProgress.setIcon(getIconForCurrentState(), z, z2);
        invalidate();
    }

    /* JADX INFO: renamed from: org.telegram.ui.Cells.ContextLinkCell$1 */
    class RunnableC33561 implements Runnable {
        final /* synthetic */ boolean val$ifSame;
        final /* synthetic */ int val$localId;

        RunnableC33561(int i, boolean z) {
            this.val$localId = i;
            this.val$ifSame = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            File file;
            final File file2;
            final String str;
            String attachFileName;
            File pathToAttach;
            File file3;
            String string = null;
            if (ContextLinkCell.this.documentAttachType == 5 || ContextLinkCell.this.documentAttachType == 3) {
                if (ContextLinkCell.this.documentAttach != null) {
                    string = FileLoader.getAttachFileName(ContextLinkCell.this.documentAttach);
                    file = FileLoader.getInstance(ContextLinkCell.this.currentAccount).getPathToAttach(ContextLinkCell.this.documentAttach);
                } else {
                    if (ContextLinkCell.this.inlineResult.content instanceof TLRPC.TL_webDocument) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(Utilities.MD5(ContextLinkCell.this.inlineResult.content.url));
                        sb.append(".");
                        sb.append(ImageLoader.getHttpUrlExtension(ContextLinkCell.this.inlineResult.content.url, ContextLinkCell.this.documentAttachType == 5 ? "mp3" : "ogg"));
                        string = sb.toString();
                        file = new File(FileLoader.getDirectory(4), string);
                    }
                    str = null;
                    file2 = null;
                }
                file2 = file;
                str = string;
            } else if (!ContextLinkCell.this.mediaWebpage) {
                str = null;
                file2 = null;
            } else if (ContextLinkCell.this.inlineResult != null) {
                if (ContextLinkCell.this.inlineResult.document instanceof TLRPC.TL_document) {
                    attachFileName = FileLoader.getAttachFileName(ContextLinkCell.this.inlineResult.document);
                    pathToAttach = FileLoader.getInstance(ContextLinkCell.this.currentAccount).getPathToAttach(ContextLinkCell.this.inlineResult.document);
                } else if (ContextLinkCell.this.inlineResult.photo instanceof TLRPC.TL_photo) {
                    ContextLinkCell contextLinkCell = ContextLinkCell.this;
                    contextLinkCell.currentPhotoObject = FileLoader.getClosestPhotoSizeWithSize(contextLinkCell.inlineResult.photo.sizes, AndroidUtilities.getPhotoSize(), true);
                    attachFileName = FileLoader.getAttachFileName(ContextLinkCell.this.currentPhotoObject);
                    pathToAttach = FileLoader.getInstance(ContextLinkCell.this.currentAccount).getPathToAttach(ContextLinkCell.this.currentPhotoObject);
                } else {
                    if (ContextLinkCell.this.inlineResult.content instanceof TLRPC.TL_webDocument) {
                        attachFileName = Utilities.MD5(ContextLinkCell.this.inlineResult.content.url) + "." + ImageLoader.getHttpUrlExtension(ContextLinkCell.this.inlineResult.content.url, FileLoader.getMimeTypePart(ContextLinkCell.this.inlineResult.content.mime_type));
                        file3 = new File(FileLoader.getDirectory(4), attachFileName);
                        if (ContextLinkCell.this.documentAttachType == 2 && (ContextLinkCell.this.inlineResult.thumb instanceof TLRPC.TL_webDocument) && "video/mp4".equals(ContextLinkCell.this.inlineResult.thumb.mime_type)) {
                            pathToAttach = file3;
                            attachFileName = null;
                        }
                    } else {
                        if (ContextLinkCell.this.inlineResult.thumb instanceof TLRPC.TL_webDocument) {
                            attachFileName = Utilities.MD5(ContextLinkCell.this.inlineResult.thumb.url) + "." + ImageLoader.getHttpUrlExtension(ContextLinkCell.this.inlineResult.thumb.url, FileLoader.getMimeTypePart(ContextLinkCell.this.inlineResult.thumb.mime_type));
                            file3 = new File(FileLoader.getDirectory(4), attachFileName);
                        }
                        attachFileName = null;
                        pathToAttach = null;
                    }
                    pathToAttach = file3;
                }
                if (ContextLinkCell.this.documentAttach == null && ContextLinkCell.this.documentAttachType == 2 && MessageObject.getDocumentVideoThumb(ContextLinkCell.this.documentAttach) != null) {
                    file2 = pathToAttach;
                    str = string;
                } else {
                    str = attachFileName;
                    file2 = pathToAttach;
                }
            } else {
                if (ContextLinkCell.this.documentAttach != null) {
                    attachFileName = FileLoader.getAttachFileName(ContextLinkCell.this.documentAttach);
                    pathToAttach = FileLoader.getInstance(ContextLinkCell.this.currentAccount).getPathToAttach(ContextLinkCell.this.documentAttach);
                } else {
                    attachFileName = null;
                    pathToAttach = null;
                }
                if (ContextLinkCell.this.documentAttach == null) {
                }
                str = attachFileName;
                file2 = pathToAttach;
            }
            final boolean z = !TextUtils.isEmpty(str) && file2.exists();
            final int i = this.val$localId;
            final boolean z2 = this.val$ifSame;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Cells.ContextLinkCell$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$run$0(i, str, file2, z, z2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(int i, String str, File file, boolean z, boolean z2) {
            ContextLinkCell contextLinkCell = ContextLinkCell.this;
            contextLinkCell.resolvingFileName = false;
            if (contextLinkCell.resolveFileNameId == i) {
                contextLinkCell.fileName = str;
                if (str == null) {
                    contextLinkCell.fileName = _UrlKt.FRAGMENT_ENCODE_SET;
                }
                contextLinkCell.cacheFile = file;
                contextLinkCell.fileExist = z;
            }
            contextLinkCell.updateButtonState(z2, true);
        }
    }

    public void setDelegate(ContextLinkCellDelegate contextLinkCellDelegate) {
        this.delegate = contextLinkCellDelegate;
    }

    public TLRPC.BotInlineResult getResult() {
        return this.inlineResult;
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onFailedDownload(String str, boolean z) {
        updateButtonState(true, z);
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onSuccessDownload(String str) {
        this.fileExist = true;
        this.radialProgress.setProgress(1.0f, true);
        updateButtonState(false, true);
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressDownload(String str, long j, long j2) {
        this.radialProgress.setProgress(Math.min(1.0f, j / j2), true);
        int i = this.documentAttachType;
        if (i == 3 || i == 5) {
            if (this.buttonState != 4) {
                updateButtonState(false, true);
            }
        } else if (this.buttonState != 1) {
            updateButtonState(false, true);
        }
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public int getObserverTag() {
        return this.TAG;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        StringBuilder sb = new StringBuilder();
        switch (this.documentAttachType) {
            case 1:
                sb.append(LocaleController.getString(C2888R.string.AttachDocument));
                break;
            case 2:
                sb.append(LocaleController.getString(C2888R.string.AttachGif));
                break;
            case 3:
                sb.append(LocaleController.getString(C2888R.string.AttachAudio));
                break;
            case 4:
                sb.append(LocaleController.getString(C2888R.string.AttachVideo));
                break;
            case 5:
                sb.append(LocaleController.getString(C2888R.string.AttachMusic));
                break;
            case 6:
                sb.append(LocaleController.getString(C2888R.string.AttachSticker));
                break;
            case 7:
                sb.append(LocaleController.getString(C2888R.string.AttachPhoto));
                break;
            case 8:
                sb.append(LocaleController.getString(C2888R.string.AttachLocation));
                break;
        }
        StaticLayout staticLayout = this.titleLayout;
        boolean z = (staticLayout == null || TextUtils.isEmpty(staticLayout.getText())) ? false : true;
        StaticLayout staticLayout2 = this.descriptionLayout;
        boolean z2 = (staticLayout2 == null || TextUtils.isEmpty(staticLayout2.getText())) ? false : true;
        if (this.documentAttachType == 5 && z && z2) {
            sb.append(", ");
            sb.append(LocaleController.formatString("AccDescrMusicInfo", C2888R.string.AccDescrMusicInfo, this.descriptionLayout.getText(), this.titleLayout.getText()));
        } else {
            if (z) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append(this.titleLayout.getText());
            }
            if (z2) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append(this.descriptionLayout.getText());
            }
        }
        accessibilityNodeInfo.setText(sb);
        CheckBox2 checkBox2 = this.checkBox;
        if (checkBox2 == null || !checkBox2.isChecked()) {
            return;
        }
        accessibilityNodeInfo.setCheckable(true);
        accessibilityNodeInfo.setChecked(true);
    }

    public void setChecked(final boolean z, boolean z2) {
        CheckBox2 checkBox2 = this.checkBox;
        if (checkBox2 == null) {
            return;
        }
        if (checkBox2.getVisibility() != 0) {
            this.checkBox.setVisibility(0);
        }
        this.checkBox.setChecked(z, z2);
        AnimatorSet animatorSet = this.animator;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.animator = null;
        }
        if (z2) {
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.animator = animatorSet2;
            animatorSet2.playTogether(ObjectAnimator.ofFloat(this, (Property<ContextLinkCell, Float>) this.IMAGE_SCALE, z ? 0.81f : 1.0f));
            this.animator.setDuration(200L);
            this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.ContextLinkCell.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (ContextLinkCell.this.animator == null || !ContextLinkCell.this.animator.equals(animator)) {
                        return;
                    }
                    ContextLinkCell.this.animator = null;
                    if (z) {
                        return;
                    }
                    ContextLinkCell.this.setBackgroundColor(0);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    if (ContextLinkCell.this.animator == null || !ContextLinkCell.this.animator.equals(animator)) {
                        return;
                    }
                    ContextLinkCell.this.animator = null;
                }
            });
            this.animator.start();
            return;
        }
        this.imageScale = z ? 0.85f : 1.0f;
        invalidate();
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        super.setPressed(z);
        ButtonBounce buttonBounce = this.buttonBounce;
        if (buttonBounce != null) {
            buttonBounce.setPressed(z || this.scaled);
        }
    }
}
