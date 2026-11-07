package org.telegram.ui.Cells;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Bundle;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextUtils;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AccelerateInterpolator;
import android.widget.FrameLayout;
import com.google.android.gms.cast.HlsSegmentFormat;
import java.io.File;
import java.util.ArrayList;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
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
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimationProperties;
import org.telegram.ui.Components.ButtonBounce;
import org.telegram.ui.Components.CheckBox2;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LetterDrawable;
import org.telegram.ui.Components.RadialProgress2;
import org.telegram.ui.PhotoViewer;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes7.dex */
public class ContextLinkCell extends FrameLayout implements DownloadController.FileDownloadProgressListener {
    private static AccelerateInterpolator interpolator = new AccelerateInterpolator(0.5f);
    public final Property<ContextLinkCell, Float> IMAGE_SCALE;
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
        this.titleY = AndroidUtilities.dp(7.0f);
        this.descriptionY = AndroidUtilities.dp(27.0f);
        this.cacheFile = null;
        this.imageScale = 1.0f;
        this.IMAGE_SCALE = new AnimationProperties.FloatProperty<ContextLinkCell>("animationValue") { // from class: org.telegram.ui.Cells.ContextLinkCell.2
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
    /* JADX WARN: Removed duplicated region for block: B:108:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02d9  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x02dd A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0300 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0372  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0381  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0383  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x038d  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x047f  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x05a2  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x05b6  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x05f3  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x06bd  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x012c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:291:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01e3  */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v25 */
    /* JADX WARN: Type inference failed for: r6v26 */
    /* JADX WARN: Type inference failed for: r6v27 */
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
    @SuppressLint({"DrawAllocation"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i, int i2) {
        ArrayList arrayList;
        ArrayList arrayList2;
        float f;
        float f2;
        float f3;
        ?? r6;
        TLRPC.Document document;
        TLRPC.PhotoSize closestPhotoSizeWithSize;
        String str;
        TLRPC.BotInlineResult botInlineResult;
        int i3;
        ArrayList arrayList3;
        WebFile webFileCreateWithWebDocument;
        String strFormapMapUrl;
        int iDp;
        int i4;
        TLRPC.PhotoSize photoSize;
        String str2;
        String str3;
        TLRPC.TL_photoStrippedSize strippedPhotoSize;
        String strConcat;
        String strConcat2;
        CheckBox2 checkBox2;
        TLRPC.TL_webDocument tL_webDocument;
        String str4;
        TLRPC.BotInlineResult botInlineResult2;
        boolean z;
        char c2;
        int i5;
        char c3;
        boolean z2;
        int lineBottom = 0;
        this.drawLinkImageView = false;
        ImageLocation forPhoto = null;
        this.descriptionLayout = null;
        this.titleLayout = null;
        this.linkLayout = null;
        this.currentPhotoObject = null;
        this.linkY = AndroidUtilities.dp(27.0f);
        if (this.inlineResult == null && this.documentAttach == null) {
            setMeasuredDimension(AndroidUtilities.dp(100.0f), AndroidUtilities.dp(100.0f));
            return;
        }
        int size = View.MeasureSpec.getSize(i);
        int iDp2 = (size - AndroidUtilities.dp(AndroidUtilities.leftBaseline)) - AndroidUtilities.dp(8.0f);
        if (this.documentAttach != null) {
            arrayList2 = new ArrayList(this.documentAttach.thumbs);
        } else {
            TLRPC.BotInlineResult botInlineResult3 = this.inlineResult;
            if (botInlineResult3 != null && botInlineResult3.photo != null) {
                arrayList2 = new ArrayList(this.inlineResult.photo.sizes);
            } else {
                arrayList = null;
                if (!this.mediaWebpage || (botInlineResult2 = this.inlineResult) == null) {
                    f = 100.0f;
                    f2 = 8.0f;
                    f3 = 1.0f;
                    r6 = 1;
                } else {
                    String str5 = botInlineResult2.title;
                    if (str5 != null) {
                        try {
                            f = 100.0f;
                            f2 = 8.0f;
                        } catch (Exception e) {
                            e = e;
                            f = 100.0f;
                            f2 = 8.0f;
                        }
                        try {
                            this.titleLayout = new StaticLayout(TextUtils.ellipsize(Emoji.replaceEmoji(str5.replace('\n', ' '), Theme.chat_contextResult_titleTextPaint.getFontMetricsInt(), false), Theme.chat_contextResult_titleTextPaint, iDp2, TextUtils.TruncateAt.END), Theme.chat_contextResult_titleTextPaint, iDp2 + AndroidUtilities.dp(4.0f), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                        } catch (Exception e2) {
                            e = e2;
                            FileLog.m1040e(e);
                        }
                        this.letterDrawable.setTitle(this.inlineResult.title);
                    } else {
                        f = 100.0f;
                        f2 = 8.0f;
                    }
                    String str6 = this.inlineResult.description;
                    if (str6 != null) {
                        try {
                            z = true;
                            try {
                                i5 = iDp2;
                                c3 = '\n';
                                f3 = 1.0f;
                                c2 = ' ';
                            } catch (Exception e3) {
                                e = e3;
                                f3 = 1.0f;
                                z = true;
                                c2 = ' ';
                                i5 = iDp2;
                                c3 = '\n';
                                FileLog.m1040e(e);
                                z2 = z;
                                r6 = z2;
                                if (this.inlineResult.url != null) {
                                }
                                document = this.documentAttach;
                                if (document != null) {
                                }
                                botInlineResult = this.inlineResult;
                                if (botInlineResult == null) {
                                }
                                if (this.documentAttach != null) {
                                }
                                if (iDp == 0) {
                                }
                                if (iDp == 0) {
                                }
                                if (this.documentAttach != null) {
                                }
                                if (this.mediaWebpage) {
                                }
                                checkBox2 = this.checkBox;
                                if (checkBox2 != null) {
                                }
                            }
                            try {
                                StaticLayout staticLayoutGenerateStaticLayout = ChatMessageCell.generateStaticLayout(Emoji.replaceEmoji(str6, Theme.chat_contextResult_descriptionTextPaint.getFontMetricsInt(), false), Theme.chat_contextResult_descriptionTextPaint, i5, iDp2, 0, 3);
                                this.descriptionLayout = staticLayoutGenerateStaticLayout;
                                z2 = true;
                                if (staticLayoutGenerateStaticLayout.getLineCount() > 0) {
                                    int i6 = this.descriptionY;
                                    StaticLayout staticLayout = this.descriptionLayout;
                                    this.linkY = i6 + staticLayout.getLineBottom(staticLayout.getLineCount() - 1) + AndroidUtilities.dp(1.0f);
                                    z2 = true;
                                }
                            } catch (Exception e4) {
                                e = e4;
                                FileLog.m1040e(e);
                                z2 = z;
                            }
                        } catch (Exception e5) {
                            e = e5;
                            f3 = 1.0f;
                            z = true;
                        }
                    } else {
                        f3 = 1.0f;
                        z2 = true;
                        c2 = ' ';
                        i5 = iDp2;
                        c3 = '\n';
                    }
                    r6 = z2;
                    if (this.inlineResult.url != null) {
                        try {
                            this.linkLayout = new StaticLayout(TextUtils.ellipsize(this.inlineResult.url.replace(c3, c2), Theme.chat_contextResult_descriptionTextPaint, Math.min((int) Math.ceil(Theme.chat_contextResult_descriptionTextPaint.measureText(r0)), i5), TextUtils.TruncateAt.MIDDLE), Theme.chat_contextResult_descriptionTextPaint, i5, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                            r6 = z2;
                        } catch (Exception e6) {
                            FileLog.m1040e(e6);
                            r6 = z2;
                        }
                    }
                }
                document = this.documentAttach;
                if (document != null) {
                    if (this.isForceGif || MessageObject.isGifDocument(document)) {
                        this.currentPhotoObject = FileLoader.getClosestPhotoSizeWithSize(this.documentAttach.thumbs, 90, false, null, r6);
                    } else if (MessageObject.isStickerDocument(this.documentAttach) || MessageObject.isAnimatedStickerDocument(this.documentAttach, r6)) {
                        this.currentPhotoObject = FileLoader.getClosestPhotoSizeWithSize(this.documentAttach.thumbs, 90, false, null, r6);
                        str = "webp";
                        closestPhotoSizeWithSize = null;
                    } else {
                        int i7 = this.documentAttachType;
                        if (i7 != 5 && i7 != 3) {
                            this.currentPhotoObject = FileLoader.getClosestPhotoSizeWithSize(this.documentAttach.thumbs, 90, false, null, r6);
                        }
                    }
                    closestPhotoSizeWithSize = null;
                    str = null;
                } else {
                    TLRPC.BotInlineResult botInlineResult4 = this.inlineResult;
                    if (botInlineResult4 == null || botInlineResult4.photo == null) {
                        closestPhotoSizeWithSize = null;
                        str = null;
                    } else {
                        this.currentPhotoObject = FileLoader.getClosestPhotoSizeWithSize(arrayList, AndroidUtilities.getPhotoSize(), r6, null, r6);
                        closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(arrayList, 80, false, null, r6);
                        if (closestPhotoSizeWithSize != this.currentPhotoObject) {
                            str = null;
                        }
                    }
                }
                botInlineResult = this.inlineResult;
                if (botInlineResult == null) {
                    i3 = 3;
                    arrayList3 = arrayList;
                    webFileCreateWithWebDocument = null;
                    strFormapMapUrl = null;
                } else if ((botInlineResult.content instanceof TLRPC.TL_webDocument) && (str4 = botInlineResult.type) != null) {
                    boolean zStartsWith = str4.startsWith("gif");
                    TLRPC.BotInlineResult botInlineResult5 = this.inlineResult;
                    if (zStartsWith) {
                        TLRPC.WebDocument webDocument = botInlineResult5.thumb;
                        if ((webDocument instanceof TLRPC.TL_webDocument) && "video/mp4".equals(webDocument.mime_type)) {
                            tL_webDocument = (TLRPC.TL_webDocument) this.inlineResult.thumb;
                        } else {
                            tL_webDocument = (TLRPC.TL_webDocument) this.inlineResult.content;
                        }
                        this.documentAttachType = 2;
                    } else if (botInlineResult5.type.equals("photo")) {
                        TLRPC.BotInlineResult botInlineResult6 = this.inlineResult;
                        TLRPC.WebDocument webDocument2 = botInlineResult6.thumb;
                        if (webDocument2 instanceof TLRPC.TL_webDocument) {
                            tL_webDocument = (TLRPC.TL_webDocument) webDocument2;
                        } else {
                            tL_webDocument = (TLRPC.TL_webDocument) botInlineResult6.content;
                        }
                    }
                    if (tL_webDocument == null) {
                    }
                    if (tL_webDocument != null) {
                        i3 = 3;
                        arrayList3 = arrayList;
                        webFileCreateWithWebDocument = null;
                        strFormapMapUrl = null;
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
                            i3 = 3;
                            arrayList3 = arrayList;
                            double d2 = geoPoint._long;
                            if (MessagesController.getInstance(this.currentAccount).mapProvider == 2) {
                                webFileCreateWithWebDocument = WebFile.createWithGeoPoint(this.inlineResult.send_message.geo, 72, 72, 15, Math.min(2, (int) Math.ceil(AndroidUtilities.density)));
                                strFormapMapUrl = null;
                            } else {
                                strFormapMapUrl = AndroidUtilities.formapMapUrl(this.currentAccount, d, d2, 72, 72, true, 15, -1);
                                webFileCreateWithWebDocument = null;
                            }
                        }
                        if (tL_webDocument != null) {
                        }
                    } else {
                        i3 = 3;
                        arrayList3 = arrayList;
                        webFileCreateWithWebDocument = null;
                        strFormapMapUrl = null;
                        if (tL_webDocument != null) {
                            webFileCreateWithWebDocument = WebFile.createWithWebDocument(tL_webDocument);
                        }
                    }
                }
                if (this.documentAttach != null) {
                    for (int i8 = 0; i8 < this.documentAttach.attributes.size(); i8++) {
                        TLRPC.DocumentAttribute documentAttribute = this.documentAttach.attributes.get(i8);
                        if ((documentAttribute instanceof TLRPC.TL_documentAttributeImageSize) || (documentAttribute instanceof TLRPC.TL_documentAttributeVideo)) {
                            iDp = documentAttribute.f1017w;
                            i4 = documentAttribute.f1016h;
                            break;
                        }
                    }
                    iDp = 0;
                    i4 = 0;
                } else {
                    iDp = 0;
                    i4 = 0;
                }
                if (iDp == 0 || i4 == 0) {
                    photoSize = this.currentPhotoObject;
                    if (photoSize == null) {
                        if (closestPhotoSizeWithSize != null) {
                            closestPhotoSizeWithSize.size = -1;
                        }
                        iDp = photoSize.f1019w;
                        i4 = photoSize.f1018h;
                    } else {
                        TLRPC.BotInlineResult botInlineResult7 = this.inlineResult;
                        if (botInlineResult7 != null) {
                            int[] inlineResultWidthAndHeight = MessageObject.getInlineResultWidthAndHeight(botInlineResult7);
                            int i9 = inlineResultWidthAndHeight[0];
                            i4 = inlineResultWidthAndHeight[r6];
                            iDp = i9;
                        }
                    }
                }
                if (iDp == 0 || i4 == 0) {
                    iDp = AndroidUtilities.dp(80.0f);
                    i4 = iDp;
                }
                if (this.documentAttach != null || this.currentPhotoObject != null || webFileCreateWithWebDocument != null || strFormapMapUrl != null) {
                    if (!this.mediaWebpage) {
                        int iMin = Math.min(iDp, i4) / 3;
                        if (this.documentAttachType == 2) {
                            String str7 = String.format(Locale.US, "%d_%d_b", Integer.valueOf((int) (iMin / AndroidUtilities.density)), 80);
                            if (SharedConfig.isAutoplayGifs() || this.isKeyboard) {
                                str3 = str7;
                                str2 = str3;
                            } else {
                                strConcat2 = str7.concat("_firstframe");
                                strConcat = str7.concat("_firstframe");
                            }
                        } else {
                            strConcat = String.format(Locale.US, "%d_%d", Integer.valueOf((int) (iMin / AndroidUtilities.density)), 80);
                            strConcat2 = strConcat.concat("_b");
                        }
                        str3 = strConcat;
                        str2 = strConcat2;
                    } else {
                        str2 = "52_52_b";
                        str3 = "52_52";
                    }
                    this.linkImageView.setAspectFit(this.documentAttachType != 6 ? r6 : 0);
                    strippedPhotoSize = FileLoader.getStrippedPhotoSize(arrayList3);
                    if (strippedPhotoSize != null) {
                        TLRPC.Document document2 = this.documentAttach;
                        if (document2 != null) {
                            forPhoto = ImageLocation.getForDocument(strippedPhotoSize, document2);
                        } else {
                            TLRPC.Photo photo = this.photoAttach;
                            if (photo != null) {
                                forPhoto = ImageLocation.getForPhoto(strippedPhotoSize, photo);
                            }
                        }
                    }
                    ImageLocation imageLocation = forPhoto;
                    if (this.documentAttachType != 2) {
                        TLRPC.Document document3 = this.documentAttach;
                        if (document3 != null) {
                            TLRPC.VideoSize documentVideoThumb = MessageObject.getDocumentVideoThumb(document3);
                            if (documentVideoThumb != null) {
                                ImageReceiver imageReceiver = this.linkImageView;
                                ImageLocation forDocument = ImageLocation.getForDocument(documentVideoThumb, this.documentAttach);
                                StringBuilder sb = new StringBuilder("100_100");
                                sb.append((SharedConfig.isAutoplayGifs() || this.isKeyboard) ? _UrlKt.FRAGMENT_ENCODE_SET : "_firstframe");
                                imageReceiver.setImage(forDocument, sb.toString(), ImageLocation.getForDocument(this.currentPhotoObject, this.documentAttach), str3, imageLocation, str2, null, -1L, str, this.parentObject, 1);
                            } else {
                                ImageLocation forDocument2 = ImageLocation.getForDocument(this.documentAttach);
                                if (this.isForceGif) {
                                    forDocument2.imageType = 2;
                                }
                                ImageReceiver imageReceiver2 = this.linkImageView;
                                StringBuilder sb2 = new StringBuilder("100_100");
                                sb2.append((SharedConfig.isAutoplayGifs() || this.isKeyboard) ? _UrlKt.FRAGMENT_ENCODE_SET : "_firstframe");
                                imageReceiver2.setImage(forDocument2, sb2.toString(), ImageLocation.getForDocument(this.currentPhotoObject, this.documentAttach), str3, imageLocation, str2, null, this.documentAttach.size, str, this.parentObject, 0);
                            }
                        } else {
                            ImageReceiver imageReceiver3 = this.linkImageView;
                            if (webFileCreateWithWebDocument != null) {
                                imageReceiver3.setImage(ImageLocation.getForWebFile(webFileCreateWithWebDocument), "100_100", ImageLocation.getForPhoto(this.currentPhotoObject, this.photoAttach), str3, imageLocation, str2, null, -1L, str, this.parentObject, 1);
                            } else {
                                imageReceiver3.setImage(ImageLocation.getForPath(strFormapMapUrl), "100_100", ImageLocation.getForPhoto(this.currentPhotoObject, this.photoAttach), str3, imageLocation, str2, null, -1L, str, this.parentObject, 1);
                            }
                        }
                    } else if (this.currentPhotoObject != null) {
                        SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(this.documentAttach, Theme.key_windowBackgroundGray, f3);
                        if (MessageObject.canAutoplayAnimatedSticker(this.documentAttach)) {
                            ImageReceiver imageReceiver4 = this.linkImageView;
                            if (svgThumb != null) {
                                imageReceiver4.setImage(ImageLocation.getForDocument(this.documentAttach), "80_80", null, null, imageLocation, str2, svgThumb, this.currentPhotoObject.size, str, this.parentObject, 0);
                            } else {
                                imageReceiver4.setImage(ImageLocation.getForDocument(this.documentAttach), "80_80", ImageLocation.getForDocument(this.currentPhotoObject, this.documentAttach), str2, imageLocation, str2, null, this.currentPhotoObject.size, str, this.parentObject, 0);
                            }
                        } else {
                            TLRPC.Document document4 = this.documentAttach;
                            if (document4 != null) {
                                ImageReceiver imageReceiver5 = this.linkImageView;
                                if (svgThumb != null) {
                                    imageReceiver5.setImage(ImageLocation.getForDocument(this.currentPhotoObject, document4), str3, null, null, imageLocation, str2, svgThumb, this.currentPhotoObject.size, str, this.parentObject, 0);
                                } else {
                                    imageReceiver5.setImage(ImageLocation.getForDocument(this.currentPhotoObject, document4), str3, ImageLocation.getForPhoto(closestPhotoSizeWithSize, this.photoAttach), str2, imageLocation, str2, null, this.currentPhotoObject.size, str, this.parentObject, 0);
                                }
                            } else {
                                this.linkImageView.setImage(ImageLocation.getForPhoto(this.currentPhotoObject, this.photoAttach), str3, ImageLocation.getForPhoto(closestPhotoSizeWithSize, this.photoAttach), str2, imageLocation, str2, null, this.currentPhotoObject.size, str, this.parentObject, 0);
                            }
                        }
                    } else {
                        ImageReceiver imageReceiver6 = this.linkImageView;
                        if (webFileCreateWithWebDocument != null) {
                            imageReceiver6.setImage(ImageLocation.getForWebFile(webFileCreateWithWebDocument), str3, ImageLocation.getForPhoto(closestPhotoSizeWithSize, this.photoAttach), str2, imageLocation, str2, null, -1L, str, this.parentObject, 1);
                        } else {
                            imageReceiver6.setImage(ImageLocation.getForPath(strFormapMapUrl), str3, ImageLocation.getForPhoto(closestPhotoSizeWithSize, this.photoAttach), str2, imageLocation, str2, null, -1L, str, this.parentObject, 1);
                        }
                    }
                    if (!SharedConfig.isAutoplayGifs() || this.isKeyboard) {
                        this.linkImageView.setAllowStartAnimation(r6);
                        this.linkImageView.startAnimation();
                    } else {
                        this.linkImageView.setAllowStartAnimation(false);
                        this.linkImageView.stopAnimation();
                    }
                    this.drawLinkImageView = r6;
                }
                if (this.mediaWebpage) {
                    int size2 = View.MeasureSpec.getSize(i2);
                    if (size2 == 0) {
                        size2 = AndroidUtilities.dp(f);
                    }
                    setMeasuredDimension(size, size2);
                    int iDp3 = (size - AndroidUtilities.dp(24.0f)) / 2;
                    int iDp4 = (size2 - AndroidUtilities.dp(24.0f)) / 2;
                    this.radialProgress.setProgressRect(iDp3, iDp4, AndroidUtilities.dp(24.0f) + iDp3, AndroidUtilities.dp(24.0f) + iDp4);
                    this.radialProgress.setCircleRadius(AndroidUtilities.dp(12.0f));
                    this.linkImageView.setImageCoords(0.0f, 0.0f, size, size2);
                } else {
                    StaticLayout staticLayout2 = this.titleLayout;
                    if (staticLayout2 != null && staticLayout2.getLineCount() != 0) {
                        StaticLayout staticLayout3 = this.titleLayout;
                        lineBottom = staticLayout3.getLineBottom(staticLayout3.getLineCount() - r6);
                    }
                    StaticLayout staticLayout4 = this.descriptionLayout;
                    if (staticLayout4 != null && staticLayout4.getLineCount() != 0) {
                        StaticLayout staticLayout5 = this.descriptionLayout;
                        lineBottom += staticLayout5.getLineBottom(staticLayout5.getLineCount() - r6);
                    }
                    StaticLayout staticLayout6 = this.linkLayout;
                    if (staticLayout6 != null && staticLayout6.getLineCount() > 0) {
                        StaticLayout staticLayout7 = this.linkLayout;
                        lineBottom += staticLayout7.getLineBottom(staticLayout7.getLineCount() - r6);
                    }
                    setMeasuredDimension(View.MeasureSpec.getSize(i), Math.max(AndroidUtilities.dp(68.0f), Math.max(AndroidUtilities.dp(52.0f), lineBottom) + AndroidUtilities.dp(16.0f)) + (this.needDivider ? 1 : 0));
                    int iDp5 = AndroidUtilities.dp(52.0f);
                    int size3 = LocaleController.isRTL ? (View.MeasureSpec.getSize(i) - AndroidUtilities.dp(f2)) - iDp5 : AndroidUtilities.dp(f2);
                    this.letterDrawable.setBounds(size3, AndroidUtilities.dp(f2), size3 + iDp5, AndroidUtilities.dp(60.0f));
                    float f4 = iDp5;
                    this.linkImageView.setImageCoords(size3, AndroidUtilities.dp(f2), f4, f4);
                    int i10 = this.documentAttachType;
                    if (i10 == i3 || i10 == 5) {
                        this.radialProgress.setCircleRadius(AndroidUtilities.dp(24.0f));
                        this.radialProgress.setProgressRect(AndroidUtilities.dp(4.0f) + size3, AndroidUtilities.dp(12.0f), size3 + AndroidUtilities.dp(48.0f), AndroidUtilities.dp(56.0f));
                    }
                }
                checkBox2 = this.checkBox;
                if (checkBox2 != null) {
                    measureChildWithMargins(checkBox2, i, 0, i2, 0);
                    return;
                }
                return;
            }
        }
        arrayList = arrayList2;
        if (this.mediaWebpage) {
            f = 100.0f;
            f2 = 8.0f;
            f3 = 1.0f;
            r6 = 1;
        }
        document = this.documentAttach;
        if (document != null) {
        }
        botInlineResult = this.inlineResult;
        if (botInlineResult == null) {
        }
        if (this.documentAttach != null) {
        }
        if (iDp == 0) {
            photoSize = this.currentPhotoObject;
            if (photoSize == null) {
            }
        }
        if (iDp == 0) {
            iDp = AndroidUtilities.dp(80.0f);
            i4 = iDp;
        }
        if (this.documentAttach != null) {
            if (!this.mediaWebpage) {
            }
            this.linkImageView.setAspectFit(this.documentAttachType != 6 ? r6 : 0);
            strippedPhotoSize = FileLoader.getStrippedPhotoSize(arrayList3);
            if (strippedPhotoSize != null) {
            }
            ImageLocation imageLocation2 = forPhoto;
            if (this.documentAttachType != 2) {
            }
            if (!SharedConfig.isAutoplayGifs()) {
                this.linkImageView.setAllowStartAnimation(r6);
                this.linkImageView.startAnimation();
                this.drawLinkImageView = r6;
            }
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
            tL_message.id = -Utilities.random.nextInt();
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
                String httpUrlExtension = ImageLoader.getHttpUrlExtension(this.inlineResult.content.url, this.documentAttachType == 5 ? HlsSegmentFormat.MP3 : "ogg");
                TLRPC.Document document3 = tL_message.media.document;
                document3.id = 0L;
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
                sb.append(ImageLoader.getHttpUrlExtension(this.inlineResult.content.url, this.documentAttachType == 5 ? HlsSegmentFormat.MP3 : "ogg"));
                tL_documentAttributeFilename.file_name = sb.toString();
                tL_message.media.document.attributes.add(tL_documentAttributeFilename);
                File directory = FileLoader.getDirectory(4);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(Utilities.MD5(this.inlineResult.content.url));
                sb2.append(".");
                sb2.append(ImageLoader.getHttpUrlExtension(this.inlineResult.content.url, this.documentAttachType == 5 ? HlsSegmentFormat.MP3 : "ogg"));
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
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.linkImageView.onDetachedFromWindow();
        this.radialProgress.onDetachedFromWindow();
        DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
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
        AndroidUtilities.dp(48.0f);
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
                if (MediaController.getInstance().lambda$startAudioAgain$9(this.currentMessageObject)) {
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
    public void onDraw(Canvas canvas) {
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
            canvas2.translate(AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline), this.titleY);
            this.titleLayout.draw(canvas2);
            canvas2.restore();
        }
        if (this.descriptionLayout != null) {
            Theme.chat_contextResult_descriptionTextPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, this.resourcesProvider));
            canvas2.save();
            canvas2.translate(AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline), this.descriptionY);
            this.descriptionLayout.draw(canvas2);
            canvas2.restore();
        }
        if (this.linkLayout != null) {
            Theme.chat_contextResult_descriptionTextPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText, this.resourcesProvider));
            canvas2.save();
            canvas2.translate(AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline), this.linkY);
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
                    int imageX = (int) (this.linkImageView.getImageX() + ((AndroidUtilities.dp(52.0f) - intrinsicWidth) / 2));
                    int imageY = (int) (this.linkImageView.getImageY() + ((AndroidUtilities.dp(52.0f) - intrinsicHeight) / 2));
                    canvas2.drawRect(this.linkImageView.getImageX(), this.linkImageView.getImageY(), this.linkImageView.getImageX() + AndroidUtilities.dp(52.0f), this.linkImageView.getImageY() + AndroidUtilities.dp(52.0f), LetterDrawable.paint);
                    Theme.chat_inlineResultFile.setBounds(imageX, imageY, intrinsicWidth + imageX, intrinsicHeight + imageY);
                    Theme.chat_inlineResultFile.draw(canvas2);
                } else {
                    TLRPC.BotInlineResult botInlineResult2 = this.inlineResult;
                    if (botInlineResult2 != null && (botInlineResult2.type.equals(MediaStreamTrack.AUDIO_TRACK_KIND) || this.inlineResult.type.equals("voice"))) {
                        int intrinsicWidth2 = Theme.chat_inlineResultAudio.getIntrinsicWidth();
                        int intrinsicHeight2 = Theme.chat_inlineResultAudio.getIntrinsicHeight();
                        int imageX2 = (int) (this.linkImageView.getImageX() + ((AndroidUtilities.dp(52.0f) - intrinsicWidth2) / 2));
                        int imageY2 = (int) (this.linkImageView.getImageY() + ((AndroidUtilities.dp(52.0f) - intrinsicHeight2) / 2));
                        canvas2.drawRect(this.linkImageView.getImageX(), this.linkImageView.getImageY(), this.linkImageView.getImageX() + AndroidUtilities.dp(52.0f), this.linkImageView.getImageY() + AndroidUtilities.dp(52.0f), LetterDrawable.paint);
                        Theme.chat_inlineResultAudio.setBounds(imageX2, imageY2, intrinsicWidth2 + imageX2, intrinsicHeight2 + imageY2);
                        Theme.chat_inlineResultAudio.draw(canvas2);
                    } else {
                        TLRPC.BotInlineResult botInlineResult3 = this.inlineResult;
                        if (botInlineResult3 != null && (botInlineResult3.type.equals("venue") || this.inlineResult.type.equals("geo"))) {
                            int intrinsicWidth3 = Theme.chat_inlineResultLocation.getIntrinsicWidth();
                            int intrinsicHeight3 = Theme.chat_inlineResultLocation.getIntrinsicHeight();
                            int imageX3 = (int) (this.linkImageView.getImageX() + ((AndroidUtilities.dp(52.0f) - intrinsicWidth3) / 2));
                            int imageY3 = (int) (this.linkImageView.getImageY() + ((AndroidUtilities.dp(52.0f) - intrinsicHeight3) / 2));
                            canvas2.drawRect(this.linkImageView.getImageX(), this.linkImageView.getImageY(), this.linkImageView.getImageX() + AndroidUtilities.dp(52.0f), this.linkImageView.getImageY() + AndroidUtilities.dp(52.0f), LetterDrawable.paint);
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
                canvas2.drawLine(0.0f, getMeasuredHeight() - 1, getMeasuredWidth() - AndroidUtilities.dp(AndroidUtilities.leftBaseline), getMeasuredHeight() - 1, Theme.dividerPaint);
            } else {
                canvas2.drawLine(AndroidUtilities.dp(AndroidUtilities.leftBaseline), getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight() - 1, Theme.dividerPaint);
            }
        }
        if (this.needShadow) {
            Theme.chat_contextResult_shadowUnderSwitchDrawable.setBounds(0, 0, getMeasuredWidth(), AndroidUtilities.dp(3.0f));
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
            Utilities.searchQueue.postRunnable(new RunnableC32551(i, z));
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
                RadialProgress2 radialProgress2 = this.radialProgress;
                if (fileProgress2 != null) {
                    radialProgress2.setProgress(fileProgress2.floatValue(), z2);
                } else {
                    radialProgress2.setProgress(0.0f, z2);
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
    public class RunnableC32551 implements Runnable {
        final /* synthetic */ boolean val$ifSame;
        final /* synthetic */ int val$localId;

        public RunnableC32551(int i, boolean z) {
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
                TLRPC.Document document = ContextLinkCell.this.documentAttach;
                ContextLinkCell contextLinkCell = ContextLinkCell.this;
                if (document != null) {
                    string = FileLoader.getAttachFileName(contextLinkCell.documentAttach);
                    file = FileLoader.getInstance(ContextLinkCell.this.currentAccount).getPathToAttach(ContextLinkCell.this.documentAttach);
                } else {
                    if (contextLinkCell.inlineResult.content instanceof TLRPC.TL_webDocument) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(Utilities.MD5(ContextLinkCell.this.inlineResult.content.url));
                        sb.append(".");
                        sb.append(ImageLoader.getHttpUrlExtension(ContextLinkCell.this.inlineResult.content.url, ContextLinkCell.this.documentAttachType == 5 ? HlsSegmentFormat.MP3 : "ogg"));
                        string = sb.toString();
                        file = new File(FileLoader.getDirectory(4), string);
                    }
                    str = null;
                    file2 = null;
                }
                file2 = file;
                str = string;
            } else if (ContextLinkCell.this.mediaWebpage) {
                TLRPC.BotInlineResult botInlineResult = ContextLinkCell.this.inlineResult;
                ContextLinkCell contextLinkCell2 = ContextLinkCell.this;
                if (botInlineResult != null) {
                    boolean z = contextLinkCell2.inlineResult.document instanceof TLRPC.TL_document;
                    ContextLinkCell contextLinkCell3 = ContextLinkCell.this;
                    if (z) {
                        attachFileName = FileLoader.getAttachFileName(contextLinkCell3.inlineResult.document);
                        pathToAttach = FileLoader.getInstance(ContextLinkCell.this.currentAccount).getPathToAttach(ContextLinkCell.this.inlineResult.document);
                    } else {
                        boolean z2 = contextLinkCell3.inlineResult.photo instanceof TLRPC.TL_photo;
                        ContextLinkCell contextLinkCell4 = ContextLinkCell.this;
                        if (z2) {
                            contextLinkCell4.currentPhotoObject = FileLoader.getClosestPhotoSizeWithSize(contextLinkCell4.inlineResult.photo.sizes, AndroidUtilities.getPhotoSize(), true);
                            attachFileName = FileLoader.getAttachFileName(ContextLinkCell.this.currentPhotoObject);
                            pathToAttach = FileLoader.getInstance(ContextLinkCell.this.currentAccount).getPathToAttach(ContextLinkCell.this.currentPhotoObject);
                        } else {
                            boolean z3 = contextLinkCell4.inlineResult.content instanceof TLRPC.TL_webDocument;
                            ContextLinkCell contextLinkCell5 = ContextLinkCell.this;
                            if (z3) {
                                attachFileName = Utilities.MD5(contextLinkCell5.inlineResult.content.url) + "." + ImageLoader.getHttpUrlExtension(ContextLinkCell.this.inlineResult.content.url, FileLoader.getMimeTypePart(ContextLinkCell.this.inlineResult.content.mime_type));
                                file3 = new File(FileLoader.getDirectory(4), attachFileName);
                                if (ContextLinkCell.this.documentAttachType == 2 && (ContextLinkCell.this.inlineResult.thumb instanceof TLRPC.TL_webDocument) && "video/mp4".equals(ContextLinkCell.this.inlineResult.thumb.mime_type)) {
                                    pathToAttach = file3;
                                    attachFileName = null;
                                }
                            } else {
                                if (contextLinkCell5.inlineResult.thumb instanceof TLRPC.TL_webDocument) {
                                    attachFileName = Utilities.MD5(ContextLinkCell.this.inlineResult.thumb.url) + "." + ImageLoader.getHttpUrlExtension(ContextLinkCell.this.inlineResult.thumb.url, FileLoader.getMimeTypePart(ContextLinkCell.this.inlineResult.thumb.mime_type));
                                    file3 = new File(FileLoader.getDirectory(4), attachFileName);
                                }
                                attachFileName = null;
                                pathToAttach = null;
                            }
                            pathToAttach = file3;
                        }
                    }
                    if (ContextLinkCell.this.documentAttach == null && ContextLinkCell.this.documentAttachType == 2 && MessageObject.getDocumentVideoThumb(ContextLinkCell.this.documentAttach) != null) {
                        file2 = pathToAttach;
                        str = string;
                    } else {
                        str = attachFileName;
                        file2 = pathToAttach;
                    }
                } else {
                    if (contextLinkCell2.documentAttach != null) {
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
            } else {
                str = null;
                file2 = null;
            }
            final boolean z4 = !TextUtils.isEmpty(str) && file2.exists();
            final int i = this.val$localId;
            final boolean z5 = this.val$ifSame;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Cells.ContextLinkCell$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$run$0(i, str, file2, z4, z5);
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
        String string;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        StringBuilder sb = new StringBuilder();
        switch (this.documentAttachType) {
            case 1:
                sb.append(LocaleController.getString(C2807R.string.AttachDocument));
                break;
            case 2:
                sb.append(LocaleController.getString(C2807R.string.AttachGif));
                break;
            case 3:
                sb.append(LocaleController.getString(C2807R.string.AttachAudio));
                break;
            case 4:
                sb.append(LocaleController.getString(C2807R.string.AttachVideo));
                break;
            case 5:
                sb.append(LocaleController.getString(C2807R.string.AttachMusic));
                break;
            case 6:
                sb.append(LocaleController.getString(C2807R.string.AttachSticker));
                break;
            case 7:
                sb.append(LocaleController.getString(C2807R.string.AttachPhoto));
                break;
            case 8:
                sb.append(LocaleController.getString(C2807R.string.AttachLocation));
                break;
        }
        StaticLayout staticLayout = this.titleLayout;
        boolean z = false;
        boolean z2 = (staticLayout == null || TextUtils.isEmpty(staticLayout.getText())) ? false : true;
        StaticLayout staticLayout2 = this.descriptionLayout;
        if (staticLayout2 != null && !TextUtils.isEmpty(staticLayout2.getText())) {
            z = true;
        }
        if (this.documentAttachType == 5 && z2 && z) {
            sb.append(", ");
            sb.append(LocaleController.formatString("AccDescrMusicInfo", C2807R.string.AccDescrMusicInfo, this.descriptionLayout.getText(), this.titleLayout.getText()));
        } else {
            if (z2) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append(this.titleLayout.getText());
            }
            if (z) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append(this.descriptionLayout.getText());
            }
        }
        accessibilityNodeInfo.setText(sb);
        CheckBox2 checkBox2 = this.checkBox;
        if (checkBox2 != null && checkBox2.isChecked()) {
            accessibilityNodeInfo.setCheckable(true);
            accessibilityNodeInfo.setChecked(true);
        }
        int i = this.documentAttachType;
        if (i == 3 || i == 5) {
            int iconForCurrentState = getIconForCurrentState();
            if (iconForCurrentState == 1) {
                string = LocaleController.getString("AccActionPause", C2807R.string.AccActionPause);
            } else if (iconForCurrentState == 2) {
                string = LocaleController.getString("AccActionDownload", C2807R.string.AccActionDownload);
            } else if (iconForCurrentState == 3) {
                string = LocaleController.getString("AccActionCancelDownload", C2807R.string.AccActionCancelDownload);
            } else {
                string = LocaleController.getString("AccActionPlay", C2807R.string.AccActionPlay);
            }
            accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(16, string));
        }
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        int i2;
        if (i == 16 && ((i2 = this.documentAttachType) == 3 || i2 == 5)) {
            didPressedButton();
            return true;
        }
        return super.performAccessibilityAction(i, bundle);
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
            animatorSet2.playTogether(ObjectAnimator.ofFloat(this, this.IMAGE_SCALE, z ? 0.81f : 1.0f));
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
