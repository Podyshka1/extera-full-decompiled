package org.telegram.messenger;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.CharacterStyle;
import android.text.style.ClickableSpan;
import android.text.style.MetricAffectingSpan;
import android.text.style.URLSpan;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.OverScroller;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.utils.ui.FontUtils;
import com.google.android.gms.cast.MediaError;
import java.io.File;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.ToIntFunction;
import kotlin.text.Typography;
import okhttp3.internal.url._UrlKt;
import org.telegram.PhoneFormat.PhoneFormat;
import org.telegram.messenger.CodeHighlighting;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.RichMessageLayout;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_iv;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ArticleViewer;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.Cells.TextSelectionHelper;
import org.telegram.ui.Components.AnimatedArrowDrawable;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.AnimatedFileDrawable;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.ButtonBounce;
import org.telegram.ui.Components.CheckBoxBase;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.FormattedDateSpan;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LinkPath;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.LoadingDrawable;
import org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.ui.Components.RadialProgress2;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ReplyMessageLine;
import org.telegram.ui.Components.SeekBar;
import org.telegram.ui.Components.TableLayout;
import org.telegram.ui.Components.TextPaintImageReceiverSpan;
import org.telegram.ui.Components.TextStyleSpan;
import org.telegram.ui.Components.TypefaceSpan;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.URLSpanBotCommand;
import org.telegram.ui.Components.URLSpanMono;
import org.telegram.ui.Components.URLSpanNoUnderline;
import org.telegram.ui.Components.URLSpanReplacement;
import org.telegram.ui.Components.URLSpanUserMention;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.Components.spoilers.SpoilerEffect;
import org.telegram.ui.Components.spoilers.SpoilerEffect2;
import org.telegram.ui.GradientClip;
import org.telegram.ui.MultiLayoutTypingAnimator;
import org.telegram.ui.iv.RichHtml;
import org.telegram.ui.web.WebInstantView;
import ru.noties.jlatexmath.JLatexMathDrawable;

/* JADX INFO: loaded from: classes5.dex */
public class RichMessageLayout {
    public static final int PART_MAX_HEIGHT_DP = 900;
    public static final int QUOTE_NEST_VPAD = 3;
    public static final int TEXT_FLAG_BLOCKS = 15;
    public static final int TEXT_FLAG_BLOCK_CAPTION = 10;
    public static final int TEXT_FLAG_BLOCK_CODE = 8;
    public static final int TEXT_FLAG_BLOCK_FOOTER = 7;
    public static final int TEXT_FLAG_BLOCK_HEADING1 = 1;
    public static final int TEXT_FLAG_BLOCK_HEADING2 = 2;
    public static final int TEXT_FLAG_BLOCK_HEADING3 = 3;
    public static final int TEXT_FLAG_BLOCK_HEADING4 = 4;
    public static final int TEXT_FLAG_BLOCK_HEADING5 = 5;
    public static final int TEXT_FLAG_BLOCK_HEADING6 = 6;
    public static final int TEXT_FLAG_BLOCK_PULLQUOTE = 12;
    public static final int TEXT_FLAG_BLOCK_QUOTE = 9;
    public static final int TEXT_FLAG_BLOCK_QUOTE_CAPTION = 11;
    public static final int TEXT_FLAG_BOLD = 16;
    public static final int TEXT_FLAG_ITALIC = 32;
    public static final int TEXT_FLAG_MARKED = 8192;
    public static final int TEXT_FLAG_MONO = 256;
    public static final int TEXT_FLAG_STRIKETHROUGH = 128;
    public static final int TEXT_FLAG_SUBSCRIPT = 2048;
    public static final int TEXT_FLAG_SUPERSCRIPT = 4096;
    public static final int TEXT_FLAG_UNDERLINE = 64;
    public static final int TEXT_FLAG_URL = 512;
    public static final int TEXT_FLAG_WEBPAGE_URL = 1024;
    private ChatMessageCell cell;
    public final GradientClip clip;
    public final int currentAccount;
    private ChatMessageCell.ChatMessageCellDelegate delegate;
    private float density;
    public boolean detailsAnimating;
    private int fontSize;
    public boolean forceTranslationLoading;
    private boolean hasNameOffset;
    protected int height;
    public boolean invalidateAnimatedEmojiInParent;
    public boolean isPart;
    protected int maxWidth;
    public final MessageObject messageObject;
    protected int minWidth;
    public final TextPaint numTextPaint;
    public int padLeft;
    public int padRight;
    private RichBlock pressedBlock;
    private int pressedBlockY;
    private RichMessageLayout prev;
    private Drawable pullquoteIcon;
    public final ReplyMessageLine quoteLine;
    protected Theme.ResourcesProvider resourcesProvider;
    public TL_iv.RichMessage richMessage;
    private ButtonBounce showMoreBounce;
    private LoadingDrawable showMoreLoading;
    private Paint showMorePaint;
    private boolean showMorePressed;
    private final RectF showMoreRect;
    private org.telegram.ui.Components.Text showMoreText;
    private SpoilerEffect2 spoilerEffect2;
    public final TextPaint textPaint;
    private AnimatedFloat translationLoadingFloat;
    public float translationLoadingValue;
    public MultiLayoutTypingAnimator typingAnimator;
    public View view;
    public final ArrayList<RichBlock> blocks = new ArrayList<>();
    public final ArrayList<QuoteBackground> quotes = new ArrayList<>();
    public final HashMap<String, Integer> anchors = new HashMap<>();
    public final HashMap<String, TL_iv.textAnchor> textAnchors = new HashMap<>();
    public final ArrayList<MessageObject> audioMessages = new ArrayList<>();
    public final HashMap<TL_iv.pageBlockAudio, MessageObject> audioBlocks = new HashMap<>();
    public final ArrayList<TextSelectionHelper.TextLayoutBlock> textBlocks = new ArrayList<>();
    public final ArrayList<Integer> textBlockCharOffsets = new ArrayList<>();
    public final ArrayList<Integer> textBlockBlockIndex = new ArrayList<>();
    public CharSequence joinedText = _UrlKt.FRAGMENT_ENCODE_SET;

    public static class FoundLink {
        public int end;
        public StaticLayout layout;
        public int originalWidth;
        public int start;

        /* JADX INFO: renamed from: x */
        public float f812x;

        /* JADX INFO: renamed from: y */
        public float f813y;
    }

    private static int setBlockFlags(int i, int i2) {
        return i2 == 0 ? i : (i & (-16)) | i2;
    }

    private static int toTextStyleFlags(int i) {
        int i2 = (i & 16) != 0 ? 1 : 0;
        if ((i & 32) != 0) {
            i2 |= 2;
        }
        if ((i & 64) != 0) {
            i2 |= 16;
        }
        if ((i & 128) != 0) {
            i2 |= 8;
        }
        if ((i & 256) != 0) {
            i2 |= 4;
        }
        if ((i & 2048) != 0) {
            i2 |= 16384;
        }
        if ((i & 4096) != 0) {
            i2 |= 32768;
        }
        return (i & 8192) != 0 ? 65536 | i2 : i2;
    }

    public boolean isRtl() {
        TL_iv.RichMessage richMessage = this.richMessage;
        return richMessage != null && richMessage.rtl;
    }

    public boolean isOut() {
        MessageObject messageObject = this.messageObject;
        return messageObject != null && messageObject.isOutOwner();
    }

    public boolean isTranslating() {
        if (this.forceTranslationLoading) {
            return true;
        }
        return this.messageObject != null && MessagesController.getInstance(this.currentAccount).getTranslateController().isTranslating(this.messageObject);
    }

    public boolean isPinnedTop() {
        ChatMessageCell chatMessageCell = this.cell;
        return chatMessageCell != null && chatMessageCell.isPinnedTop();
    }

    public RichMessageLayout(MessageObject messageObject, int i, RichMessageLayout richMessageLayout) {
        TextPaint textPaint = new TextPaint(1);
        this.textPaint = textPaint;
        TextPaint textPaint2 = new TextPaint(1);
        this.numTextPaint = textPaint2;
        this.quoteLine = new ReplyMessageLine(null);
        this.clip = new GradientClip();
        this.showMoreRect = new RectF();
        this.messageObject = messageObject;
        this.maxWidth = i;
        this.currentAccount = messageObject.currentAccount;
        textPaint.setTypeface(AndroidUtilities.regular());
        textPaint2.setTypeface(AndroidUtilities.regular());
        layout(richMessageLayout);
    }

    public boolean needsUpdate(TL_iv.RichMessage richMessage, int i) {
        return (this.richMessage == richMessage && this.fontSize == SharedConfig.fontSize && Math.abs(this.density - AndroidUtilities.density) <= 0.1f && i == this.maxWidth) ? false : true;
    }

    public void setResourcesProvider(Theme.ResourcesProvider resourcesProvider) {
        this.resourcesProvider = resourcesProvider;
    }

    public void setChatMessageCellDelegate(ChatMessageCell chatMessageCell, ChatMessageCell.ChatMessageCellDelegate chatMessageCellDelegate) {
        this.cell = chatMessageCell;
        this.delegate = chatMessageCellDelegate;
    }

    public int getGap() {
        return AndroidUtilities.dp(3.0f);
    }

    public boolean startsWithMedia() {
        if (this.blocks.isEmpty()) {
            return false;
        }
        RichBlock richBlock = this.blocks.get(0);
        return (richBlock instanceof RichPhotoBlock) || (richBlock instanceof RichVideoBlock) || (richBlock instanceof RichCollageBlock) || (richBlock instanceof RichSlideshowBlock);
    }

    public void layout(RichMessageLayout richMessageLayout) {
        this.height = 0;
        this.minWidth = 0;
        View view = this.view;
        if (view != null) {
            for (int i = 0; i < this.blocks.size(); i++) {
                this.blocks.get(i).detach(view);
            }
        }
        this.blocks.clear();
        this.quotes.clear();
        this.anchors.clear();
        this.textAnchors.clear();
        this.audioMessages.clear();
        this.audioBlocks.clear();
        this.textBlocks.clear();
        this.textBlockCharOffsets.clear();
        this.textBlockBlockIndex.clear();
        this.joinedText = _UrlKt.FRAGMENT_ENCODE_SET;
        this.fontSize = SharedConfig.fontSize;
        this.density = AndroidUtilities.density;
        this.textPaint.setTextSize(AndroidUtilities.dp(SharedConfig.fontSize));
        this.numTextPaint.setTextSize(AndroidUtilities.dp(SharedConfig.fontSize));
        this.isPart = false;
        this.hasNameOffset = false;
        this.richMessage = null;
        MessageObject messageObject = this.messageObject;
        if (messageObject == null || messageObject.messageOwner == null || messageObject.getDisplayRichMessage() == null) {
            return;
        }
        TL_iv.RichMessage displayRichMessage = this.messageObject.getDisplayRichMessage();
        this.richMessage = displayRichMessage;
        this.isPart = displayRichMessage.part;
        MessageObject messageObject2 = this.messageObject;
        this.hasNameOffset = messageObject2.replyMessageObject != null || messageObject2.isForwarded() || (!this.messageObject.isOutOwner() && this.messageObject.needDrawAvatar());
        this.prev = richMessageLayout;
        for (int i2 = 0; i2 < this.richMessage.blocks.size(); i2++) {
            emitBlock(this.richMessage.blocks.get(i2), 0, new Rect(), 0);
        }
        this.prev = null;
        if (this.typingAnimator != null) {
            for (int i3 = 0; i3 < this.blocks.size(); i3++) {
                this.blocks.get(i3).typingAnimator = this.typingAnimator;
            }
            this.typingAnimator.setBlocks(getAnimatorBlocks());
        }
        if (view != null) {
            for (int i4 = 0; i4 < this.blocks.size(); i4++) {
                this.blocks.get(i4).attach(view);
            }
        }
        reposition();
        snapshotForDetailsAnimation();
    }

    private boolean prefixEquals(String str, String str2) {
        if (str == null || str2 == null || str.length() > str2.length() || str2.length() <= 0) {
            return false;
        }
        return str2.startsWith(str);
    }

    private <T extends RichBlock> T findPrevBlock(TL_iv.PageBlock pageBlock, Class<T> cls) {
        RichMessageLayout richMessageLayout = this.prev;
        if (richMessageLayout == null) {
            return null;
        }
        ArrayList<RichBlock> arrayList = richMessageLayout.blocks;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            RichBlock richBlock = arrayList.get(i);
            i++;
            RichBlock richBlock2 = richBlock;
            if (cls.isInstance(richBlock2) && (richBlock2 instanceof RichPreformattedBlock) && prefixEquals(((RichPreformattedBlock) richBlock2).plain, getString(pageBlock.text))) {
                return cls.cast(richBlock2);
            }
        }
        return null;
    }

    public void reposition() {
        this.height = 0;
        this.minWidth = 0;
        this.textBlocks.clear();
        this.textBlockCharOffsets.clear();
        this.textBlockBlockIndex.clear();
        StringBuilder sb = new StringBuilder();
        int height = 0;
        boolean z = false;
        for (int i = 0; i < this.blocks.size(); i++) {
            RichBlock richBlock = this.blocks.get(i);
            this.minWidth = Math.max(this.minWidth, richBlock.getMinWidth());
            boolean zIsVisible = richBlock.isVisible();
            if (zIsVisible && z) {
                height += getGap();
            }
            richBlock.currY = height;
            richBlock.currVisible = zIsVisible;
            Rect rect = richBlock.padding;
            richBlock.placeTexts(rect.left, rect.top + height, i);
            if (zIsVisible) {
                TextSelectionHelper.TextLayoutBlock[] text = richBlock.getText();
                if (text != null) {
                    for (TextSelectionHelper.TextLayoutBlock textLayoutBlock : text) {
                        if (textLayoutBlock != null && textLayoutBlock.getLayout() != null) {
                            if (sb.length() > 0) {
                                sb.append('\n');
                            }
                            this.textBlockCharOffsets.add(Integer.valueOf(sb.length()));
                            this.textBlockBlockIndex.add(Integer.valueOf(i));
                            this.textBlocks.add(textLayoutBlock);
                            CharSequence text2 = textLayoutBlock.getLayout().getText();
                            if (text2 != null) {
                                sb.append(text2);
                            }
                        }
                    }
                }
                height += richBlock.getHeight();
                z = true;
            }
        }
        this.height = height;
        this.joinedText = sb;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0045  */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4, types: [org.telegram.messenger.RichMessageLayout$RichBlock] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String getSelectionHtml(int i, int i2) {
        int iMin;
        int iMax;
        String str;
        RichMessageLayout richMessageLayout = this;
        String str2 = null;
        if (richMessageLayout.textBlocks.isEmpty() || (iMax = Math.max(i, i2)) <= (iMin = Math.min(i, i2))) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        ArrayList<QuoteBackground> arrayList = new ArrayList<>();
        ArrayList<Boolean> arrayList2 = new ArrayList<>();
        int i3 = 0;
        int i4 = -1;
        while (i3 < richMessageLayout.textBlocks.size()) {
            Layout layout = richMessageLayout.textBlocks.get(i3).getLayout();
            if (layout == null || layout.getText() == null) {
                str = str2;
            } else {
                CharSequence text = layout.getText();
                int iIntValue = i3 < richMessageLayout.textBlockCharOffsets.size() ? richMessageLayout.textBlockCharOffsets.get(i3).intValue() : 0;
                int length = text.length() + iIntValue;
                int iMax2 = Math.max(iMin, iIntValue);
                int iMin2 = Math.min(iMax, length);
                if (iMin2 > iMax2) {
                    int iIntValue2 = i3 < richMessageLayout.textBlockBlockIndex.size() ? richMessageLayout.textBlockBlockIndex.get(i3).intValue() : -1;
                    str = str2;
                    ?? r6 = (iIntValue2 < 0 || iIntValue2 >= richMessageLayout.blocks.size()) ? str : richMessageLayout.blocks.get(iIntValue2);
                    if (!(r6 instanceof RichTableBlock)) {
                        ArrayList<QuoteBackground> arrayListQuotesFor = richMessageLayout.quotesFor(iIntValue2);
                        if (!sameQuotes(arrayList, arrayListQuotesFor)) {
                            richMessageLayout.closeLists(sb, arrayList2);
                            richMessageLayout.syncQuotes(sb, arrayList, arrayListQuotesFor);
                        }
                        int i5 = iMax2 - iIntValue;
                        int i6 = iMin2 - iIntValue;
                        int i7 = r6 instanceof RichTextBlock ? ((RichTextBlock) r6).quoteAuthorStart : -1;
                        int i8 = r6 != 0 ? r6.listLevel : 0;
                        if (i8 > 0 && i7 < 0) {
                            richMessageLayout.syncLists(sb, arrayList2, i8, r6.listOrdered);
                            sb.append("<li");
                            if (r6.listCheckbox) {
                                sb.append(" data-checkbox=\"1\"");
                                if (r6.listChecked) {
                                    sb.append(" data-checked=\"1\"");
                                }
                            }
                            sb.append(Typography.greater);
                            sb.append(RichHtml.inlineToHtml(richMessageLayout.toRichHtmlSpannable(text.subSequence(i5, i6))));
                            sb.append("</li>");
                        } else {
                            richMessageLayout.closeLists(sb, arrayList2);
                            if (r6 instanceof RichPreformattedBlock) {
                                sb.append(RichHtml.preToHtml(richMessageLayout.toRichHtmlSpannable(text.subSequence(i5, i6)), ((RichPreformattedBlock) r6).language));
                            } else if (i7 < 0) {
                                richMessageLayout.appendSelectionPiece(sb, text, i5, i6, false);
                                richMessageLayout = this;
                            } else {
                                richMessageLayout = this;
                                richMessageLayout.appendSelectionPiece(sb, text, i5, Math.min(i6, i7 > 0 ? i7 - 1 : 0), false);
                                richMessageLayout.appendSelectionPiece(sb, text, Math.max(i5, i7), i6, true);
                            }
                        }
                    } else if (iIntValue2 != i4) {
                        richMessageLayout.closeLists(sb, arrayList2);
                        richMessageLayout.syncQuotes(sb, arrayList, richMessageLayout.quotesFor(iIntValue2));
                        sb.append(RichHtml.tableToHtml(((RichTableBlock) r6).pageBlock));
                        i4 = iIntValue2;
                    }
                }
            }
            i3++;
            str2 = str;
        }
        String str3 = str2;
        richMessageLayout.closeLists(sb, arrayList2);
        while (!arrayList.isEmpty()) {
            sb.append("</blockquote>");
            arrayList.remove(arrayList.size() - 1);
        }
        return sb.length() == 0 ? str3 : sb.toString();
    }

    private void appendSelectionPiece(StringBuilder sb, CharSequence charSequence, int i, int i2, boolean z) {
        if (i2 <= i) {
            return;
        }
        String strInlineToHtml = RichHtml.inlineToHtml(toRichHtmlSpannable(charSequence.subSequence(i, i2)));
        if (strInlineToHtml.isEmpty()) {
            return;
        }
        sb.append(z ? "<cite>" : "<p>");
        sb.append(strInlineToHtml);
        sb.append(z ? "</cite>" : "</p>");
    }

    private ArrayList<QuoteBackground> quotesFor(int i) {
        ArrayList<QuoteBackground> arrayList = new ArrayList<>();
        if (i >= 0) {
            ArrayList<QuoteBackground> arrayList2 = this.quotes;
            int size = arrayList2.size();
            int i2 = 0;
            while (i2 < size) {
                QuoteBackground quoteBackground = arrayList2.get(i2);
                i2++;
                QuoteBackground quoteBackground2 = quoteBackground;
                if (i >= quoteBackground2.startBlockIndex && i <= quoteBackground2.endBlockIndex) {
                    arrayList.add(quoteBackground2);
                }
            }
            Collections.sort(arrayList, new Comparator() { // from class: org.telegram.messenger.RichMessageLayout$$ExternalSyntheticLambda0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return RichMessageLayout.$r8$lambda$znvpMFV93ubL1Q0IKFmuT0P_gFQ((RichMessageLayout.QuoteBackground) obj, (RichMessageLayout.QuoteBackground) obj2);
                }
            });
        }
        return arrayList;
    }

    public static /* synthetic */ int $r8$lambda$znvpMFV93ubL1Q0IKFmuT0P_gFQ(QuoteBackground quoteBackground, QuoteBackground quoteBackground2) {
        return quoteBackground.level - quoteBackground2.level;
    }

    private static boolean sameQuotes(ArrayList<QuoteBackground> arrayList, ArrayList<QuoteBackground> arrayList2) {
        if (arrayList.size() != arrayList2.size()) {
            return false;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            if (arrayList.get(i) != arrayList2.get(i)) {
                return false;
            }
        }
        return true;
    }

    private void syncQuotes(StringBuilder sb, ArrayList<QuoteBackground> arrayList, ArrayList<QuoteBackground> arrayList2) {
        int i = 0;
        while (i < arrayList.size() && i < arrayList2.size() && arrayList.get(i) == arrayList2.get(i)) {
            i++;
        }
        while (arrayList.size() > i) {
            sb.append("</blockquote>");
            arrayList.remove(arrayList.size() - 1);
        }
        while (arrayList.size() < arrayList2.size()) {
            sb.append("<blockquote>");
            arrayList.add(arrayList2.get(arrayList.size()));
        }
    }

    private void syncLists(StringBuilder sb, ArrayList<Boolean> arrayList, int i, boolean z) {
        String str;
        String str2;
        while (true) {
            str = "</ul>";
            if (arrayList.size() <= i) {
                break;
            }
            if (arrayList.remove(arrayList.size() - 1).booleanValue()) {
                str = "</ol>";
            }
            sb.append(str);
        }
        while (true) {
            str2 = "<ul>";
            if (arrayList.size() >= i) {
                break;
            }
            if (z) {
                str2 = "<ol>";
            }
            sb.append(str2);
            arrayList.add(Boolean.valueOf(z));
        }
        if (arrayList.isEmpty() || arrayList.get(arrayList.size() - 1).booleanValue() == z) {
            return;
        }
        sb.append(arrayList.remove(arrayList.size() + (-1)).booleanValue() ? "</ol>" : "</ul>");
        sb.append(z ? "<ol>" : "<ul>");
        arrayList.add(Boolean.valueOf(z));
    }

    private void closeLists(StringBuilder sb, ArrayList<Boolean> arrayList) {
        while (!arrayList.isEmpty()) {
            sb.append(arrayList.remove(arrayList.size() + (-1)).booleanValue() ? "</ol>" : "</ul>");
        }
    }

    private SpannableStringBuilder toRichHtmlSpannable(CharSequence charSequence) {
        int textStyleFlags;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        for (StyleSpan styleSpan : (StyleSpan[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), StyleSpan.class)) {
            int spanStart = spannableStringBuilder.getSpanStart(styleSpan);
            int spanEnd = spannableStringBuilder.getSpanEnd(styleSpan);
            if (spanEnd > spanStart && (textStyleFlags = toTextStyleFlags(styleSpan.flags)) != 0) {
                TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
                textStyleRun.flags = textStyleFlags;
                spannableStringBuilder.setSpan(new TextStyleSpan(textStyleRun), spanStart, spanEnd, 33);
            }
        }
        return spannableStringBuilder;
    }

    public void snapshotForDetailsAnimation() {
        for (int i = 0; i < this.blocks.size(); i++) {
            this.blocks.get(i).snapshot();
        }
    }

    public void attach(View view) {
        View view2 = this.view;
        if (view == view2) {
            return;
        }
        if (view2 != null) {
            detach(view2);
        }
        this.view = view;
        for (int i = 0; i < this.blocks.size(); i++) {
            this.blocks.get(i).attach(view);
        }
    }

    public void detach(View view) {
        View view2 = this.view;
        if (view2 == view && view2 != null) {
            SpoilerEffect2 spoilerEffect2 = this.spoilerEffect2;
            if (spoilerEffect2 != null) {
                spoilerEffect2.detach(view);
                this.spoilerEffect2 = null;
            }
            this.view = null;
            for (int i = 0; i < this.blocks.size(); i++) {
                this.blocks.get(i).detach(view);
            }
            if (view == this.cell) {
                this.cell = null;
                this.delegate = null;
            }
        }
    }

    public boolean isAttached() {
        return this.view != null;
    }

    public SpoilerEffect2 getMediaSpoilerEffect() {
        if (this.view == null || !SpoilerEffect2.supports()) {
            return null;
        }
        SpoilerEffect2 spoilerEffect2 = this.spoilerEffect2;
        if (spoilerEffect2 != null && spoilerEffect2.destroyed) {
            this.spoilerEffect2 = null;
        }
        if (this.spoilerEffect2 == null) {
            this.spoilerEffect2 = SpoilerEffect2.getInstance(this.view);
        }
        return this.spoilerEffect2;
    }

    public static class QuoteBackground {
        int endBlockIndex;
        int level;
        int padding;
        int startBlockIndex;

        public QuoteBackground(int i, int i2, int i3, int i4) {
            this.startBlockIndex = i;
            this.endBlockIndex = i2;
            this.padding = i3;
            this.level = i4;
        }
    }

    public TLRPC.Photo getPhoto(long j) {
        TL_iv.RichMessage richMessage = this.richMessage;
        if (richMessage == null) {
            return null;
        }
        ArrayList<TLRPC.Photo> arrayList = richMessage.photos;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TLRPC.Photo photo = arrayList.get(i);
            i++;
            TLRPC.Photo photo2 = photo;
            if (photo2.id == j) {
                return photo2;
            }
        }
        return null;
    }

    public TLRPC.Document getDocument(long j) {
        TL_iv.RichMessage richMessage = this.richMessage;
        if (richMessage == null) {
            return null;
        }
        ArrayList<TLRPC.Document> arrayList = richMessage.documents;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TLRPC.Document document = arrayList.get(i);
            i++;
            TLRPC.Document document2 = document;
            if (document2.id == j) {
                return document2;
            }
        }
        return null;
    }

    public void collectMediaBlocks(List<TL_iv.PageBlock> list) {
        for (int i = 0; i < this.blocks.size(); i++) {
            RichBlock richBlock = this.blocks.get(i);
            if (richBlock instanceof RichPhotoBlock) {
                list.add(((RichPhotoBlock) richBlock).block);
            } else if (richBlock instanceof RichVideoBlock) {
                list.add(((RichVideoBlock) richBlock).block);
            } else if (richBlock instanceof RichCollageBlock) {
                ArrayList<MediaCell> arrayList = ((RichCollageBlock) richBlock).cells;
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    MediaCell mediaCell = arrayList.get(i2);
                    i2++;
                    list.add(mediaCell.pageBlock);
                }
            } else if (richBlock instanceof RichSlideshowBlock) {
                ArrayList<MediaCell> arrayList2 = ((RichSlideshowBlock) richBlock).cells;
                int size2 = arrayList2.size();
                int i3 = 0;
                while (i3 < size2) {
                    MediaCell mediaCell2 = arrayList2.get(i3);
                    i3++;
                    list.add(mediaCell2.pageBlock);
                }
            }
        }
    }

    public ImageReceiver findMediaImageReceiver(TL_iv.PageBlock pageBlock, int[] iArr) {
        ImageReceiver imageReceiver;
        TL_iv.PageBlock pageBlock2;
        ImageReceiver imageReceiver2;
        int i = 0;
        while (true) {
            TL_iv.PageBlock pageBlock3 = null;
            if (i >= this.blocks.size()) {
                return null;
            }
            RichBlock richBlock = this.blocks.get(i);
            if (richBlock instanceof RichPhotoBlock) {
                RichPhotoBlock richPhotoBlock = (RichPhotoBlock) richBlock;
                pageBlock2 = richPhotoBlock.block;
                imageReceiver2 = richPhotoBlock.imageReceiver;
            } else if (richBlock instanceof RichVideoBlock) {
                RichVideoBlock richVideoBlock = (RichVideoBlock) richBlock;
                pageBlock2 = richVideoBlock.block;
                imageReceiver2 = richVideoBlock.imageReceiver;
            } else {
                if (richBlock instanceof RichCollageBlock) {
                    ArrayList<MediaCell> arrayList = ((RichCollageBlock) richBlock).cells;
                    int size = arrayList.size();
                    int i2 = 0;
                    while (i2 < size) {
                        MediaCell mediaCell = arrayList.get(i2);
                        i2++;
                        MediaCell mediaCell2 = mediaCell;
                        if (mediaCell2.pageBlock == pageBlock) {
                            if (iArr != null && iArr.length >= 2) {
                                Rect rect = richBlock.padding;
                                iArr[0] = rect.left;
                                iArr[1] = richBlock.layoutY + rect.top;
                            }
                            return mediaCell2.imageReceiver;
                        }
                    }
                } else if (richBlock instanceof RichSlideshowBlock) {
                    RichSlideshowBlock richSlideshowBlock = (RichSlideshowBlock) richBlock;
                    int currentPage = richSlideshowBlock.getCurrentPage();
                    if (currentPage >= 0 && currentPage < richSlideshowBlock.cells.size() && richSlideshowBlock.cells.get(currentPage).pageBlock == pageBlock) {
                        if (iArr != null && iArr.length >= 2) {
                            Rect rect2 = richBlock.padding;
                            iArr[0] = rect2.left;
                            iArr[1] = richBlock.layoutY + rect2.top;
                        }
                        return richSlideshowBlock.cells.get(currentPage).imageReceiver;
                    }
                } else {
                    imageReceiver = null;
                    if (pageBlock3 == pageBlock && imageReceiver != null) {
                        if (iArr != null && iArr.length >= 2) {
                            Rect rect3 = richBlock.padding;
                            iArr[0] = rect3.left;
                            iArr[1] = richBlock.layoutY + rect3.top;
                        }
                        return imageReceiver;
                    }
                }
                i++;
            }
            TL_iv.PageBlock pageBlock4 = pageBlock2;
            imageReceiver = imageReceiver2;
            pageBlock3 = pageBlock4;
            if (pageBlock3 == pageBlock) {
                continue;
            }
            i++;
        }
    }

    private static void markListItem(RichBlock richBlock, int i, boolean z, boolean z2, boolean z3) {
        if (richBlock == null) {
            return;
        }
        richBlock.listLevel = i;
        richBlock.listOrdered = z;
        richBlock.listCheckbox = z2;
        richBlock.listChecked = z3;
    }

    private void emitCaption(TL_iv.PageCaption pageCaption, Rect rect, int i) {
        if (pageCaption == null) {
            return;
        }
        TL_iv.RichText richText = pageCaption.text;
        boolean z = false;
        boolean z2 = (richText == null || (richText instanceof TL_iv.textEmpty)) ? false : true;
        TL_iv.RichText richText2 = pageCaption.credit;
        if (richText2 != null && !(richText2 instanceof TL_iv.textEmpty)) {
            z = true;
        }
        if (z2 || z) {
            int blockFlags = setBlockFlags(i, 10);
            this.blocks.add(new RichCaptionBlock(this, rect, this.maxWidth, z2 ? formatText(pageCaption.text, blockFlags) : null, z ? formatText(pageCaption.credit, blockFlags) : null));
        }
    }

    private RichBlock emitBlock(TL_iv.PageBlock pageBlock, int i, Rect rect, int i2) {
        TLRPC.Document document;
        int length;
        String string;
        RichBlock richBlock;
        float f;
        float f2;
        int iCeil;
        RichBlock richBlock2 = null;
        if (rect.left + rect.right >= this.maxWidth) {
            return null;
        }
        if (pageBlock instanceof TL_iv.pageBlockThinking) {
            RichThinkingBlock richThinkingBlock = new RichThinkingBlock(this, new Rect(), this.maxWidth, formatText(pageBlock.text));
            this.blocks.add(richThinkingBlock);
            return richThinkingBlock;
        }
        float f3 = 4.0f;
        if (ArticleViewer.isHeadingBlock(pageBlock) || (pageBlock instanceof TL_iv.pageBlockFooter) || (pageBlock instanceof TL_iv.pageBlockParagraph)) {
            boolean zIsHeadingBlock = ArticleViewer.isHeadingBlock(pageBlock);
            CharSequence text = formatText(pageBlock.text, setBlockFlags(i2, getBlockTextFlag(pageBlock)));
            Rect rect2 = new Rect(rect);
            if (zIsHeadingBlock && !this.blocks.isEmpty()) {
                rect2.top += AndroidUtilities.dp(4.0f);
            }
            RichTextBlock richTextBlock = new RichTextBlock(this, rect2, this.maxWidth, text);
            this.blocks.add(richTextBlock);
            return richTextBlock;
        }
        if (pageBlock instanceof TL_iv.pageBlockPreformatted) {
            RichPreformattedBlock richPreformattedBlock = new RichPreformattedBlock(this, rect, this.maxWidth, (TL_iv.pageBlockPreformatted) pageBlock, (RichPreformattedBlock) findPrevBlock(pageBlock, RichPreformattedBlock.class));
            this.blocks.add(richPreformattedBlock);
            return richPreformattedBlock;
        }
        float f4 = 26.0f;
        float f5 = 8.0f;
        boolean z = false;
        if (pageBlock instanceof TL_iv.pageBlockList) {
            TL_iv.pageBlockList pageblocklist = (TL_iv.pageBlockList) pageBlock;
            int i3 = i + 1;
            this.numTextPaint.setTextSize(AndroidUtilities.dp(SharedConfig.fontSize));
            int iDp = AndroidUtilities.dp(20.0f);
            int i4 = 0;
            while (i4 < pageblocklist.items.size()) {
                if (pageblocklist.items.get(i4).checkbox) {
                    iCeil = AndroidUtilities.dp(f4);
                    richBlock = richBlock2;
                    f = f4;
                    f2 = f5;
                } else {
                    int iDp2 = AndroidUtilities.dp(f5);
                    richBlock = richBlock2;
                    TextPaint textPaint = this.numTextPaint;
                    f = f4;
                    StringBuilder sb = new StringBuilder();
                    f2 = f5;
                    sb.append("•◦▪".charAt(i % 3));
                    sb.append(_UrlKt.FRAGMENT_ENCODE_SET);
                    iCeil = iDp2 + ((int) Math.ceil(textPaint.measureText(sb.toString())));
                }
                iDp = Math.max(iDp, iCeil);
                i4++;
                richBlock2 = richBlock;
                f4 = f;
                f5 = f2;
            }
            RichBlock richBlock3 = richBlock2;
            Rect rect3 = new Rect(rect);
            if (isRtl()) {
                rect3.right += iDp;
            } else {
                rect3.left += iDp;
            }
            for (int i5 = 0; i5 < pageblocklist.items.size(); i5++) {
                TL_iv.PageListItem pageListItem = pageblocklist.items.get(i5);
                if (pageListItem instanceof TL_iv.TL_pageListItemText) {
                    TL_iv.TL_pageListItemText tL_pageListItemText = (TL_iv.TL_pageListItemText) pageListItem;
                    RichTextBlock richTextBlock2 = new RichTextBlock(this, new Rect(rect3), this.maxWidth, formatText(tL_pageListItemText.text, i2));
                    if (tL_pageListItemText.checkbox) {
                        richTextBlock2.setCheckbox(tL_pageListItemText.checked, tL_pageListItemText);
                    } else {
                        richTextBlock2.setNum("•◦▪".charAt(i % 3) + _UrlKt.FRAGMENT_ENCODE_SET);
                    }
                    markListItem(richTextBlock2, i3, false, tL_pageListItemText.checkbox, tL_pageListItemText.checked);
                    this.blocks.add(richTextBlock2);
                } else if (pageListItem instanceof TL_iv.TL_pageListItemBlocks) {
                    TL_iv.TL_pageListItemBlocks tL_pageListItemBlocks = (TL_iv.TL_pageListItemBlocks) pageListItem;
                    if (!tL_pageListItemBlocks.blocks.isEmpty()) {
                        boolean z2 = false;
                        for (int i6 = 0; i6 < tL_pageListItemBlocks.blocks.size(); i6++) {
                            RichBlock richBlockEmitBlock = emitBlock(tL_pageListItemBlocks.blocks.get(i6), i3, new Rect(rect3), i2);
                            if (richBlockEmitBlock != null && !z2) {
                                if (tL_pageListItemBlocks.checkbox) {
                                    richBlockEmitBlock.setCheckbox(tL_pageListItemBlocks.checked, tL_pageListItemBlocks);
                                } else {
                                    richBlockEmitBlock.setNum("•◦▪".charAt(i % 3) + _UrlKt.FRAGMENT_ENCODE_SET);
                                }
                                markListItem(richBlockEmitBlock, i3, false, tL_pageListItemBlocks.checkbox, tL_pageListItemBlocks.checked);
                                z2 = true;
                            }
                        }
                    }
                }
            }
            return richBlock3;
        }
        int i7 = 1;
        if (pageBlock instanceof TL_iv.pageBlockOrderedList) {
            TL_iv.pageBlockOrderedList pageblockorderedlist = (TL_iv.pageBlockOrderedList) pageBlock;
            int i8 = i + 1;
            this.numTextPaint.setTextSize(AndroidUtilities.dp(SharedConfig.fontSize));
            int iDp3 = AndroidUtilities.dp(20.0f);
            int i9 = 0;
            while (i9 < pageblockorderedlist.items.size()) {
                TL_iv.PageListOrderedItem pageListOrderedItem = pageblockorderedlist.items.get(i9);
                if (!TextUtils.isEmpty(pageListOrderedItem.num)) {
                    string = pageListOrderedItem.num;
                    if (string != null && !string.endsWith(".")) {
                        string = string.concat(".");
                    }
                } else if (TLObject.hasFlag(pageListOrderedItem.flags, 8)) {
                    string = pageListOrderedItem.value + ".";
                } else if (TLObject.hasFlag(pageblockorderedlist.flags, i7)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(pageblockorderedlist.start + (pageblockorderedlist.reversed ? -i9 : i9));
                    sb2.append(".");
                    string = sb2.toString();
                } else {
                    string = (i9 + 1) + ".";
                }
                int iDp4 = AndroidUtilities.dp(8.0f) + ((int) Math.ceil(this.numTextPaint.measureText(string)));
                if (pageListOrderedItem.checkbox) {
                    iDp4 += AndroidUtilities.dp(26.0f);
                }
                iDp3 = Math.max(iDp3, iDp4);
                i9++;
                i7 = 1;
            }
            Rect rect4 = new Rect(rect);
            if (isRtl()) {
                rect4.right += iDp3;
            } else {
                rect4.left += iDp3;
            }
            for (int i10 = 0; i10 < pageblockorderedlist.items.size(); i10++) {
                TL_iv.PageListOrderedItem pageListOrderedItem2 = pageblockorderedlist.items.get(i10);
                if (pageListOrderedItem2 instanceof TL_iv.TL_pageListOrderedItemText) {
                    TL_iv.TL_pageListOrderedItemText tL_pageListOrderedItemText = (TL_iv.TL_pageListOrderedItemText) pageListOrderedItem2;
                    RichTextBlock richTextBlock3 = new RichTextBlock(this, new Rect(rect4), this.maxWidth, formatText(tL_pageListOrderedItemText.text, i2));
                    if (!TextUtils.isEmpty(tL_pageListOrderedItemText.num)) {
                        String strConcat = tL_pageListOrderedItemText.num;
                        if (strConcat != null && !strConcat.endsWith(".")) {
                            strConcat = strConcat.concat(".");
                        }
                        richTextBlock3.setNum(strConcat);
                    } else if (TLObject.hasFlag(tL_pageListOrderedItemText.flags, 8)) {
                        richTextBlock3.setNum(tL_pageListOrderedItemText.value + ".");
                    } else if (TLObject.hasFlag(pageblockorderedlist.flags, 1)) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(pageblockorderedlist.start + (pageblockorderedlist.reversed ? -i10 : i10));
                        sb3.append(".");
                        richTextBlock3.setNum(sb3.toString());
                    } else {
                        richTextBlock3.setNum((i10 + 1) + ".");
                    }
                    if (tL_pageListOrderedItemText.checkbox) {
                        richTextBlock3.setCheckbox(tL_pageListOrderedItemText.checked, tL_pageListOrderedItemText);
                    }
                    markListItem(richTextBlock3, i8, true, tL_pageListOrderedItemText.checkbox, tL_pageListOrderedItemText.checked);
                    this.blocks.add(richTextBlock3);
                } else if (pageListOrderedItem2 instanceof TL_iv.TL_pageListOrderedItemBlocks) {
                    TL_iv.TL_pageListOrderedItemBlocks tL_pageListOrderedItemBlocks = (TL_iv.TL_pageListOrderedItemBlocks) pageListOrderedItem2;
                    if (!tL_pageListOrderedItemBlocks.blocks.isEmpty()) {
                        boolean z3 = false;
                        for (int i11 = 0; i11 < tL_pageListOrderedItemBlocks.blocks.size(); i11++) {
                            RichBlock richBlockEmitBlock2 = emitBlock(tL_pageListOrderedItemBlocks.blocks.get(i11), i8, new Rect(rect4), i2);
                            if (richBlockEmitBlock2 != null && !z3) {
                                if (tL_pageListOrderedItemBlocks.checkbox) {
                                    richBlockEmitBlock2.setCheckbox(tL_pageListOrderedItemBlocks.checked, tL_pageListOrderedItemBlocks);
                                }
                                if (!TextUtils.isEmpty(tL_pageListOrderedItemBlocks.num)) {
                                    String strConcat2 = tL_pageListOrderedItemBlocks.num;
                                    if (strConcat2 != null && !strConcat2.endsWith(".")) {
                                        strConcat2 = strConcat2.concat(".");
                                    }
                                    richBlockEmitBlock2.setNum(strConcat2);
                                } else if (TLObject.hasFlag(tL_pageListOrderedItemBlocks.flags, 8)) {
                                    richBlockEmitBlock2.setNum(tL_pageListOrderedItemBlocks.value + ".");
                                } else if (TLObject.hasFlag(pageblockorderedlist.flags, 1)) {
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append(pageblockorderedlist.start + (pageblockorderedlist.reversed ? -i10 : i10));
                                    sb4.append(".");
                                    richBlockEmitBlock2.setNum(sb4.toString());
                                } else {
                                    richBlockEmitBlock2.setNum((i10 + 1) + ".");
                                }
                                if (tL_pageListOrderedItemBlocks.checkbox) {
                                    richBlockEmitBlock2.setCheckbox(tL_pageListOrderedItemBlocks.checked, tL_pageListOrderedItemBlocks);
                                }
                                markListItem(richBlockEmitBlock2, i8, true, tL_pageListOrderedItemBlocks.checkbox, tL_pageListOrderedItemBlocks.checked);
                                z3 = true;
                            }
                        }
                    }
                }
            }
            return null;
        }
        float f6 = 12.0f;
        if (pageBlock instanceof TL_iv.pageBlockBlockquote) {
            int i12 = rect.left;
            int size = this.blocks.size();
            TL_iv.pageBlockBlockquote pageblockblockquote = (TL_iv.pageBlockBlockquote) pageBlock;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(formatText(pageBlock.text, setBlockFlags(i2, getBlockTextFlag(pageBlock))));
            TL_iv.RichText richText = pageblockblockquote.caption;
            if (richText == null || TextUtils.isEmpty(getString(richText))) {
                length = -1;
            } else {
                spannableStringBuilder.append((CharSequence) "\n");
                length = spannableStringBuilder.length();
                spannableStringBuilder.append(formatText(pageblockblockquote.caption, setBlockFlags(i2, 11)));
            }
            RichTextBlock richTextBlock4 = new RichTextBlock(this, new Rect(rect.left + AndroidUtilities.dp(12.0f), rect.top + AndroidUtilities.dp(4.0f), rect.right + AndroidUtilities.dp(12.0f), rect.bottom + AndroidUtilities.dp(4.0f)), this.maxWidth, spannableStringBuilder);
            richTextBlock4.quoteAuthorStart = length;
            this.blocks.add(richTextBlock4);
            this.quotes.add(new QuoteBackground(size, this.blocks.size() - 1, i12, i));
            return richTextBlock4;
        }
        if (pageBlock instanceof TL_iv.pageBlockBlockquoteBlocks) {
            int i13 = rect.left;
            int i14 = i + 1;
            int size2 = this.blocks.size();
            TL_iv.pageBlockBlockquoteBlocks pageblockblockquoteblocks = (TL_iv.pageBlockBlockquoteBlocks) pageBlock;
            TL_iv.RichText richText2 = pageblockblockquoteblocks.caption;
            boolean z4 = (richText2 == null || TextUtils.isEmpty(getString(richText2))) ? false : true;
            int i15 = 0;
            while (i15 < pageblockblockquoteblocks.blocks.size()) {
                float f7 = f3;
                float f8 = f6;
                emitBlock(pageblockblockquoteblocks.blocks.get(i15), i14, new Rect(rect.left + AndroidUtilities.dp(f8), rect.top + (i15 == 0 ? true : z ? AndroidUtilities.dp(f7) : 0), rect.right + AndroidUtilities.dp(f8), rect.bottom + ((!(i15 == pageblockblockquoteblocks.blocks.size() - 1 ? true : z) || z4) ? 0 : AndroidUtilities.dp(f7))), setBlockFlags(i2, 9));
                i15++;
                f3 = f7;
                f6 = f8;
                z = false;
            }
            float f9 = f3;
            float f10 = f6;
            if (z4) {
                RichTextBlock richTextBlock5 = new RichTextBlock(this, new Rect(rect.left + AndroidUtilities.dp(f10), rect.top, rect.right + AndroidUtilities.dp(f10), rect.bottom + AndroidUtilities.dp(f9)), this.maxWidth, new SpannableStringBuilder(formatText(pageblockblockquoteblocks.caption, setBlockFlags(i2, 11))));
                richTextBlock5.quoteAuthorStart = 0;
                this.blocks.add(richTextBlock5);
            }
            this.quotes.add(new QuoteBackground(size2, this.blocks.size() - 1, i13, i));
            return null;
        }
        if (pageBlock instanceof TL_iv.pageBlockPullquote) {
            TL_iv.pageBlockPullquote pageblockpullquote = (TL_iv.pageBlockPullquote) pageBlock;
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(formatText(pageBlock.text, setBlockFlags(i2, getBlockTextFlag(pageBlock))));
            TL_iv.RichText richText3 = pageblockpullquote.caption;
            if (richText3 != null && !TextUtils.isEmpty(getString(richText3))) {
                spannableStringBuilder2.append((CharSequence) "\n");
                spannableStringBuilder2.append(formatText(pageblockpullquote.caption, setBlockFlags(i2, 11)));
            }
            RichTextBlock richTextBlock6 = new RichTextBlock(this, new Rect(rect.left + AndroidUtilities.dp(30.0f), rect.top + AndroidUtilities.dp(8.0f), rect.right + AndroidUtilities.dp(30.0f), rect.bottom + AndroidUtilities.dp(8.0f)), this.maxWidth, spannableStringBuilder2, Layout.Alignment.ALIGN_CENTER);
            richTextBlock6.pullquote = true;
            this.blocks.add(richTextBlock6);
            return richTextBlock6;
        }
        if (pageBlock instanceof TL_iv.pageBlockTable) {
            RichTableBlock richTableBlock = new RichTableBlock(this, rect, this.maxWidth, (TL_iv.pageBlockTable) pageBlock);
            this.blocks.add(richTableBlock);
            return richTableBlock;
        }
        if (pageBlock instanceof TL_iv.pageBlockMath) {
            RichMathBlock richMathBlock = new RichMathBlock(this, rect, this.maxWidth, (TL_iv.pageBlockMath) pageBlock);
            this.blocks.add(richMathBlock);
            return richMathBlock;
        }
        if (pageBlock instanceof TL_iv.pageBlockDivider) {
            RichDividerBlock richDividerBlock = new RichDividerBlock(this, rect, this.maxWidth);
            this.blocks.add(richDividerBlock);
            return richDividerBlock;
        }
        if (pageBlock instanceof TL_iv.pageBlockPhoto) {
            TL_iv.pageBlockPhoto pageblockphoto = (TL_iv.pageBlockPhoto) pageBlock;
            RichPhotoBlock richPhotoBlock = new RichPhotoBlock(this, rect, this.maxWidth, pageblockphoto, !this.hasNameOffset && this.blocks.isEmpty());
            this.blocks.add(richPhotoBlock);
            emitCaption(pageblockphoto.caption, rect, i2);
            return richPhotoBlock;
        }
        if (pageBlock instanceof TL_iv.pageBlockVideo) {
            TL_iv.pageBlockVideo pageblockvideo = (TL_iv.pageBlockVideo) pageBlock;
            RichVideoBlock richVideoBlock = new RichVideoBlock(this, rect, this.maxWidth, pageblockvideo, !this.hasNameOffset && this.blocks.isEmpty());
            this.blocks.add(richVideoBlock);
            emitCaption(pageblockvideo.caption, rect, i2);
            return richVideoBlock;
        }
        if (pageBlock instanceof TL_iv.pageBlockCollage) {
            TL_iv.pageBlockCollage pageblockcollage = (TL_iv.pageBlockCollage) pageBlock;
            RichCollageBlock richCollageBlock = new RichCollageBlock(this, rect, this.maxWidth, pageblockcollage, !this.hasNameOffset && this.blocks.isEmpty());
            this.blocks.add(richCollageBlock);
            emitCaption(pageblockcollage.caption, rect, i2);
            return richCollageBlock;
        }
        if (pageBlock instanceof TL_iv.pageBlockSlideshow) {
            TL_iv.pageBlockSlideshow pageblockslideshow = (TL_iv.pageBlockSlideshow) pageBlock;
            RichSlideshowBlock richSlideshowBlock = new RichSlideshowBlock(this, rect, this.maxWidth, pageblockslideshow, !this.hasNameOffset && this.blocks.isEmpty());
            this.blocks.add(richSlideshowBlock);
            emitCaption(pageblockslideshow.caption, rect, i2);
            return richSlideshowBlock;
        }
        if (pageBlock instanceof TL_iv.pageBlockMap) {
            TL_iv.pageBlockMap pageblockmap = (TL_iv.pageBlockMap) pageBlock;
            RichMapBlock richMapBlock = new RichMapBlock(this, rect, this.maxWidth, pageblockmap);
            this.blocks.add(richMapBlock);
            emitCaption(pageblockmap.caption, rect, i2);
            return richMapBlock;
        }
        if (pageBlock instanceof TL_iv.pageBlockAudio) {
            TL_iv.pageBlockAudio pageblockaudio = (TL_iv.pageBlockAudio) pageBlock;
            if (this.audioBlocks.get(pageblockaudio) == null && (document = getDocument(pageblockaudio.audio_id)) != null) {
                TLRPC.TL_message tL_message = new TLRPC.TL_message();
                tL_message.out = true;
                int i16 = -Long.valueOf(pageblockaudio.audio_id).hashCode();
                pageblockaudio.mid = i16;
                tL_message.id = i16;
                tL_message.peer_id = new TLRPC.TL_peerUser();
                TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                tL_message.from_id = tL_peerUser;
                TLRPC.Peer peer = tL_message.peer_id;
                long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
                peer.user_id = clientUserId;
                tL_peerUser.user_id = clientUserId;
                tL_message.date = (int) (System.currentTimeMillis() / 1000);
                tL_message.message = _UrlKt.FRAGMENT_ENCODE_SET;
                TLRPC.TL_messageMediaDocument tL_messageMediaDocument = new TLRPC.TL_messageMediaDocument();
                tL_message.media = tL_messageMediaDocument;
                tL_messageMediaDocument.flags |= 3;
                tL_messageMediaDocument.document = document;
                tL_message.flags |= 768;
                MessageObject messageObject = new MessageObject(this.currentAccount, tL_message, false, true);
                this.audioMessages.add(messageObject);
                this.audioBlocks.put(pageblockaudio, messageObject);
            }
            RichAudioBlock richAudioBlock = new RichAudioBlock(this, rect, this.maxWidth, pageblockaudio);
            this.blocks.add(richAudioBlock);
            emitCaption(pageblockaudio.caption, rect, i2);
            return richAudioBlock;
        }
        if (pageBlock instanceof TL_iv.pageBlockCover) {
            return emitBlock(((TL_iv.pageBlockCover) pageBlock).cover, i, rect, i2);
        }
        if (pageBlock instanceof TL_iv.pageBlockAnchor) {
            String str = ((TL_iv.pageBlockAnchor) pageBlock).name;
            if (str != null) {
                this.anchors.put(str.toLowerCase(), Integer.valueOf(this.blocks.size()));
            }
            return null;
        }
        if (!(pageBlock instanceof TL_iv.pageBlockUnsupported) && (pageBlock instanceof TL_iv.pageBlockDetails)) {
            TL_iv.pageBlockDetails pageblockdetails = (TL_iv.pageBlockDetails) pageBlock;
            RichDetailsBlock richDetailsBlock = new RichDetailsBlock(this, rect, this.maxWidth, pageblockdetails, formatText(pageblockdetails.title, setBlockFlags(i2, 16)));
            this.blocks.add(richDetailsBlock);
            for (int i17 = 0; i17 < pageblockdetails.blocks.size(); i17++) {
                emitBlock(pageblockdetails.blocks.get(i17), i + 1, rect, i2);
            }
            for (int size3 = this.blocks.size(); size3 < this.blocks.size(); size3++) {
                RichBlock richBlock4 = this.blocks.get(size3);
                if (richBlock4.parentDetails == null) {
                    richBlock4.parentDetails = richDetailsBlock;
                }
            }
            return richDetailsBlock;
        }
        if (!BuildVars.DEBUG_PRIVATE_VERSION) {
            return null;
        }
        RichTextBlock richTextBlock7 = new RichTextBlock(this, rect, this.maxWidth, "unsupported block " + pageBlock);
        this.blocks.add(richTextBlock7);
        return richTextBlock7;
    }

    public int getMinWidth() {
        return this.minWidth;
    }

    public int getHeight() {
        if (!this.isPart || this.height <= AndroidUtilities.dp(900.0f)) {
            return this.height + (this.isPart ? AndroidUtilities.dp(50.0f) : 0);
        }
        return AndroidUtilities.dp(950.0f);
    }

    public int getLastLineWidth() {
        if (this.blocks.isEmpty() || this.isPart || isRtl()) {
            return getMinWidth();
        }
        if (!this.quotes.isEmpty()) {
            ArrayList<QuoteBackground> arrayList = this.quotes;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                QuoteBackground quoteBackground = arrayList.get(i);
                i++;
                if (quoteBackground.endBlockIndex >= this.blocks.size() - 1) {
                    return getMinWidth();
                }
            }
        }
        RichBlock richBlock = this.blocks.get(r0.size() - 1);
        return richBlock.forcesTimeToNewLine() ? getMinWidth() : richBlock.getLastLineWidth();
    }

    public boolean forceNewLineForTime() {
        if (this.blocks.isEmpty() || this.isPart || isRtl()) {
            return true;
        }
        if (!this.quotes.isEmpty()) {
            ArrayList<QuoteBackground> arrayList = this.quotes;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                QuoteBackground quoteBackground = arrayList.get(i);
                i++;
                if (quoteBackground.endBlockIndex >= this.blocks.size() - 1) {
                    return true;
                }
            }
        }
        ArrayList<RichBlock> arrayList2 = this.blocks;
        return arrayList2.get(arrayList2.size() - 1).forcesTimeToNewLine();
    }

    public void setTypingAnimator(MultiLayoutTypingAnimator multiLayoutTypingAnimator) {
        this.typingAnimator = multiLayoutTypingAnimator;
        for (int i = 0; i < this.blocks.size(); i++) {
            this.blocks.get(i).typingAnimator = multiLayoutTypingAnimator;
            this.blocks.get(i);
            this.blocks.get(i).getClass();
        }
    }

    public List<MultiLayoutTypingAnimator.Block> getAnimatorBlocks() {
        ArrayList arrayList = new ArrayList(this.blocks.size());
        for (int i = 0; i < this.blocks.size(); i++) {
            this.blocks.get(i).collectAnimatorBlocks(arrayList);
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            ((MultiLayoutTypingAnimator.Block) arrayList.get(i2)).getClass();
        }
        return arrayList;
    }

    private void drawBackground(Canvas canvas) {
        if (!this.quotes.isEmpty()) {
            ArrayList<QuoteBackground> arrayList = this.quotes;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                int i2 = i + 1;
                QuoteBackground quoteBackground = arrayList.get(i);
                int blockTop = getBlockTop(quoteBackground.startBlockIndex);
                int blockBottom = getBlockBottom(quoteBackground.endBlockIndex);
                int iDp = quoteBackground.level * AndroidUtilities.dp(3.0f);
                if (blockBottom - blockTop > iDp * 2) {
                    blockTop += iDp;
                    blockBottom -= iDp;
                }
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(quoteBackground.padding, blockTop, getMinWidth() - AndroidUtilities.dp(quoteBackground.level * 12), blockBottom);
                float fFloor = (float) Math.floor(SharedConfig.bubbleRadius / 3.0f);
                this.quoteLine.drawBackground(canvas, rectF, fFloor, fFloor, fFloor, 1.0f, false, false);
                this.quoteLine.drawLine(canvas, rectF);
                i = i2;
            }
        }
        for (int i3 = 0; i3 < this.blocks.size(); i3++) {
            RichBlock richBlock = this.blocks.get(i3);
            if (richBlock instanceof RichTextBlock) {
                RichTextBlock richTextBlock = (RichTextBlock) richBlock;
                if (richTextBlock.pullquote && richBlock.isVisible()) {
                    drawPullquoteBackground(canvas, richTextBlock, i3);
                }
            }
        }
    }

    private void drawPullquoteBackground(Canvas canvas, RichTextBlock richTextBlock, int i) {
        int minWidth = richTextBlock.text.getMinWidth();
        if (minWidth <= 0) {
            return;
        }
        float minWidth2 = ((getMinWidth() + this.padRight) - this.padLeft) / 2.0f;
        float f = minWidth / 2.0f;
        float fDp = (minWidth2 - f) - AndroidUtilities.dp(30.0f);
        float fDp2 = minWidth2 + f + AndroidUtilities.dp(30.0f);
        int blockTop = getBlockTop(i);
        int height = richTextBlock.getHeight() + blockTop;
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(fDp, blockTop, fDp2, height);
        float fFloor = (float) Math.floor(SharedConfig.bubbleRadius / 2.0f);
        this.quoteLine.drawBackground(canvas, rectF, fFloor, fFloor, fFloor, 1.0f, false, false);
        if (this.pullquoteIcon == null) {
            this.pullquoteIcon = ContextCompat.getDrawable(ApplicationLoader.applicationContext, C2573R.drawable.mini_quote).mutate();
        }
        this.pullquoteIcon.setColorFilter(this.quoteLine.getColor(), PorterDuff.Mode.SRC_IN);
        int intrinsicWidth = this.pullquoteIcon.getIntrinsicWidth();
        int intrinsicHeight = this.pullquoteIcon.getIntrinsicHeight();
        canvas.save();
        int i2 = (int) fDp;
        this.pullquoteIcon.setBounds(AndroidUtilities.dp(8.0f) + i2, AndroidUtilities.dp(7.0f) + blockTop, i2 + AndroidUtilities.dp(8.0f) + intrinsicWidth, blockTop + AndroidUtilities.dp(7.0f) + intrinsicHeight);
        canvas.scale(-1.0f, -1.0f, this.pullquoteIcon.getBounds().centerX(), this.pullquoteIcon.getBounds().centerY());
        this.pullquoteIcon.draw(canvas);
        canvas.restore();
        canvas.save();
        int i3 = (int) fDp2;
        this.pullquoteIcon.setBounds((i3 - AndroidUtilities.dp(8.0f)) - intrinsicWidth, (height - AndroidUtilities.dp(7.0f)) - intrinsicHeight, i3 - AndroidUtilities.dp(8.0f), height - AndroidUtilities.dp(7.0f));
        canvas.scale(1.0f, -1.0f, this.pullquoteIcon.getBounds().centerX(), this.pullquoteIcon.getBounds().centerY());
        this.pullquoteIcon.draw(canvas);
        canvas.restore();
    }

    private int getBlockTop(int i) {
        boolean z = false;
        int height = 0;
        for (int i2 = 0; i2 < this.blocks.size(); i2++) {
            RichBlock richBlock = this.blocks.get(i2);
            boolean zIsVisible = richBlock.isVisible();
            if (zIsVisible && z) {
                height += getGap();
            }
            if (i2 == i) {
                return height;
            }
            if (zIsVisible) {
                height += richBlock.getHeight();
                z = true;
            }
        }
        return this.height;
    }

    private int getBlockBottom(int i) {
        boolean z = false;
        int height = 0;
        for (int i2 = 0; i2 < this.blocks.size(); i2++) {
            RichBlock richBlock = this.blocks.get(i2);
            boolean zIsVisible = richBlock.isVisible();
            if (zIsVisible && z) {
                height += getGap();
            }
            if (zIsVisible) {
                height += richBlock.getHeight();
                if (i2 == i && richBlock.padding.bottom > AndroidUtilities.dp(4.0f)) {
                    height -= richBlock.padding.bottom - AndroidUtilities.dp(4.0f);
                }
            }
            if (i2 == i) {
                return height;
            }
            if (zIsVisible) {
                z = true;
            }
        }
        return this.height;
    }

    private void drawInternal(Canvas canvas, ChatMessageCell.TransitionParams transitionParams) {
        float f;
        float f2;
        ChatMessageCell chatMessageCell = this.cell;
        boolean z = chatMessageCell != null && chatMessageCell.visibleHeight > 0;
        if (z) {
            float f3 = chatMessageCell.childPosition - chatMessageCell.textY;
            f2 = chatMessageCell.visibleHeight + f3;
            f = f3;
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        drawInternal(canvas, transitionParams, z, f, f2);
    }

    private void updateTranslationLoading() {
        View view;
        boolean zIsTranslating = isTranslating();
        if (!zIsTranslating && this.translationLoadingFloat == null) {
            this.translationLoadingValue = 0.0f;
            return;
        }
        if (this.translationLoadingFloat == null) {
            this.translationLoadingFloat = new AnimatedFloat(0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
        }
        float f = this.translationLoadingFloat.set(zIsTranslating ? 1.0f : 0.0f);
        this.translationLoadingValue = f;
        if (f <= 0.0f || (view = this.view) == null) {
            return;
        }
        view.invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void drawInternal(Canvas canvas, ChatMessageCell.TransitionParams transitionParams, boolean z, float f, float f2) {
        float f3;
        RichDetailsBlock richDetailsBlock;
        drawBackground(canvas);
        updateTranslationLoading();
        float f4 = 1.0f;
        float fMax = (transitionParams == null || !this.detailsAnimating) ? 1.0f : Math.max(0.0f, Math.min(1.0f, transitionParams.animateChangeProgress));
        if (fMax >= 1.0f) {
            this.detailsAnimating = false;
        }
        boolean z2 = this.detailsAnimating && fMax < 1.0f;
        if (z2) {
            computeDetailsClips(fMax);
        }
        int i = 0;
        while (i < this.blocks.size()) {
            RichBlock richBlock = this.blocks.get(i);
            if (richBlock.currVisible || richBlock.prevVisible) {
                float fLerp = AndroidUtilities.lerp(richBlock.prevY, richBlock.currY, fMax);
                float fLerp2 = AndroidUtilities.lerp(richBlock.prevVisible ? f4 : 0.0f, richBlock.currVisible ? f4 : 0.0f, fMax);
                if (fLerp2 <= 0.0f) {
                    f3 = f4;
                } else {
                    int height = richBlock.getHeight();
                    if (!z || (height + fLerp > f && fLerp < f2)) {
                        canvas.save();
                        if (!z2 || (richDetailsBlock = richBlock.parentDetails) == null) {
                            f3 = f4;
                        } else {
                            float fMax2 = -3.4028235E38f;
                            float fMin = Float.MAX_VALUE;
                            for (richDetailsBlock = richBlock.parentDetails; richDetailsBlock != null; richDetailsBlock = richDetailsBlock.parentDetails) {
                                fMax2 = Math.max(fMax2, richDetailsBlock.animClipTop);
                                fMin = Math.min(fMin, richDetailsBlock.animClipBottom);
                            }
                            if (fMin <= fMax2) {
                                canvas.restore();
                                f3 = f4;
                            } else {
                                f3 = f4;
                                canvas.clipRect(-this.padLeft, fMax2, getMinWidth() + this.padRight, fMin);
                            }
                        }
                        canvas.translate(0.0f, fLerp);
                        if (fLerp2 < f3) {
                            int iSaveLayerAlpha = canvas.saveLayerAlpha(-this.padLeft, 0.0f, getMinWidth() + this.padRight, height, (int) (fLerp2 * 255.0f), 31);
                            richBlock.drawWithTyping(canvas);
                            canvas.restoreToCount(iSaveLayerAlpha);
                        } else {
                            richBlock.drawWithTyping(canvas);
                        }
                        canvas.restore();
                    }
                }
            }
            i++;
            f4 = f3;
        }
        if (fMax >= 1.0f) {
            snapshotForDetailsAnimation();
        }
    }

    private void computeDetailsClips(float f) {
        float fLerp;
        for (int i = 0; i < this.blocks.size(); i++) {
            RichBlock richBlock = this.blocks.get(i);
            if (richBlock instanceof RichDetailsBlock) {
                RichDetailsBlock richDetailsBlock = (RichDetailsBlock) richBlock;
                richDetailsBlock.animClipTop = AndroidUtilities.lerp(richDetailsBlock.prevY, richDetailsBlock.currY, f) + richDetailsBlock.getHeight();
                int i2 = i + 1;
                while (true) {
                    if (i2 >= this.blocks.size()) {
                        fLerp = Float.MAX_VALUE;
                        break;
                    } else {
                        if (!isDescendantOf(this.blocks.get(i2), richDetailsBlock)) {
                            fLerp = AndroidUtilities.lerp(this.blocks.get(i2).prevY, this.blocks.get(i2).currY, f);
                            break;
                        }
                        i2++;
                    }
                }
                richDetailsBlock.animClipBottom = fLerp;
            }
        }
    }

    private static boolean isDescendantOf(RichBlock richBlock, RichDetailsBlock richDetailsBlock) {
        do {
            richBlock = richBlock.parentDetails;
            if (richBlock == null) {
                return false;
            }
        } while (richBlock != richDetailsBlock);
        return true;
    }

    public void draw(Canvas canvas, int i, int i2, ChatMessageCell.TransitionParams transitionParams) {
        Canvas canvas2;
        this.padLeft = i;
        this.padRight = i2;
        this.textPaint.linkColor = getThemedColor(isOut() ? Theme.key_chat_messageLinkOut : Theme.key_chat_messageLinkIn);
        boolean z = this.isPart;
        int iMin = Math.min(this.height, AndroidUtilities.dp(900.0f));
        if (z) {
            canvas2 = canvas;
            canvas2.saveLayerAlpha(-i, 0.0f, getMinWidth() + i2, iMin, 255, 31);
        } else {
            canvas2 = canvas;
        }
        drawInternal(canvas2, transitionParams);
        if (z) {
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(-i, iMin - AndroidUtilities.dp(32.0f), getMinWidth() + i2, iMin);
            this.clip.draw(canvas2, rectF, 3, 1.0f);
            canvas2.restore();
            drawShowMoreButton(canvas2, iMin);
        }
    }

    public void draw(Canvas canvas, int i, int i2, ChatMessageCell.TransitionParams transitionParams, float f, float f2) {
        this.padLeft = i;
        this.padRight = i2;
        this.textPaint.linkColor = getThemedColor(isOut() ? Theme.key_chat_messageLinkOut : Theme.key_chat_messageLinkIn);
        drawInternal(canvas, transitionParams, f2 > f, f, f2);
    }

    private void drawShowMoreButton(Canvas canvas, int i) {
        ChatMessageCell.ChatMessageCellDelegate chatMessageCellDelegate;
        int themedColor = getThemedColor(isOut() ? Theme.key_chat_outPreviewInstantText : Theme.key_chat_inPreviewInstantText);
        if (this.showMoreText == null) {
            this.showMoreText = new org.telegram.ui.Components.Text(LocaleController.getString(C2573R.string.ShowMore), 16.0f, AndroidUtilities.bold());
        }
        ButtonBounce buttonBounce = this.showMoreBounce;
        if (buttonBounce == null) {
            this.showMoreBounce = new ButtonBounce(this.view, 1.5f, 2.0f);
        } else {
            View view = buttonBounce.getView();
            View view2 = this.view;
            if (view != view2) {
                this.showMoreBounce.setView(view2);
            }
        }
        if (this.showMorePaint == null) {
            this.showMorePaint = new Paint(1);
        }
        this.showMorePaint.setColor(Theme.multAlpha(themedColor, 0.1f));
        float fDp = AndroidUtilities.dp(42.0f);
        float currentWidth = this.showMoreText.getCurrentWidth();
        float minWidth = ((getMinWidth() + this.padLeft) + this.padRight) - AndroidUtilities.dp(24.0f);
        int minWidth2 = getMinWidth();
        float f = (((minWidth2 + r8) + this.padRight) / 2.0f) - this.padLeft;
        float fDp2 = i + AndroidUtilities.dp(4.0f);
        float f2 = minWidth / 2.0f;
        this.showMoreRect.set(f - f2, fDp2, f + f2, fDp + fDp2);
        ChatMessageCell chatMessageCell = this.cell;
        boolean z = (chatMessageCell == null || (chatMessageCellDelegate = this.delegate) == null || !chatMessageCellDelegate.isProgressLoading(chatMessageCell, 7)) ? false : true;
        LoadingDrawable loadingDrawable = this.showMoreLoading;
        if (loadingDrawable != null && !z && !loadingDrawable.isDisappeared() && !this.showMoreLoading.isDisappearing()) {
            this.showMoreLoading.disappear();
        }
        LoadingDrawable loadingDrawable2 = this.showMoreLoading;
        if (loadingDrawable2 == null && z) {
            LoadingDrawable loadingDrawable3 = new LoadingDrawable();
            this.showMoreLoading = loadingDrawable3;
            loadingDrawable3.strokePaint.setStrokeWidth(AndroidUtilities.dp(1.25f));
            this.showMoreLoading.setAppearByGradient(true);
        } else if (loadingDrawable2 != null && z && (loadingDrawable2.isDisappeared() || this.showMoreLoading.isDisappearing())) {
            this.showMoreLoading.reset();
            this.showMoreLoading.resetDisappear();
        }
        LoadingDrawable loadingDrawable4 = this.showMoreLoading;
        if (loadingDrawable4 != null) {
            loadingDrawable4.setColors(Theme.multAlpha(themedColor, 0.1f), Theme.multAlpha(themedColor, 0.3f), Theme.multAlpha(themedColor, 0.3f), Theme.multAlpha(themedColor, 1.2f));
        }
        float scale = this.showMoreBounce.getScale(0.075f);
        boolean z2 = scale != 1.0f;
        if (z2) {
            canvas.save();
            canvas.scale(scale, scale, this.showMoreRect.centerX(), this.showMoreRect.centerY());
        }
        canvas.drawRoundRect(this.showMoreRect, AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), this.showMorePaint);
        LoadingDrawable loadingDrawable5 = this.showMoreLoading;
        if (loadingDrawable5 != null && !loadingDrawable5.isDisappeared()) {
            this.showMoreLoading.setBounds(this.showMoreRect);
            this.showMoreLoading.setRadiiDp(8.0f);
            this.showMoreLoading.draw(canvas);
            View view3 = this.view;
            if (view3 != null) {
                view3.invalidate();
            }
        }
        this.showMoreText.draw(canvas, this.showMoreRect.centerX() - (currentWidth / 2.0f), this.showMoreRect.centerY(), themedColor, 1.0f);
        if (z2) {
            canvas.restore();
        }
    }

    public boolean isOverlayActive() {
        MultiLayoutTypingAnimator multiLayoutTypingAnimator = this.typingAnimator;
        return multiLayoutTypingAnimator == null || !multiLayoutTypingAnimator.isRunning();
    }

    public boolean hasOverlay() {
        AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans;
        if (!isOverlayActive()) {
            return false;
        }
        for (int i = 0; i < this.textBlocks.size(); i++) {
            TextSelectionHelper.TextLayoutBlock textLayoutBlock = this.textBlocks.get(i);
            if ((textLayoutBlock instanceof Text) && (emojiGroupedSpans = ((Text) textLayoutBlock).animatedEmojiStack) != null && !emojiGroupedSpans.holders.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    public boolean drawOverlay(Canvas canvas) {
        return drawOverlay(canvas, null);
    }

    public boolean drawOverlay(Canvas canvas, ColorFilter colorFilter) {
        if (!isOverlayActive()) {
            return false;
        }
        boolean z = false;
        for (int i = 0; i < this.blocks.size(); i++) {
            RichBlock richBlock = this.blocks.get(i);
            if (richBlock.currVisible) {
                canvas.save();
                canvas.translate(0.0f, richBlock.currY);
                if (richBlock.drawOverlay(canvas, colorFilter)) {
                    z = true;
                }
                canvas.restore();
            }
        }
        return z;
    }

    public void updateAnimatedEmojis(int i) {
        for (int i2 = 0; i2 < this.textBlocks.size(); i2++) {
            TextSelectionHelper.TextLayoutBlock textLayoutBlock = this.textBlocks.get(i2);
            if (textLayoutBlock instanceof Text) {
                ((Text) textLayoutBlock).refreshAnimatedEmoji(i);
            }
        }
    }

    public boolean isHorizontallyDragging() {
        RichBlock richBlock = this.pressedBlock;
        return richBlock != null && richBlock.isHorizontallyDragging();
    }

    public boolean canScrollHorizontallyAt(float f) {
        boolean z = false;
        int gap = 0;
        for (int i = 0; i < this.blocks.size(); i++) {
            RichBlock richBlock = this.blocks.get(i);
            if (richBlock.isVisible()) {
                if (z) {
                    gap += getGap();
                }
                int height = richBlock.getHeight();
                if (f >= gap && f < gap + height) {
                    return richBlock.canDragHorizontally();
                }
                gap += height;
                z = true;
            }
        }
        return false;
    }

    public boolean isPressingLink() {
        RichBlock richBlock = this.pressedBlock;
        return richBlock != null && richBlock.isPressingLink();
    }

    public ChatMessageCell getCell() {
        return this.cell;
    }

    public ChatMessageCell.ChatMessageCellDelegate getDelegate() {
        return this.delegate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleAnchorClick(String str) {
        String strSubstring;
        if (str == null || !str.startsWith("#")) {
            return false;
        }
        try {
            strSubstring = URLDecoder.decode(str.substring(1), "UTF-8");
        } catch (Exception unused) {
            strSubstring = str.substring(1);
        }
        if (TextUtils.isEmpty(strSubstring)) {
            return false;
        }
        String lowerCase = strSubstring.toLowerCase();
        TL_iv.textAnchor textanchor = this.textAnchors.get(lowerCase);
        if (textanchor != null) {
            return showFootnoteSheet(textanchor);
        }
        Integer num = this.anchors.get(lowerCase);
        if (num != null) {
            return scrollToPageBlockAnchor(num.intValue());
        }
        return true;
    }

    private boolean scrollToPageBlockAnchor(int i) {
        RecyclerView recyclerView;
        if (this.cell == null || i < 0 || i >= this.blocks.size()) {
            return false;
        }
        ViewParent parent = this.cell.getParent();
        while (true) {
            if (parent == null) {
                recyclerView = null;
                break;
            }
            if (parent instanceof RecyclerView) {
                recyclerView = (RecyclerView) parent;
                break;
            }
            parent = parent.getParent();
        }
        if (recyclerView == null) {
            return false;
        }
        recyclerView.smoothScrollBy(0, (((this.cell.getTop() + this.cell.textY) + getBlockTop(i)) - recyclerView.getPaddingTop()) - AndroidUtilities.dp(8.0f));
        return true;
    }

    private boolean showFootnoteSheet(TL_iv.textAnchor textanchor) {
        Context context;
        TL_iv.RichText richText;
        View view = this.view;
        if (view == null || (context = view.getContext()) == null || (richText = textanchor.text) == null || (richText instanceof TL_iv.textEmpty)) {
            return false;
        }
        String str = textanchor.name;
        CharSequence text = formatText(WebInstantView.filterRecursiveAnchorLinks(textanchor.text, _UrlKt.FRAGMENT_ENCODE_SET, str == null ? _UrlKt.FRAGMENT_ENCODE_SET : str.toLowerCase()));
        BottomSheet.Builder builder = new BottomSheet.Builder(context, true, this.resourcesProvider);
        builder.setApplyTopPadding(false);
        builder.setApplyBottomPadding(false);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        TextView textView = new TextView(context);
        textView.setTextSize(1, 16.0f);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setText(LocaleController.getString(C2573R.string.InstantViewReference));
        textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        int i = Theme.key_dialogTextBlack;
        textView.setTextColor(getThemedColor(i));
        textView.setPadding(AndroidUtilities.dp(22.0f), 0, AndroidUtilities.dp(22.0f), 0);
        linearLayout.addView(textView, new LinearLayout.LayoutParams(-1, AndroidUtilities.dp(48.0f)));
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, this.resourcesProvider);
        linksTextView.setTextSize(1, SharedConfig.fontSize);
        linksTextView.setTextColor(getThemedColor(i));
        linksTextView.setLinkTextColor(getThemedColor(Theme.key_dialogTextLink));
        linksTextView.setMovementMethod(LinkMovementMethod.getInstance());
        linksTextView.setPadding(AndroidUtilities.dp(22.0f), 0, AndroidUtilities.dp(22.0f), AndroidUtilities.dp(16.0f));
        linksTextView.setText(text);
        linearLayout.addView(linksTextView, new LinearLayout.LayoutParams(-1, -2));
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.addView(linearLayout, LayoutHelper.createFrame(-1, -2.0f));
        builder.setCustomView(frameLayout);
        builder.show();
        return true;
    }

    public FoundLink findLink(CharacterStyle characterStyle) {
        if (characterStyle == null) {
            return null;
        }
        FoundLink foundLink = new FoundLink();
        boolean z = false;
        int height = 0;
        for (int i = 0; i < this.blocks.size(); i++) {
            RichBlock richBlock = this.blocks.get(i);
            if (richBlock.isVisible()) {
                if (z) {
                    height += getGap();
                }
                if (richBlock.findLink(characterStyle, height, foundLink)) {
                    return foundLink;
                }
                height += richBlock.getHeight();
                z = true;
            }
        }
        return null;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0 && (motionEvent.getX() < this.padLeft || motionEvent.getX() > getMinWidth() + this.padRight)) {
            return false;
        }
        if (this.isPart) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (actionMasked == 0) {
                if (this.showMoreRect.contains(x, y)) {
                    this.showMorePressed = true;
                    ButtonBounce buttonBounce = this.showMoreBounce;
                    if (buttonBounce != null) {
                        buttonBounce.setPressed(true);
                    }
                    return true;
                }
            } else if (this.showMorePressed) {
                if (actionMasked == 2) {
                    if (!this.showMoreRect.contains(x, y)) {
                        ButtonBounce buttonBounce2 = this.showMoreBounce;
                        if (buttonBounce2 != null) {
                            buttonBounce2.setPressed(false);
                        }
                        this.showMorePressed = false;
                    }
                    return true;
                }
                if (actionMasked == 1 || actionMasked == 3) {
                    ButtonBounce buttonBounce3 = this.showMoreBounce;
                    if (buttonBounce3 != null) {
                        buttonBounce3.setPressed(false);
                    }
                    boolean z = actionMasked == 1 && this.showMoreRect.contains(x, y);
                    this.showMorePressed = false;
                    if (z && this.delegate != null && this.cell != null) {
                        View view = this.view;
                        if (view != null) {
                            view.performHapticFeedback(3, 2);
                        }
                        this.delegate.didPressShowMore(this.cell);
                    }
                    return true;
                }
            }
        }
        if (actionMasked == 0) {
            this.pressedBlock = null;
            float y2 = motionEvent.getY();
            int i = 0;
            boolean z2 = false;
            int gap = 0;
            while (true) {
                if (i >= this.blocks.size()) {
                    break;
                }
                RichBlock richBlock = this.blocks.get(i);
                if (richBlock.isVisible()) {
                    if (z2) {
                        gap += getGap();
                    }
                    int height = richBlock.getHeight();
                    float f = gap;
                    if (y2 < f || y2 >= gap + height) {
                        gap += height;
                        z2 = true;
                    } else {
                        motionEvent.offsetLocation(0.0f, -gap);
                        boolean z3 = richBlock.touchEvent(motionEvent);
                        motionEvent.offsetLocation(0.0f, f);
                        if (z3) {
                            this.pressedBlock = richBlock;
                            this.pressedBlockY = gap;
                            return true;
                        }
                    }
                }
                i++;
            }
            return false;
        }
        if (this.pressedBlock == null) {
            return false;
        }
        motionEvent.offsetLocation(0.0f, -this.pressedBlockY);
        boolean z4 = this.pressedBlock.touchEvent(motionEvent);
        motionEvent.offsetLocation(0.0f, this.pressedBlockY);
        if (actionMasked != 1 && actionMasked != 3) {
            return z4;
        }
        this.pressedBlock = null;
        return z4;
    }

    private static int getBlockTextFlag(TL_iv.PageBlock pageBlock) {
        if (pageBlock instanceof TL_iv.pageBlockHeading1) {
            return 1;
        }
        if (pageBlock instanceof TL_iv.pageBlockHeading2) {
            return 2;
        }
        if (pageBlock instanceof TL_iv.pageBlockHeading3) {
            return 3;
        }
        if (pageBlock instanceof TL_iv.pageBlockHeading4) {
            return 4;
        }
        if (pageBlock instanceof TL_iv.pageBlockHeading5) {
            return 5;
        }
        if (pageBlock instanceof TL_iv.pageBlockHeading6) {
            return 6;
        }
        if ((pageBlock instanceof TL_iv.pageBlockBlockquote) || (pageBlock instanceof TL_iv.pageBlockBlockquoteBlocks)) {
            return 9;
        }
        if (pageBlock instanceof TL_iv.pageBlockPullquote) {
            return 12;
        }
        return pageBlock instanceof TL_iv.pageBlockFooter ? 7 : 0;
    }

    public CharSequence formatText(TL_iv.RichText richText) {
        return formatText(richText, new SpannableStringBuilder(), 0);
    }

    public CharSequence formatText(TL_iv.RichText richText, int i) {
        if (i == 0) {
            return formatText(richText, new SpannableStringBuilder(), 0);
        }
        return formatTextAndSetSpan(richText, new SpannableStringBuilder(), i, new StyleSpan(this, i));
    }

    private void setSpansWithoutClash(Object obj, final SpannableStringBuilder spannableStringBuilder, int i, int i2) {
        if (obj instanceof StyleSpan) {
            StyleSpan styleSpan = (StyleSpan) obj;
            StyleSpan[] styleSpanArr = (StyleSpan[]) spannableStringBuilder.getSpans(i, i2, StyleSpan.class);
            if (styleSpanArr != null && styleSpanArr.length > 0) {
                Arrays.sort(styleSpanArr, Comparator.comparingInt(new ToIntFunction() { // from class: org.telegram.messenger.RichMessageLayout$$ExternalSyntheticLambda1
                    @Override // java.util.function.ToIntFunction
                    public final int applyAsInt(Object obj2) {
                        return spannableStringBuilder.getSpanStart((RichMessageLayout.StyleSpan) obj2);
                    }
                }));
                for (int i3 = 0; i3 < styleSpanArr.length; i3++) {
                    int spanStart = spannableStringBuilder.getSpanStart(styleSpanArr[i3]);
                    int spanEnd = spannableStringBuilder.getSpanEnd(styleSpanArr[i3]);
                    if (spanStart > i) {
                        setStyleRange(spannableStringBuilder, i, spanStart, styleSpan.flags);
                    }
                    i = Math.max(i, spanEnd);
                }
                if (i < i2) {
                    setStyleRange(spannableStringBuilder, i, i2, styleSpan.flags);
                    return;
                }
                return;
            }
            setStyleRange(spannableStringBuilder, i, i2, styleSpan.flags);
            return;
        }
        spannableStringBuilder.setSpan(obj, i, i2, 33);
    }

    private void setStyleRange(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3) {
        while (i < i2) {
            int iNextSpanTransition = spannableStringBuilder.nextSpanTransition(i, i2, URLSpan.class);
            spannableStringBuilder.setSpan(new StyleSpan(this, i3, ((URLSpan[]) spannableStringBuilder.getSpans(i, iNextSpanTransition, URLSpan.class)).length > 0), i, iNextSpanTransition, 33);
            i = iNextSpanTransition;
        }
    }

    private CharSequence formatTextAndSetSpan(TL_iv.RichText richText, SpannableStringBuilder spannableStringBuilder, int i, Object obj) {
        int length = spannableStringBuilder.length();
        formatText(richText, spannableStringBuilder, i);
        if (spannableStringBuilder.length() > length) {
            setSpansWithoutClash(obj, spannableStringBuilder, length, spannableStringBuilder.length());
        }
        return spannableStringBuilder;
    }

    private CharSequence formatTextAndSetSpan(TL_iv.RichText richText, SpannableStringBuilder spannableStringBuilder, int i, Object obj, Object obj2) {
        int length = spannableStringBuilder.length();
        formatText(richText, spannableStringBuilder, i);
        if (spannableStringBuilder.length() > length) {
            setSpansWithoutClash(obj, spannableStringBuilder, length, spannableStringBuilder.length());
            setSpansWithoutClash(obj2, spannableStringBuilder, length, spannableStringBuilder.length());
        }
        return spannableStringBuilder;
    }

    private static TextStyleSpan.TextStyleRun getTextStyleRun(int i) {
        TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
        textStyleRun.flags = i;
        return textStyleRun;
    }

    public CharSequence formatText(TL_iv.RichText richText, SpannableStringBuilder spannableStringBuilder, int i) {
        if (richText instanceof TL_iv.textEmpty) {
            return spannableStringBuilder;
        }
        if (richText instanceof TL_iv.textPlain) {
            spannableStringBuilder.append((CharSequence) ((TL_iv.textPlain) richText).text);
            return spannableStringBuilder;
        }
        if (richText instanceof TL_iv.textBold) {
            int i2 = i | 16;
            formatTextAndSetSpan(richText.text, spannableStringBuilder, i2, new StyleSpan(this, i2));
            return spannableStringBuilder;
        }
        if (richText instanceof TL_iv.textItalic) {
            int i3 = i | 32;
            formatTextAndSetSpan(richText.text, spannableStringBuilder, i3, new StyleSpan(this, i3));
            return spannableStringBuilder;
        }
        if (richText instanceof TL_iv.textUnderline) {
            int i4 = i | 64;
            formatTextAndSetSpan(richText.text, spannableStringBuilder, i4, new StyleSpan(this, i4));
            return spannableStringBuilder;
        }
        if (richText instanceof TL_iv.textStrike) {
            int i5 = i | 128;
            formatTextAndSetSpan(richText.text, spannableStringBuilder, i5, new StyleSpan(this, i5));
            return spannableStringBuilder;
        }
        if (richText instanceof TL_iv.textFixed) {
            int i6 = i | 256;
            formatTextAndSetSpan(richText.text, spannableStringBuilder, i6, new StyleSpan(this, i6));
            return spannableStringBuilder;
        }
        if (richText instanceof TL_iv.textUrl) {
            formatTextAndSetSpan(richText.text, spannableStringBuilder, i, new URLSpanReplacement(((TL_iv.textUrl) richText).url));
            return spannableStringBuilder;
        }
        if (richText instanceof TL_iv.textEmail) {
            TL_iv.textEmail textemail = (TL_iv.textEmail) richText;
            formatTextAndSetSpan(richText.text, spannableStringBuilder, i, new URLSpanReplacement("mailto:" + textemail.email));
            return spannableStringBuilder;
        }
        if (richText instanceof TL_iv.textConcat) {
            for (int i7 = 0; i7 < richText.texts.size(); i7++) {
                formatText(richText.texts.get(i7), spannableStringBuilder, i);
            }
        } else {
            if (richText instanceof TL_iv.textSubscript) {
                int i8 = i | 2048;
                formatTextAndSetSpan(richText.text, spannableStringBuilder, i8, new StyleSpan(this, i8));
                return spannableStringBuilder;
            }
            if (richText instanceof TL_iv.textSuperscript) {
                int i9 = i | 4096;
                formatTextAndSetSpan(richText.text, spannableStringBuilder, i9, new StyleSpan(this, i9));
                return spannableStringBuilder;
            }
            if (richText instanceof TL_iv.textMarked) {
                int i10 = i | 8192;
                formatTextAndSetSpan(richText.text, spannableStringBuilder, i10, new StyleSpan(this, i10));
                return spannableStringBuilder;
            }
            if (richText instanceof TL_iv.textPhone) {
                TL_iv.textPhone textphone = (TL_iv.textPhone) richText;
                String strStripExceptNumbers = PhoneFormat.stripExceptNumbers(textphone.phone);
                if (textphone.phone.startsWith("+")) {
                    strStripExceptNumbers = "+" + strStripExceptNumbers;
                }
                formatTextAndSetSpan(richText.text, spannableStringBuilder, i, new URLSpanReplacement("tel:" + strStripExceptNumbers, getTextStyleRun(1024)));
                return spannableStringBuilder;
            }
            boolean z = richText instanceof TL_iv.textAnchor;
            String lowerCase = _UrlKt.FRAGMENT_ENCODE_SET;
            if (z) {
                TL_iv.textAnchor textanchor = (TL_iv.textAnchor) richText;
                String str = textanchor.name;
                if (str != null) {
                    String lowerCase2 = str.toLowerCase();
                    if (!(textanchor.text instanceof TL_iv.textEmpty)) {
                        this.textAnchors.put(lowerCase2, textanchor);
                    } else if (!this.anchors.containsKey(lowerCase2)) {
                        this.anchors.put(lowerCase2, Integer.valueOf(this.blocks.size()));
                    }
                }
                TL_iv.RichText richText2 = richText.text;
                String str2 = textanchor.name;
                if (str2 != null) {
                    lowerCase = str2.toLowerCase();
                }
                formatTextAndSetSpan(richText2, spannableStringBuilder, i, new AnchorSpan(lowerCase));
                return spannableStringBuilder;
            }
            if (richText instanceof TL_iv.textMath) {
                TL_iv.textMath textmath = (TL_iv.textMath) richText;
                if (textmath.bitmap == null && !textmath.tried) {
                    textmath.tried = true;
                    try {
                        JLatexMathDrawable jLatexMathDrawableBuild = JLatexMathDrawable.builder(textmath.source).textSize(AndroidUtilities.dp(this.fontSize + 4)).build();
                        int intrinsicWidth = jLatexMathDrawableBuild.getIntrinsicWidth();
                        int intrinsicHeight = jLatexMathDrawableBuild.getIntrinsicHeight();
                        if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ALPHA_8);
                            jLatexMathDrawableBuild.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
                            jLatexMathDrawableBuild.draw(new Canvas(bitmapCreateBitmap));
                            textmath.f894w = intrinsicWidth;
                            textmath.f893h = intrinsicHeight;
                            try {
                                textmath.depth = jLatexMathDrawableBuild.icon().getIconDepth();
                            } catch (Throwable th) {
                                FileLog.m898e(th);
                            }
                            textmath.bitmap = bitmapCreateBitmap;
                        }
                    } catch (Exception e) {
                        FileLog.m898e(e);
                    }
                }
                if (textmath.bitmap == null) {
                    String str3 = textmath.source;
                    return str3 == null ? _UrlKt.FRAGMENT_ENCODE_SET : str3;
                }
                int length = spannableStringBuilder.length();
                spannableStringBuilder.append(" ");
                int length2 = spannableStringBuilder.length();
                spannableStringBuilder.setSpan(new TextPaintImageReceiverSpan(null, textmath.bitmap, textmath.f894w, textmath.f893h, Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider), textmath.depth), length, length2, 33);
                String str4 = textmath.source;
                if (str4 != null && !str4.isEmpty()) {
                    spannableStringBuilder.setSpan(new TextSelectionHelper.ReplaceCopyTextSpannable(textmath.source), length, length2, 33);
                }
            } else {
                if (richText instanceof TL_iv.textCustomEmoji) {
                    TL_iv.textCustomEmoji textcustomemoji = (TL_iv.textCustomEmoji) richText;
                    String str5 = TextUtils.isEmpty(textcustomemoji.alt) ? "😀" : textcustomemoji.alt;
                    int length3 = spannableStringBuilder.length();
                    spannableStringBuilder.append((CharSequence) str5);
                    spannableStringBuilder.setSpan(new AnimatedEmojiSpan(textcustomemoji.document_id, (Paint.FontMetricsInt) null).setSize(AndroidUtilities.dp(this.fontSize + 4)), length3, spannableStringBuilder.length(), 33);
                    return spannableStringBuilder;
                }
                if (richText instanceof TL_iv.textSpoiler) {
                    formatTextAndSetSpan(richText.text, spannableStringBuilder, i, new TextStyleSpan(getTextStyleRun(256)));
                    return spannableStringBuilder;
                }
                if (richText instanceof TL_iv.textMention) {
                    TLRPC.TL_messageEntityMention tL_messageEntityMention = new TLRPC.TL_messageEntityMention();
                    TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
                    textStyleRun.urlEntity = tL_messageEntityMention;
                    formatTextAndSetSpan(richText.text, spannableStringBuilder, i, new URLSpanNoUnderline(getString(richText), textStyleRun));
                    return spannableStringBuilder;
                }
                if (richText instanceof TL_iv.textHashtag) {
                    TLRPC.TL_messageEntityHashtag tL_messageEntityHashtag = new TLRPC.TL_messageEntityHashtag();
                    TextStyleSpan.TextStyleRun textStyleRun2 = new TextStyleSpan.TextStyleRun();
                    textStyleRun2.urlEntity = tL_messageEntityHashtag;
                    formatTextAndSetSpan(richText.text, spannableStringBuilder, i, new URLSpanNoUnderline(getString(richText), textStyleRun2));
                    return spannableStringBuilder;
                }
                if (richText instanceof TL_iv.textBotCommand) {
                    formatTextAndSetSpan(richText.text, spannableStringBuilder, i, new URLSpanBotCommand(getString(richText), isOut() ? 1 : 0));
                    return spannableStringBuilder;
                }
                if (richText instanceof TL_iv.textCashtag) {
                    TLRPC.TL_messageEntityCashtag tL_messageEntityCashtag = new TLRPC.TL_messageEntityCashtag();
                    TextStyleSpan.TextStyleRun textStyleRun3 = new TextStyleSpan.TextStyleRun();
                    textStyleRun3.urlEntity = tL_messageEntityCashtag;
                    formatTextAndSetSpan(richText.text, spannableStringBuilder, i, new URLSpanNoUnderline(getString(richText), textStyleRun3));
                    return spannableStringBuilder;
                }
                if (richText instanceof TL_iv.textAutoUrl) {
                    formatTextAndSetSpan(richText.text, spannableStringBuilder, i, new URLSpanReplacement(getString(richText), getTextStyleRun(1024)));
                    return spannableStringBuilder;
                }
                if (richText instanceof TL_iv.textAutoEmail) {
                    String string = getString(richText);
                    formatTextAndSetSpan(richText.text, spannableStringBuilder, i, new URLSpanReplacement("mailto:" + string, getTextStyleRun(1024)));
                    return spannableStringBuilder;
                }
                if (richText instanceof TL_iv.textAutoPhone) {
                    String string2 = getString(richText);
                    String strStripExceptNumbers2 = PhoneFormat.stripExceptNumbers(string2);
                    if (string2.startsWith("+")) {
                        strStripExceptNumbers2 = "+" + strStripExceptNumbers2;
                    }
                    formatTextAndSetSpan(richText.text, spannableStringBuilder, i, new URLSpanReplacement("tel:" + strStripExceptNumbers2, getTextStyleRun(1024)));
                    return spannableStringBuilder;
                }
                if (richText instanceof TL_iv.textBankCard) {
                    String string3 = getString(richText);
                    formatTextAndSetSpan(richText.text, spannableStringBuilder, i, new URLSpanNoUnderline("card:" + string3));
                    return spannableStringBuilder;
                }
                if (richText instanceof TL_iv.textMentionName) {
                    TL_iv.textMentionName textmentionname = (TL_iv.textMentionName) richText;
                    formatTextAndSetSpan(richText.text, spannableStringBuilder, i, new URLSpanUserMention(_UrlKt.FRAGMENT_ENCODE_SET + textmentionname.user_id, isOut() ? 1 : 0));
                    return spannableStringBuilder;
                }
                if (richText instanceof TL_iv.textDate) {
                    TL_iv.textDate textdate = (TL_iv.textDate) richText;
                    TLRPC.TL_messageEntityFormattedDate tL_messageEntityFormattedDate = new TLRPC.TL_messageEntityFormattedDate();
                    tL_messageEntityFormattedDate.relative = textdate.relative;
                    tL_messageEntityFormattedDate.short_time = textdate.short_time;
                    tL_messageEntityFormattedDate.long_time = textdate.long_time;
                    tL_messageEntityFormattedDate.short_date = textdate.short_date;
                    tL_messageEntityFormattedDate.long_date = textdate.long_date;
                    tL_messageEntityFormattedDate.day_of_week = textdate.day_of_week;
                    tL_messageEntityFormattedDate.date = textdate.date;
                    int i11 = i | 512;
                    formatTextAndSetSpan(richText.text, spannableStringBuilder, i11, new StyleSpan(this, i11), new FormattedDateSpan(getString(richText), null, tL_messageEntityFormattedDate));
                    return spannableStringBuilder;
                }
            }
        }
        return spannableStringBuilder;
    }

    public static String getString(TL_iv.RichText richText) {
        StringBuilder sb = new StringBuilder();
        getString(richText, sb);
        return sb.toString();
    }

    public static void getString(TL_iv.RichText richText, StringBuilder sb) {
        if (richText instanceof TL_iv.textPlain) {
            sb.append(((TL_iv.textPlain) richText).text);
            return;
        }
        if (richText instanceof TL_iv.textConcat) {
            for (int i = 0; i < richText.texts.size(); i++) {
                getString(richText.texts.get(i), sb);
            }
            return;
        }
        TL_iv.RichText richText2 = richText.text;
        if (richText2 != null) {
            getString(richText2, sb);
        }
    }

    public static class AnchorSpan extends CharacterStyle {
        public final String name;

        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
        }

        public AnchorSpan(String str) {
            this.name = str;
        }
    }

    public static class StyleSpan extends MetricAffectingSpan {
        public final int flags;
        public final boolean metricsOnly;
        public final RichMessageLayout root;

        public StyleSpan(RichMessageLayout richMessageLayout, int i) {
            this(richMessageLayout, i, false);
        }

        public StyleSpan(RichMessageLayout richMessageLayout, int i, boolean z) {
            this.root = richMessageLayout;
            this.flags = i;
            this.metricsOnly = z;
        }

        public void applyStyle(TextPaint textPaint) {
            Typeface typeface = getTypeface();
            if (typeface != null) {
                textPaint.setTypeface(typeface);
            }
            int textSize = getTextSize();
            if (TLObject.hasFlag(this.flags, 6144)) {
                textSize -= AndroidUtilities.dp(4.0f);
            }
            textPaint.setTextSize(textSize);
            if (!this.metricsOnly) {
                textPaint.setFlags(TLObject.setFlag(TLObject.setFlag(textPaint.getFlags(), 8, TLObject.hasFlag(this.flags, 64)), 16, TLObject.hasFlag(this.flags, 128)));
                if ((this.flags & 15) != 8) {
                    textPaint.setColor(getTextColor());
                }
            }
            if (isBold() && !FontUtils.isMediumWeightSupported()) {
                textPaint.setStrokeWidth(0.65f);
                textPaint.setStyle(Paint.Style.FILL_AND_STROKE);
            }
            if (isItalic() && !FontUtils.isItalicSupported()) {
                textPaint.setTextSkewX(-0.25f);
            }
            if (TLObject.hasFlag(this.flags, 4096)) {
                textPaint.baselineShift -= AndroidUtilities.dp(6.0f);
            } else if (TLObject.hasFlag(this.flags, 2048)) {
                textPaint.baselineShift += AndroidUtilities.dp(2.0f);
            }
        }

        public int getTextSize() {
            int i = this.flags & 15;
            int i2 = SharedConfig.fontSize;
            switch (i) {
                case 1:
                    return AndroidUtilities.dp(i2 + 2);
                case 2:
                    return AndroidUtilities.dp(i2 + 1);
                case 3:
                    return AndroidUtilities.dp(i2);
                case 4:
                    return AndroidUtilities.dp(i2 - 1);
                case 5:
                    return AndroidUtilities.dp(i2 - 2);
                case 6:
                    return AndroidUtilities.dp(i2 - 3);
                case 7:
                    return AndroidUtilities.dp(i2 - 2);
                case 8:
                    return AndroidUtilities.dp(Math.max(8, i2 - 2));
                case 9:
                case 11:
                    return AndroidUtilities.dp(i2 - 2);
                case 10:
                    return AndroidUtilities.dp(i2 - 2);
                default:
                    return AndroidUtilities.dp(i2);
            }
        }

        public int getTextColor() {
            int i = this.flags & 15;
            if (i == 11) {
                RichMessageLayout richMessageLayout = this.root;
                return richMessageLayout.getThemedColor(richMessageLayout.isOut() ? Theme.key_chat_outReplyNameText : Theme.key_chat_inReplyNameText);
            }
            RichMessageLayout richMessageLayout2 = this.root;
            if (i == 10) {
                return Theme.multAlpha(richMessageLayout2.getThemedColor(richMessageLayout2.isOut() ? Theme.key_chat_messageTextOut : Theme.key_chat_messageTextIn), 0.5f);
            }
            return richMessageLayout2.getThemedColor(richMessageLayout2.isOut() ? Theme.key_chat_messageTextOut : Theme.key_chat_messageTextIn);
        }

        public boolean isBold() {
            int i = this.flags;
            int i2 = i & 15;
            return TLObject.hasFlag(i, 16) || i2 == 11 || (i2 >= 1 && i2 <= 6);
        }

        public boolean isItalic() {
            int i = this.flags;
            return TLObject.hasFlag(i, 32) || (i & 15) == 12;
        }

        public Typeface getTypeface() {
            int i = this.flags;
            int i2 = i & 15;
            boolean z = i2 >= 1 && i2 <= 6;
            if (i2 == 8) {
                return Typeface.MONOSPACE;
            }
            if (TLObject.hasFlag(i, 256) && !z && i2 != 11) {
                return Typeface.MONOSPACE;
            }
            boolean zIsBold = isBold();
            boolean zIsItalic = isItalic();
            if (zIsBold && zIsItalic && FontUtils.isMediumWeightSupported() && FontUtils.isItalicSupported()) {
                return AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM_ITALIC);
            }
            if (zIsBold && FontUtils.isMediumWeightSupported()) {
                return AndroidUtilities.bold();
            }
            if (zIsItalic && FontUtils.isItalicSupported()) {
                return AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_ITALIC);
            }
            return AndroidUtilities.regular();
        }

        @Override // android.text.style.MetricAffectingSpan
        public void updateMeasureState(TextPaint textPaint) {
            applyStyle(textPaint);
        }

        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            applyStyle(textPaint);
        }
    }

    public static class Text implements TextSelectionHelper.TextLayoutBlock, TableLayout.CellText {
        private static Paint markPaint;
        public AnimatedEmojiSpan.EmojiGroupedSpans animatedEmojiStack;
        public int blockX;
        public int blockY;
        private boolean drawAtOrigin;
        public int lastLineRight;
        public final StaticLayout layout;
        public int left;
        public LinkSpanDrawable.LinkCollector linkCollector;
        private boolean longPressFired;
        private Runnable longPressRunnable;
        public LinkPath markPath;
        private AnimatedEmojiSpan pressedEmoji;
        private CharacterStyle pressedLink;
        private LinkSpanDrawable<CharacterStyle> pressedLinkDrawable;
        private int pressedLinkEnd;
        private int pressedLinkStart;
        private SpoilerEffect pressedSpoiler;
        public int right;
        public final RichMessageLayout root;
        public int row;
        public final List<SpoilerEffect> spoilers;
        public final AtomicReference<Layout> spoilersPatchedTextLayout;
        public final Stack<SpoilerEffect> spoilersPool;
        private LoadingDrawable translationLoadingDrawable;
        private LinkPath translationLoadingPath;
        public View view;

        /* JADX INFO: renamed from: x */
        public int f818x;

        /* JADX INFO: renamed from: y */
        public int f819y;

        @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
        public /* bridge */ /* synthetic */ CharSequence getPrefix() {
            return super.getPrefix();
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
        public /* bridge */ /* synthetic */ Rect getSelectionBounds() {
            return super.getSelectionBounds();
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
        public /* bridge */ /* synthetic */ CharSequence getText() {
            return super.getText();
        }

        public boolean isPressingLink() {
            return this.pressedLink != null;
        }

        public boolean fillFoundLink(CharacterStyle characterStyle, FoundLink foundLink) {
            if (!(this.layout.getText() instanceof Spanned)) {
                return false;
            }
            Spanned spanned = (Spanned) this.layout.getText();
            int spanStart = spanned.getSpanStart(characterStyle);
            int spanEnd = spanned.getSpanEnd(characterStyle);
            if (spanStart < 0 || spanEnd <= spanStart) {
                return false;
            }
            StaticLayout staticLayout = this.layout;
            foundLink.layout = staticLayout;
            foundLink.start = spanStart;
            foundLink.end = spanEnd;
            foundLink.originalWidth = staticLayout.getWidth();
            return true;
        }

        public Text(RichMessageLayout richMessageLayout, CharSequence charSequence, int i) {
            this(richMessageLayout, charSequence, i, Layout.Alignment.ALIGN_NORMAL);
        }

        public Text(RichMessageLayout richMessageLayout, CharSequence charSequence, int i, Layout.Alignment alignment) {
            int iDp;
            int iDp2;
            this.spoilers = new ArrayList();
            this.spoilersPool = new Stack<>();
            this.spoilersPatchedTextLayout = new AtomicReference<>();
            this.root = richMessageLayout;
            this.layout = MessageObject.makeStaticLayout(Emoji.replaceEmoji(charSequence, richMessageLayout.textPaint.getFontMetricsInt(), false), richMessageLayout.textPaint, i, 1.0f, 0.0f, false, alignment);
            this.left = i;
            this.right = 0;
            for (int i2 = 0; i2 < this.layout.getLineCount(); i2++) {
                this.left = Math.min(this.left, (int) Math.floor(this.layout.getLineLeft(i2)));
                this.right = Math.max(this.right, (int) Math.ceil(this.layout.getLineRight(i2)));
            }
            this.lastLineRight = 0;
            if (this.layout.getLineCount() > 0) {
                StaticLayout staticLayout = this.layout;
                this.lastLineRight = (int) Math.ceil(staticLayout.getLineRight(staticLayout.getLineCount() - 1));
            }
            LinkPath linkPath = null;
            SpoilerEffect.addSpoilers((View) null, this.layout, this.spoilersPool, this.spoilers);
            if (this.layout.getText() instanceof Spanned) {
                Spanned spanned = (Spanned) this.layout.getText();
                for (StyleSpan styleSpan : (StyleSpan[]) spanned.getSpans(0, spanned.length(), StyleSpan.class)) {
                    if (TLObject.hasFlag(styleSpan.flags, 8192)) {
                        int spanStart = spanned.getSpanStart(styleSpan);
                        int spanEnd = spanned.getSpanEnd(styleSpan);
                        if (spanStart >= 0 && spanEnd > spanStart) {
                            if (linkPath == null) {
                                linkPath = new LinkPath(true);
                                linkPath.setAllowReset(false);
                            }
                            linkPath.setCurrentLayout(this.layout, spanStart, 0.0f);
                            if (TLObject.hasFlag(styleSpan.flags, 4096)) {
                                iDp = -AndroidUtilities.dp(6.0f);
                            } else {
                                iDp = TLObject.hasFlag(styleSpan.flags, 2048) ? AndroidUtilities.dp(2.0f) : 0;
                            }
                            if (iDp != 0) {
                                iDp2 = iDp + AndroidUtilities.dp(iDp > 0 ? 5.0f : -2.0f);
                            } else {
                                iDp2 = 0;
                            }
                            linkPath.setBaselineShift(iDp2);
                            this.layout.getSelectionPath(spanStart, spanEnd, linkPath);
                        }
                    }
                }
                if (linkPath != null) {
                    linkPath.setAllowReset(true);
                    this.markPath = linkPath;
                }
            }
        }

        public void setDrawAtOrigin(boolean z) {
            this.drawAtOrigin = z;
        }

        public int drawLeft() {
            if (this.drawAtOrigin) {
                return 0;
            }
            return this.left;
        }

        public void draw(Canvas canvas) {
            draw(canvas, this.view);
        }

        @Override // org.telegram.ui.Components.TableLayout.CellText
        public void draw(Canvas canvas, View view) {
            canvas.save();
            canvas.translate(-drawLeft(), 0.0f);
            RichMessageLayout richMessageLayout = this.root;
            int themedColor = richMessageLayout.getThemedColor(richMessageLayout.isOut() ? Theme.key_chat_messageTextOut : Theme.key_chat_messageTextIn);
            this.root.textPaint.setColor(themedColor);
            RichMessageLayout richMessageLayout2 = this.root;
            richMessageLayout2.textPaint.linkColor = richMessageLayout2.getThemedColor(richMessageLayout2.isOut() ? Theme.key_chat_messageLinkOut : Theme.key_chat_messageLinkIn);
            if (this.markPath != null) {
                if (markPaint == null) {
                    Paint paint = new Paint(1);
                    markPaint = paint;
                    paint.setPathEffect(LinkPath.getRoundedEffect());
                }
                markPaint.setColor((this.root.quoteLine.getColor() & 16777215) | 855638016);
                canvas.drawPath(this.markPath, markPaint);
            }
            View view2 = view != null ? view : this.view;
            LinkSpanDrawable.LinkCollector linkCollector = this.linkCollector;
            if (linkCollector != null && linkCollector.draw(canvas) && view2 != null) {
                view2.invalidate();
            }
            SpoilerEffect.renderWithRipple(view2, false, themedColor, 0, this.spoilersPatchedTextLayout, 0, this.layout, this.spoilers, canvas, false);
            if (!this.root.isOverlayActive()) {
                AnimatedEmojiSpan.drawAnimatedEmojis(canvas, this.layout, this.animatedEmojiStack, 0.0f, this.spoilers, 0.0f, 0.0f, 0.0f, 1.0f);
            }
            drawTranslationLoading(canvas);
            canvas.restore();
        }

        private void drawTranslationLoading(Canvas canvas) {
            RichMessageLayout richMessageLayout = this.root;
            float f = richMessageLayout.translationLoadingValue;
            if (f <= 0.0f) {
                return;
            }
            boolean zIsTranslating = richMessageLayout.isTranslating();
            if (this.translationLoadingDrawable == null) {
                LoadingDrawable loadingDrawable = new LoadingDrawable();
                this.translationLoadingDrawable = loadingDrawable;
                loadingDrawable.setAppearByGradient(true);
                LinkPath linkPath = new LinkPath(true);
                this.translationLoadingPath = linkPath;
                linkPath.setUseCornerPathImplementation(true);
                this.translationLoadingDrawable.usePath(this.translationLoadingPath);
                this.translationLoadingDrawable.setRadiiDp(5.0f);
                this.translationLoadingDrawable.reset();
                this.translationLoadingPath.reset();
                this.translationLoadingPath.setCurrentLayout(this.layout, 0, 0.0f);
                this.translationLoadingPath.setAllowReset(false);
                StaticLayout staticLayout = this.layout;
                staticLayout.getSelectionPath(0, staticLayout.getText().length(), this.translationLoadingPath);
                this.translationLoadingPath.setAllowReset(true);
                this.translationLoadingPath.closeRects();
                this.translationLoadingDrawable.updateBounds();
            }
            if (zIsTranslating && (this.translationLoadingDrawable.isDisappearing() || this.translationLoadingDrawable.isDisappeared())) {
                this.translationLoadingDrawable.reset();
                this.translationLoadingDrawable.resetDisappear();
            } else if (!zIsTranslating && !this.translationLoadingDrawable.isDisappearing() && !this.translationLoadingDrawable.isDisappeared()) {
                this.translationLoadingDrawable.disappear();
            }
            RichMessageLayout richMessageLayout2 = this.root;
            int themedColor = richMessageLayout2.getThemedColor(richMessageLayout2.isOut() ? Theme.key_chat_messageLinkOut : Theme.key_chat_messageLinkIn);
            this.translationLoadingDrawable.setColors(Theme.multAlpha(themedColor, 0.05f), Theme.multAlpha(themedColor, 0.15f), Theme.multAlpha(themedColor, 0.1f), Theme.multAlpha(themedColor, 0.3f));
            this.translationLoadingDrawable.setAlpha((int) (f * 255.0f));
            this.translationLoadingDrawable.draw(canvas);
        }

        public void drawFade(Canvas canvas, int i, float f) {
            canvas.save();
            canvas.translate(-drawLeft(), 0.0f);
            RichMessageLayout richMessageLayout = this.root;
            final int themedColor = richMessageLayout.getThemedColor(richMessageLayout.isOut() ? Theme.key_chat_messageTextOut : Theme.key_chat_messageTextIn);
            this.root.textPaint.setColor(themedColor);
            RichMessageLayout richMessageLayout2 = this.root;
            richMessageLayout2.textPaint.linkColor = richMessageLayout2.getThemedColor(richMessageLayout2.isOut() ? Theme.key_chat_messageLinkOut : Theme.key_chat_messageLinkIn);
            final View view = this.view;
            MultiLayoutTypingAnimator.drawLayoutWithLastLineFade(canvas, this.layout, i, f, new MultiLayoutTypingAnimator.Renderer() { // from class: org.telegram.messenger.RichMessageLayout$Text$$ExternalSyntheticLambda2
                @Override // org.telegram.ui.MultiLayoutTypingAnimator.Renderer
                public final void draw(Canvas canvas2) {
                    this.f$0.lambda$drawFade$0(view, themedColor, canvas2);
                }
            });
            canvas.restore();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$drawFade$0(View view, int i, Canvas canvas) {
            SpoilerEffect.renderWithRipple(view, false, i, 0, this.spoilersPatchedTextLayout, 0, this.layout, this.spoilers, canvas, false);
            AnimatedEmojiSpan.drawAnimatedEmojis(canvas, this.layout, this.animatedEmojiStack, 0.0f, this.spoilers, 0.0f, 0.0f, 0.0f, 1.0f);
        }

        /* JADX WARN: Removed duplicated region for block: B:42:0x0100  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x01a7  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean onTouchEvent(MotionEvent motionEvent) {
            StyleSpan styleSpan;
            boolean z;
            int i;
            StyleSpan styleSpan2;
            StyleSpan styleSpan3;
            int spanStart;
            int actionMasked = motionEvent.getActionMasked();
            int x = ((int) motionEvent.getX()) + drawLeft();
            int y = (int) motionEvent.getY();
            boolean z2 = true;
            if (actionMasked != 0) {
                if (actionMasked != 1) {
                    if (actionMasked == 3) {
                        this.pressedSpoiler = null;
                        this.pressedEmoji = null;
                        if (this.pressedLink != null) {
                            cancelLongPress();
                            LinkSpanDrawable.LinkCollector linkCollector = this.linkCollector;
                            if (linkCollector != null) {
                                linkCollector.clear();
                            }
                            this.pressedLink = null;
                            this.pressedLinkDrawable = null;
                            this.longPressFired = false;
                        }
                    }
                    return false;
                }
                if (this.pressedSpoiler != null) {
                    revealSpoilers(x, y);
                    this.pressedSpoiler = null;
                    return true;
                }
                if (this.pressedLink != null) {
                    cancelLongPress();
                    if (!this.longPressFired) {
                        dispatchLinkClick(this.pressedLink, false);
                    }
                    LinkSpanDrawable.LinkCollector linkCollector2 = this.linkCollector;
                    if (linkCollector2 != null) {
                        linkCollector2.clear();
                    }
                    this.pressedLink = null;
                    this.pressedLinkDrawable = null;
                    this.longPressFired = false;
                    return true;
                }
                AnimatedEmojiSpan animatedEmojiSpan = this.pressedEmoji;
                if (animatedEmojiSpan == null) {
                    return false;
                }
                this.pressedEmoji = null;
                ChatMessageCell cell = this.root.getCell();
                ChatMessageCell.ChatMessageCellDelegate delegate = this.root.getDelegate();
                if (cell == null || delegate == null) {
                    return true;
                }
                View view = this.view;
                if (view != null) {
                    view.playSoundEffect(0);
                }
                delegate.didPressAnimatedEmoji(cell, animatedEmojiSpan);
                return true;
            }
            this.pressedSpoiler = null;
            this.pressedLink = null;
            this.pressedEmoji = null;
            for (SpoilerEffect spoilerEffect : this.spoilers) {
                if (spoilerEffect.getBounds().contains(x, y)) {
                    this.pressedSpoiler = spoilerEffect;
                    return true;
                }
            }
            if ((this.layout.getText() instanceof Spannable) && y >= 0 && y < this.layout.getHeight()) {
                int lineForVertical = this.layout.getLineForVertical(y);
                float lineLeft = this.layout.getLineLeft(lineForVertical);
                float lineWidth = this.layout.getLineWidth(lineForVertical) + lineLeft;
                float f = x;
                if (f >= lineLeft && f <= lineWidth) {
                    int offsetForHorizontal = this.layout.getOffsetForHorizontal(lineForVertical, f);
                    Spannable spannable = (Spannable) this.layout.getText();
                    ClickableSpan[] clickableSpanArr = (ClickableSpan[]) spannable.getSpans(offsetForHorizontal, offsetForHorizontal, ClickableSpan.class);
                    if (clickableSpanArr != null && clickableSpanArr.length > 0) {
                        ClickableSpan clickableSpan = clickableSpanArr[0];
                        this.pressedLink = clickableSpan;
                        this.pressedLinkStart = spannable.getSpanStart(clickableSpan);
                        this.pressedLinkEnd = spannable.getSpanEnd(this.pressedLink);
                        this.longPressFired = false;
                        LinkSpanDrawable<CharacterStyle> linkSpanDrawable = new LinkSpanDrawable<>(this.pressedLink, this.root.resourcesProvider, f, y, false);
                        LinkPath linkPathObtainNewPath = linkSpanDrawable.obtainNewPath();
                        linkPathObtainNewPath.setCurrentLayout(this.layout, this.pressedLinkStart, 0.0f);
                        this.layout.getSelectionPath(this.pressedLinkStart, this.pressedLinkEnd, linkPathObtainNewPath);
                        this.pressedLinkDrawable = linkSpanDrawable;
                        if (this.linkCollector == null) {
                            this.linkCollector = new LinkSpanDrawable.LinkCollector(this.view);
                        }
                        this.linkCollector.addLink(linkSpanDrawable);
                        View view2 = this.view;
                        if (view2 != null) {
                            view2.invalidate();
                        }
                        scheduleLongPress();
                        return true;
                    }
                    StyleSpan[] styleSpanArr = (StyleSpan[]) spannable.getSpans(offsetForHorizontal, offsetForHorizontal, StyleSpan.class);
                    if (styleSpanArr != null) {
                        int length = styleSpanArr.length;
                        for (int i2 = 0; i2 < length; i2++) {
                            styleSpan = styleSpanArr[i2];
                            if (TLObject.hasFlag(styleSpan.flags, 256)) {
                                break;
                            }
                        }
                        styleSpan = null;
                        if (styleSpan == null) {
                            int spanStart2 = spannable.getSpanStart(styleSpan);
                            int spanEnd = spannable.getSpanEnd(styleSpan);
                            while (true) {
                                if (spanStart2 <= 0) {
                                    z = z2;
                                    break;
                                }
                                int i3 = spanStart2 - 1;
                                StyleSpan[] styleSpanArr2 = (StyleSpan[]) spannable.getSpans(i3, i3, StyleSpan.class);
                                int length2 = styleSpanArr2.length;
                                int i4 = 0;
                                while (true) {
                                    if (i4 >= length2) {
                                        z = z2;
                                        styleSpan3 = null;
                                        break;
                                    }
                                    styleSpan3 = styleSpanArr2[i4];
                                    z = z2;
                                    if (TLObject.hasFlag(styleSpan3.flags, 256)) {
                                        break;
                                    }
                                    i4++;
                                    z2 = z;
                                }
                                if (styleSpan3 == null || (spanStart = spannable.getSpanStart(styleSpan3)) >= spanStart2) {
                                    break;
                                }
                                spanStart2 = spanStart;
                                z2 = z;
                            }
                            do {
                                i = spanEnd;
                                if (i >= spannable.length()) {
                                    break;
                                }
                                StyleSpan[] styleSpanArr3 = (StyleSpan[]) spannable.getSpans(i, i, StyleSpan.class);
                                int length3 = styleSpanArr3.length;
                                int i5 = 0;
                                while (true) {
                                    if (i5 >= length3) {
                                        styleSpan2 = null;
                                        break;
                                    }
                                    styleSpan2 = styleSpanArr3[i5];
                                    if (TLObject.hasFlag(styleSpan2.flags, 256)) {
                                        break;
                                    }
                                    i5++;
                                }
                                if (styleSpan2 == null) {
                                    break;
                                }
                                spanEnd = spannable.getSpanEnd(styleSpan2);
                            } while (spanEnd > i);
                            this.pressedLink = styleSpan;
                            this.pressedLinkStart = spanStart2;
                            this.pressedLinkEnd = i;
                            this.longPressFired = false;
                            LinkSpanDrawable<CharacterStyle> linkSpanDrawable2 = new LinkSpanDrawable<>(styleSpan, this.root.resourcesProvider, f, y, true);
                            LinkPath linkPathObtainNewPath2 = linkSpanDrawable2.obtainNewPath();
                            linkPathObtainNewPath2.setCurrentLayout(this.layout, spanStart2, 0.0f);
                            this.layout.getSelectionPath(spanStart2, i, linkPathObtainNewPath2);
                            this.pressedLinkDrawable = linkSpanDrawable2;
                            if (this.linkCollector == null) {
                                this.linkCollector = new LinkSpanDrawable.LinkCollector(this.view);
                            }
                            this.linkCollector.addLink(linkSpanDrawable2);
                            View view3 = this.view;
                            if (view3 != null) {
                                view3.invalidate();
                            }
                            scheduleLongPress();
                            return z;
                        }
                        AnimatedEmojiSpan[] animatedEmojiSpanArr = (AnimatedEmojiSpan[]) spannable.getSpans(offsetForHorizontal, offsetForHorizontal, AnimatedEmojiSpan.class);
                        if (animatedEmojiSpanArr != null && animatedEmojiSpanArr.length > 0) {
                            this.pressedEmoji = animatedEmojiSpanArr[0];
                            return true;
                        }
                    } else {
                        styleSpan = null;
                        if (styleSpan == null) {
                        }
                    }
                }
            }
            return false;
        }

        private void scheduleLongPress() {
            cancelLongPress();
            Runnable runnable = new Runnable() { // from class: org.telegram.messenger.RichMessageLayout$Text$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$scheduleLongPress$1();
                }
            };
            this.longPressRunnable = runnable;
            AndroidUtilities.runOnUIThread(runnable, ViewConfiguration.getLongPressTimeout());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$scheduleLongPress$1() {
            this.longPressRunnable = null;
            if (this.pressedLink == null) {
                return;
            }
            this.longPressFired = true;
            View view = this.view;
            if (view != null) {
                try {
                    view.performHapticFeedback(0);
                } catch (Exception unused) {
                }
            }
            dispatchLinkClick(this.pressedLink, true);
            LinkSpanDrawable.LinkCollector linkCollector = this.linkCollector;
            if (linkCollector != null) {
                linkCollector.clear();
            }
            this.pressedLinkDrawable = null;
        }

        private void cancelLongPress() {
            Runnable runnable = this.longPressRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.longPressRunnable = null;
            }
        }

        private void dispatchLinkClick(CharacterStyle characterStyle, boolean z) {
            CharacterStyle uRLSpanMono;
            View view;
            String url;
            if (characterStyle == null) {
                return;
            }
            if (!z && (characterStyle instanceof URLSpan) && (url = ((URLSpan) characterStyle).getURL()) != null && url.startsWith("#") && this.root.handleAnchorClick(url)) {
                View view2 = this.view;
                if (view2 != null) {
                    view2.playSoundEffect(0);
                    return;
                }
                return;
            }
            if ((characterStyle instanceof StyleSpan) && TLObject.hasFlag(((StyleSpan) characterStyle).flags, 256)) {
                uRLSpanMono = new URLSpanMono(this.layout.getText(), this.pressedLinkStart, this.pressedLinkEnd, this.root.isOut() ? (byte) 1 : (byte) 0);
            } else {
                uRLSpanMono = characterStyle;
            }
            ChatMessageCell.ChatMessageCellDelegate delegate = this.root.getDelegate();
            ChatMessageCell cell = this.root.getCell();
            if (delegate != null && cell != null) {
                View view3 = this.view;
                if (view3 != null && !z) {
                    view3.playSoundEffect(0);
                }
                delegate.didPressUrl(cell, uRLSpanMono, z);
                return;
            }
            if (z || (view = this.view) == null || !(characterStyle instanceof ClickableSpan)) {
                return;
            }
            view.playSoundEffect(0);
            ((ClickableSpan) characterStyle).onClick(this.view);
        }

        private void revealSpoilers(int i, int i2) {
            if (this.pressedSpoiler == null) {
                return;
            }
            float width = this.layout.getWidth();
            float height = this.layout.getHeight();
            float fSqrt = (float) Math.sqrt((width * width) + (height * height));
            final View view = this.view;
            final RichMessageLayout richMessageLayout = this.root;
            this.pressedSpoiler.setOnRippleEndCallback(new Runnable() { // from class: org.telegram.messenger.RichMessageLayout$Text$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$revealSpoilers$3(view, richMessageLayout);
                }
            });
            Iterator<SpoilerEffect> it = this.spoilers.iterator();
            while (it.hasNext()) {
                it.next().startRipple(i, i2, fSqrt);
            }
            if (view != null) {
                view.playSoundEffect(0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$revealSpoilers$3(final View view, final RichMessageLayout richMessageLayout) {
            if (view == null) {
                return;
            }
            view.post(new Runnable() { // from class: org.telegram.messenger.RichMessageLayout$Text$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$revealSpoilers$2(richMessageLayout, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$revealSpoilers$2(RichMessageLayout richMessageLayout, View view) {
            if (richMessageLayout != null) {
                MessageObject messageObject = richMessageLayout.messageObject;
                if (messageObject != null) {
                    messageObject.isSpoilersRevealed = true;
                }
                ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList = richMessageLayout.textBlocks;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    TextSelectionHelper.TextLayoutBlock textLayoutBlock = arrayList.get(i);
                    i++;
                    TextSelectionHelper.TextLayoutBlock textLayoutBlock2 = textLayoutBlock;
                    if (textLayoutBlock2 instanceof Text) {
                        ((Text) textLayoutBlock2).spoilers.clear();
                    }
                }
            } else {
                this.spoilers.clear();
            }
            view.invalidate();
        }

        public int getHeight() {
            return this.layout.getHeight();
        }

        public int getMinWidth() {
            return Math.max(0, this.right - this.left);
        }

        public int getLastLineWidth() {
            return Math.max(0, this.lastLineRight - this.left);
        }

        public void onAttachedToWindow() {
            this.animatedEmojiStack = AnimatedEmojiSpan.update(0, this.view, this.root.invalidateAnimatedEmojiInParent, this.animatedEmojiStack, this.layout);
            LinkSpanDrawable.LinkCollector linkCollector = this.linkCollector;
            if (linkCollector != null) {
                linkCollector.setParent(this.view);
            }
        }

        public void onDetachedFromWindow() {
            AnimatedEmojiSpan.release(this.view, this.animatedEmojiStack);
            this.animatedEmojiStack = null;
            LinkSpanDrawable.LinkCollector linkCollector = this.linkCollector;
            if (linkCollector != null) {
                linkCollector.setParent(null);
            }
        }

        public void refreshAnimatedEmoji(int i) {
            View view = this.view;
            if (view == null) {
                return;
            }
            AnimatedEmojiSpan.release(view, this.animatedEmojiStack);
            this.animatedEmojiStack = null;
            this.animatedEmojiStack = AnimatedEmojiSpan.update(i, this.view, this.root.invalidateAnimatedEmojiInParent, (AnimatedEmojiSpan.EmojiGroupedSpans) null, this.layout);
        }

        public void setBlockX(int i) {
            this.blockX = i;
        }

        public void setBlockY(int i) {
            this.blockY = i;
        }

        @Override // org.telegram.ui.Components.TableLayout.CellText
        public void setX(int i) {
            this.f818x = i;
        }

        @Override // org.telegram.ui.Components.TableLayout.CellText
        public void setY(int i) {
            this.f819y = i;
        }

        @Override // org.telegram.ui.Components.TableLayout.CellText
        public void setRow(int i) {
            this.row = i;
        }

        public Text offset(int i, int i2) {
            this.f818x += i;
            this.f819y += i2;
            return this;
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
        public Layout getLayout() {
            return this.layout;
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
        public int getX() {
            return this.blockX + this.f818x;
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
        public int getY() {
            return this.blockY + this.f819y;
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
        public int getRow() {
            return this.row;
        }

        @Override // org.telegram.ui.Components.TableLayout.CellText
        public void attach(View view) {
            View view2 = this.view;
            if (view == view2) {
                return;
            }
            if (view2 != null) {
                detach(view2);
            }
            this.view = view;
            onAttachedToWindow();
        }

        @Override // org.telegram.ui.Components.TableLayout.CellText
        public void detach(View view) {
            View view2 = this.view;
            if (view2 == view && view2 != null) {
                this.view = null;
                onDetachedFromWindow();
            }
        }

        public boolean isAttached() {
            return this.view != null;
        }
    }

    public static class RichTextBlock extends RichBlock {
        private final boolean centered;
        public boolean pullquote;
        public int quoteAuthorStart;
        public final Text text;
        public final Text[] texts;

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void appendAccessibilityText(SpannableStringBuilder spannableStringBuilder) {
            RichBlock.appendText(spannableStringBuilder, this.text, this.texts);
        }

        public RichTextBlock(RichMessageLayout richMessageLayout, Rect rect, int i, CharSequence charSequence) {
            this(richMessageLayout, rect, i, charSequence, Layout.Alignment.ALIGN_NORMAL);
        }

        public RichTextBlock(RichMessageLayout richMessageLayout, Rect rect, int i, CharSequence charSequence, Layout.Alignment alignment) {
            super(richMessageLayout, rect, i);
            this.quoteAuthorStart = -1;
            this.centered = alignment == Layout.Alignment.ALIGN_CENTER;
            Text text = new Text(richMessageLayout, charSequence, this.maxWidth, alignment);
            this.text = text;
            this.texts = new Text[]{text};
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean forcesTimeToNewLine() {
            return this.centered;
        }

        private int rtlOffset() {
            int minWidth;
            int minWidth2;
            boolean z = this.centered;
            RichMessageLayout richMessageLayout = this.root;
            if (z) {
                int minWidth3 = richMessageLayout.getMinWidth();
                RichMessageLayout richMessageLayout2 = this.root;
                minWidth = (((minWidth3 + richMessageLayout2.padRight) - richMessageLayout2.padLeft) - this.text.getMinWidth()) / 2;
                minWidth2 = this.padding.left;
            } else {
                if (!richMessageLayout.isRtl()) {
                    return 0;
                }
                int minWidth4 = (this.root.getMinWidth() + this.root.padRight) - AndroidUtilities.dp(14.0f);
                Rect rect = this.padding;
                minWidth = (minWidth4 - rect.right) - rect.left;
                minWidth2 = this.text.getMinWidth();
            }
            return minWidth - minWidth2;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDraw(Canvas canvas) {
            int iRtlOffset = rtlOffset();
            Text text = this.text;
            if (iRtlOffset != 0) {
                text.setX((this.padding.left + iRtlOffset) - text.left);
                canvas.save();
                canvas.translate(iRtlOffset, 0.0f);
                this.text.draw(canvas);
                canvas.restore();
                return;
            }
            text.draw(canvas);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDrawFaded(Canvas canvas, int i, float f) {
            int iRtlOffset = rtlOffset();
            Text text = this.text;
            if (iRtlOffset != 0) {
                text.setX((this.padding.left + iRtlOffset) - text.left);
                canvas.save();
                canvas.translate(iRtlOffset, 0.0f);
                this.text.drawFade(canvas, i, f);
                canvas.restore();
                return;
            }
            text.drawFade(canvas, i, f);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock, org.telegram.ui.MultiLayoutTypingAnimator.Block
        public Layout getLayout() {
            return this.text.layout;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int iRtlOffset = rtlOffset();
            if (iRtlOffset == 0) {
                return this.text.onTouchEvent(motionEvent);
            }
            motionEvent.offsetLocation(-iRtlOffset, 0.0f);
            boolean zOnTouchEvent = this.text.onTouchEvent(motionEvent);
            motionEvent.offsetLocation(iRtlOffset, 0.0f);
            return zOnTouchEvent;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean findLink(CharacterStyle characterStyle, int i, FoundLink foundLink) {
            if (!this.text.fillFoundLink(characterStyle, foundLink)) {
                return false;
            }
            foundLink.f812x = (this.padding.left + rtlOffset()) - this.text.left;
            foundLink.f813y = i + this.padding.top;
            return true;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getHeight() {
            return this.padding.top + this.text.getHeight() + this.padding.bottom;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getMinWidth() {
            return this.padding.left + this.text.getMinWidth() + this.padding.right;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getLastLineWidth() {
            return this.padding.left + this.text.getLastLineWidth() + this.padding.right;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public TextSelectionHelper.TextLayoutBlock[] getText() {
            return this.texts;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void placeTexts(int i, int i2, int i3) {
            super.placeTexts(i, i2, i3);
            int iRtlOffset = rtlOffset();
            if (iRtlOffset != 0) {
                Text text = this.text;
                text.setX((i + iRtlOffset) - text.left);
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onAttachedToWindow() {
            this.text.attach(this.view);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDetachedFromWindow() {
            this.text.detach(this.view);
        }
    }

    public static class RichCaptionBlock extends RichBlock {
        public final Text caption;
        public final Text credit;
        public final boolean rtl;
        private final TextSelectionHelper.TextLayoutBlock[] texts;

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean forcesTimeToNewLine() {
            return false;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void appendAccessibilityText(SpannableStringBuilder spannableStringBuilder) {
            StaticLayout staticLayout;
            RichBlock.appendText(spannableStringBuilder, this.caption, null);
            Text text = this.credit;
            if (text == null || (staticLayout = text.layout) == null || TextUtils.isEmpty(staticLayout.getText())) {
                return;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) != '\n') {
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append(this.credit.layout.getText());
        }

        public RichCaptionBlock(RichMessageLayout richMessageLayout, Rect rect, int i, CharSequence charSequence, CharSequence charSequence2) {
            super(richMessageLayout, rect, i);
            Text text = !TextUtils.isEmpty(charSequence) ? new Text(richMessageLayout, charSequence, this.maxWidth) : null;
            this.caption = text;
            Text text2 = TextUtils.isEmpty(charSequence2) ? null : new Text(richMessageLayout, charSequence2, this.maxWidth);
            this.credit = text2;
            this.rtl = richMessageLayout.isRtl();
            ArrayList arrayList = new ArrayList(2);
            if (text != null) {
                arrayList.add(text);
            }
            if (text2 != null) {
                arrayList.add(text2);
            }
            this.texts = (TextSelectionHelper.TextLayoutBlock[]) arrayList.toArray(new TextSelectionHelper.TextLayoutBlock[0]);
        }

        private int captionHeight() {
            Text text = this.caption;
            if (text != null) {
                return text.getHeight();
            }
            return 0;
        }

        private int creditHeight() {
            Text text = this.credit;
            if (text != null) {
                return text.getHeight();
            }
            return 0;
        }

        private int gap() {
            if (this.caption == null || this.credit == null) {
                return 0;
            }
            return AndroidUtilities.dp(4.0f);
        }

        private int creditDrawX() {
            if (this.credit == null || !this.rtl) {
                return 0;
            }
            int minWidth = this.root.getMinWidth();
            Rect rect = this.padding;
            return Math.max(0, ((minWidth - rect.left) - rect.right) - this.credit.getMinWidth());
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getHeight() {
            return this.padding.top + captionHeight() + gap() + creditHeight() + this.padding.bottom;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getMinWidth() {
            Text text = this.caption;
            int iMax = text != null ? Math.max(0, text.getMinWidth()) : 0;
            Text text2 = this.credit;
            if (text2 != null) {
                iMax = Math.max(iMax, text2.getMinWidth());
            }
            Rect rect = this.padding;
            return rect.left + iMax + rect.right;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getLastLineWidth() {
            int lastLineWidth;
            int i;
            Text text = this.credit;
            if (text != null) {
                lastLineWidth = this.padding.left + text.getLastLineWidth();
                i = this.padding.right;
            } else {
                Text text2 = this.caption;
                Rect rect = this.padding;
                if (text2 != null) {
                    lastLineWidth = rect.left + text2.getLastLineWidth();
                    i = this.padding.right;
                } else {
                    return rect.left + rect.right;
                }
            }
            return lastLineWidth + i;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDraw(Canvas canvas) {
            Text text = this.caption;
            if (text != null) {
                text.draw(canvas);
            }
            if (this.credit != null) {
                canvas.save();
                canvas.translate(creditDrawX(), captionHeight() + gap());
                this.credit.draw(canvas);
                canvas.restore();
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int iCaptionHeight = captionHeight();
            int iGap = gap();
            float y = motionEvent.getY();
            int i = this.padding.top;
            float f = y - i;
            if (this.caption != null && f >= 0.0f && f < iCaptionHeight) {
                motionEvent.offsetLocation(0.0f, -i);
                boolean zOnTouchEvent = this.caption.onTouchEvent(motionEvent);
                motionEvent.offsetLocation(0.0f, this.padding.top);
                return zOnTouchEvent;
            }
            if (this.credit == null || f < iCaptionHeight + iGap) {
                return false;
            }
            int i2 = i + iCaptionHeight + iGap;
            int iCreditDrawX = creditDrawX();
            motionEvent.offsetLocation(-iCreditDrawX, -i2);
            boolean zOnTouchEvent2 = this.credit.onTouchEvent(motionEvent);
            motionEvent.offsetLocation(iCreditDrawX, i2);
            return zOnTouchEvent2;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public TextSelectionHelper.TextLayoutBlock[] getText() {
            return this.texts;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void placeTexts(int i, int i2, int i3) {
            this.layoutX = i;
            this.layoutY = i2;
            this.layoutRow = i3;
            Text text = this.caption;
            if (text != null) {
                text.setX(i - text.left);
                this.caption.setY(i2);
                this.caption.setRow(i3);
            }
            Text text2 = this.credit;
            if (text2 != null) {
                text2.setX((i + creditDrawX()) - this.credit.left);
                this.credit.setY(i2 + captionHeight() + gap());
                this.credit.setRow(i3);
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onAttachedToWindow() {
            Text text = this.caption;
            if (text != null) {
                text.attach(this.view);
            }
            Text text2 = this.credit;
            if (text2 != null) {
                text2.attach(this.view);
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDetachedFromWindow() {
            Text text = this.caption;
            if (text != null) {
                text.detach(this.view);
            }
            Text text2 = this.credit;
            if (text2 != null) {
                text2.detach(this.view);
            }
        }
    }

    public static class RichDetailsBlock extends RichBlock {
        private static final int ARROW_W = 26;
        private static final int H_GAP = 4;
        private static final int VPAD = 6;
        public float animClipBottom;
        public float animClipTop;
        public final AnimatedArrowDrawable arrow;
        public final TL_iv.pageBlockDetails block;
        private ButtonBounce bounce;
        private boolean pressed;
        public final Text[] texts;
        public final Text title;

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getAccessibilityElementCount() {
            return 1;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public CharSequence getAccessibilityElementText(int i) {
            StaticLayout staticLayout;
            Text text = this.title;
            return TextUtils.concat((text == null || (staticLayout = text.layout) == null) ? _UrlKt.FRAGMENT_ENCODE_SET : staticLayout.getText(), ", ", LocaleController.getString(isOpen() ? C2573R.string.AccDescrExpanded : C2573R.string.AccDescrCollapsed));
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void getAccessibilityElementBounds(int i, Rect rect) {
            int iDp = AndroidUtilities.dp(26.0f);
            Text text = this.title;
            int iMax = Math.max(iDp, text != null ? text.getHeight() : 0);
            int iDp2 = ((int) this.currY) + this.padding.top + AndroidUtilities.dp(6.0f);
            int i2 = this.padding.left;
            rect.set(i2, iDp2, this.maxWidth + i2, iMax + iDp2);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean onAccessibilityElementClick(int i, View view) {
            toggle();
            return true;
        }

        public RichDetailsBlock(RichMessageLayout richMessageLayout, Rect rect, int i, TL_iv.pageBlockDetails pageblockdetails, CharSequence charSequence) {
            super(richMessageLayout, rect, i);
            this.block = pageblockdetails;
            Text text = new Text(richMessageLayout, charSequence, Math.max(0, this.maxWidth - AndroidUtilities.dp(30.0f)));
            this.title = text;
            this.texts = new Text[]{text};
            AnimatedArrowDrawable animatedArrowDrawable = new AnimatedArrowDrawable(richMessageLayout.getThemedColor(richMessageLayout.isOut() ? Theme.key_chat_messageTextOut : Theme.key_chat_messageTextIn), true);
            this.arrow = animatedArrowDrawable;
            animatedArrowDrawable.setAnimationProgress(pageblockdetails.open ? 0.0f : 1.0f);
        }

        public boolean isOpen() {
            return this.block.open;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDraw(Canvas canvas) {
            ButtonBounce buttonBounce = this.bounce;
            float scale = buttonBounce != null ? buttonBounce.getScale(0.02f) : 1.0f;
            int iMax = Math.max(AndroidUtilities.dp(26.0f), this.title.getHeight());
            if (scale != 1.0f) {
                canvas.save();
                canvas.scale(scale, scale, AndroidUtilities.dp(26.0f) / 2.0f, AndroidUtilities.dp(6.0f) + (iMax / 2.0f));
            }
            RichMessageLayout richMessageLayout = this.root;
            this.arrow.setColor(richMessageLayout.getThemedColor(richMessageLayout.isOut() ? Theme.key_chat_messageTextOut : Theme.key_chat_messageTextIn));
            canvas.save();
            canvas.translate(0.0f, AndroidUtilities.dp(6.0f) + ((iMax - AndroidUtilities.dp(13.0f)) / 2.0f));
            this.arrow.draw(canvas);
            canvas.restore();
            canvas.save();
            canvas.translate(AndroidUtilities.dp(30.0f), AndroidUtilities.dp(6.0f) + ((iMax - r2) / 2.0f));
            this.title.draw(canvas);
            canvas.restore();
            if (scale != 1.0f) {
                canvas.restore();
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getHeight() {
            return this.padding.top + AndroidUtilities.dp(6.0f) + Math.max(AndroidUtilities.dp(26.0f), this.title.getHeight()) + AndroidUtilities.dp(6.0f) + this.padding.bottom;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getMinWidth() {
            return this.padding.left + AndroidUtilities.dp(30.0f) + this.title.getMinWidth() + this.padding.right;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getLastLineWidth() {
            return getMinWidth();
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public TextSelectionHelper.TextLayoutBlock[] getText() {
            return this.texts;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void placeTexts(int i, int i2, int i3) {
            this.layoutX = i;
            this.layoutY = i2;
            this.layoutRow = i3;
            int iMax = Math.max(AndroidUtilities.dp(26.0f), this.title.getHeight());
            this.title.setX((i + AndroidUtilities.dp(30.0f)) - this.title.left);
            this.title.setY(i2 + AndroidUtilities.dp(6.0f) + ((iMax - this.title.getHeight()) / 2));
            this.title.setRow(i3);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean findLink(CharacterStyle characterStyle, int i, FoundLink foundLink) {
            if (!this.title.fillFoundLink(characterStyle, foundLink)) {
                return false;
            }
            int iMax = Math.max(AndroidUtilities.dp(26.0f), this.title.getHeight());
            foundLink.f812x = (this.padding.left + AndroidUtilities.dp(30.0f)) - this.title.left;
            foundLink.f813y = i + this.padding.top + AndroidUtilities.dp(6.0f) + ((iMax - this.title.getHeight()) / 2.0f);
            return true;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.pressed = true;
                ensureBounce();
                ButtonBounce buttonBounce = this.bounce;
                if (buttonBounce != null) {
                    buttonBounce.setPressed(true);
                }
                return true;
            }
            if (actionMasked == 1) {
                if (!this.pressed) {
                    return false;
                }
                this.pressed = false;
                ButtonBounce buttonBounce2 = this.bounce;
                if (buttonBounce2 != null) {
                    buttonBounce2.setPressed(false);
                }
                View view = this.root.view;
                if (view != null) {
                    view.playSoundEffect(0);
                }
                toggle();
                return true;
            }
            if (actionMasked == 3) {
                this.pressed = false;
                ButtonBounce buttonBounce3 = this.bounce;
                if (buttonBounce3 != null) {
                    buttonBounce3.setPressed(false);
                }
            }
            return this.pressed;
        }

        private void ensureBounce() {
            View view;
            if (this.bounce != null || (view = this.root.view) == null) {
                return;
            }
            this.bounce = new ButtonBounce(view);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onAttachedToWindow() {
            this.title.attach(this.view);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDetachedFromWindow() {
            this.title.detach(this.view);
        }

        private void toggle() {
            this.root.snapshotForDetailsAnimation();
            TL_iv.pageBlockDetails pageblockdetails = this.block;
            boolean z = pageblockdetails.open;
            pageblockdetails.open = !z;
            this.arrow.setAnimationProgressAnimated(!z ? 0.0f : 1.0f);
            RichMessageLayout richMessageLayout = this.root;
            richMessageLayout.detailsAnimating = true;
            richMessageLayout.reposition();
            View view = this.root.view;
            if (view != null) {
                view.invalidate();
            }
            ChatMessageCell cell = this.root.getCell();
            ChatMessageCell.ChatMessageCellDelegate delegate = this.root.getDelegate();
            if (cell == null || delegate == null) {
                return;
            }
            delegate.forceUpdate(cell, false);
        }
    }

    public static class RichTableBlock extends RichBlock implements TableLayout.TableLayoutDelegate {
        private final ArrayList<CellBlock> cellBlocks;
        private float cellDx;
        private float cellDy;
        private final ArrayList<Text> cellTexts;
        private final int contentHeight;
        private final int contentMeasuredWidth;
        private int downScrollX;
        private float downX;
        private float downY;
        private boolean dragging;
        private final Runnable flingTick;
        private Paint halfLinePaint;
        private Paint headerPaint;
        private Paint linePaint;
        private int maxFlingVelocity;
        private final int maxScrollX;
        private int minFlingVelocity;
        public final TL_iv.pageBlockTable pageBlock;
        private Text pressedCellText;
        private int scrollX;
        private OverScroller scroller;
        private Paint stripPaint;
        public final TableLayout tableLayout;
        private boolean textHandlingTouch;
        private final TextSelectionHelper.TextLayoutBlock[] textsArr;
        private final Text title;
        private final int titleHeight;
        private int touchSlop;
        private VelocityTracker velocityTracker;
        private final int viewportWidth;

        @Override // org.telegram.ui.Components.TableLayout.TableLayoutDelegate
        public /* bridge */ /* synthetic */ void onLayoutChild(TableLayout.CellText cellText, int i, int i2) {
            super.onLayoutChild(cellText, i, i2);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void appendAccessibilityText(SpannableStringBuilder spannableStringBuilder) {
            StaticLayout staticLayout;
            RichBlock.appendText(spannableStringBuilder, this.title, null);
            for (int i = 0; i < this.cellTexts.size(); i++) {
                Text text = this.cellTexts.get(i);
                if (text != null && (staticLayout = text.layout) != null && !TextUtils.isEmpty(staticLayout.getText())) {
                    if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) != '\n') {
                        spannableStringBuilder.append(", ");
                    }
                    spannableStringBuilder.append(text.layout.getText());
                }
            }
        }

        public static final class CellBlock implements MultiLayoutTypingAnimator.Block {
            final TableLayout.Child child;

            @Override // org.telegram.ui.MultiLayoutTypingAnimator.Block
            public View getParentView() {
                return null;
            }

            public CellBlock(TableLayout.Child child) {
                this.child = child;
            }

            @Override // org.telegram.ui.MultiLayoutTypingAnimator.Block
            public Layout getLayout() {
                TableLayout.CellText cellText = this.child.textLayout;
                if (cellText == null) {
                    return null;
                }
                return cellText.getLayout();
            }
        }

        private void ensurePaints() {
            if (this.linePaint == null) {
                Paint paint = new Paint(1);
                this.linePaint = paint;
                Paint.Style style = Paint.Style.STROKE;
                paint.setStyle(style);
                this.linePaint.setStrokeWidth(AndroidUtilities.dp(1.0f));
                Paint paint2 = new Paint();
                this.halfLinePaint = paint2;
                paint2.setStyle(style);
                this.halfLinePaint.setStrokeWidth(AndroidUtilities.dp(1.0f) / 2.0f);
                this.headerPaint = new Paint();
                this.stripPaint = new Paint();
            }
            int themedColor = this.root.getThemedColor(Theme.key_windowBackgroundWhiteInputField);
            this.linePaint.setColor(themedColor);
            this.halfLinePaint.setColor(themedColor);
            this.headerPaint.setColor(369098752);
            this.stripPaint.setColor(167772160);
        }

        public RichTableBlock(RichMessageLayout richMessageLayout, Rect rect, int i, TL_iv.pageBlockTable pageblocktable) {
            int i2;
            super(richMessageLayout, rect, i);
            this.cellTexts = new ArrayList<>();
            this.cellBlocks = new ArrayList<>();
            this.flingTick = new Runnable() { // from class: org.telegram.messenger.RichMessageLayout.RichTableBlock.1
                @Override // java.lang.Runnable
                public void run() {
                    if (RichTableBlock.this.scroller != null) {
                        RichTableBlock richTableBlock = RichTableBlock.this;
                        if (richTableBlock.view != null && richTableBlock.scroller.computeScrollOffset()) {
                            int currX = RichTableBlock.this.scroller.getCurrX();
                            if (currX < 0) {
                                currX = 0;
                            }
                            if (currX > RichTableBlock.this.maxScrollX) {
                                currX = RichTableBlock.this.maxScrollX;
                            }
                            if (currX != RichTableBlock.this.scrollX) {
                                RichTableBlock.this.scrollX = currX;
                                RichTableBlock richTableBlock2 = RichTableBlock.this;
                                richTableBlock2.placeTexts(richTableBlock2.layoutX, richTableBlock2.layoutY, richTableBlock2.layoutRow);
                                RichTableBlock.this.view.invalidate();
                            }
                            if (RichTableBlock.this.scroller.isFinished()) {
                                return;
                            }
                            RichTableBlock.this.view.postOnAnimation(this);
                        }
                    }
                }
            };
            this.pageBlock = pageblocktable;
            this.viewportWidth = this.maxWidth;
            TableLayout tableLayout = new TableLayout(ApplicationLoader.applicationContext, this, null);
            this.tableLayout = tableLayout;
            tableLayout.setOrientation(0);
            tableLayout.setRowOrderPreserved(true);
            tableLayout.setDrawLines(pageblocktable.bordered);
            tableLayout.setStriped(pageblocktable.striped);
            tableLayout.setRtl(richMessageLayout.isRtl());
            if (pageblocktable.rows.isEmpty()) {
                i2 = 0;
            } else {
                TL_iv.pageTableRow pagetablerow = pageblocktable.rows.get(0);
                i2 = 0;
                for (int i3 = 0; i3 < pagetablerow.cells.size(); i3++) {
                    int i4 = pagetablerow.cells.get(i3).colspan;
                    if (i4 == 0) {
                        i4 = 1;
                    }
                    i2 += i4;
                }
            }
            for (int i5 = 0; i5 < pageblocktable.rows.size(); i5++) {
                TL_iv.pageTableRow pagetablerow2 = pageblocktable.rows.get(i5);
                int i6 = 0;
                for (int i7 = 0; i7 < pagetablerow2.cells.size(); i7++) {
                    TL_iv.pageTableCell pagetablecell = pagetablerow2.cells.get(i7);
                    int i8 = pagetablecell.colspan;
                    i8 = i8 == 0 ? 1 : i8;
                    int i9 = pagetablecell.rowspan;
                    i9 = i9 == 0 ? 1 : i9;
                    TL_iv.RichText richText = pagetablecell.text;
                    TableLayout tableLayout2 = this.tableLayout;
                    if (richText != null) {
                        tableLayout2.addChild(pagetablecell, i6, i5, i8);
                    } else {
                        tableLayout2.addChild(i6, i5, i8, i9);
                    }
                    i6 += i8;
                }
            }
            this.tableLayout.setColumnCount(i2);
            this.tableLayout.measure(View.MeasureSpec.makeMeasureSpec(this.maxWidth, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            int measuredWidth = this.tableLayout.getMeasuredWidth();
            this.contentMeasuredWidth = measuredWidth;
            this.contentHeight = this.tableLayout.getMeasuredHeight();
            this.maxScrollX = Math.max(0, measuredWidth - this.viewportWidth);
            TL_iv.RichText richText2 = pageblocktable.title;
            if (richText2 != null && !(richText2 instanceof TL_iv.textEmpty) && !TextUtils.isEmpty(RichMessageLayout.getString(richText2))) {
                Text text = new Text(richMessageLayout, richMessageLayout.formatText(pageblocktable.title, 0), Math.max(0, Math.min(this.viewportWidth, measuredWidth)));
                this.title = text;
                text.setDrawAtOrigin(true);
                this.titleHeight = text.getHeight() + AndroidUtilities.dp(4.0f);
            } else {
                this.title = null;
                this.titleHeight = 0;
            }
            for (int i10 = 0; i10 < this.tableLayout.getChildCount(); i10++) {
                TableLayout.Child childAt = this.tableLayout.getChildAt(i10);
                TableLayout.CellText cellText = childAt.textLayout;
                if (cellText instanceof Text) {
                    this.cellTexts.add((Text) cellText);
                    this.cellBlocks.add(new CellBlock(childAt));
                }
            }
            ArrayList arrayList = new ArrayList();
            Text text2 = this.title;
            if (text2 != null) {
                arrayList.add(text2);
            }
            arrayList.addAll(this.cellTexts);
            this.textsArr = (TextSelectionHelper.TextLayoutBlock[]) arrayList.toArray(new TextSelectionHelper.TextLayoutBlock[0]);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void collectAnimatorBlocks(List<MultiLayoutTypingAnimator.Block> list) {
            if (this.cellBlocks.isEmpty()) {
                super.collectAnimatorBlocks(list);
            } else {
                list.addAll(this.cellBlocks);
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void drawWithTyping(Canvas canvas) {
            MultiLayoutTypingAnimator multiLayoutTypingAnimator = this.typingAnimator;
            if (multiLayoutTypingAnimator == null || !multiLayoutTypingAnimator.isRunning() || this.cellBlocks.isEmpty() || multiLayoutTypingAnimator.indexOf(this.cellBlocks.get(0)) < 0) {
                draw(canvas);
                return;
            }
            float blockAlpha = multiLayoutTypingAnimator.getBlockAlpha(this.cellBlocks.get(0));
            if (blockAlpha <= 0.0f) {
                return;
            }
            canvas.save();
            Rect rect = this.padding;
            canvas.translate(rect.left, rect.top);
            drawTitle(canvas);
            canvas.translate(0.0f, this.titleHeight);
            drawCellsWithTyping(canvas, multiLayoutTypingAnimator, blockAlpha);
            canvas.restore();
        }

        private void drawCellsWithTyping(Canvas canvas, MultiLayoutTypingAnimator multiLayoutTypingAnimator, float f) {
            CellBlock cellBlock;
            int iSaveLayerAlpha = canvas.saveLayerAlpha(-this.root.padLeft, 0.0f, Math.min(this.viewportWidth, this.contentMeasuredWidth) + this.root.padRight, this.contentHeight, (int) (f * 255.0f), 31);
            canvas.save();
            canvas.translate(-this.scrollX, 0.0f);
            int childCount = this.tableLayout.getChildCount();
            int i = 0;
            int i2 = 0;
            while (i2 < childCount) {
                TableLayout.Child childAt = this.tableLayout.getChildAt(i2);
                if (i >= this.cellBlocks.size() || this.cellBlocks.get(i).child != childAt) {
                    cellBlock = null;
                } else {
                    cellBlock = this.cellBlocks.get(i);
                    i++;
                }
                int i3 = i;
                if (cellBlock == null) {
                    childAt.draw(canvas, this.view);
                } else if (!multiLayoutTypingAnimator.needDraw(cellBlock)) {
                    childAt.draw(canvas, this.view, false);
                } else if (multiLayoutTypingAnimator.isFadeBlock(cellBlock)) {
                    childAt.draw(canvas, this.view, false);
                    if (childAt.textLayout instanceof Text) {
                        canvas.save();
                        canvas.translate(childAt.getTextX(), childAt.getTextY());
                        ((Text) childAt.textLayout).drawFade(canvas, multiLayoutTypingAnimator.getFadeLineIndex(cellBlock), multiLayoutTypingAnimator.getFadeXPosition(cellBlock));
                        canvas.restore();
                    }
                } else {
                    float blockAlpha = multiLayoutTypingAnimator.getBlockAlpha(cellBlock);
                    if (blockAlpha >= 1.0f) {
                        childAt.draw(canvas, this.view);
                    } else if (blockAlpha > 0.0f && childAt.textLayout != null) {
                        childAt.draw(canvas, this.view, false);
                        canvas.save();
                        canvas.translate(childAt.getTextX(), childAt.getTextY());
                        int iSaveLayerAlpha2 = canvas.saveLayerAlpha(0.0f, 0.0f, childAt.getMeasuredWidth(), childAt.getMeasuredHeight(), (int) (blockAlpha * 255.0f), 31);
                        childAt.textLayout.draw(canvas, this.view);
                        canvas.restoreToCount(iSaveLayerAlpha2);
                        canvas.restore();
                    } else {
                        childAt.draw(canvas, this.view, false);
                    }
                }
                i2++;
                i = i3;
            }
            canvas.restore();
            RectF rectF = AndroidUtilities.rectTmp;
            int i4 = this.root.padLeft;
            rectF.set(-i4, 0.0f, (-i4) + AndroidUtilities.dp(12.0f), this.contentHeight);
            this.root.clip.draw(canvas, rectF, 0, 1.0f);
            int minWidth = this.root.getMinWidth() + this.root.padRight;
            Rect rect = this.padding;
            rectF.set(r4 - AndroidUtilities.dp(12.0f), 0.0f, (minWidth - rect.left) - rect.right, this.contentHeight);
            this.root.clip.draw(canvas, rectF, 2, 1.0f);
            canvas.restoreToCount(iSaveLayerAlpha);
        }

        @Override // org.telegram.ui.Components.TableLayout.TableLayoutDelegate
        public Text createTextLayout(TL_iv.pageTableCell pagetablecell, int i) {
            Layout.Alignment alignment;
            if (pagetablecell == null) {
                return null;
            }
            CharSequence text = this.root.formatText(pagetablecell.text, pagetablecell.header ? 16 : 0);
            if (pagetablecell.align_right) {
                alignment = Layout.Alignment.ALIGN_OPPOSITE;
            } else if (pagetablecell.align_center) {
                alignment = Layout.Alignment.ALIGN_CENTER;
            } else {
                alignment = Layout.Alignment.ALIGN_NORMAL;
            }
            Text text2 = new Text(this.root, text, i, alignment);
            text2.setDrawAtOrigin(true);
            return text2;
        }

        @Override // org.telegram.ui.Components.TableLayout.TableLayoutDelegate
        public Paint getLinePaint() {
            ensurePaints();
            return this.linePaint;
        }

        public Paint getHalfLinePaint() {
            ensurePaints();
            return this.halfLinePaint;
        }

        @Override // org.telegram.ui.Components.TableLayout.TableLayoutDelegate
        public Paint getHeaderPaint() {
            ensurePaints();
            return this.headerPaint;
        }

        @Override // org.telegram.ui.Components.TableLayout.TableLayoutDelegate
        public Paint getStripPaint() {
            ensurePaints();
            return this.stripPaint;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDraw(Canvas canvas) {
            drawTitle(canvas);
            canvas.save();
            canvas.translate(0.0f, this.titleHeight);
            canvas.saveLayerAlpha(-this.root.padLeft, 0.0f, Math.min(this.viewportWidth, this.contentMeasuredWidth) + this.root.padRight, this.contentHeight, 255, 31);
            canvas.save();
            canvas.translate(-this.scrollX, 0.0f);
            int childCount = this.tableLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.tableLayout.getChildAt(i).draw(canvas, this.view);
            }
            canvas.restore();
            RectF rectF = AndroidUtilities.rectTmp;
            int i2 = this.root.padLeft;
            rectF.set(-i2, 0.0f, (-i2) + AndroidUtilities.dp(12.0f), this.contentHeight);
            this.root.clip.draw(canvas, rectF, 0, 1.0f);
            int minWidth = this.root.getMinWidth() + this.root.padRight;
            Rect rect = this.padding;
            rectF.set(r0 - AndroidUtilities.dp(12.0f), 0.0f, (minWidth - rect.left) - rect.right, this.contentHeight);
            this.root.clip.draw(canvas, rectF, 2, 1.0f);
            canvas.restore();
            canvas.restore();
        }

        private void drawTitle(Canvas canvas) {
            if (this.title == null) {
                return;
            }
            canvas.save();
            canvas.translate(titleDrawX(), 0.0f);
            this.title.draw(canvas);
            canvas.restore();
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getHeight() {
            Rect rect = this.padding;
            return rect.top + this.titleHeight + this.contentHeight + rect.bottom;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getMinWidth() {
            return this.padding.left + Math.min(this.viewportWidth, this.contentMeasuredWidth) + this.padding.right;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getLastLineWidth() {
            return getMinWidth();
        }

        private void ensureTouchConfig() {
            View view;
            if (this.touchSlop == 0 && (view = this.view) != null) {
                ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
                this.touchSlop = viewConfiguration.getScaledTouchSlop();
                this.minFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
                this.maxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
            }
            if (this.scroller != null || this.view == null) {
                return;
            }
            this.scroller = new OverScroller(this.view.getContext());
        }

        private TableLayout.Child findCellChildAt(float f, float f2) {
            float f3 = f + this.scrollX;
            float f4 = f2 - this.titleHeight;
            int childCount = this.tableLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                TableLayout.Child childAt = this.tableLayout.getChildAt(i);
                if (childAt.textLayout instanceof Text) {
                    if (f3 >= childAt.f1020x && f3 < r3 + childAt.getMeasuredWidth()) {
                        if (f4 >= childAt.f1021y && f4 < r3 + childAt.getMeasuredHeight()) {
                            return childAt;
                        }
                    }
                }
            }
            return null;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean onTouchEvent(MotionEvent motionEvent) {
            VelocityTracker velocityTracker;
            TableLayout.Child childFindCellChildAt;
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                ensureTouchConfig();
                OverScroller overScroller = this.scroller;
                if (overScroller != null && !overScroller.isFinished()) {
                    this.scroller.forceFinished(true);
                }
                this.downX = motionEvent.getX();
                this.downY = motionEvent.getY();
                this.downScrollX = this.scrollX;
                this.dragging = false;
                VelocityTracker velocityTracker2 = this.velocityTracker;
                if (velocityTracker2 == null) {
                    this.velocityTracker = VelocityTracker.obtain();
                } else {
                    velocityTracker2.clear();
                }
                this.velocityTracker.addMovement(motionEvent);
                this.pressedCellText = null;
                this.textHandlingTouch = false;
                if (this.title != null && motionEvent.getY() < this.titleHeight) {
                    float fTitleDrawX = titleDrawX();
                    motionEvent.offsetLocation(-fTitleDrawX, 0.0f);
                    boolean zOnTouchEvent = this.title.onTouchEvent(motionEvent);
                    motionEvent.offsetLocation(fTitleDrawX, 0.0f);
                    if (zOnTouchEvent) {
                        this.pressedCellText = this.title;
                        this.cellDx = fTitleDrawX;
                        this.cellDy = 0.0f;
                        this.textHandlingTouch = true;
                    }
                }
                if (!this.textHandlingTouch && (childFindCellChildAt = findCellChildAt(motionEvent.getX(), motionEvent.getY())) != null) {
                    this.pressedCellText = (Text) childFindCellChildAt.textLayout;
                    this.cellDx = childFindCellChildAt.getTextX() - this.scrollX;
                    float textY = this.titleHeight + childFindCellChildAt.getTextY();
                    this.cellDy = textY;
                    motionEvent.offsetLocation(-this.cellDx, -textY);
                    this.textHandlingTouch = this.pressedCellText.onTouchEvent(motionEvent);
                    motionEvent.offsetLocation(this.cellDx, this.cellDy);
                }
                return this.textHandlingTouch || this.maxScrollX > 0;
            }
            if (actionMasked == 2) {
                VelocityTracker velocityTracker3 = this.velocityTracker;
                if (velocityTracker3 != null) {
                    velocityTracker3.addMovement(motionEvent);
                }
                float x = motionEvent.getX() - this.downX;
                if (!this.dragging && this.maxScrollX > 0 && Math.abs(x) > this.touchSlop) {
                    this.dragging = true;
                    requestDisallowParentIntercept(true);
                    if (this.textHandlingTouch && this.pressedCellText != null) {
                        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                        motionEventObtain.setAction(3);
                        motionEventObtain.offsetLocation(-this.cellDx, -this.cellDy);
                        this.pressedCellText.onTouchEvent(motionEventObtain);
                        motionEventObtain.recycle();
                        this.textHandlingTouch = false;
                    }
                }
                if (this.dragging) {
                    int i = (int) (this.downScrollX - x);
                    int i2 = i >= 0 ? i : 0;
                    int i3 = this.maxScrollX;
                    if (i2 > i3) {
                        i2 = i3;
                    }
                    if (i2 != this.scrollX) {
                        this.scrollX = i2;
                        placeTexts(this.layoutX, this.layoutY, this.layoutRow);
                        View view = this.view;
                        if (view != null) {
                            view.invalidate();
                        }
                    }
                    return true;
                }
                return this.textHandlingTouch;
            }
            if (actionMasked != 1 && actionMasked != 3) {
                return false;
            }
            boolean z = this.dragging;
            this.dragging = false;
            if (z) {
                requestDisallowParentIntercept(false);
                if (actionMasked == 1 && (velocityTracker = this.velocityTracker) != null && this.scroller != null && this.view != null) {
                    velocityTracker.addMovement(motionEvent);
                    this.velocityTracker.computeCurrentVelocity(1000, this.maxFlingVelocity);
                    float f = -this.velocityTracker.getXVelocity();
                    if (Math.abs(f) > this.minFlingVelocity) {
                        this.scroller.fling(this.scrollX, 0, (int) f, 0, 0, this.maxScrollX, 0, 0);
                        this.view.postOnAnimation(this.flingTick);
                    }
                }
            }
            if (!z && this.textHandlingTouch && this.pressedCellText != null) {
                motionEvent.offsetLocation(-this.cellDx, -this.cellDy);
                this.pressedCellText.onTouchEvent(motionEvent);
                motionEvent.offsetLocation(this.cellDx, this.cellDy);
            }
            boolean z2 = this.textHandlingTouch;
            this.textHandlingTouch = false;
            this.pressedCellText = null;
            VelocityTracker velocityTracker4 = this.velocityTracker;
            if (velocityTracker4 != null) {
                velocityTracker4.recycle();
                this.velocityTracker = null;
            }
            return z || z2;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean isHorizontallyDragging() {
            if (this.dragging) {
                return true;
            }
            OverScroller overScroller = this.scroller;
            return (overScroller == null || overScroller.isFinished()) ? false : true;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean canDragHorizontally() {
            return this.maxScrollX > 0;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean findLink(CharacterStyle characterStyle, int i, FoundLink foundLink) {
            Text text = this.title;
            if (text != null && text.fillFoundLink(characterStyle, foundLink)) {
                foundLink.f812x = (this.padding.left + titleDrawX()) - this.title.drawLeft();
                foundLink.f813y = i + this.padding.top;
                return true;
            }
            int childCount = this.tableLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                TableLayout.CellText cellText = this.tableLayout.getChildAt(i2).textLayout;
                if (cellText instanceof Text) {
                    if (((Text) cellText).fillFoundLink(characterStyle, foundLink)) {
                        foundLink.f812x = ((this.padding.left + r4.getTextX()) - this.scrollX) - r5.drawLeft();
                        foundLink.f813y = i + this.padding.top + this.titleHeight + r4.getTextY();
                        return true;
                    }
                }
            }
            return false;
        }

        private int titleDrawX() {
            if (this.title == null) {
                return 0;
            }
            int iMax = Math.max(0, Math.min(this.viewportWidth, this.contentMeasuredWidth));
            Text text = this.title;
            return Math.max(0, Math.round((iMax - (text.right - text.left)) / 2.0f));
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public TextSelectionHelper.TextLayoutBlock[] getText() {
            return this.textsArr;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void placeTexts(int i, int i2, int i3) {
            this.layoutX = i;
            this.layoutY = i2;
            this.layoutRow = i3;
            Text text = this.title;
            if (text != null) {
                text.setX((titleDrawX() + i) - this.title.drawLeft());
                this.title.setY(i2);
                this.title.setRow(i3);
            }
            int childCount = this.tableLayout.getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                TableLayout.Child childAt = this.tableLayout.getChildAt(i4);
                TableLayout.CellText cellText = childAt.textLayout;
                if (cellText instanceof Text) {
                    Text text2 = (Text) cellText;
                    text2.setX(((childAt.getTextX() + i) - this.scrollX) - text2.drawLeft());
                    text2.setY(this.titleHeight + i2 + childAt.getTextY());
                    text2.setRow(i3);
                }
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean drawOverlay(Canvas canvas, ColorFilter colorFilter) {
            boolean z;
            Text text;
            AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans;
            AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans2;
            canvas.save();
            Rect rect = this.padding;
            canvas.translate(rect.left, rect.top);
            Text text2 = this.title;
            if (text2 == null || (emojiGroupedSpans2 = text2.animatedEmojiStack) == null || emojiGroupedSpans2.holders.isEmpty()) {
                z = false;
            } else {
                canvas.save();
                canvas.translate(titleDrawX(), 0.0f);
                Text text3 = this.title;
                AnimatedEmojiSpan.drawAnimatedEmojis(canvas, text3.layout, text3.animatedEmojiStack, 0.0f, text3.spoilers, 0.0f, 0.0f, 0.0f, 1.0f, colorFilter);
                canvas.restore();
                z = true;
            }
            canvas.translate(0.0f, this.titleHeight);
            canvas.translate(-this.scrollX, 0.0f);
            int childCount = this.tableLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                TableLayout.CellText cellText = this.tableLayout.getChildAt(i).textLayout;
                if ((cellText instanceof Text) && (emojiGroupedSpans = (text = (Text) cellText).animatedEmojiStack) != null && !emojiGroupedSpans.holders.isEmpty()) {
                    canvas.save();
                    canvas.translate(r2.getTextX(), r2.getTextY());
                    AnimatedEmojiSpan.drawAnimatedEmojis(canvas, text.layout, text.animatedEmojiStack, 0.0f, text.spoilers, 0.0f, 0.0f, 0.0f, 1.0f, colorFilter);
                    canvas.restore();
                    z = true;
                }
            }
            canvas.restore();
            return z;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onAttachedToWindow() {
            Text text = this.title;
            if (text != null) {
                text.attach(this.view);
            }
            ArrayList<Text> arrayList = this.cellTexts;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Text text2 = arrayList.get(i);
                i++;
                text2.attach(this.view);
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDetachedFromWindow() {
            Text text = this.title;
            if (text != null) {
                text.detach(this.view);
            }
            ArrayList<Text> arrayList = this.cellTexts;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Text text2 = arrayList.get(i);
                i++;
                text2.detach(this.view);
            }
        }
    }

    public static class RichDividerBlock extends RichBlock {
        public final Paint paint;

        public RichDividerBlock(RichMessageLayout richMessageLayout, Rect rect, int i) {
            super(richMessageLayout, rect, i);
            this.paint = new Paint(1);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDraw(Canvas canvas) {
            int minWidth = this.root.getMinWidth();
            RichMessageLayout richMessageLayout = this.root;
            int i = minWidth + richMessageLayout.padLeft + richMessageLayout.padRight;
            Rect rect = this.padding;
            int i2 = ((i - rect.left) - rect.right) / 3;
            this.paint.setColor(Theme.multAlpha(richMessageLayout.getThemedColor(richMessageLayout.isOut() ? Theme.key_chat_outReplyMessageText : Theme.key_chat_inReplyMessageText), 0.2f));
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set((i2 - this.root.padLeft) + this.padding.left, AndroidUtilities.dp(8.0f), ((i2 * 2) - this.root.padLeft) + this.padding.left, AndroidUtilities.dp(10.0f));
            canvas.drawRoundRect(rectF, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), this.paint);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getMinWidth() {
            return AndroidUtilities.dp(32.0f);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getHeight() {
            return this.padding.top + AndroidUtilities.dp(18.0f) + this.padding.bottom;
        }
    }

    public static class RichPreformattedBlock extends RichBlock {
        private static final int HPAD = 0;
        private static final int VPAD = 8;
        private final Paint bgPaint;
        public SpannableString content;
        private final int contentWidth;
        private int downScrollX;
        private float downX;
        private boolean dragging;
        private final Runnable flingTick;
        public final String language;
        private int maxFlingVelocity;
        private final int maxScrollX;
        private int minFlingVelocity;
        public String plain;
        private int scrollX;
        private OverScroller scroller;
        public final Text text;
        private boolean textHandlingTouch;
        public final Text[] texts;
        private int touchSlop;
        private VelocityTracker velocityTracker;
        private final int viewportWidth;

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void appendAccessibilityText(SpannableStringBuilder spannableStringBuilder) {
            RichBlock.appendText(spannableStringBuilder, this.text, this.texts);
        }

        public RichPreformattedBlock(RichMessageLayout richMessageLayout, Rect rect, int i, TL_iv.pageBlockPreformatted pageblockpreformatted, RichPreformattedBlock richPreformattedBlock) {
            super(richMessageLayout, rect, i);
            this.bgPaint = new Paint(1);
            this.flingTick = new Runnable() { // from class: org.telegram.messenger.RichMessageLayout.RichPreformattedBlock.1
                @Override // java.lang.Runnable
                public void run() {
                    if (RichPreformattedBlock.this.scroller != null) {
                        RichPreformattedBlock richPreformattedBlock2 = RichPreformattedBlock.this;
                        if (richPreformattedBlock2.view != null && richPreformattedBlock2.scroller.computeScrollOffset()) {
                            int currX = RichPreformattedBlock.this.scroller.getCurrX();
                            if (currX < 0) {
                                currX = 0;
                            }
                            if (currX > RichPreformattedBlock.this.maxScrollX) {
                                currX = RichPreformattedBlock.this.maxScrollX;
                            }
                            if (currX != RichPreformattedBlock.this.scrollX) {
                                RichPreformattedBlock.this.scrollX = currX;
                                RichPreformattedBlock richPreformattedBlock3 = RichPreformattedBlock.this;
                                richPreformattedBlock3.placeTexts(richPreformattedBlock3.layoutX, richPreformattedBlock3.layoutY, richPreformattedBlock3.layoutRow);
                                RichPreformattedBlock.this.view.invalidate();
                            }
                            if (RichPreformattedBlock.this.scroller.isFinished()) {
                                return;
                            }
                            RichPreformattedBlock.this.view.postOnAnimation(this);
                        }
                    }
                }
            };
            this.viewportWidth = this.maxWidth;
            this.language = pageblockpreformatted.language;
            String string = RichMessageLayout.getString(pageblockpreformatted.text);
            this.plain = string;
            if (string == null) {
                this.plain = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            SpannableString spannableString = new SpannableString(this.plain);
            this.content = spannableString;
            if (spannableString.length() > 0) {
                this.content.setSpan(new StyleSpan(richMessageLayout, 8), 0, this.content.length(), 33);
                if (richPreformattedBlock != null) {
                    CharSequence charSequence = richPreformattedBlock.content;
                    if ((charSequence instanceof CodeHighlighting.LockedWithFallbackSpannableString) && !((CodeHighlighting.LockedWithFallbackSpannableString) charSequence).ready) {
                        charSequence = ((CodeHighlighting.LockedWithFallbackSpannableString) charSequence).fallback;
                    }
                    if (charSequence != null && charSequence.length() > 0 && this.plain.length() >= charSequence.length()) {
                        if (charSequence instanceof CodeHighlighting.LockedWithFallbackSpannableString) {
                            ((CodeHighlighting.LockedWithFallbackSpannableString) charSequence).fallback = null;
                        }
                        SpannableStringBuilder spannableStringBuilderAppend = new SpannableStringBuilder(charSequence).append((CharSequence) this.plain.substring(charSequence.length()));
                        for (StyleSpan styleSpan : (StyleSpan[]) spannableStringBuilderAppend.getSpans(0, spannableStringBuilderAppend.length(), StyleSpan.class)) {
                            spannableStringBuilderAppend.removeSpan(styleSpan);
                        }
                        spannableStringBuilderAppend.setSpan(new StyleSpan(richMessageLayout, 8), 0, spannableStringBuilderAppend.length(), 33);
                        CodeHighlighting.Span[] spanArr = (CodeHighlighting.Span[]) spannableStringBuilderAppend.getSpans(0, spannableStringBuilderAppend.length(), CodeHighlighting.Span.class);
                        for (int i2 = 0; i2 < spanArr.length; i2++) {
                            int spanStart = spannableStringBuilderAppend.getSpanStart(spanArr[i2]);
                            int spanStart2 = spannableStringBuilderAppend.getSpanStart(spanArr[i2]);
                            spannableStringBuilderAppend.removeSpan(spanArr[i2]);
                            spannableStringBuilderAppend.setSpan(spanArr[i2], spanStart, spanStart2, 33);
                        }
                        this.content = new CodeHighlighting.LockedWithFallbackSpannableString(this.content, spannableStringBuilderAppend);
                    }
                }
                if (!TextUtils.isEmpty(pageblockpreformatted.language)) {
                    SpannableString spannableString2 = this.content;
                    CodeHighlighting.highlight(spannableString2, 0, spannableString2.length(), pageblockpreformatted.language, 0, null, false);
                }
            }
            Text text = new Text(richMessageLayout, this.content, AndroidUtilities.dp(5000.0f));
            this.text = text;
            this.texts = new Text[]{text};
            int iMax = Math.max(0, text.right - text.left) + (AndroidUtilities.dp(0.0f) * 2);
            this.contentWidth = iMax;
            int iMax2 = Math.max(0, iMax - this.viewportWidth);
            this.maxScrollX = iMax2;
            if (richPreformattedBlock != null) {
                this.scrollX = Utilities.clamp(richPreformattedBlock.scrollX, iMax2, 0);
            }
        }

        private void drawBackground(Canvas canvas) {
            Paint paint = this.bgPaint;
            RichMessageLayout richMessageLayout = this.root;
            paint.setColor(Theme.capAlpha(richMessageLayout.getThemedColor(richMessageLayout.isOut() ? Theme.key_chat_outCodeBackground : Theme.key_chat_inCodeBackground), 0.1f));
            int i = this.padding.left;
            RichMessageLayout richMessageLayout2 = this.root;
            if (i > 0) {
                int minWidth = richMessageLayout2.getMinWidth();
                Rect rect = this.padding;
                canvas.drawRect(0.0f, 0.0f, (minWidth - rect.left) - rect.right, this.text.getHeight() + AndroidUtilities.dp(16.0f), this.bgPaint);
                return;
            }
            canvas.drawRect(-richMessageLayout2.padLeft, 0.0f, richMessageLayout2.getMinWidth() + this.root.padRight, this.text.getHeight() + AndroidUtilities.dp(16.0f), this.bgPaint);
        }

        private void drawTextContent(Canvas canvas, boolean z, int i, float f) {
            int iMin = Math.min(this.viewportWidth, this.contentWidth);
            int height = this.text.getHeight() + (AndroidUtilities.dp(8.0f) * 2);
            if (this.padding.left > 0) {
                canvas.save();
                canvas.clipRect(0, 0, iMin, height);
                canvas.translate(AndroidUtilities.dp(0.0f) - this.scrollX, AndroidUtilities.dp(8.0f));
                Text text = this.text;
                if (z) {
                    text.drawFade(canvas, i, f);
                } else {
                    text.draw(canvas);
                }
                canvas.restore();
                return;
            }
            RichMessageLayout richMessageLayout = this.root;
            float f2 = -richMessageLayout.padLeft;
            float f3 = iMin + richMessageLayout.padRight;
            float f4 = height;
            canvas.saveLayerAlpha(f2, 0.0f, f3, f4, 255, 31);
            canvas.save();
            canvas.translate(AndroidUtilities.dp(0.0f) - this.scrollX, AndroidUtilities.dp(8.0f));
            Text text2 = this.text;
            if (z) {
                text2.drawFade(canvas, i, f);
            } else {
                text2.draw(canvas);
            }
            canvas.restore();
            RectF rectF = AndroidUtilities.rectTmp;
            int i2 = this.root.padLeft;
            rectF.set(-i2, 0.0f, (-i2) + AndroidUtilities.dp(12.0f), f4);
            this.root.clip.draw(canvas, rectF, 0, 1.0f);
            int minWidth = this.root.getMinWidth() + this.root.padRight;
            Rect rect = this.padding;
            rectF.set(r2 - AndroidUtilities.dp(12.0f), 0.0f, (minWidth - rect.left) - rect.right, f4);
            this.root.clip.draw(canvas, rectF, 2, 1.0f);
            canvas.restore();
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDraw(Canvas canvas) {
            drawBackground(canvas);
            drawTextContent(canvas, false, 0, 0.0f);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDrawFaded(Canvas canvas, int i, float f) {
            StaticLayout staticLayout = this.text.layout;
            if (staticLayout == null || i < 0 || i >= staticLayout.getLineCount()) {
                onDraw(canvas);
            } else {
                drawBackground(canvas);
                drawTextContent(canvas, true, i, f);
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock, org.telegram.ui.MultiLayoutTypingAnimator.Block
        public Layout getLayout() {
            return this.text.layout;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getHeight() {
            return this.padding.top + this.text.getHeight() + (AndroidUtilities.dp(8.0f) * 2) + this.padding.bottom;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getMinWidth() {
            return this.padding.left + Math.min(this.viewportWidth, this.contentWidth) + this.padding.right;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getLastLineWidth() {
            return getMinWidth();
        }

        private void ensureTouchConfig() {
            View view;
            if (this.touchSlop == 0 && (view = this.view) != null) {
                ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
                this.touchSlop = viewConfiguration.getScaledTouchSlop();
                this.minFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
                this.maxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
            }
            if (this.scroller != null || this.view == null) {
                return;
            }
            this.scroller = new OverScroller(this.view.getContext());
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean onTouchEvent(MotionEvent motionEvent) {
            VelocityTracker velocityTracker;
            int actionMasked = motionEvent.getActionMasked();
            float fDp = AndroidUtilities.dp(0.0f) - this.scrollX;
            float fDp2 = AndroidUtilities.dp(8.0f);
            if (actionMasked == 0) {
                ensureTouchConfig();
                OverScroller overScroller = this.scroller;
                if (overScroller != null && !overScroller.isFinished()) {
                    this.scroller.forceFinished(true);
                }
                this.downX = motionEvent.getX();
                this.downScrollX = this.scrollX;
                this.dragging = false;
                VelocityTracker velocityTracker2 = this.velocityTracker;
                if (velocityTracker2 == null) {
                    this.velocityTracker = VelocityTracker.obtain();
                } else {
                    velocityTracker2.clear();
                }
                this.velocityTracker.addMovement(motionEvent);
                motionEvent.offsetLocation(-fDp, -fDp2);
                this.textHandlingTouch = this.text.onTouchEvent(motionEvent);
                motionEvent.offsetLocation(fDp, fDp2);
                return true;
            }
            if (actionMasked != 2) {
                if (actionMasked != 1 && actionMasked != 3) {
                    return false;
                }
                boolean z = this.dragging;
                this.dragging = false;
                if (z) {
                    requestDisallowParentIntercept(false);
                    if (actionMasked == 1 && (velocityTracker = this.velocityTracker) != null && this.scroller != null && this.view != null) {
                        velocityTracker.addMovement(motionEvent);
                        this.velocityTracker.computeCurrentVelocity(1000, this.maxFlingVelocity);
                        float f = -this.velocityTracker.getXVelocity();
                        if (Math.abs(f) > this.minFlingVelocity) {
                            this.scroller.fling(this.scrollX, 0, (int) f, 0, 0, this.maxScrollX, 0, 0);
                            this.view.postOnAnimation(this.flingTick);
                        }
                    }
                }
                if (!z && this.textHandlingTouch) {
                    motionEvent.offsetLocation(-fDp, -fDp2);
                    this.text.onTouchEvent(motionEvent);
                    motionEvent.offsetLocation(fDp, fDp2);
                }
                this.textHandlingTouch = false;
                VelocityTracker velocityTracker3 = this.velocityTracker;
                if (velocityTracker3 != null) {
                    velocityTracker3.recycle();
                    this.velocityTracker = null;
                }
                return z || actionMasked == 1;
            }
            VelocityTracker velocityTracker4 = this.velocityTracker;
            if (velocityTracker4 != null) {
                velocityTracker4.addMovement(motionEvent);
            }
            float x = motionEvent.getX() - this.downX;
            if (!this.dragging && this.maxScrollX > 0 && Math.abs(x) > this.touchSlop) {
                this.dragging = true;
                requestDisallowParentIntercept(true);
                if (this.textHandlingTouch) {
                    MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                    motionEventObtain.setAction(3);
                    motionEventObtain.offsetLocation(-fDp, -fDp2);
                    this.text.onTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                    this.textHandlingTouch = false;
                }
            }
            if (this.dragging) {
                int i = (int) (this.downScrollX - x);
                int i2 = i >= 0 ? i : 0;
                int i3 = this.maxScrollX;
                if (i2 > i3) {
                    i2 = i3;
                }
                if (i2 != this.scrollX) {
                    this.scrollX = i2;
                    placeTexts(this.layoutX, this.layoutY, this.layoutRow);
                    View view = this.view;
                    if (view != null) {
                        view.invalidate();
                    }
                }
                return true;
            }
            return this.textHandlingTouch;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean isHorizontallyDragging() {
            if (this.dragging) {
                return true;
            }
            OverScroller overScroller = this.scroller;
            return (overScroller == null || overScroller.isFinished()) ? false : true;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean canDragHorizontally() {
            return this.maxScrollX > 0;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean findLink(CharacterStyle characterStyle, int i, FoundLink foundLink) {
            if (!this.text.fillFoundLink(characterStyle, foundLink)) {
                return false;
            }
            foundLink.f812x = ((this.padding.left + AndroidUtilities.dp(0.0f)) - this.scrollX) - this.text.left;
            foundLink.f813y = i + this.padding.top + AndroidUtilities.dp(8.0f);
            return true;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public TextSelectionHelper.TextLayoutBlock[] getText() {
            return this.texts;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void placeTexts(int i, int i2, int i3) {
            this.layoutX = i;
            this.layoutY = i2;
            this.layoutRow = i3;
            this.text.setX(((i + AndroidUtilities.dp(0.0f)) - this.scrollX) - this.text.left);
            this.text.setY(i2 + AndroidUtilities.dp(8.0f));
            this.text.setRow(i3);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onAttachedToWindow() {
            this.text.attach(this.view);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDetachedFromWindow() {
            this.text.detach(this.view);
        }
    }

    public static class RichMathBlock extends RichBlock {
        private static final int HPAD = 0;
        private static final int VPAD = 8;
        private Bitmap bitmap;
        private final TL_iv.pageBlockMath block;
        private int contentH;
        private int contentW;
        private final int contentWidth;
        private int downScrollX;
        private float downX;
        private boolean dragging;
        private final Runnable flingTick;
        private int maxFlingVelocity;
        private final int maxScrollX;
        private int minFlingVelocity;
        private final Paint paint;
        private int scrollX;
        private OverScroller scroller;
        private int touchSlop;
        private VelocityTracker velocityTracker;
        private final int viewportWidth;

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void appendAccessibilityText(SpannableStringBuilder spannableStringBuilder) {
            TL_iv.pageBlockMath pageblockmath = this.block;
            if (pageblockmath == null || TextUtils.isEmpty(pageblockmath.source)) {
                return;
            }
            spannableStringBuilder.append((CharSequence) this.block.source);
        }

        public RichMathBlock(RichMessageLayout richMessageLayout, Rect rect, int i, TL_iv.pageBlockMath pageblockmath) {
            super(richMessageLayout, rect, i);
            this.paint = new Paint(3);
            this.flingTick = new Runnable() { // from class: org.telegram.messenger.RichMessageLayout.RichMathBlock.1
                @Override // java.lang.Runnable
                public void run() {
                    if (RichMathBlock.this.scroller != null) {
                        RichMathBlock richMathBlock = RichMathBlock.this;
                        if (richMathBlock.view != null && richMathBlock.scroller.computeScrollOffset()) {
                            int currX = RichMathBlock.this.scroller.getCurrX();
                            if (currX < 0) {
                                currX = 0;
                            }
                            if (currX > RichMathBlock.this.maxScrollX) {
                                currX = RichMathBlock.this.maxScrollX;
                            }
                            if (currX != RichMathBlock.this.scrollX) {
                                RichMathBlock.this.scrollX = currX;
                                RichMathBlock.this.view.invalidate();
                            }
                            if (RichMathBlock.this.scroller.isFinished()) {
                                return;
                            }
                            RichMathBlock.this.view.postOnAnimation(this);
                        }
                    }
                }
            };
            this.block = pageblockmath;
            this.viewportWidth = this.maxWidth;
            if (pageblockmath != null && !TextUtils.isEmpty(pageblockmath.source)) {
                try {
                    JLatexMathDrawable jLatexMathDrawableBuild = JLatexMathDrawable.builder(pageblockmath.source).textSize(AndroidUtilities.dp(richMessageLayout.fontSize + 4)).build();
                    int intrinsicWidth = jLatexMathDrawableBuild.getIntrinsicWidth();
                    int intrinsicHeight = jLatexMathDrawableBuild.getIntrinsicHeight();
                    if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                        this.bitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ALPHA_8);
                        jLatexMathDrawableBuild.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
                        jLatexMathDrawableBuild.draw(new Canvas(this.bitmap));
                        this.contentW = intrinsicWidth;
                        this.contentH = intrinsicHeight;
                    }
                } catch (Exception e) {
                    FileLog.m898e(e);
                }
            }
            int iDp = this.contentW + (AndroidUtilities.dp(0.0f) * 2);
            this.contentWidth = iDp;
            this.maxScrollX = Math.max(0, iDp - this.viewportWidth);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDraw(Canvas canvas) {
            Canvas canvas2;
            if (this.bitmap == null) {
                return;
            }
            Paint paint = this.paint;
            RichMessageLayout richMessageLayout = this.root;
            paint.setColor(richMessageLayout.getThemedColor(richMessageLayout.isOut() ? Theme.key_chat_messageTextOut : Theme.key_chat_messageTextIn));
            int iDp = this.contentH + (AndroidUtilities.dp(8.0f) * 2);
            int i = this.maxScrollX;
            RichMessageLayout richMessageLayout2 = this.root;
            if (i > 0) {
                float f = -richMessageLayout2.padLeft;
                int minWidth = richMessageLayout2.getMinWidth() + this.root.padRight;
                Rect rect = this.padding;
                canvas2 = canvas;
                canvas2.saveLayerAlpha(f, 0.0f, (minWidth - rect.left) - rect.right, iDp, 255, 31);
                canvas2.save();
                canvas2.translate(AndroidUtilities.dp(0.0f) - this.scrollX, AndroidUtilities.dp(8.0f));
            } else {
                canvas2 = canvas;
                canvas2.save();
                canvas2.translate(((richMessageLayout2.getMinWidth() / 2.0f) - this.padding.left) - (this.contentW / 2.0f), AndroidUtilities.dp(8.0f));
            }
            canvas2.drawBitmap(this.bitmap, 0.0f, 0.0f, this.paint);
            if (this.maxScrollX > 0) {
                canvas2.restore();
                RectF rectF = AndroidUtilities.rectTmp;
                int i2 = this.root.padLeft;
                float f2 = iDp;
                rectF.set(-i2, 0.0f, (-i2) + AndroidUtilities.dp(12.0f), f2);
                this.root.clip.draw(canvas2, rectF, 0, 1.0f);
                int minWidth2 = this.root.getMinWidth() + this.root.padRight;
                Rect rect2 = this.padding;
                rectF.set(r1 - AndroidUtilities.dp(12.0f), 0.0f, (minWidth2 - rect2.left) - rect2.right, f2);
                this.root.clip.draw(canvas2, rectF, 2, 1.0f);
            }
            canvas2.restore();
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getHeight() {
            return this.padding.top + this.contentH + (AndroidUtilities.dp(8.0f) * 2) + this.padding.bottom;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getMinWidth() {
            return this.padding.left + Math.min(this.viewportWidth, this.contentWidth) + this.padding.right;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getLastLineWidth() {
            return getMinWidth();
        }

        private void ensureTouchConfig() {
            View view;
            if (this.touchSlop == 0 && (view = this.view) != null) {
                ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
                this.touchSlop = viewConfiguration.getScaledTouchSlop();
                this.minFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
                this.maxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
            }
            if (this.scroller != null || this.view == null) {
                return;
            }
            this.scroller = new OverScroller(this.view.getContext());
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean onTouchEvent(MotionEvent motionEvent) {
            VelocityTracker velocityTracker;
            if (this.maxScrollX <= 0) {
                return false;
            }
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                ensureTouchConfig();
                OverScroller overScroller = this.scroller;
                if (overScroller != null && !overScroller.isFinished()) {
                    this.scroller.forceFinished(true);
                }
                this.downX = motionEvent.getX();
                this.downScrollX = this.scrollX;
                this.dragging = false;
                VelocityTracker velocityTracker2 = this.velocityTracker;
                if (velocityTracker2 == null) {
                    this.velocityTracker = VelocityTracker.obtain();
                } else {
                    velocityTracker2.clear();
                }
                this.velocityTracker.addMovement(motionEvent);
                return true;
            }
            if (actionMasked == 2) {
                VelocityTracker velocityTracker3 = this.velocityTracker;
                if (velocityTracker3 != null) {
                    velocityTracker3.addMovement(motionEvent);
                }
                float x = motionEvent.getX() - this.downX;
                if (!this.dragging && Math.abs(x) > this.touchSlop) {
                    this.dragging = true;
                    requestDisallowParentIntercept(true);
                }
                if (!this.dragging) {
                    return false;
                }
                int i = (int) (this.downScrollX - x);
                int i2 = i >= 0 ? i : 0;
                int i3 = this.maxScrollX;
                if (i2 > i3) {
                    i2 = i3;
                }
                if (i2 != this.scrollX) {
                    this.scrollX = i2;
                    View view = this.view;
                    if (view != null) {
                        view.invalidate();
                    }
                }
                return true;
            }
            if (actionMasked != 1 && actionMasked != 3) {
                return false;
            }
            boolean z = this.dragging;
            this.dragging = false;
            if (z) {
                requestDisallowParentIntercept(false);
                if (actionMasked == 1 && (velocityTracker = this.velocityTracker) != null && this.scroller != null && this.view != null) {
                    velocityTracker.addMovement(motionEvent);
                    this.velocityTracker.computeCurrentVelocity(1000, this.maxFlingVelocity);
                    float f = -this.velocityTracker.getXVelocity();
                    if (Math.abs(f) > this.minFlingVelocity) {
                        this.scroller.fling(this.scrollX, 0, (int) f, 0, 0, this.maxScrollX, 0, 0);
                        this.view.postOnAnimation(this.flingTick);
                    }
                }
            }
            VelocityTracker velocityTracker4 = this.velocityTracker;
            if (velocityTracker4 != null) {
                velocityTracker4.recycle();
                this.velocityTracker = null;
            }
            return z || actionMasked == 1;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean isHorizontallyDragging() {
            if (this.dragging) {
                return true;
            }
            OverScroller overScroller = this.scroller;
            return (overScroller == null || overScroller.isFinished()) ? false : true;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean canDragHorizontally() {
            return this.maxScrollX > 0;
        }
    }

    public static class RichThinkingBlock extends RichBlock {
        public LinearGradient gradient;
        public int gradientColor;
        public final Matrix matrix;
        public final Paint paint;
        public final Text text;
        public final Text[] texts;

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean drawOverlay(Canvas canvas, ColorFilter colorFilter) {
            return false;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void appendAccessibilityText(SpannableStringBuilder spannableStringBuilder) {
            RichBlock.appendText(spannableStringBuilder, this.text, this.texts);
        }

        public RichThinkingBlock(RichMessageLayout richMessageLayout, Rect rect, int i, CharSequence charSequence) {
            super(richMessageLayout, rect, i);
            this.matrix = new Matrix();
            this.paint = new Paint(1);
            Text text = new Text(richMessageLayout, charSequence, this.maxWidth);
            this.text = text;
            this.texts = new Text[]{text};
        }

        private int rtlOffset() {
            if (!this.root.isRtl()) {
                return 0;
            }
            int minWidth = (this.root.getMinWidth() + this.root.padRight) - AndroidUtilities.dp(14.0f);
            Rect rect = this.padding;
            return ((minWidth - rect.right) - rect.left) - this.text.getMinWidth();
        }

        private void updateGradient() {
            RichMessageLayout richMessageLayout = this.root;
            int themedColor = richMessageLayout.getThemedColor(richMessageLayout.isOut() ? Theme.key_chat_messageTextOut : Theme.key_chat_messageTextIn);
            if (this.gradient == null || this.gradientColor != themedColor) {
                this.gradientColor = themedColor;
                LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, this.maxWidth, 0.0f, new int[]{Theme.multAlpha(themedColor, 0.7f), Theme.multAlpha(themedColor, 0.25f), Theme.multAlpha(themedColor, 0.7f)}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.REPEAT);
                this.gradient = linearGradient;
                this.paint.setShader(linearGradient);
                this.paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDraw(Canvas canvas) {
            canvas.saveLayerAlpha(0.0f, 0.0f, this.root.getMinWidth(), getHeight(), 255, 31);
            int iRtlOffset = rtlOffset();
            if (iRtlOffset != 0) {
                Text text = this.text;
                text.setX((this.padding.left + iRtlOffset) - text.left);
                canvas.save();
                canvas.translate(iRtlOffset, 0.0f);
            }
            this.text.draw(canvas);
            if (this.root.isOverlayActive()) {
                canvas.save();
                canvas.translate(-this.text.left, 0.0f);
                Text text2 = this.text;
                AnimatedEmojiSpan.drawAnimatedEmojis(canvas, text2.layout, text2.animatedEmojiStack, 0.0f, text2.spoilers, 0.0f, 0.0f, 0.0f, 1.0f);
                canvas.restore();
            }
            if (iRtlOffset != 0) {
                canvas.restore();
            }
            updateGradient();
            this.matrix.reset();
            this.matrix.postTranslate(((System.currentTimeMillis() % 2000) / 2000.0f) * this.maxWidth, 0.0f);
            this.gradient.setLocalMatrix(this.matrix);
            canvas.drawRect(0.0f, 0.0f, this.root.getMinWidth(), getHeight(), this.paint);
            canvas.restore();
            View view = this.view;
            if (view != null) {
                view.invalidate();
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDrawFaded(Canvas canvas, int i, float f) {
            canvas.saveLayerAlpha(0.0f, 0.0f, this.root.getMinWidth(), getHeight(), 255, 31);
            int iRtlOffset = rtlOffset();
            if (iRtlOffset != 0) {
                Text text = this.text;
                text.setX((this.padding.left + iRtlOffset) - text.left);
            }
            canvas.save();
            canvas.translate(iRtlOffset - this.text.left, 0.0f);
            int color = this.root.textPaint.getColor();
            this.root.textPaint.setColor(-1);
            RichMessageLayout richMessageLayout = this.root;
            richMessageLayout.textPaint.linkColor = richMessageLayout.getThemedColor(richMessageLayout.isOut() ? Theme.key_chat_messageLinkOut : Theme.key_chat_messageLinkIn);
            final View view = this.view;
            MultiLayoutTypingAnimator.drawLayoutWithLastLineFade(canvas, this.text.layout, i, f, new MultiLayoutTypingAnimator.Renderer() { // from class: org.telegram.messenger.RichMessageLayout$RichThinkingBlock$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.MultiLayoutTypingAnimator.Renderer
                public final void draw(Canvas canvas2) {
                    this.f$0.lambda$onDrawFaded$0(view, canvas2);
                }
            });
            canvas.restore();
            this.root.textPaint.setColor(color);
            updateGradient();
            this.matrix.reset();
            this.matrix.postTranslate(((System.currentTimeMillis() % 2000) / 2000.0f) * this.maxWidth, 0.0f);
            this.gradient.setLocalMatrix(this.matrix);
            canvas.drawRect(0.0f, 0.0f, this.root.getMinWidth(), getHeight(), this.paint);
            canvas.restore();
            View view2 = this.view;
            if (view2 != null) {
                view2.invalidate();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onDrawFaded$0(View view, Canvas canvas) {
            Text text = this.text;
            SpoilerEffect.renderWithRipple(view, false, -1, 0, text.spoilersPatchedTextLayout, 0, text.layout, text.spoilers, canvas, false);
            Text text2 = this.text;
            AnimatedEmojiSpan.drawAnimatedEmojis(canvas, text2.layout, text2.animatedEmojiStack, 0.0f, text2.spoilers, 0.0f, 0.0f, 0.0f, 1.0f);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock, org.telegram.ui.MultiLayoutTypingAnimator.Block
        public Layout getLayout() {
            return this.text.layout;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int iRtlOffset = rtlOffset();
            if (iRtlOffset == 0) {
                return this.text.onTouchEvent(motionEvent);
            }
            motionEvent.offsetLocation(-iRtlOffset, 0.0f);
            boolean zOnTouchEvent = this.text.onTouchEvent(motionEvent);
            motionEvent.offsetLocation(iRtlOffset, 0.0f);
            return zOnTouchEvent;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean findLink(CharacterStyle characterStyle, int i, FoundLink foundLink) {
            if (!this.text.fillFoundLink(characterStyle, foundLink)) {
                return false;
            }
            foundLink.f812x = (this.padding.left + rtlOffset()) - this.text.left;
            foundLink.f813y = i + this.padding.top;
            return true;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getHeight() {
            return this.padding.top + this.text.getHeight() + this.padding.bottom;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getMinWidth() {
            return this.padding.left + this.text.getMinWidth() + this.padding.right;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getLastLineWidth() {
            return this.padding.left + this.text.getLastLineWidth() + this.padding.right;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public TextSelectionHelper.TextLayoutBlock[] getText() {
            return this.texts;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void placeTexts(int i, int i2, int i3) {
            super.placeTexts(i, i2, i3);
            int iRtlOffset = rtlOffset();
            if (iRtlOffset != 0) {
                Text text = this.text;
                text.setX((i + iRtlOffset) - text.left);
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onAttachedToWindow() {
            this.text.attach(this.view);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDetachedFromWindow() {
            this.text.detach(this.view);
        }
    }

    public static final class SpoilerReveal {
        private ValueAnimator animator;
        private float cx;
        private float cy;
        private float maxR;
        private final Path path = new Path();
        float progress;
        boolean revealed;

        public boolean fullyRevealed() {
            return this.revealed && this.progress >= 1.0f;
        }

        public boolean isRevealing() {
            return this.revealed || this.animator != null;
        }

        public void start(final View view, float f, float f2, float f3, float f4) {
            if (this.revealed || this.animator != null) {
                return;
            }
            this.cx = f;
            this.cy = f2;
            this.maxR = (float) Math.sqrt((f3 * f3) + (f4 * f4));
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.animator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration((long) Utilities.clamp(this.maxR * 0.3f, 550.0f, 250.0f));
            this.animator.setInterpolator(CubicBezierInterpolator.EASE_BOTH);
            this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.messenger.RichMessageLayout$SpoilerReveal$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$start$0(view, valueAnimator);
                }
            });
            this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.messenger.RichMessageLayout.SpoilerReveal.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    SpoilerReveal spoilerReveal = SpoilerReveal.this;
                    spoilerReveal.revealed = true;
                    spoilerReveal.animator = null;
                    View view2 = view;
                    if (view2 != null) {
                        view2.invalidate();
                    }
                }
            });
            this.animator.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$start$0(View view, ValueAnimator valueAnimator) {
            this.progress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (view != null) {
                view.invalidate();
            }
        }

        public void clipOut(Canvas canvas) {
            if (this.progress > 0.0f) {
                this.path.rewind();
                this.path.addCircle(this.cx, this.cy, this.maxR * this.progress, Path.Direction.CW);
                canvas.clipPath(this.path, Region.Op.DIFFERENCE);
            }
        }
    }

    public static abstract class RichMediaBlock extends RichBlock implements DownloadController.FileDownloadProgressListener {
        private static ColorMatrixColorFilter fancyBlurFilter;
        private static Paint mediaBgPaint;
        protected boolean autoDownload;
        public final ImageReceiver blurImageReceiver;
        private Bitmap blurSource;
        private boolean buttonPressed;
        private final int buttonSize;
        private int buttonState;
        private int buttonX;
        private int buttonY;
        private final Path clipPath;
        public final boolean first;
        public final ImageReceiver imageReceiver;
        protected int imgHeight;
        protected int imgWidth;
        protected boolean mediaForced;
        private final int observerTag;
        private boolean photoPressed;
        protected RadialProgress2 radialProgress;
        private final SpoilerReveal spoilerReveal;

        public boolean allowAutoplay() {
            return true;
        }

        public abstract void applyImage(boolean z);

        public abstract boolean fileExists();

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getAccessibilityElementCount() {
            return 1;
        }

        public abstract TL_iv.PageBlock getBlock();

        public abstract String getFileName();

        public boolean isAnimatedContent() {
            return false;
        }

        public boolean isRealVideo() {
            return false;
        }

        public boolean isSpoiler() {
            return false;
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onProgressUpload(String str, long j, long j2, boolean z) {
        }

        public RichMediaBlock(RichMessageLayout richMessageLayout, Rect rect, int i, boolean z) {
            super(richMessageLayout, rect, i);
            ImageReceiver imageReceiver = new ImageReceiver();
            this.imageReceiver = imageReceiver;
            ImageReceiver imageReceiver2 = new ImageReceiver();
            this.blurImageReceiver = imageReceiver2;
            this.buttonState = -1;
            this.buttonSize = AndroidUtilities.dp(48.0f);
            this.clipPath = new Path();
            this.spoilerReveal = new SpoilerReveal();
            this.first = z;
            this.observerTag = DownloadController.getInstance(richMessageLayout.currentAccount).generateObserverTag();
            imageReceiver.setAllowLoadingOnAttachedOnly(true);
            imageReceiver2.setAllowLoadingOnAttachedOnly(true);
            imageReceiver.setDelegate(new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.messenger.RichMessageLayout.RichMediaBlock.1
                @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                public void didSetImage(ImageReceiver imageReceiver3, boolean z2, boolean z3, boolean z4) {
                }

                @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                public void onAnimationReady(ImageReceiver imageReceiver3) {
                    RichMediaBlock.this.updateButtonState(true);
                }
            });
        }

        public void finishLayout() {
            this.imageReceiver.setImageCoords(0.0f, 0.0f, this.imgWidth, this.imgHeight);
            int i = this.imgWidth;
            int i2 = this.buttonSize;
            this.buttonX = (i - i2) / 2;
            this.buttonY = (this.imgHeight - i2) / 2;
            boolean zComputeAutoDownload = computeAutoDownload();
            this.autoDownload = zComputeAutoDownload;
            applyImage(zComputeAutoDownload || fileExists());
        }

        public boolean computeAutoDownload() {
            return (DownloadController.getInstance(this.root.currentAccount).getCurrentDownloadMask() & 1) != 0;
        }

        private int availWidth() {
            int minWidth = this.root.getMinWidth();
            Rect rect = this.padding;
            return (minWidth - rect.left) - rect.right;
        }

        public int getImageLeft() {
            int iAvailWidth = availWidth();
            int i = this.imgWidth;
            if (iAvailWidth > i) {
                return (iAvailWidth - i) / 2;
            }
            return 0;
        }

        private void prepareBlurImage() {
            Bitmap bitmap;
            if ((this.blurImageReceiver.getBitmap() != null && this.imageReceiver.getAnimation() != null) || (bitmap = this.imageReceiver.getBitmap()) == null || bitmap.isRecycled()) {
                return;
            }
            if (bitmap != this.blurSource || this.blurImageReceiver.getBitmap() == null) {
                this.blurSource = bitmap;
                this.blurImageReceiver.setImageBitmap(Utilities.stackBlurBitmapMax(bitmap, false));
                if (fancyBlurFilter == null) {
                    ColorMatrix colorMatrix = new ColorMatrix();
                    AndroidUtilities.multiplyBrightnessColorMatrix(colorMatrix, 0.9f);
                    AndroidUtilities.adjustSaturationColorMatrix(colorMatrix, 0.6f);
                    fancyBlurFilter = new ColorMatrixColorFilter(colorMatrix);
                }
                this.blurImageReceiver.setColorFilter(fancyBlurFilter);
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDraw(Canvas canvas) {
            if (mediaBgPaint == null) {
                Paint paint = new Paint(1);
                mediaBgPaint = paint;
                paint.setColor(251658240);
            }
            int minWidth = this.root.getMinWidth();
            Rect rect = this.padding;
            int i = (minWidth - rect.left) - rect.right;
            boolean zIsInQuote = isInQuote();
            int iDp = AndroidUtilities.dp(2.0f);
            int i2 = zIsInQuote ? 0 : this.root.padLeft - iDp;
            int i3 = zIsInQuote ? 0 : this.root.padRight - iDp;
            boolean z = availWidth() > this.imgWidth;
            if (zIsInQuote) {
                canvas.save();
                this.clipPath.rewind();
                this.clipPath.addRoundRect(0.0f, 0.0f, i, this.imgHeight, AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), Path.Direction.CW);
                canvas.clipPath(this.clipPath);
            }
            if (!this.imageReceiver.hasBitmapImage() || this.imageReceiver.getCurrentAlpha() != 1.0f) {
                canvas.drawRect(-i2, 0.0f, i + i3, this.imgHeight, mediaBgPaint);
            }
            if (z) {
                prepareBlurImage();
                updateRoundRadius(this.blurImageReceiver, false);
                updateRoundRadius(this.imageReceiver, true);
                if (this.blurImageReceiver.getBitmap() != null) {
                    this.blurImageReceiver.setImageCoords(-i2, 0.0f, i2 + i + i3, this.imgHeight);
                    this.blurImageReceiver.setAlpha(this.imageReceiver.getCurrentAlpha());
                    this.blurImageReceiver.draw(canvas);
                }
                this.imageReceiver.setAspectFit(true);
                this.imageReceiver.setImageCoords(0.0f, 0.0f, availWidth(), this.imgHeight);
            } else {
                updateRoundRadius(this.imageReceiver, false);
                this.imageReceiver.setAspectFit(false);
                this.imageReceiver.setImageCoords(-i2, 0.0f, i2 + i + i3, this.imgHeight);
            }
            this.imageReceiver.draw(canvas);
            if (isSpoiler() && !this.spoilerReveal.fullyRevealed()) {
                drawMediaSpoiler(canvas);
            } else if (this.radialProgress != null && this.buttonState != -1) {
                int imageLeft = getImageLeft();
                RadialProgress2 radialProgress2 = this.radialProgress;
                int i4 = this.buttonX;
                int i5 = imageLeft + i4;
                int i6 = this.buttonY;
                int i7 = imageLeft + i4;
                int i8 = this.buttonSize;
                radialProgress2.setProgressRect(i5, i6, i7 + i8, i8 + i6);
                this.radialProgress.draw(canvas);
            }
            if (zIsInQuote) {
                canvas.restore();
            }
        }

        private void updateRoundRadius(ImageReceiver imageReceiver, boolean z) {
            int iDp;
            if (z) {
                imageReceiver.setRoundRadius(0);
                return;
            }
            int i = SharedConfig.bubbleRadius;
            if (i > 2) {
                iDp = AndroidUtilities.dp(i - 2);
            } else {
                iDp = AndroidUtilities.dp(i);
            }
            int iMin = Math.min(AndroidUtilities.dp(3.0f), iDp);
            int i2 = (!this.first || (!this.root.isOut() && this.root.isPinnedTop())) ? iMin : iDp;
            if (!this.first || (this.root.isOut() && this.root.isPinnedTop())) {
                iDp = iMin;
            }
            imageReceiver.setRoundRadius(i2, iDp, iMin, iMin);
        }

        private void startSpoilerReveal() {
            float imageWidth = this.imageReceiver.getImageWidth();
            float imageHeight = this.imageReceiver.getImageHeight();
            this.spoilerReveal.start(this.view, this.imageReceiver.getImageX() + (imageWidth / 2.0f), this.imageReceiver.getImageY() + (imageHeight / 2.0f), imageWidth, imageHeight);
        }

        private void drawMediaSpoiler(Canvas canvas) {
            Canvas canvas2;
            if (this.spoilerReveal.fullyRevealed()) {
                return;
            }
            prepareBlurImage();
            float imageX = this.imageReceiver.getImageX();
            float imageY = this.imageReceiver.getImageY();
            float imageWidth = this.imageReceiver.getImageWidth();
            float imageHeight = this.imageReceiver.getImageHeight();
            if (imageWidth <= 0.0f || imageHeight <= 0.0f) {
                return;
            }
            canvas.save();
            canvas.clipRect(imageX, imageY, imageX + imageWidth, imageY + imageHeight);
            this.spoilerReveal.clipOut(canvas);
            if (this.blurImageReceiver.getBitmap() != null) {
                updateRoundRadius(this.blurImageReceiver, false);
                this.blurImageReceiver.setImageCoords(imageX, imageY, imageWidth, imageHeight);
                this.blurImageReceiver.setAlpha(this.imageReceiver.getCurrentAlpha());
                this.blurImageReceiver.draw(canvas);
            }
            SpoilerEffect2 mediaSpoilerEffect = this.root.getMediaSpoilerEffect();
            if (mediaSpoilerEffect != null) {
                canvas.translate(imageX, imageY);
                canvas2 = canvas;
                mediaSpoilerEffect.draw(canvas2, this.view, Math.round(imageWidth), Math.round(imageHeight), this.imageReceiver.getCurrentAlpha());
            } else {
                canvas2 = canvas;
            }
            canvas2.restore();
            View view = this.view;
            if (view != null) {
                view.invalidate();
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getHeight() {
            Rect rect = this.padding;
            return rect.top + this.imgHeight + rect.bottom;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getMinWidth() {
            Rect rect = this.padding;
            return rect.left + this.imgWidth + rect.right;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getLastLineWidth() {
            return getMinWidth();
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x005d  */
        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z;
            int actionMasked = motionEvent.getActionMasked();
            float x = (motionEvent.getX() - this.padding.left) - getImageLeft();
            float y = motionEvent.getY() - this.padding.top;
            boolean z2 = x >= 0.0f && x <= ((float) this.imgWidth) && y >= 0.0f && y <= ((float) this.imgHeight);
            int i = this.buttonState;
            if (i != -1) {
                if (x >= this.buttonX) {
                    int i2 = this.buttonSize;
                    if (x <= r6 + i2) {
                        int i3 = this.buttonY;
                        z = y >= ((float) i3) && y <= ((float) (i3 + i2));
                    }
                }
            }
            if (actionMasked == 0) {
                if (!z2 || (!z && i != 0 && i != 2)) {
                    if (!z2) {
                        return false;
                    }
                    this.photoPressed = true;
                    return true;
                }
                this.buttonPressed = true;
                View view = this.view;
                if (view != null) {
                    view.invalidate();
                }
                return true;
            }
            if (actionMasked != 1) {
                if (actionMasked != 3) {
                    return this.photoPressed || this.buttonPressed;
                }
                this.photoPressed = false;
                this.buttonPressed = false;
                return false;
            }
            if (this.buttonPressed) {
                this.buttonPressed = false;
                View view2 = this.view;
                if (view2 != null) {
                    view2.playSoundEffect(0);
                    this.view.invalidate();
                }
                didPressButton(true);
                return true;
            }
            if (this.photoPressed) {
                this.photoPressed = false;
                if (z2) {
                    View view3 = this.view;
                    if (view3 != null) {
                        view3.playSoundEffect(0);
                    }
                    if (isSpoiler() && !this.spoilerReveal.isRevealing()) {
                        startSpoilerReveal();
                    } else if (this.root.delegate != null) {
                        this.root.delegate.openArticlePhoto(this.root.cell, getBlock());
                    }
                    return true;
                }
            }
            return false;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public CharSequence getAccessibilityElementText(int i) {
            String string = LocaleController.getString(isRealVideo() ? C2573R.string.AttachVideo : C2573R.string.AttachPhoto);
            return (!isSpoiler() || this.spoilerReveal.fullyRevealed()) ? string : TextUtils.concat(string, ", ", LocaleController.getString(C2573R.string.Spoiler));
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void getAccessibilityElementBounds(int i, Rect rect) {
            int imageLeft = this.padding.left + getImageLeft();
            int i2 = ((int) this.currY) + this.padding.top;
            rect.set(imageLeft, i2, this.imgWidth + imageLeft, this.imgHeight + i2);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean onAccessibilityElementClick(int i, View view) {
            if (isSpoiler() && !this.spoilerReveal.isRevealing()) {
                startSpoilerReveal();
                return true;
            }
            if (this.root.delegate == null) {
                return false;
            }
            this.root.delegate.openArticlePhoto(this.root.cell, getBlock());
            return true;
        }

        private void didPressButton(boolean z) {
            int i = this.buttonState;
            if (i == 0) {
                this.mediaForced = true;
                RadialProgress2 radialProgress2 = this.radialProgress;
                if (radialProgress2 != null) {
                    radialProgress2.setProgress(0.0f, z);
                }
                applyImage(true);
                this.buttonState = 1;
                RadialProgress2 radialProgress22 = this.radialProgress;
                if (radialProgress22 != null) {
                    radialProgress22.setIcon(3, true, z);
                }
                View view = this.view;
                if (view != null) {
                    view.invalidate();
                    return;
                }
                return;
            }
            if (i == 1) {
                this.mediaForced = false;
                this.imageReceiver.cancelLoadImage();
                this.buttonState = 0;
                RadialProgress2 radialProgress23 = this.radialProgress;
                if (radialProgress23 != null) {
                    radialProgress23.setIcon(2, false, z);
                }
                View view2 = this.view;
                if (view2 != null) {
                    view2.invalidate();
                    return;
                }
                return;
            }
            if (i == 2) {
                this.mediaForced = true;
                this.imageReceiver.setAllowStartAnimation(true);
                applyImage(true);
                this.imageReceiver.startAnimation();
                this.buttonState = -1;
                RadialProgress2 radialProgress24 = this.radialProgress;
                if (radialProgress24 != null) {
                    radialProgress24.setIcon(4, false, z);
                }
                View view3 = this.view;
                if (view3 != null) {
                    view3.invalidate();
                    return;
                }
                return;
            }
            if (i != 3 || this.root.delegate == null) {
                return;
            }
            this.root.delegate.openArticlePhoto(this.root.cell, getBlock());
        }

        public void updateButtonState(boolean z) {
            ensureProgress();
            String fileName = getFileName();
            if (TextUtils.isEmpty(fileName)) {
                this.buttonState = -1;
                RadialProgress2 radialProgress2 = this.radialProgress;
                if (radialProgress2 != null) {
                    radialProgress2.setIcon(4, false, false);
                    return;
                }
                return;
            }
            AnimatedFileDrawable animation = this.imageReceiver.getAnimation();
            boolean z2 = animation != null && (animation.hasBitmap() || this.imageReceiver.isAnimationRunning());
            if (fileExists() || (isAnimatedContent() && z2)) {
                DownloadController.getInstance(this.root.currentAccount).removeLoadingFileObserver(this);
                if (isRealVideo() && !z2) {
                    this.buttonState = 3;
                    RadialProgress2 radialProgress22 = this.radialProgress;
                    if (radialProgress22 != null) {
                        radialProgress22.setIcon(0, false, z);
                    }
                } else if (isAnimatedContent() && !z2 && !allowAutoplay() && !this.mediaForced) {
                    this.buttonState = 2;
                    RadialProgress2 radialProgress23 = this.radialProgress;
                    if (radialProgress23 != null) {
                        radialProgress23.setIcon(8, false, z);
                    }
                } else {
                    this.buttonState = -1;
                    RadialProgress2 radialProgress24 = this.radialProgress;
                    if (radialProgress24 != null) {
                        radialProgress24.setIcon(4, false, z);
                    }
                }
            } else {
                DownloadController.getInstance(this.root.currentAccount).addLoadingFileObserver(fileName, null, this);
                if (this.autoDownload || this.mediaForced || FileLoader.getInstance(this.root.currentAccount).isLoadingFile(fileName)) {
                    this.buttonState = 1;
                    Float fileProgress = ImageLoader.getInstance().getFileProgress(fileName);
                    fFloatValue = fileProgress != null ? fileProgress.floatValue() : 0.0f;
                    RadialProgress2 radialProgress25 = this.radialProgress;
                    if (radialProgress25 != null) {
                        radialProgress25.setIcon(3, true, z);
                    }
                } else if (isRealVideo()) {
                    this.buttonState = 3;
                    RadialProgress2 radialProgress26 = this.radialProgress;
                    if (radialProgress26 != null) {
                        radialProgress26.setIcon(0, true, z);
                    }
                } else {
                    this.buttonState = 0;
                    RadialProgress2 radialProgress27 = this.radialProgress;
                    if (radialProgress27 != null) {
                        radialProgress27.setIcon(2, true, z);
                    }
                }
                RadialProgress2 radialProgress28 = this.radialProgress;
                if (radialProgress28 != null) {
                    radialProgress28.setProgress(fFloatValue, false);
                }
            }
            View view = this.view;
            if (view != null) {
                view.invalidate();
            }
        }

        private void ensureProgress() {
            View view;
            View view2;
            RadialProgress2 radialProgress2 = this.radialProgress;
            if (radialProgress2 != null || (view2 = this.view) == null) {
                if (radialProgress2 == null || (view = this.view) == null) {
                    return;
                }
                radialProgress2.setParent(view);
                RadialProgress2 radialProgress22 = this.radialProgress;
                int i = this.buttonX;
                int i2 = this.buttonY;
                int i3 = this.buttonSize;
                radialProgress22.setProgressRect(i, i2, i + i3, i3 + i2);
                return;
            }
            RadialProgress2 radialProgress23 = new RadialProgress2(view2);
            this.radialProgress = radialProgress23;
            radialProgress23.setProgressColor(-1);
            this.radialProgress.setColors(1711276032, 2130706432, -1, -2500135);
            RadialProgress2 radialProgress24 = this.radialProgress;
            int i4 = this.buttonX;
            int i5 = this.buttonY;
            int i6 = this.buttonSize;
            radialProgress24.setProgressRect(i4, i5, i4 + i6, i6 + i5);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onAttachedToWindow() {
            this.imageReceiver.setParentView(this.view);
            this.imageReceiver.onAttachedToWindow();
            this.blurImageReceiver.setParentView(this.view);
            this.blurImageReceiver.onAttachedToWindow();
            updateButtonState(false);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDetachedFromWindow() {
            this.imageReceiver.onDetachedFromWindow();
            this.blurImageReceiver.onDetachedFromWindow();
            this.blurSource = null;
            DownloadController.getInstance(this.root.currentAccount).removeLoadingFileObserver(this);
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public int getObserverTag() {
            return this.observerTag;
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onFailedDownload(String str, boolean z) {
            updateButtonState(false);
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onSuccessDownload(String str) {
            RadialProgress2 radialProgress2 = this.radialProgress;
            if (radialProgress2 != null) {
                radialProgress2.setProgress(1.0f, true);
            }
            if (isAnimatedContent() && (allowAutoplay() || this.mediaForced)) {
                applyImage(true);
            }
            updateButtonState(true);
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onProgressDownload(String str, long j, long j2) {
            RadialProgress2 radialProgress2 = this.radialProgress;
            if (radialProgress2 != null) {
                radialProgress2.setProgress(Math.min(1.0f, j2 <= 0 ? 0.0f : j / j2), true);
            }
            if (this.buttonState != 1) {
                updateButtonState(true);
            }
        }
    }

    public static class RichPhotoBlock extends RichMediaBlock {
        public final TL_iv.pageBlockPhoto block;
        public final TLRPC.Photo photo;
        public final TLRPC.PhotoSize sizeFull;
        public final TLRPC.PhotoSize strippedSize;

        public RichPhotoBlock(RichMessageLayout richMessageLayout, Rect rect, int i, TL_iv.pageBlockPhoto pageblockphoto, boolean z) {
            super(richMessageLayout, rect, i, z);
            this.block = pageblockphoto;
            TLRPC.Photo photo = richMessageLayout.getPhoto(pageblockphoto.photo_id);
            this.photo = photo;
            if (photo != null) {
                this.sizeFull = FileLoader.getClosestPhotoSizeWithSize(photo.sizes, AndroidUtilities.getPhotoSize());
                this.strippedSize = FileLoader.getStrippedPhotoSize(photo.sizes);
            } else {
                this.sizeFull = null;
                this.strippedSize = null;
            }
            TLRPC.PhotoSize photoSize = this.sizeFull;
            int i2 = photoSize != null ? photoSize.f858w : 100;
            int i3 = photoSize != null ? photoSize.f857h : 100;
            int iMax = this.maxWidth;
            int iMax2 = (int) ((iMax / Math.max(1, i2)) * i3);
            Point point = AndroidUtilities.displaySize;
            int iMax3 = (int) (Math.max(point.x, point.y) * 0.55f);
            if (iMax2 > iMax3) {
                iMax = (int) ((iMax3 / Math.max(1, i3)) * i2);
                iMax2 = iMax3;
            }
            this.imgWidth = iMax;
            this.imgHeight = iMax2;
            finishLayout();
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichMediaBlock
        public void applyImage(boolean z) {
            TLRPC.Photo photo = this.photo;
            if (photo == null || this.sizeFull == null) {
                return;
            }
            TLRPC.PhotoSize photoSize = this.strippedSize;
            ImageLocation forPhoto = photoSize != null ? ImageLocation.getForPhoto(photoSize, photo) : null;
            ImageReceiver imageReceiver = this.imageReceiver;
            if (z) {
                imageReceiver.setImage(null, null, ImageLocation.getForPhoto(this.sizeFull, this.photo), null, forPhoto, "b1", null, this.sizeFull.size, null, this.root.messageObject, 1);
            } else {
                imageReceiver.setImage(null, null, null, null, forPhoto, "b1", null, this.sizeFull.size, null, this.root.messageObject, 1);
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichMediaBlock
        public String getFileName() {
            return FileLoader.getAttachFileName(this.sizeFull);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichMediaBlock
        public boolean fileExists() {
            if (this.sizeFull == null) {
                return true;
            }
            File pathToAttach = FileLoader.getInstance(this.root.currentAccount).getPathToAttach(this.sizeFull, true);
            File pathToAttach2 = FileLoader.getInstance(this.root.currentAccount).getPathToAttach(this.sizeFull, false);
            return pathToAttach.exists() || (pathToAttach2 != null && pathToAttach2.exists());
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichMediaBlock
        public TL_iv.PageBlock getBlock() {
            return this.block;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichMediaBlock
        public boolean isSpoiler() {
            TL_iv.pageBlockPhoto pageblockphoto = this.block;
            return pageblockphoto != null && pageblockphoto.spoiler;
        }
    }

    public static class RichVideoBlock extends RichMediaBlock {
        public final TL_iv.pageBlockVideo block;
        public final TLRPC.Document document;
        public final boolean isVideo;
        public final TLRPC.PhotoSize previewThumb;
        public final boolean realVideo;
        public final TLRPC.PhotoSize strippedThumb;

        public RichVideoBlock(RichMessageLayout richMessageLayout, Rect rect, int i, TL_iv.pageBlockVideo pageblockvideo, boolean z) {
            int i2;
            int i3;
            super(richMessageLayout, rect, i, z);
            this.block = pageblockvideo;
            TLRPC.Document document = richMessageLayout.getDocument(pageblockvideo.video_id);
            this.document = document;
            boolean zIsVideoDocument = MessageObject.isVideoDocument(document);
            this.realVideo = zIsVideoDocument;
            int i4 = 0;
            this.isVideo = zIsVideoDocument || MessageObject.isGifDocument(document);
            if (document != null) {
                this.previewThumb = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 320, false, null, true);
                this.strippedThumb = FileLoader.getStrippedPhotoSize(document.thumbs);
            } else {
                this.previewThumb = null;
                this.strippedThumb = null;
            }
            if (document != null) {
                while (true) {
                    if (i4 >= this.document.attributes.size()) {
                        i2 = 100;
                        i3 = 100;
                        break;
                    }
                    TLRPC.DocumentAttribute documentAttribute = this.document.attributes.get(i4);
                    if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                        i3 = documentAttribute.f856w;
                        i2 = documentAttribute.f855h;
                        break;
                    }
                    i4++;
                }
                if (i3 <= 0 || i2 <= 0) {
                    TLRPC.PhotoSize photoSize = this.previewThumb;
                    i3 = photoSize != null ? photoSize.f858w : 100;
                    i2 = photoSize != null ? photoSize.f857h : 100;
                }
                i = i3;
            } else {
                i2 = 100;
            }
            int iMax = this.maxWidth;
            int iMax2 = (int) ((iMax / Math.max(1, i)) * i2);
            Point point = AndroidUtilities.displaySize;
            int iMax3 = (int) (Math.max(point.x, point.y) * 0.55f);
            if (iMax2 > iMax3) {
                iMax = (int) ((iMax3 / Math.max(1, i2)) * i);
                iMax2 = iMax3;
            }
            this.imgWidth = iMax;
            this.imgHeight = iMax2;
            finishLayout();
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichMediaBlock
        public boolean isRealVideo() {
            return this.realVideo;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichMediaBlock
        public boolean isAnimatedContent() {
            return this.isVideo;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichMediaBlock
        public boolean allowAutoplay() {
            return this.realVideo ? SharedConfig.isAutoplayVideo() : SharedConfig.isAutoplayGifs();
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichMediaBlock
        public boolean computeAutoDownload() {
            if (this.document == null) {
                return false;
            }
            if (this.isVideo) {
                return allowAutoplay() && DownloadController.getInstance(this.root.currentAccount).canDownloadMedia(4, this.document.size);
            }
            return true;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichMediaBlock
        public void applyImage(boolean z) {
            TLRPC.Document document = this.document;
            if (document == null) {
                return;
            }
            TLRPC.PhotoSize photoSize = this.strippedThumb;
            ImageLocation forDocument = photoSize != null ? ImageLocation.getForDocument(photoSize, document) : null;
            TLRPC.PhotoSize photoSize2 = this.previewThumb;
            ImageLocation forDocument2 = photoSize2 != null ? ImageLocation.getForDocument(photoSize2, this.document) : null;
            if (z && this.isVideo && (allowAutoplay() || this.mediaForced)) {
                this.imageReceiver.setAllowStartAnimation(true);
                this.imageReceiver.setAutoRepeat(1);
                this.imageReceiver.setImage(ImageLocation.getForDocument(this.document), ImageLoader.AUTOPLAY_FILTER, forDocument2, null, forDocument, "b1", null, this.document.size, "mp4", this.root.messageObject, 1);
                return;
            }
            this.imageReceiver.setImage(null, null, forDocument2, null, forDocument, "b1", null, this.document.size, "mp4", this.root.messageObject, 1);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichMediaBlock
        public String getFileName() {
            return FileLoader.getAttachFileName(this.document);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichMediaBlock
        public boolean fileExists() {
            if (this.document == null) {
                return true;
            }
            File pathToAttach = FileLoader.getInstance(this.root.currentAccount).getPathToAttach(this.document);
            File pathToAttach2 = FileLoader.getInstance(this.root.currentAccount).getPathToAttach(this.document, true);
            return (pathToAttach != null && pathToAttach.exists()) || (pathToAttach2 != null && pathToAttach2.exists());
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichMediaBlock
        public TL_iv.PageBlock getBlock() {
            return this.block;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichMediaBlock
        public boolean isSpoiler() {
            TL_iv.pageBlockVideo pageblockvideo = this.block;
            return pageblockvideo != null && pageblockvideo.spoiler;
        }
    }

    public static class RichMapBlock extends RichBlock {
        private static Paint mapBgPaint;
        public final TL_iv.pageBlockMap block;
        private int currentMapProvider;
        public final ImageReceiver imageReceiver;
        private final int imgHeight;
        private final int imgWidth;
        private boolean photoPressed;
        private Drawable redPinIcon;

        public RichMapBlock(RichMessageLayout richMessageLayout, Rect rect, int i, TL_iv.pageBlockMap pageblockmap) {
            super(richMessageLayout, rect, i);
            ImageReceiver imageReceiver = new ImageReceiver();
            this.imageReceiver = imageReceiver;
            this.block = pageblockmap;
            imageReceiver.setAllowLoadingOnAttachedOnly(true);
            int i2 = pageblockmap.f890w;
            i2 = i2 <= 0 ? 100 : i2;
            int i3 = pageblockmap.f889h;
            int i4 = i3 > 0 ? i3 : 100;
            int iMax = this.maxWidth;
            int iMax2 = (int) ((iMax / Math.max(1, i2)) * i4);
            Point point = AndroidUtilities.displaySize;
            int iMax3 = (int) (Math.max(point.x, point.y) * 0.55f);
            if (iMax2 > iMax3) {
                iMax = (int) ((iMax3 / Math.max(1, i4)) * i2);
                iMax2 = iMax3;
            }
            this.imgWidth = iMax;
            this.imgHeight = iMax2;
            imageReceiver.setImageCoords(0.0f, 0.0f, iMax, iMax2);
            applyImage();
        }

        private void applyImage() {
            if (this.block.geo == null) {
                return;
            }
            int i = this.root.currentAccount;
            int i2 = MessagesController.getInstance(i).mapProvider;
            this.currentMapProvider = i2;
            float f = this.imgWidth;
            float f2 = AndroidUtilities.density;
            int i3 = (int) (f / f2);
            int i4 = (int) (this.imgHeight / f2);
            TL_iv.pageBlockMap pageblockmap = this.block;
            int i5 = pageblockmap.zoom;
            if (i5 <= 0) {
                i5 = 15;
            }
            int i6 = i5;
            if (i2 == 2) {
                WebFile webFileCreateWithGeoPoint = WebFile.createWithGeoPoint(pageblockmap.geo, i3, i4, i6, Math.min(2, (int) Math.ceil(f2)));
                if (webFileCreateWithGeoPoint != null) {
                    this.imageReceiver.setImage(ImageLocation.getForWebFile(webFileCreateWithGeoPoint), null, null, null, this.root.messageObject, 0);
                    return;
                }
                return;
            }
            TLRPC.GeoPoint geoPoint = pageblockmap.geo;
            String strFormapMapUrl = AndroidUtilities.formapMapUrl(i, geoPoint.lat, geoPoint._long, i3, i4, true, i6, -1);
            if (strFormapMapUrl != null) {
                this.imageReceiver.setImage(strFormapMapUrl, null, null, null, 0L);
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDraw(Canvas canvas) {
            View view;
            if (mapBgPaint == null) {
                mapBgPaint = new Paint(1);
            }
            mapBgPaint.setColor(this.root.getThemedColor(Theme.key_chat_inLocationBackground));
            boolean zIsInQuote = isInQuote();
            int i = zIsInQuote ? 0 : this.root.padLeft;
            int i2 = zIsInQuote ? 0 : this.root.padRight;
            float f = -i;
            canvas.drawRect(f, 0.0f, this.imgWidth + i2, this.imgHeight, mapBgPaint);
            Drawable drawable = Theme.chat_locationDrawable[this.root.isOut() ? 1 : 0];
            if (drawable != null) {
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                int i3 = (this.imgWidth - intrinsicWidth) / 2;
                int i4 = (this.imgHeight - intrinsicHeight) / 2;
                drawable.setBounds(i3, i4, intrinsicWidth + i3, intrinsicHeight + i4);
                drawable.draw(canvas);
            }
            this.imageReceiver.setImageCoords(f, 0.0f, this.imgWidth + i + i2, this.imgHeight);
            this.imageReceiver.draw(canvas);
            if (this.currentMapProvider == 2 && this.imageReceiver.hasNotThumb()) {
                if (this.redPinIcon == null && (view = this.view) != null) {
                    this.redPinIcon = ContextCompat.getDrawable(view.getContext(), C2573R.drawable.map_pin).mutate();
                }
                if (this.redPinIcon != null) {
                    int intrinsicWidth2 = (int) (r10.getIntrinsicWidth() * 0.8f);
                    int intrinsicHeight2 = (int) (this.redPinIcon.getIntrinsicHeight() * 0.8f);
                    int i5 = (this.imgWidth - intrinsicWidth2) / 2;
                    int i6 = (this.imgHeight / 2) - intrinsicHeight2;
                    this.redPinIcon.setAlpha((int) (this.imageReceiver.getCurrentAlpha() * 255.0f));
                    this.redPinIcon.setBounds(i5, i6, intrinsicWidth2 + i5, intrinsicHeight2 + i6);
                    this.redPinIcon.draw(canvas);
                }
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getHeight() {
            Rect rect = this.padding;
            return rect.top + this.imgHeight + rect.bottom;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getMinWidth() {
            Rect rect = this.padding;
            return rect.left + this.imgWidth + rect.right;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getLastLineWidth() {
            return getMinWidth();
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean onTouchEvent(MotionEvent motionEvent) {
            View view;
            int actionMasked = motionEvent.getActionMasked();
            float x = motionEvent.getX() - this.padding.left;
            float y = motionEvent.getY() - this.padding.top;
            boolean z = x >= 0.0f && x <= ((float) this.imgWidth) && y >= 0.0f && y <= ((float) this.imgHeight);
            if (actionMasked == 0) {
                if (!z) {
                    return false;
                }
                this.photoPressed = true;
                return true;
            }
            if (actionMasked == 1) {
                if (this.photoPressed) {
                    this.photoPressed = false;
                    if (z && this.block.geo != null && (view = this.view) != null) {
                        view.playSoundEffect(0);
                        try {
                            TLRPC.GeoPoint geoPoint = this.block.geo;
                            double d = geoPoint.lat;
                            double d2 = geoPoint._long;
                            this.view.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse("geo:" + d + "," + d2 + "?q=" + d + "," + d2)));
                        } catch (Exception e) {
                            FileLog.m898e(e);
                        }
                        return true;
                    }
                }
                return false;
            }
            if (actionMasked == 3) {
                this.photoPressed = false;
            }
            return this.photoPressed;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onAttachedToWindow() {
            this.imageReceiver.setParentView(this.view);
            this.imageReceiver.onAttachedToWindow();
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDetachedFromWindow() {
            this.imageReceiver.onDetachedFromWindow();
        }
    }

    public static class RichAudioBlock extends RichBlock implements DownloadController.FileDownloadProgressListener, NotificationCenter.NotificationCenterDelegate {
        private final TextPaint audioTimePaint;
        public final TL_iv.pageBlockAudio block;
        private boolean buttonPressed;
        private int buttonState;
        private final int buttonX;
        private final int buttonY;
        private final TLRPC.Document currentDocument;
        private final MessageObject currentMessageObject;
        private StaticLayout durationLayout;
        private String lastTimeString;
        private final int observerTag;
        private final RadialProgress2 radialProgress;
        private final SeekBar seekBar;
        private int seekBarWidth;
        private int seekBarX;
        private int seekBarY;
        private final int size;
        private StaticLayout titleLayout;

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onProgressUpload(String str, long j, long j2, boolean z) {
        }

        public RichAudioBlock(RichMessageLayout richMessageLayout, Rect rect, int i, TL_iv.pageBlockAudio pageblockaudio) {
            super(richMessageLayout, rect, i);
            TextPaint textPaint = new TextPaint(1);
            this.audioTimePaint = textPaint;
            int iDp = AndroidUtilities.dp(16.0f);
            this.buttonX = iDp;
            int iDp2 = AndroidUtilities.dp(9.0f);
            this.buttonY = iDp2;
            int iDp3 = AndroidUtilities.dp(44.0f);
            this.size = iDp3;
            this.block = pageblockaudio;
            MessageObject messageObject = richMessageLayout.audioBlocks.get(pageblockaudio);
            this.currentMessageObject = messageObject;
            this.currentDocument = messageObject != null ? messageObject.getDocument() : null;
            this.observerTag = DownloadController.getInstance(richMessageLayout.currentAccount).generateObserverTag();
            textPaint.setTypeface(AndroidUtilities.regular());
            RadialProgress2 radialProgress2 = new RadialProgress2(null);
            this.radialProgress = radialProgress2;
            radialProgress2.setCircleRadius(AndroidUtilities.dp(24.0f));
            radialProgress2.setProgressRect(iDp, iDp2, iDp + iDp3, iDp3 + iDp2);
            SeekBar seekBar = new SeekBar(null);
            this.seekBar = seekBar;
            seekBar.setDelegate(new SeekBar.SeekBarDelegate() { // from class: org.telegram.messenger.RichMessageLayout$RichAudioBlock$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.Components.SeekBar.SeekBarDelegate
                public final void onSeekBarDrag(float f) {
                    this.f$0.lambda$new$0(f);
                }
            });
            layoutInner();
            updateButtonState(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(float f) {
            MessageObject messageObject = this.currentMessageObject;
            if (messageObject == null) {
                return;
            }
            messageObject.audioProgress = f;
            MediaController.getInstance().seekToProgress(this.currentMessageObject, f);
        }

        private void layoutInner() {
            SpannableStringBuilder spannableStringBuilder;
            int iDp = this.buttonX + AndroidUtilities.dp(50.0f) + this.size;
            this.seekBarX = iDp;
            this.seekBarWidth = Math.max(0, (this.maxWidth - iDp) - AndroidUtilities.dp(18.0f));
            MessageObject messageObject = this.currentMessageObject;
            String musicAuthor = messageObject != null ? messageObject.getMusicAuthor(false) : null;
            MessageObject messageObject2 = this.currentMessageObject;
            String musicTitle = messageObject2 != null ? messageObject2.getMusicTitle(false) : null;
            if (!TextUtils.isEmpty(musicTitle) || !TextUtils.isEmpty(musicAuthor)) {
                if (!TextUtils.isEmpty(musicTitle) && !TextUtils.isEmpty(musicAuthor)) {
                    spannableStringBuilder = new SpannableStringBuilder(String.format("%s - %s", musicAuthor, musicTitle));
                } else if (!TextUtils.isEmpty(musicTitle)) {
                    spannableStringBuilder = new SpannableStringBuilder(musicTitle);
                } else {
                    spannableStringBuilder = new SpannableStringBuilder(musicAuthor);
                }
                if (!TextUtils.isEmpty(musicAuthor)) {
                    spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, musicAuthor.length(), 18);
                }
                this.audioTimePaint.setTextSize(AndroidUtilities.dp(16.0f));
                this.titleLayout = new StaticLayout(TextUtils.ellipsize(spannableStringBuilder, this.audioTimePaint, this.seekBarWidth, TextUtils.TruncateAt.END), this.audioTimePaint, this.seekBarWidth + AndroidUtilities.dp(50.0f), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                this.seekBarY = this.buttonY + ((this.size - AndroidUtilities.dp(30.0f)) / 2) + AndroidUtilities.dp(11.0f);
            } else {
                this.titleLayout = null;
                this.seekBarY = this.buttonY + ((this.size - AndroidUtilities.dp(30.0f)) / 2);
            }
            this.seekBar.setSize(this.seekBarWidth, AndroidUtilities.dp(30.0f));
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getHeight() {
            return this.padding.top + AndroidUtilities.dp(62.0f) + this.padding.bottom;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getLastLineWidth() {
            return getMinWidth();
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean isHorizontallyDragging() {
            return this.seekBar.isDragging();
        }

        private int getIconForCurrentState() {
            int i = this.buttonState;
            if (i == 1) {
                return 1;
            }
            if (i == 2) {
                return 2;
            }
            return i == 3 ? 3 : 0;
        }

        public void updatePlayingMessageProgress() {
            int i;
            if (this.currentDocument == null || this.currentMessageObject == null) {
                return;
            }
            if (!this.seekBar.isDragging()) {
                this.seekBar.setProgress(this.currentMessageObject.audioProgress);
            }
            if (!MediaController.getInstance().isPlayingMessage(this.currentMessageObject)) {
                i = 0;
                int i2 = 0;
                while (true) {
                    if (i2 >= this.currentDocument.attributes.size()) {
                        break;
                    }
                    TLRPC.DocumentAttribute documentAttribute = this.currentDocument.attributes.get(i2);
                    if (documentAttribute instanceof TLRPC.TL_documentAttributeAudio) {
                        i = (int) documentAttribute.duration;
                        break;
                    }
                    i2++;
                }
            } else {
                i = this.currentMessageObject.audioProgressSec;
            }
            String shortDuration = AndroidUtilities.formatShortDuration(i);
            String str = this.lastTimeString;
            if (str == null || !str.equals(shortDuration)) {
                this.lastTimeString = shortDuration;
                this.audioTimePaint.setTextSize(AndroidUtilities.dp(16.0f));
                this.durationLayout = new StaticLayout(shortDuration, this.audioTimePaint, (int) Math.ceil(this.audioTimePaint.measureText(shortDuration)), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
            }
            TextPaint textPaint = this.audioTimePaint;
            RichMessageLayout richMessageLayout = this.root;
            textPaint.setColor(richMessageLayout.getThemedColor(richMessageLayout.isOut() ? Theme.key_chat_messageTextOut : Theme.key_chat_messageTextIn));
            View view = this.view;
            if (view != null) {
                view.invalidate();
            }
        }

        public void updateButtonState(boolean z) {
            int i = this.root.currentAccount;
            String attachFileName = FileLoader.getAttachFileName(this.currentDocument);
            File pathToAttach = this.currentDocument == null ? null : FileLoader.getInstance(i).getPathToAttach(this.currentDocument, true);
            boolean z2 = pathToAttach != null && pathToAttach.exists();
            if (TextUtils.isEmpty(attachFileName)) {
                this.radialProgress.setIcon(4, false, false);
                return;
            }
            if (z2) {
                DownloadController.getInstance(i).removeLoadingFileObserver(this);
                if (!MediaController.getInstance().isPlayingMessage(this.currentMessageObject) || MediaController.getInstance().isMessagePaused()) {
                    this.buttonState = 0;
                } else {
                    this.buttonState = 1;
                }
                this.radialProgress.setIcon(getIconForCurrentState(), false, z);
            } else {
                DownloadController.getInstance(i).addLoadingFileObserver(attachFileName, null, this);
                if (!FileLoader.getInstance(i).isLoadingFile(attachFileName)) {
                    this.buttonState = 2;
                    this.radialProgress.setProgress(0.0f, z);
                    this.radialProgress.setIcon(getIconForCurrentState(), false, z);
                } else {
                    this.buttonState = 3;
                    Float fileProgress = ImageLoader.getInstance().getFileProgress(attachFileName);
                    this.radialProgress.setProgress(fileProgress != null ? fileProgress.floatValue() : 0.0f, z);
                    this.radialProgress.setIcon(getIconForCurrentState(), true, z);
                }
            }
            updatePlayingMessageProgress();
        }

        private void didPressedButton(boolean z) {
            int i = this.root.currentAccount;
            int i2 = this.buttonState;
            if (i2 == 0) {
                if (MediaController.getInstance().setPlaylist(this.root.audioMessages, this.currentMessageObject, 0L, false, null)) {
                    this.buttonState = 1;
                    this.radialProgress.setIcon(getIconForCurrentState(), false, z);
                    View view = this.view;
                    if (view != null) {
                        view.invalidate();
                        return;
                    }
                    return;
                }
                return;
            }
            if (i2 == 1) {
                if (MediaController.getInstance().lambda$startAudioAgain$7(this.currentMessageObject)) {
                    this.buttonState = 0;
                    this.radialProgress.setIcon(getIconForCurrentState(), false, z);
                    View view2 = this.view;
                    if (view2 != null) {
                        view2.invalidate();
                        return;
                    }
                    return;
                }
                return;
            }
            if (i2 == 2) {
                this.radialProgress.setProgress(0.0f, false);
                FileLoader.getInstance(i).loadFile(this.currentDocument, this.root.messageObject, 1, 1);
                this.buttonState = 3;
                this.radialProgress.setIcon(getIconForCurrentState(), true, z);
                View view3 = this.view;
                if (view3 != null) {
                    view3.invalidate();
                    return;
                }
                return;
            }
            if (i2 == 3) {
                FileLoader.getInstance(i).cancelLoadFile(this.currentDocument);
                this.buttonState = 2;
                this.radialProgress.setIcon(getIconForCurrentState(), false, z);
                View view4 = this.view;
                if (view4 != null) {
                    view4.invalidate();
                }
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDraw(Canvas canvas) {
            if (this.currentMessageObject == null || this.currentDocument == null) {
                return;
            }
            canvas.save();
            canvas.translate(-this.root.padLeft, 0.0f);
            this.radialProgress.setColorKeys(this.root.isOut() ? Theme.key_chat_outLoader : Theme.key_chat_inLoader, this.root.isOut() ? Theme.key_chat_outLoaderSelected : Theme.key_chat_inLoaderSelected, this.root.isOut() ? Theme.key_chat_outMediaIcon : Theme.key_chat_inMediaIcon, this.root.isOut() ? Theme.key_chat_outMediaIconSelected : Theme.key_chat_inMediaIconSelected);
            RadialProgress2 radialProgress2 = this.radialProgress;
            RichMessageLayout richMessageLayout = this.root;
            radialProgress2.setProgressColor(richMessageLayout.getThemedColor(richMessageLayout.isOut() ? Theme.key_chat_outFileProgress : Theme.key_chat_inFileProgress));
            this.radialProgress.draw(canvas);
            SeekBar seekBar = this.seekBar;
            RichMessageLayout richMessageLayout2 = this.root;
            int themedColor = richMessageLayout2.getThemedColor(richMessageLayout2.isOut() ? Theme.key_chat_outAudioSeekbar : Theme.key_chat_inAudioSeekbar);
            RichMessageLayout richMessageLayout3 = this.root;
            int themedColor2 = richMessageLayout3.getThemedColor(richMessageLayout3.isOut() ? Theme.key_chat_outAudioCacheSeekbar : Theme.key_chat_inAudioCacheSeekbar);
            RichMessageLayout richMessageLayout4 = this.root;
            int themedColor3 = richMessageLayout4.getThemedColor(richMessageLayout4.isOut() ? Theme.key_chat_outAudioSeekbarFill : Theme.key_chat_inAudioSeekbarFill);
            RichMessageLayout richMessageLayout5 = this.root;
            int themedColor4 = richMessageLayout5.getThemedColor(richMessageLayout5.isOut() ? Theme.key_chat_outAudioSeekbarFill : Theme.key_chat_inAudioSeekbarFill);
            RichMessageLayout richMessageLayout6 = this.root;
            seekBar.setColors(themedColor, themedColor2, themedColor3, themedColor4, richMessageLayout6.getThemedColor(richMessageLayout6.isOut() ? Theme.key_chat_outAudioSeekbarSelected : Theme.key_chat_inAudioSeekbarSelected));
            canvas.save();
            canvas.translate(this.seekBarX, this.seekBarY);
            this.seekBar.draw(canvas);
            canvas.restore();
            if (this.durationLayout != null) {
                canvas.save();
                canvas.translate(this.buttonX + AndroidUtilities.dp(54.0f), this.seekBarY + AndroidUtilities.dp(6.0f));
                this.durationLayout.draw(canvas);
                canvas.restore();
            }
            if (this.titleLayout != null) {
                canvas.save();
                canvas.translate(this.buttonX + AndroidUtilities.dp(54.0f), this.seekBarY - AndroidUtilities.dp(16.0f));
                this.titleLayout.draw(canvas);
                canvas.restore();
            }
            canvas.restore();
        }

        /* JADX WARN: Code restructure failed: missing block: B:25:0x0074, code lost:
        
            if (r6.buttonState == 0) goto L26;
         */
        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            float x = (motionEvent.getX() - this.padding.left) - this.root.padLeft;
            float y = motionEvent.getY() - this.padding.top;
            if (this.seekBar.onTouch(actionMasked, x - this.seekBarX, y - this.seekBarY)) {
                if (actionMasked == 0) {
                    requestDisallowParentIntercept(true);
                }
                if (actionMasked == 1 || actionMasked == 3) {
                    requestDisallowParentIntercept(false);
                }
                View view = this.view;
                if (view != null) {
                    view.invalidate();
                }
                return true;
            }
            if (actionMasked == 0) {
                if (this.buttonState != -1) {
                    if (x >= this.buttonX && x <= r0 + AndroidUtilities.dp(48.0f)) {
                        if (y < this.buttonY || y > r0 + AndroidUtilities.dp(48.0f)) {
                        }
                        this.buttonPressed = true;
                        View view2 = this.view;
                        if (view2 != null) {
                            view2.invalidate();
                        }
                        return true;
                    }
                }
            } else if (actionMasked == 1) {
                if (this.buttonPressed) {
                    this.buttonPressed = false;
                    View view3 = this.view;
                    if (view3 != null) {
                        view3.playSoundEffect(0);
                    }
                    didPressedButton(true);
                    View view4 = this.view;
                    if (view4 != null) {
                        view4.invalidate();
                    }
                    return true;
                }
            } else if (actionMasked == 3) {
                this.buttonPressed = false;
            }
            return this.buttonPressed;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onAttachedToWindow() {
            View view = this.view;
            if (view != null) {
                this.radialProgress.setParent(view);
                this.seekBar.setParent(this.view);
            }
            updateButtonState(false);
            NotificationCenter.getInstance(this.root.currentAccount).addObserver(this, NotificationCenter.messagePlayingDidStart);
            NotificationCenter.getInstance(this.root.currentAccount).addObserver(this, NotificationCenter.messagePlayingDidReset);
            NotificationCenter.getInstance(this.root.currentAccount).addObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
            NotificationCenter.getInstance(this.root.currentAccount).addObserver(this, NotificationCenter.messagePlayingProgressDidChanged);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDetachedFromWindow() {
            DownloadController.getInstance(this.root.currentAccount).removeLoadingFileObserver(this);
            NotificationCenter.getInstance(this.root.currentAccount).removeObserver(this, NotificationCenter.messagePlayingDidStart);
            NotificationCenter.getInstance(this.root.currentAccount).removeObserver(this, NotificationCenter.messagePlayingDidReset);
            NotificationCenter.getInstance(this.root.currentAccount).removeObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
            NotificationCenter.getInstance(this.root.currentAccount).removeObserver(this, NotificationCenter.messagePlayingProgressDidChanged);
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            MessageObject playingMessageObject;
            MessageObject messageObject = this.currentMessageObject;
            if (messageObject == null) {
                return;
            }
            if (i == NotificationCenter.messagePlayingDidStart) {
                updateButtonState(true);
                return;
            }
            if (i == NotificationCenter.messagePlayingDidReset || i == NotificationCenter.messagePlayingPlayStateChanged) {
                updateButtonState(true);
                return;
            }
            if (i == NotificationCenter.messagePlayingProgressDidChanged) {
                if (messageObject.getId() != ((Integer) objArr[0]).intValue() || (playingMessageObject = MediaController.getInstance().getPlayingMessageObject()) == null) {
                    return;
                }
                MessageObject messageObject2 = this.currentMessageObject;
                messageObject2.audioProgress = playingMessageObject.audioProgress;
                messageObject2.audioProgressSec = playingMessageObject.audioProgressSec;
                messageObject2.audioPlayerDuration = playingMessageObject.audioPlayerDuration;
                updatePlayingMessageProgress();
            }
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public int getObserverTag() {
            return this.observerTag;
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onFailedDownload(String str, boolean z) {
            updateButtonState(true);
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onSuccessDownload(String str) {
            this.radialProgress.setProgress(1.0f, true);
            updateButtonState(true);
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onProgressDownload(String str, long j, long j2) {
            this.radialProgress.setProgress(Math.min(1.0f, j2 <= 0 ? 0.0f : j / j2), true);
            if (this.buttonState != 3) {
                updateButtonState(true);
            }
        }
    }

    public static class MediaCell implements DownloadController.FileDownloadProgressListener {
        private static ColorMatrixColorFilter fancyBlurFilter;
        public final float aspectRatio;
        public boolean autoDownload;
        public final ImageReceiver blurImageReceiver;
        private Bitmap blurSource;
        private boolean buttonPressed;
        private final int buttonSize;
        private int buttonState;
        private int buttonX;
        private int buttonY;
        public final TLRPC.Document document;

        /* JADX INFO: renamed from: h */
        public int f814h;
        public final ImageReceiver imageReceiver;
        public final boolean isVideo;
        private boolean mediaForced;
        private final int observerTag;
        public final TL_iv.PageBlock pageBlock;
        private View parentView;
        public final TLRPC.Photo photo;
        private boolean photoPressed;
        public final TLRPC.PhotoSize previewThumb;
        public RadialProgress2 radialProgress;
        public final boolean realVideo;
        public final RichMessageLayout root;
        public final TLRPC.PhotoSize sizeFull;
        private final SpoilerReveal spoilerReveal;
        public final TLRPC.PhotoSize strippedSize;
        public final TLRPC.PhotoSize strippedThumb;

        /* JADX INFO: renamed from: w */
        public int f815w;

        /* JADX INFO: renamed from: x */
        public int f816x;

        /* JADX INFO: renamed from: y */
        public int f817y;

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onProgressUpload(String str, long j, long j2, boolean z) {
        }

        public static MediaCell forPageBlock(RichMessageLayout richMessageLayout, TL_iv.PageBlock pageBlock) {
            if (pageBlock instanceof TL_iv.pageBlockPhoto) {
                return new MediaCell(richMessageLayout, (TL_iv.pageBlockPhoto) pageBlock);
            }
            if (pageBlock instanceof TL_iv.pageBlockVideo) {
                return new MediaCell(richMessageLayout, (TL_iv.pageBlockVideo) pageBlock);
            }
            return null;
        }

        private MediaCell(RichMessageLayout richMessageLayout, TL_iv.pageBlockPhoto pageblockphoto) {
            int i;
            ImageReceiver imageReceiver = new ImageReceiver();
            this.imageReceiver = imageReceiver;
            ImageReceiver imageReceiver2 = new ImageReceiver();
            this.blurImageReceiver = imageReceiver2;
            this.buttonState = -1;
            this.buttonSize = AndroidUtilities.dp(48.0f);
            this.spoilerReveal = new SpoilerReveal();
            this.root = richMessageLayout;
            this.pageBlock = pageblockphoto;
            TLRPC.Photo photo = richMessageLayout.getPhoto(pageblockphoto.photo_id);
            this.photo = photo;
            if (photo != null) {
                this.sizeFull = FileLoader.getClosestPhotoSizeWithSize(photo.sizes, AndroidUtilities.getPhotoSize());
                this.strippedSize = FileLoader.getStrippedPhotoSize(photo.sizes);
            } else {
                this.sizeFull = null;
                this.strippedSize = null;
            }
            this.document = null;
            this.previewThumb = null;
            this.strippedThumb = null;
            this.isVideo = false;
            this.realVideo = false;
            TLRPC.PhotoSize photoSize = this.sizeFull;
            this.aspectRatio = (photoSize == null || (i = photoSize.f857h) <= 0) ? 1.0f : photoSize.f858w / i;
            this.observerTag = DownloadController.getInstance(richMessageLayout.currentAccount).generateObserverTag();
            imageReceiver.setAllowLoadingOnAttachedOnly(true);
            imageReceiver2.setAllowLoadingOnAttachedOnly(true);
        }

        private MediaCell(RichMessageLayout richMessageLayout, TL_iv.pageBlockVideo pageblockvideo) {
            float f;
            int i;
            this.imageReceiver = new ImageReceiver();
            this.blurImageReceiver = new ImageReceiver();
            this.buttonState = -1;
            this.buttonSize = AndroidUtilities.dp(48.0f);
            this.spoilerReveal = new SpoilerReveal();
            this.root = richMessageLayout;
            this.pageBlock = pageblockvideo;
            this.photo = null;
            this.sizeFull = null;
            this.strippedSize = null;
            TLRPC.Document document = richMessageLayout.getDocument(pageblockvideo.video_id);
            this.document = document;
            boolean zIsVideoDocument = MessageObject.isVideoDocument(document);
            this.realVideo = zIsVideoDocument;
            this.isVideo = zIsVideoDocument || MessageObject.isGifDocument(document);
            if (document != null) {
                this.previewThumb = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 320, false, null, true);
                this.strippedThumb = FileLoader.getStrippedPhotoSize(document.thumbs);
            } else {
                this.previewThumb = null;
                this.strippedThumb = null;
            }
            if (document != null) {
                for (int i2 = 0; i2 < this.document.attributes.size(); i2++) {
                    TLRPC.DocumentAttribute documentAttribute = this.document.attributes.get(i2);
                    if ((documentAttribute instanceof TLRPC.TL_documentAttributeVideo) && (i = documentAttribute.f855h) > 0) {
                        f = documentAttribute.f856w / i;
                        break;
                    }
                }
                f = 1.0f;
            } else {
                f = 1.0f;
            }
            this.aspectRatio = f;
            this.observerTag = DownloadController.getInstance(richMessageLayout.currentAccount).generateObserverTag();
            this.imageReceiver.setAllowLoadingOnAttachedOnly(true);
            this.blurImageReceiver.setAllowLoadingOnAttachedOnly(true);
            this.imageReceiver.setDelegate(new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.messenger.RichMessageLayout.MediaCell.1
                @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                public void didSetImage(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
                }

                @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                public void onAnimationReady(ImageReceiver imageReceiver) {
                    MediaCell mediaCell = MediaCell.this;
                    mediaCell.updateButtonState(mediaCell.parentView, true);
                }
            });
        }

        public void setRect(int i, int i2, int i3, int i4) {
            this.f816x = i;
            this.f817y = i2;
            this.f815w = i3;
            this.f814h = i4;
            this.imageReceiver.setImageCoords(i, i2, i3, i4);
            int i5 = this.buttonSize;
            int i6 = i + ((i3 - i5) / 2);
            this.buttonX = i6;
            int i7 = i2 + ((i4 - i5) / 2);
            this.buttonY = i7;
            RadialProgress2 radialProgress2 = this.radialProgress;
            if (radialProgress2 != null) {
                radialProgress2.setProgressRect(i6, i7, i6 + i5, i5 + i7);
            }
            boolean zComputeAutoDownload = computeAutoDownload();
            this.autoDownload = zComputeAutoDownload;
            applyImage(zComputeAutoDownload || fileExists());
        }

        private boolean allowAutoplay() {
            return this.realVideo ? SharedConfig.isAutoplayVideo() : SharedConfig.isAutoplayGifs();
        }

        private boolean computeAutoDownload() {
            if (this.document == null) {
                return (DownloadController.getInstance(this.root.currentAccount).getCurrentDownloadMask() & 1) != 0;
            }
            if (this.isVideo) {
                return allowAutoplay() && DownloadController.getInstance(this.root.currentAccount).canDownloadMedia(4, this.document.size);
            }
            return true;
        }

        public boolean fileExists() {
            if (this.sizeFull != null) {
                File pathToAttach = FileLoader.getInstance(this.root.currentAccount).getPathToAttach(this.sizeFull, true);
                File pathToAttach2 = FileLoader.getInstance(this.root.currentAccount).getPathToAttach(this.sizeFull, false);
                return pathToAttach.exists() || (pathToAttach2 != null && pathToAttach2.exists());
            }
            if (this.document == null) {
                return true;
            }
            File pathToAttach3 = FileLoader.getInstance(this.root.currentAccount).getPathToAttach(this.document);
            File pathToAttach4 = FileLoader.getInstance(this.root.currentAccount).getPathToAttach(this.document, true);
            return (pathToAttach3 != null && pathToAttach3.exists()) || (pathToAttach4 != null && pathToAttach4.exists());
        }

        public String getFileName() {
            TLRPC.PhotoSize photoSize = this.sizeFull;
            if (photoSize != null) {
                return FileLoader.getAttachFileName(photoSize);
            }
            TLRPC.Document document = this.document;
            if (document != null) {
                return FileLoader.getAttachFileName(document);
            }
            return null;
        }

        private void applyImage(boolean z) {
            String str;
            String string;
            TLRPC.Photo photo = this.photo;
            if (photo != null && this.sizeFull != null) {
                TLRPC.PhotoSize photoSize = this.strippedSize;
                ImageLocation forPhoto = photoSize != null ? ImageLocation.getForPhoto(photoSize, photo) : null;
                ImageReceiver imageReceiver = this.imageReceiver;
                if (z) {
                    imageReceiver.setImage(null, null, ImageLocation.getForPhoto(this.sizeFull, this.photo), null, forPhoto, "b1", null, this.sizeFull.size, null, this.root.messageObject, 1);
                } else {
                    imageReceiver.setImage(null, null, null, null, forPhoto, "b1", null, this.sizeFull.size, null, this.root.messageObject, 1);
                }
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m895d("[richmedia] MediaCell.applyImage photo=" + this.photo.id + " allowMedia=" + z + " keys: image=" + this.imageReceiver.getImageKey() + " thumb=" + this.imageReceiver.getThumbKey());
                    return;
                }
                return;
            }
            TLRPC.Document document = this.document;
            if (document != null) {
                TLRPC.PhotoSize photoSize2 = this.strippedThumb;
                ImageLocation forDocument = photoSize2 != null ? ImageLocation.getForDocument(photoSize2, document) : null;
                TLRPC.PhotoSize photoSize3 = this.previewThumb;
                ImageLocation forDocument2 = photoSize3 != null ? ImageLocation.getForDocument(photoSize3, this.document) : null;
                if (z && this.isVideo && (allowAutoplay() || this.mediaForced)) {
                    this.imageReceiver.setAllowStartAnimation(true);
                    this.imageReceiver.setAutoRepeat(1);
                    this.imageReceiver.setImage(ImageLocation.getForDocument(this.document), ImageLoader.AUTOPLAY_FILTER, forDocument2, null, forDocument, "b1", null, this.document.size, "mp4", this.root.messageObject, 1);
                } else {
                    this.imageReceiver.setImage(null, null, forDocument2, null, forDocument, "b1", null, this.document.size, "mp4", this.root.messageObject, 1);
                }
                if (BuildVars.LOGS_ENABLED) {
                    StringBuilder sb = new StringBuilder("[richmedia] MediaCell.applyImage doc=");
                    sb.append(this.document.id);
                    sb.append(" allowMedia=");
                    sb.append(z);
                    sb.append(" isVideo=");
                    sb.append(this.isVideo);
                    sb.append(" realVideo=");
                    sb.append(this.realVideo);
                    sb.append(" allowAutoplay=");
                    sb.append(allowAutoplay());
                    sb.append(" forced=");
                    sb.append(this.mediaForced);
                    sb.append(" thumbs.size=");
                    sb.append(this.document.thumbs.size());
                    sb.append(" previewThumb=");
                    if (this.previewThumb == null) {
                        string = "null";
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(this.previewThumb.type);
                        sb2.append(" ");
                        if (this.previewThumb.location == null) {
                            str = "noloc";
                        } else {
                            str = this.previewThumb.location.volume_id + "_" + this.previewThumb.location.local_id;
                        }
                        sb2.append(str);
                        string = sb2.toString();
                    }
                    sb.append(string);
                    sb.append(" strippedThumb=");
                    TLRPC.PhotoSize photoSize4 = this.strippedThumb;
                    sb.append(photoSize4 != null ? photoSize4.type : "null");
                    sb.append(" keys: media=");
                    sb.append(this.imageReceiver.getMediaKey());
                    sb.append(" image=");
                    sb.append(this.imageReceiver.getImageKey());
                    sb.append(" thumb=");
                    sb.append(this.imageReceiver.getThumbKey());
                    FileLog.m895d(sb.toString());
                }
            }
        }

        public void ensureProgress(View view) {
            RadialProgress2 radialProgress2 = this.radialProgress;
            if (radialProgress2 != null || view == null) {
                if (radialProgress2 == null || view == null) {
                    return;
                }
                radialProgress2.setParent(view);
                RadialProgress2 radialProgress22 = this.radialProgress;
                int i = this.buttonX;
                int i2 = this.buttonY;
                int i3 = this.buttonSize;
                radialProgress22.setProgressRect(i, i2, i + i3, i3 + i2);
                return;
            }
            RadialProgress2 radialProgress23 = new RadialProgress2(view);
            this.radialProgress = radialProgress23;
            radialProgress23.setProgressColor(-1);
            this.radialProgress.setColors(1711276032, 2130706432, -1, -2500135);
            RadialProgress2 radialProgress24 = this.radialProgress;
            int i4 = this.buttonX;
            int i5 = this.buttonY;
            int i6 = this.buttonSize;
            radialProgress24.setProgressRect(i4, i5, i4 + i6, i6 + i5);
        }

        public void attach(View view) {
            this.parentView = view;
            this.imageReceiver.setParentView(view);
            this.imageReceiver.onAttachedToWindow();
            this.blurImageReceiver.setParentView(view);
            this.blurImageReceiver.onAttachedToWindow();
            ensureProgress(view);
            updateButtonState(view, false);
        }

        public void detach() {
            this.imageReceiver.onDetachedFromWindow();
            this.blurImageReceiver.onDetachedFromWindow();
            this.blurSource = null;
            DownloadController.getInstance(this.root.currentAccount).removeLoadingFileObserver(this);
        }

        private boolean isSpoiler() {
            TL_iv.PageBlock pageBlock = this.pageBlock;
            if (pageBlock instanceof TL_iv.pageBlockPhoto) {
                return ((TL_iv.pageBlockPhoto) pageBlock).spoiler;
            }
            if (pageBlock instanceof TL_iv.pageBlockVideo) {
                return ((TL_iv.pageBlockVideo) pageBlock).spoiler;
            }
            return false;
        }

        private void prepareBlurImage() {
            Bitmap bitmap;
            if ((this.blurImageReceiver.getBitmap() != null && this.imageReceiver.getAnimation() != null) || (bitmap = this.imageReceiver.getBitmap()) == null || bitmap.isRecycled()) {
                return;
            }
            if (bitmap != this.blurSource || this.blurImageReceiver.getBitmap() == null) {
                this.blurSource = bitmap;
                this.blurImageReceiver.setImageBitmap(Utilities.stackBlurBitmapMax(bitmap, false));
                if (fancyBlurFilter == null) {
                    ColorMatrix colorMatrix = new ColorMatrix();
                    AndroidUtilities.multiplyBrightnessColorMatrix(colorMatrix, 0.9f);
                    AndroidUtilities.adjustSaturationColorMatrix(colorMatrix, 0.6f);
                    fancyBlurFilter = new ColorMatrixColorFilter(colorMatrix);
                }
                this.blurImageReceiver.setColorFilter(fancyBlurFilter);
            }
        }

        public void updateButtonState(View view, boolean z) {
            if (view == null) {
                view = this.parentView;
            }
            ensureProgress(view);
            String fileName = getFileName();
            if (TextUtils.isEmpty(fileName)) {
                this.buttonState = -1;
                RadialProgress2 radialProgress2 = this.radialProgress;
                if (radialProgress2 != null) {
                    radialProgress2.setIcon(4, false, false);
                    return;
                }
                return;
            }
            AnimatedFileDrawable animation = this.imageReceiver.getAnimation();
            boolean z2 = animation != null && (animation.hasBitmap() || this.imageReceiver.isAnimationRunning());
            if (fileExists() || (this.isVideo && z2)) {
                DownloadController.getInstance(this.root.currentAccount).removeLoadingFileObserver(this);
                if (this.realVideo && !z2) {
                    this.buttonState = 3;
                    RadialProgress2 radialProgress22 = this.radialProgress;
                    if (radialProgress22 != null) {
                        radialProgress22.setIcon(0, false, z);
                    }
                } else if (this.isVideo && !z2 && !allowAutoplay() && !this.mediaForced) {
                    this.buttonState = 2;
                    RadialProgress2 radialProgress23 = this.radialProgress;
                    if (radialProgress23 != null) {
                        radialProgress23.setIcon(8, false, z);
                    }
                } else {
                    this.buttonState = -1;
                    RadialProgress2 radialProgress24 = this.radialProgress;
                    if (radialProgress24 != null) {
                        radialProgress24.setIcon(4, false, z);
                    }
                }
            } else {
                DownloadController.getInstance(this.root.currentAccount).addLoadingFileObserver(fileName, null, this);
                if (this.autoDownload || this.mediaForced || FileLoader.getInstance(this.root.currentAccount).isLoadingFile(fileName)) {
                    this.buttonState = 1;
                    Float fileProgress = ImageLoader.getInstance().getFileProgress(fileName);
                    fFloatValue = fileProgress != null ? fileProgress.floatValue() : 0.0f;
                    RadialProgress2 radialProgress25 = this.radialProgress;
                    if (radialProgress25 != null) {
                        radialProgress25.setIcon(3, true, z);
                    }
                } else if (this.realVideo) {
                    this.buttonState = 3;
                    RadialProgress2 radialProgress26 = this.radialProgress;
                    if (radialProgress26 != null) {
                        radialProgress26.setIcon(0, true, z);
                    }
                } else {
                    this.buttonState = 0;
                    RadialProgress2 radialProgress27 = this.radialProgress;
                    if (radialProgress27 != null) {
                        radialProgress27.setIcon(2, true, z);
                    }
                }
                RadialProgress2 radialProgress28 = this.radialProgress;
                if (radialProgress28 != null) {
                    radialProgress28.setProgress(fFloatValue, false);
                }
            }
            if (view != null) {
                view.invalidate();
            }
        }

        private void didPressButton(View view, boolean z) {
            int i = this.buttonState;
            if (i == 0) {
                this.mediaForced = true;
                RadialProgress2 radialProgress2 = this.radialProgress;
                if (radialProgress2 != null) {
                    radialProgress2.setProgress(0.0f, z);
                }
                applyImage(true);
                this.buttonState = 1;
                RadialProgress2 radialProgress22 = this.radialProgress;
                if (radialProgress22 != null) {
                    radialProgress22.setIcon(3, true, z);
                }
                if (view != null) {
                    view.invalidate();
                    return;
                }
                return;
            }
            if (i == 1) {
                this.mediaForced = false;
                this.imageReceiver.cancelLoadImage();
                this.buttonState = 0;
                RadialProgress2 radialProgress23 = this.radialProgress;
                if (radialProgress23 != null) {
                    radialProgress23.setIcon(2, false, z);
                }
                if (view != null) {
                    view.invalidate();
                    return;
                }
                return;
            }
            if (i == 2) {
                this.mediaForced = true;
                this.imageReceiver.setAllowStartAnimation(true);
                applyImage(true);
                this.imageReceiver.startAnimation();
                this.buttonState = -1;
                RadialProgress2 radialProgress24 = this.radialProgress;
                if (radialProgress24 != null) {
                    radialProgress24.setIcon(4, false, z);
                }
                if (view != null) {
                    view.invalidate();
                    return;
                }
                return;
            }
            if (i != 3 || this.root.delegate == null) {
                return;
            }
            this.root.delegate.openArticlePhoto(this.root.cell, this.pageBlock);
        }

        public boolean isInside(float f, float f2) {
            if (f < this.f816x || f > r0 + this.f815w) {
                return false;
            }
            int i = this.f817y;
            return f2 >= ((float) i) && f2 <= ((float) (i + this.f814h));
        }

        private boolean isOnButton(float f, float f2) {
            if (this.buttonState == -1) {
                return false;
            }
            if (f < this.buttonX) {
                return false;
            }
            int i = this.buttonSize;
            if (f > r0 + i) {
                return false;
            }
            int i2 = this.buttonY;
            return f2 >= ((float) i2) && f2 <= ((float) (i2 + i));
        }

        public boolean onTouchEvent(MotionEvent motionEvent, View view) {
            int i;
            int actionMasked = motionEvent.getActionMasked();
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            boolean zIsInside = isInside(x, y);
            boolean zIsOnButton = isOnButton(x, y);
            if (actionMasked == 0) {
                if (zIsInside && (zIsOnButton || (i = this.buttonState) == 0 || i == 2)) {
                    this.buttonPressed = true;
                    if (view != null) {
                        view.invalidate();
                    }
                    return true;
                }
                if (!zIsInside) {
                    return false;
                }
                this.photoPressed = true;
                return true;
            }
            if (actionMasked != 1) {
                if (actionMasked != 3) {
                    return this.photoPressed || this.buttonPressed;
                }
                this.photoPressed = false;
                this.buttonPressed = false;
                return false;
            }
            if (this.buttonPressed) {
                this.buttonPressed = false;
                if (view != null) {
                    view.playSoundEffect(0);
                    view.invalidate();
                }
                didPressButton(view, true);
                return true;
            }
            if (this.photoPressed) {
                this.photoPressed = false;
                if (zIsInside) {
                    if (view != null) {
                        view.playSoundEffect(0);
                    }
                    if (isSpoiler() && !this.spoilerReveal.isRevealing()) {
                        float imageWidth = this.imageReceiver.getImageWidth();
                        float imageHeight = this.imageReceiver.getImageHeight();
                        this.spoilerReveal.start(view, this.imageReceiver.getImageX() + (imageWidth / 2.0f), this.imageReceiver.getImageY() + (imageHeight / 2.0f), imageWidth, imageHeight);
                    } else if (this.root.delegate != null) {
                        this.root.delegate.openArticlePhoto(this.root.cell, this.pageBlock);
                    }
                    return true;
                }
            }
            return false;
        }

        public CharSequence getAccessibilityText() {
            String string = LocaleController.getString(this.isVideo ? C2573R.string.AttachVideo : C2573R.string.AttachPhoto);
            return (!isSpoiler() || this.spoilerReveal.fullyRevealed()) ? string : TextUtils.concat(string, ", ", LocaleController.getString(C2573R.string.Spoiler));
        }

        public boolean onAccessibilityClick(View view) {
            if (isSpoiler() && !this.spoilerReveal.isRevealing()) {
                float imageWidth = this.imageReceiver.getImageWidth();
                float imageHeight = this.imageReceiver.getImageHeight();
                this.spoilerReveal.start(view, (imageWidth / 2.0f) + this.imageReceiver.getImageX(), this.imageReceiver.getImageY() + (imageHeight / 2.0f), imageWidth, imageHeight);
                return true;
            }
            if (this.root.delegate == null) {
                return false;
            }
            this.root.delegate.openArticlePhoto(this.root.cell, this.pageBlock);
            return true;
        }

        public void draw(Canvas canvas) {
            this.imageReceiver.draw(canvas);
            if (isSpoiler() && !this.spoilerReveal.fullyRevealed()) {
                drawSpoiler(canvas);
                return;
            }
            RadialProgress2 radialProgress2 = this.radialProgress;
            if (radialProgress2 == null || this.buttonState == -1) {
                return;
            }
            radialProgress2.draw(canvas);
        }

        private void drawSpoiler(Canvas canvas) {
            Canvas canvas2;
            prepareBlurImage();
            float imageX = this.imageReceiver.getImageX();
            float imageY = this.imageReceiver.getImageY();
            float imageWidth = this.imageReceiver.getImageWidth();
            float imageHeight = this.imageReceiver.getImageHeight();
            if (imageWidth <= 0.0f || imageHeight <= 0.0f) {
                return;
            }
            canvas.save();
            canvas.clipRect(imageX, imageY, imageX + imageWidth, imageY + imageHeight);
            this.spoilerReveal.clipOut(canvas);
            if (this.blurImageReceiver.getBitmap() != null) {
                this.blurImageReceiver.setImageCoords(imageX, imageY, imageWidth, imageHeight);
                this.blurImageReceiver.setAlpha(this.imageReceiver.getCurrentAlpha());
                this.blurImageReceiver.draw(canvas);
            }
            SpoilerEffect2 mediaSpoilerEffect = this.root.getMediaSpoilerEffect();
            if (mediaSpoilerEffect != null) {
                canvas.translate(imageX, imageY);
                canvas2 = canvas;
                mediaSpoilerEffect.draw(canvas2, this.parentView, Math.round(imageWidth), Math.round(imageHeight), this.imageReceiver.getCurrentAlpha());
            } else {
                canvas2 = canvas;
            }
            canvas2.restore();
            View view = this.parentView;
            if (view != null) {
                view.invalidate();
            }
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public int getObserverTag() {
            return this.observerTag;
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onFailedDownload(String str, boolean z) {
            updateButtonState(this.parentView, false);
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onSuccessDownload(String str) {
            RadialProgress2 radialProgress2 = this.radialProgress;
            if (radialProgress2 != null) {
                radialProgress2.setProgress(1.0f, true);
            }
            if (this.isVideo && (allowAutoplay() || this.mediaForced)) {
                applyImage(true);
            }
            updateButtonState(this.parentView, true);
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onProgressDownload(String str, long j, long j2) {
            RadialProgress2 radialProgress2 = this.radialProgress;
            if (radialProgress2 != null) {
                radialProgress2.setProgress(Math.min(1.0f, j2 <= 0 ? 0.0f : j / j2), true);
            }
            if (this.buttonState != 1) {
                updateButtonState(this.parentView, true);
            }
        }
    }

    public static class RichCollageBlock extends RichBlock {
        private static Paint mediaBgPaint;
        public final TL_iv.pageBlockCollage block;
        private int[] cellFlags;
        public final ArrayList<MediaCell> cells;
        private int contentHeight;
        public final boolean first;
        private MediaCell pressedCell;

        public RichCollageBlock(RichMessageLayout richMessageLayout, Rect rect, int i, TL_iv.pageBlockCollage pageblockcollage, boolean z) {
            super(richMessageLayout, rect, i);
            this.cells = new ArrayList<>();
            this.block = pageblockcollage;
            this.first = z;
            for (int i2 = 0; i2 < pageblockcollage.items.size(); i2++) {
                MediaCell mediaCellForPageBlock = MediaCell.forPageBlock(richMessageLayout, pageblockcollage.items.get(i2));
                if (mediaCellForPageBlock != null) {
                    this.cells.add(mediaCellForPageBlock);
                }
            }
            layoutCells();
        }

        private void layoutCells() {
            int iRound;
            int iRound2;
            this.cellFlags = new int[this.cells.size()];
            if (this.cells.isEmpty()) {
                this.contentHeight = 0;
                return;
            }
            int size = this.cells.size();
            ArrayList<MediaCell> arrayList = this.cells;
            float f = 0.0f;
            byte b2 = 1;
            if (size == 1) {
                MediaCell mediaCell = arrayList.get(0);
                float f2 = mediaCell.aspectRatio;
                if (f2 <= 0.0f) {
                    f2 = 1.0f;
                }
                int i = this.maxWidth;
                int i2 = (int) (i / f2);
                Point point = AndroidUtilities.displaySize;
                int iMax = (int) (Math.max(point.x, point.y) * 0.55f);
                if (i2 > iMax) {
                    i = (int) (iMax * f2);
                    i2 = iMax;
                }
                mediaCell.setRect(0, 0, i, i2);
                this.cellFlags[0] = 15;
                this.contentHeight = i2;
                return;
            }
            float[] fArr = new float[arrayList.size()];
            for (int i3 = 0; i3 < this.cells.size(); i3++) {
                fArr[i3] = this.cells.get(i3).aspectRatio;
            }
            MessageObject.GroupedMessagePosition[] groupedMessagePositionArrComputeGrouped = RichMessageLayout.computeGrouped(fArr);
            int iMax2 = 0;
            for (MessageObject.GroupedMessagePosition groupedMessagePosition : groupedMessagePositionArrComputeGrouped) {
                iMax2 = Math.max(iMax2, (int) groupedMessagePosition.maxY);
            }
            int i4 = iMax2 + 1;
            float[] fArr2 = new float[i4];
            for (MessageObject.GroupedMessagePosition groupedMessagePosition2 : groupedMessagePositionArrComputeGrouped) {
                byte b3 = groupedMessagePosition2.minY;
                if (b3 == groupedMessagePosition2.maxY) {
                    fArr2[b3] = Math.max(fArr2[b3], groupedMessagePosition2.ph);
                }
            }
            for (MessageObject.GroupedMessagePosition groupedMessagePosition3 : groupedMessagePositionArrComputeGrouped) {
                int i5 = groupedMessagePosition3.minY;
                byte b4 = groupedMessagePosition3.maxY;
                if (i5 != b4) {
                    int i6 = (b4 - i5) + 1;
                    float[] fArr3 = groupedMessagePosition3.siblingHeights;
                    if (fArr3 == null || fArr3.length != i6) {
                        float f3 = groupedMessagePosition3.ph / i6;
                        while (i5 <= groupedMessagePosition3.maxY) {
                            fArr2[i5] = Math.max(fArr2[i5], f3);
                            i5++;
                        }
                    } else {
                        for (int i7 = 0; i7 < i6; i7++) {
                            byte b5 = groupedMessagePosition3.minY;
                            fArr2[b5 + i7] = Math.max(fArr2[b5 + i7], groupedMessagePosition3.siblingHeights[i7]);
                        }
                    }
                }
            }
            Point point2 = AndroidUtilities.displaySize;
            float fMax = Math.max(point2.x, point2.y) * 0.5f;
            int[] iArr = new int[iMax2 + 2];
            for (int i8 = 0; i8 <= iMax2; i8++) {
                iArr[i8] = Math.round(f * fMax);
                f += fArr2[i8];
            }
            iArr[i4] = Math.round(f * fMax);
            int iDp = AndroidUtilities.dp(2.0f);
            int i9 = 0;
            while (i9 < groupedMessagePositionArrComputeGrouped.length) {
                MessageObject.GroupedMessagePosition groupedMessagePosition4 = groupedMessagePositionArrComputeGrouped[i9];
                int i10 = iArr[groupedMessagePosition4.minY];
                int i11 = iArr[groupedMessagePosition4.maxY + b2] - i10;
                if (groupedMessagePosition4.leftSpanOffset > 0) {
                    iRound = Math.round((r11 * this.maxWidth) / 1000.0f);
                } else {
                    int i12 = 0;
                    for (int i13 = 0; i13 < groupedMessagePositionArrComputeGrouped.length; i13++) {
                        if (i13 != i9) {
                            MessageObject.GroupedMessagePosition groupedMessagePosition5 = groupedMessagePositionArrComputeGrouped[i13];
                            byte b6 = groupedMessagePosition5.minY;
                            byte b7 = groupedMessagePosition4.minY;
                            if (b6 <= b7 && groupedMessagePosition5.maxY >= b7 && groupedMessagePosition5.minX < groupedMessagePosition4.minX) {
                                i12 += groupedMessagePosition5.pw;
                            }
                        }
                    }
                    iRound = Math.round((i12 * this.maxWidth) / 1000.0f);
                }
                if ((groupedMessagePosition4.flags & 2) != 0) {
                    iRound2 = this.maxWidth - iRound;
                } else {
                    iRound2 = Math.round((groupedMessagePosition4.pw * this.maxWidth) / 1000.0f) - iDp;
                }
                if ((groupedMessagePosition4.flags & 8) == 0) {
                    i11 -= iDp;
                }
                this.cells.get(i9).setRect(iRound, i10, Math.max(0, iRound2), Math.max(0, i11));
                this.cellFlags[i9] = groupedMessagePosition4.flags;
                i9++;
                b2 = 1;
            }
            this.contentHeight = iArr[i4];
        }

        private void updateRoundRadius(ImageReceiver imageReceiver, int i, boolean z) {
            int iDp;
            int i2;
            int i3 = 0;
            boolean z2 = (i & 4) != 0;
            boolean z3 = (i & 8) != 0;
            boolean z4 = (i & 1) != 0;
            boolean z5 = (i & 2) != 0;
            if (z) {
                int iDp2 = AndroidUtilities.dp(8.0f);
                int i4 = (z2 && z4) ? iDp2 : 0;
                int i5 = (z2 && z5) ? iDp2 : 0;
                int i6 = (z3 && z5) ? iDp2 : 0;
                if (z3 && z4) {
                    i3 = iDp2;
                }
                imageReceiver.setRoundRadius(i4, i5, i6, i3);
                return;
            }
            int i7 = SharedConfig.bubbleRadius;
            if (i7 > 2) {
                iDp = AndroidUtilities.dp(i7 - 2);
            } else {
                iDp = AndroidUtilities.dp(i7);
            }
            int iMin = Math.min(AndroidUtilities.dp(3.0f), iDp);
            if (z2 && z4) {
                i2 = (!this.first || (!this.root.isOut() && this.root.isPinnedTop())) ? iMin : iDp;
            } else {
                i2 = 0;
            }
            if (!z2 || !z5) {
                iDp = 0;
            } else if (!this.first || (this.root.isOut() && this.root.isPinnedTop())) {
                iDp = iMin;
            }
            int i8 = (z3 && z5) ? iMin : 0;
            if (z3 && z4) {
                i3 = iMin;
            }
            imageReceiver.setRoundRadius(i2, iDp, i8, i3);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDraw(Canvas canvas) {
            Canvas canvas2;
            if (mediaBgPaint == null) {
                Paint paint = new Paint(1);
                mediaBgPaint = paint;
                paint.setColor(251658240);
            }
            boolean zIsInQuote = isInQuote();
            int iDp = AndroidUtilities.dp(2.0f);
            int i = zIsInQuote ? 0 : this.root.padLeft - iDp;
            int i2 = zIsInQuote ? 0 : this.root.padRight - iDp;
            int i3 = this.maxWidth;
            float f = (i3 <= 0 || (i <= 0 && i2 <= 0)) ? 1.0f : ((i3 + i) + i2) / i3;
            int i4 = 0;
            while (i4 < this.cells.size()) {
                MediaCell mediaCell = this.cells.get(i4);
                int iRound = Math.round(mediaCell.f816x * f) - i;
                int iRound2 = Math.round(mediaCell.f815w * f);
                ImageReceiver imageReceiver = mediaCell.imageReceiver;
                int[] iArr = this.cellFlags;
                updateRoundRadius(imageReceiver, (iArr == null || i4 >= iArr.length) ? 0 : iArr[i4], zIsInQuote);
                float f2 = iRound;
                mediaCell.imageReceiver.setImageCoords(f2, mediaCell.f817y, iRound2, mediaCell.f814h);
                if (mediaCell.imageReceiver.hasBitmapImage() && mediaCell.imageReceiver.getCurrentAlpha() == 1.0f) {
                    canvas2 = canvas;
                } else {
                    canvas2 = canvas;
                    canvas2.drawRect(f2, mediaCell.f817y, iRound + iRound2, r10 + mediaCell.f814h, mediaBgPaint);
                }
                mediaCell.draw(canvas2);
                i4++;
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getHeight() {
            return this.contentHeight;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getMinWidth() {
            Rect rect = this.padding;
            return rect.left + this.maxWidth + rect.right;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getLastLineWidth() {
            return getMinWidth();
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            Rect rect = this.padding;
            motionEvent.offsetLocation(-rect.left, -rect.top);
            boolean zOnTouchEvent = false;
            try {
                if (actionMasked == 0) {
                    this.pressedCell = null;
                    for (int i = 0; i < this.cells.size(); i++) {
                        MediaCell mediaCell = this.cells.get(i);
                        if (mediaCell.isInside(motionEvent.getX(), motionEvent.getY()) && mediaCell.onTouchEvent(motionEvent, this.view)) {
                            this.pressedCell = mediaCell;
                            return true;
                        }
                    }
                } else {
                    MediaCell mediaCell2 = this.pressedCell;
                    if (mediaCell2 != null) {
                        zOnTouchEvent = mediaCell2.onTouchEvent(motionEvent, this.view);
                        if (actionMasked == 1 || actionMasked == 3) {
                            this.pressedCell = null;
                        }
                    }
                }
                return zOnTouchEvent;
            } finally {
                Rect rect2 = this.padding;
                motionEvent.offsetLocation(rect2.left, rect2.top);
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getAccessibilityElementCount() {
            return this.cells.size();
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public CharSequence getAccessibilityElementText(int i) {
            if (i < 0 || i >= this.cells.size()) {
                return null;
            }
            return this.cells.get(i).getAccessibilityText();
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void getAccessibilityElementBounds(int i, Rect rect) {
            if (i < 0 || i >= this.cells.size()) {
                return;
            }
            MediaCell mediaCell = this.cells.get(i);
            Rect rect2 = this.padding;
            int i2 = rect2.left + mediaCell.f816x;
            int i3 = ((int) this.currY) + rect2.top + mediaCell.f817y;
            rect.set(i2, i3, mediaCell.f815w + i2, mediaCell.f814h + i3);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean onAccessibilityElementClick(int i, View view) {
            if (i < 0 || i >= this.cells.size()) {
                return false;
            }
            return this.cells.get(i).onAccessibilityClick(view);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onAttachedToWindow() {
            ArrayList<MediaCell> arrayList = this.cells;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                MediaCell mediaCell = arrayList.get(i);
                i++;
                mediaCell.attach(this.view);
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDetachedFromWindow() {
            ArrayList<MediaCell> arrayList = this.cells;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                MediaCell mediaCell = arrayList.get(i);
                i++;
                mediaCell.detach();
            }
        }
    }

    public static class RichSlideshowBlock extends RichBlock {
        private static Paint mediaBgPaint;
        private static Drawable slideDotBigDrawable;
        private static Drawable slideDotDrawable;
        public final TL_iv.pageBlockSlideshow block;
        public final ArrayList<MediaCell> cells;
        private final Path clipPath;
        private int currentPage;
        private int dotsHeight;
        private float downX;
        private float downY;
        private boolean dragging;
        public final boolean first;
        private float pageOffset;
        private ValueAnimator settleAnimator;
        private int slideHeight;
        private int slideWidth;
        private int touchSlop;

        public RichSlideshowBlock(RichMessageLayout richMessageLayout, Rect rect, int i, TL_iv.pageBlockSlideshow pageblockslideshow, boolean z) {
            super(richMessageLayout, rect, i);
            this.cells = new ArrayList<>();
            this.clipPath = new Path();
            this.block = pageblockslideshow;
            this.first = z;
            for (int i2 = 0; i2 < pageblockslideshow.items.size(); i2++) {
                MediaCell mediaCellForPageBlock = MediaCell.forPageBlock(richMessageLayout, pageblockslideshow.items.get(i2));
                if (mediaCellForPageBlock != null) {
                    this.cells.add(mediaCellForPageBlock);
                }
            }
            layoutCells();
        }

        private void layoutCells() {
            if (this.cells.isEmpty()) {
                this.slideHeight = 0;
                this.slideWidth = 0;
                return;
            }
            this.slideWidth = this.maxWidth;
            ArrayList<MediaCell> arrayList = this.cells;
            int size = arrayList.size();
            int i = 0;
            float f = 0.0f;
            while (i < size) {
                MediaCell mediaCell = arrayList.get(i);
                i++;
                float f2 = mediaCell.aspectRatio;
                if (f2 <= 0.0f) {
                    f2 = 1.0f;
                }
                f += f2;
            }
            int iMax = (int) (this.slideWidth / Math.max(0.5f, f / this.cells.size()));
            Point point = AndroidUtilities.displaySize;
            int iMax2 = (int) (Math.max(point.x, point.y) * 0.55f);
            if (iMax > iMax2) {
                iMax = iMax2;
            }
            this.slideHeight = iMax;
            this.dotsHeight = 0;
            ArrayList<MediaCell> arrayList2 = this.cells;
            int size2 = arrayList2.size();
            int i2 = 0;
            while (i2 < size2) {
                MediaCell mediaCell2 = arrayList2.get(i2);
                i2++;
                mediaCell2.setRect(0, 0, this.slideWidth, this.slideHeight);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:76:0x0208  */
        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onDraw(Canvas canvas) {
            int iDp;
            int i;
            int i2;
            int i3;
            int i4;
            int i5;
            float f;
            MediaCell mediaCell;
            View view;
            if (this.cells.isEmpty()) {
                return;
            }
            if (mediaBgPaint == null) {
                Paint paint = new Paint(1);
                mediaBgPaint = paint;
                paint.setColor(251658240);
            }
            if (slideDotDrawable == null && (view = this.view) != null) {
                slideDotDrawable = view.getResources().getDrawable(C2573R.drawable.slide_dot_small);
                slideDotBigDrawable = this.view.getResources().getDrawable(C2573R.drawable.slide_dot_big);
            }
            boolean zIsInQuote = isInQuote();
            int iDp2 = AndroidUtilities.dp(2.0f);
            int i6 = zIsInQuote ? 0 : this.root.padLeft - iDp2;
            int i7 = zIsInQuote ? 0 : this.root.padRight - iDp2;
            int i8 = this.slideWidth + i6 + i7;
            canvas.save();
            float f2 = 8.0f;
            if (zIsInQuote) {
                this.clipPath.rewind();
                this.clipPath.addRoundRect(0.0f, 0.0f, this.slideWidth, this.slideHeight, AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), Path.Direction.CW);
                canvas.clipPath(this.clipPath);
            } else if (this.first) {
                int i9 = SharedConfig.bubbleRadius;
                if (i9 > 2) {
                    iDp = AndroidUtilities.dp(i9 - 2);
                } else {
                    iDp = AndroidUtilities.dp(i9);
                }
                int iMin = Math.min(AndroidUtilities.dp(3.0f), iDp);
                int i10 = (this.root.isOut() || !this.root.isPinnedTop()) ? iDp : iMin;
                if (this.root.isOut() && this.root.isPinnedTop()) {
                    iDp = iMin;
                }
                float f3 = i10;
                float f4 = iDp;
                float f5 = iMin;
                this.clipPath.rewind();
                this.clipPath.addRoundRect(-i6, 0.0f, this.slideWidth + i7, this.slideHeight, new float[]{f3, f3, f4, f4, f5, f5, f5, f5}, Path.Direction.CW);
                canvas.clipPath(this.clipPath);
            } else {
                canvas.clipRect(-i6, 0, this.root.getMinWidth() + i7, this.slideHeight);
            }
            float f6 = i8;
            float f7 = (-this.pageOffset) * f6;
            int i11 = this.currentPage - 1;
            while (i11 <= this.currentPage + 1) {
                if (i11 < 0 || i11 >= this.cells.size()) {
                    i5 = i11;
                    f = f2;
                } else {
                    MediaCell mediaCell2 = this.cells.get(i11);
                    canvas.save();
                    canvas.translate(((i11 - this.currentPage) * i8) + f7, 0.0f);
                    float f8 = -i6;
                    mediaCell2.imageReceiver.setImageCoords(f8, 0.0f, f6, this.slideHeight);
                    if (mediaCell2.imageReceiver.hasBitmapImage() && mediaCell2.imageReceiver.getCurrentAlpha() == 1.0f) {
                        i5 = i11;
                        f = f2;
                        mediaCell = mediaCell2;
                    } else {
                        i5 = i11;
                        f = f2;
                        mediaCell = mediaCell2;
                        canvas.drawRect(f8, 0.0f, i8 + i7, this.slideHeight, mediaBgPaint);
                    }
                    mediaCell.draw(canvas);
                    canvas.restore();
                }
                i11 = i5 + 1;
                f2 = f;
            }
            float f9 = f2;
            canvas.restore();
            int size = this.cells.size();
            if (size <= 1 || slideDotDrawable == null || slideDotBigDrawable == null) {
                return;
            }
            int iDp3 = this.slideHeight - AndroidUtilities.dp(23.0f);
            int iDp4 = (AndroidUtilities.dp(7.0f) * size) + ((size - 1) * AndroidUtilities.dp(6.0f)) + AndroidUtilities.dp(4.0f);
            if (iDp4 < i8) {
                i = (i8 - iDp4) / 2;
            } else {
                int iDp5 = AndroidUtilities.dp(4.0f);
                int iDp6 = AndroidUtilities.dp(13.0f);
                int iDp7 = ((i8 - AndroidUtilities.dp(f9)) / 2) / iDp6;
                int i12 = this.currentPage;
                int i13 = (size - iDp7) - 1;
                if (i12 == i13) {
                    float f10 = this.pageOffset;
                    if (f10 < 0.0f) {
                        i3 = (int) (f10 * iDp6);
                        i4 = (size - (iDp7 * 2)) - 1;
                    } else {
                        if (i12 >= i13) {
                            i2 = ((size - (iDp7 * 2)) - 1) * iDp6;
                        } else if (i12 > iDp7) {
                            i3 = (int) (this.pageOffset * iDp6);
                            i4 = i12 - iDp7;
                        } else {
                            if (i12 == iDp7) {
                                float f11 = this.pageOffset;
                                if (f11 > 0.0f) {
                                    i2 = (int) (f11 * iDp6);
                                }
                            }
                            i = iDp5;
                        }
                        i = iDp5 - i2;
                    }
                    i2 = i3 + (i4 * iDp6);
                    i = iDp5 - i2;
                }
            }
            int i14 = 0;
            while (i14 < size) {
                int iDp8 = AndroidUtilities.dp(4.0f) + i + (AndroidUtilities.dp(13.0f) * i14);
                Drawable drawable = this.currentPage == i14 ? slideDotBigDrawable : slideDotDrawable;
                drawable.setBounds(iDp8 - AndroidUtilities.dp(5.0f), iDp3, iDp8 + AndroidUtilities.dp(5.0f), AndroidUtilities.dp(10.0f) + iDp3);
                drawable.draw(canvas);
                i14++;
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getHeight() {
            return this.slideHeight + this.dotsHeight;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getMinWidth() {
            Rect rect = this.padding;
            return rect.left + this.maxWidth + rect.right;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getLastLineWidth() {
            return getMinWidth();
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getAccessibilityElementCount() {
            return !this.cells.isEmpty() ? 1 : 0;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public CharSequence getAccessibilityElementText(int i) {
            if (this.cells.isEmpty()) {
                return null;
            }
            int iMax = Math.max(0, Math.min(this.currentPage, this.cells.size() - 1));
            return TextUtils.concat(this.cells.get(iMax).getAccessibilityText(), ", ", LocaleController.formatString(C2573R.string.Of, Integer.valueOf(iMax + 1), Integer.valueOf(this.cells.size())));
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void getAccessibilityElementBounds(int i, Rect rect) {
            Rect rect2 = this.padding;
            int i2 = rect2.left;
            int i3 = ((int) this.currY) + rect2.top;
            rect.set(i2, i3, this.slideWidth + i2, this.slideHeight + i3);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean onAccessibilityElementClick(int i, View view) {
            if (this.cells.isEmpty()) {
                return false;
            }
            return this.cells.get(Math.max(0, Math.min(this.currentPage, this.cells.size() - 1))).onAccessibilityClick(view);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean zOnTouchEvent;
            View view;
            int actionMasked = motionEvent.getActionMasked();
            Rect rect = this.padding;
            motionEvent.offsetLocation(-rect.left, -rect.top);
            try {
                if (actionMasked == 0) {
                    if (this.touchSlop == 0 && (view = this.view) != null) {
                        this.touchSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
                    }
                    this.downX = motionEvent.getX();
                    this.downY = motionEvent.getY();
                    this.dragging = false;
                    ValueAnimator valueAnimator = this.settleAnimator;
                    if (valueAnimator != null) {
                        valueAnimator.cancel();
                        this.settleAnimator = null;
                    }
                    int i = this.currentPage;
                    if (i >= 0 && i < this.cells.size()) {
                        this.cells.get(this.currentPage).onTouchEvent(motionEvent, this.view);
                    }
                } else {
                    if (actionMasked != 2) {
                        if (actionMasked == 1 || actionMasked == 3) {
                            if (this.dragging) {
                                this.dragging = false;
                                requestDisallowParentIntercept(false);
                                settle();
                            } else {
                                int i2 = this.currentPage;
                                if (i2 >= 0 && i2 < this.cells.size()) {
                                    zOnTouchEvent = this.cells.get(this.currentPage).onTouchEvent(motionEvent, this.view);
                                    Rect rect2 = this.padding;
                                    motionEvent.offsetLocation(rect2.left, rect2.top);
                                    return zOnTouchEvent;
                                }
                            }
                        }
                        Rect rect3 = this.padding;
                        motionEvent.offsetLocation(rect3.left, rect3.top);
                        return false;
                    }
                    float x = motionEvent.getX() - this.downX;
                    float y = motionEvent.getY() - this.downY;
                    if (!this.dragging && Math.abs(x) > this.touchSlop && Math.abs(x) > Math.abs(y)) {
                        this.dragging = true;
                        requestDisallowParentIntercept(true);
                        int i3 = this.currentPage;
                        if (i3 >= 0 && i3 < this.cells.size()) {
                            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                            motionEventObtain.setAction(3);
                            this.cells.get(this.currentPage).onTouchEvent(motionEventObtain, this.view);
                            motionEventObtain.recycle();
                        }
                    }
                    if (this.dragging) {
                        float f = (-x) / this.slideWidth;
                        int i4 = this.currentPage;
                        if (i4 == 0 && f < 0.0f) {
                            f *= 0.3f;
                        }
                        if (i4 == this.cells.size() - 1 && f > 0.0f) {
                            f *= 0.3f;
                        }
                        this.pageOffset = f;
                        View view2 = this.view;
                        if (view2 != null) {
                            view2.invalidate();
                        }
                    } else {
                        int i5 = this.currentPage;
                        if (i5 >= 0 && i5 < this.cells.size()) {
                            zOnTouchEvent = this.cells.get(this.currentPage).onTouchEvent(motionEvent, this.view);
                            Rect rect22 = this.padding;
                            motionEvent.offsetLocation(rect22.left, rect22.top);
                            return zOnTouchEvent;
                        }
                        Rect rect32 = this.padding;
                        motionEvent.offsetLocation(rect32.left, rect32.top);
                        return false;
                    }
                }
                Rect rect4 = this.padding;
                motionEvent.offsetLocation(rect4.left, rect4.top);
                return true;
            } catch (Throwable th) {
                Rect rect5 = this.padding;
                motionEvent.offsetLocation(rect5.left, rect5.top);
                throw th;
            }
        }

        private void settle() {
            int i = (this.pageOffset <= 0.15f || this.currentPage >= this.cells.size() - 1) ? (this.pageOffset >= -0.15f || this.currentPage <= 0) ? 0 : -1 : 1;
            final int i2 = i + this.currentPage;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.pageOffset, i2 - r3);
            this.settleAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(220L);
            this.settleAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.messenger.RichMessageLayout$RichSlideshowBlock$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$settle$0(valueAnimator);
                }
            });
            this.settleAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.messenger.RichMessageLayout.RichSlideshowBlock.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    RichSlideshowBlock.this.currentPage = i2;
                    RichSlideshowBlock.this.pageOffset = 0.0f;
                    View view = RichSlideshowBlock.this.view;
                    if (view != null) {
                        view.invalidate();
                    }
                }
            });
            this.settleAnimator.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$settle$0(ValueAnimator valueAnimator) {
            this.pageOffset = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            View view = this.view;
            if (view != null) {
                view.invalidate();
            }
        }

        public int getCurrentPage() {
            return this.currentPage;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean isHorizontallyDragging() {
            if (this.dragging) {
                return true;
            }
            ValueAnimator valueAnimator = this.settleAnimator;
            return valueAnimator != null && valueAnimator.isRunning();
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean canDragHorizontally() {
            return this.cells.size() > 1;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onAttachedToWindow() {
            ArrayList<MediaCell> arrayList = this.cells;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                MediaCell mediaCell = arrayList.get(i);
                i++;
                mediaCell.attach(this.view);
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDetachedFromWindow() {
            ArrayList<MediaCell> arrayList = this.cells;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                MediaCell mediaCell = arrayList.get(i);
                i++;
                mediaCell.detach();
            }
        }
    }

    public static MessageObject.GroupedMessagePosition[] computeGrouped(float[] fArr) {
        MessageObject.GroupedMessagePosition groupedMessagePosition;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        float f;
        int length = fArr.length;
        MessageObject.GroupedMessagePosition[] groupedMessagePositionArr = new MessageObject.GroupedMessagePosition[length];
        if (length != 0) {
            StringBuilder sb = new StringBuilder();
            int i7 = 0;
            float f2 = 0.0f;
            int i8 = 0;
            boolean z = false;
            while (true) {
                if (i8 >= length) {
                    break;
                }
                float f3 = fArr[i8];
                float f4 = f3 > 0.0f ? f3 : 1.0f;
                MessageObject.GroupedMessagePosition groupedMessagePosition2 = new MessageObject.GroupedMessagePosition();
                groupedMessagePositionArr[i8] = groupedMessagePosition2;
                groupedMessagePosition2.aspectRatio = f4;
                if (f4 > 1.2f) {
                    sb.append("w");
                } else if (f4 < 0.8f) {
                    sb.append("n");
                } else {
                    sb.append("q");
                }
                f2 += f4;
                if (f4 > 2.0f) {
                    z = true;
                }
                i8++;
            }
            float f5 = f2 / length;
            int iDp = AndroidUtilities.dp(120.0f);
            float fDp = AndroidUtilities.dp(120.0f);
            Point point = AndroidUtilities.displaySize;
            int iMin = (int) (fDp / (Math.min(point.x, point.y) / 1000.0f));
            float fDp2 = AndroidUtilities.dp(40.0f);
            Point point2 = AndroidUtilities.displaySize;
            int iMin2 = (int) (fDp2 / (Math.min(point2.x, point2.y) / 1000.0f));
            float f6 = 814.0f;
            float fDp3 = AndroidUtilities.dp(100.0f) / 814.0f;
            if (length == 1) {
                groupedMessagePositionArr[0].set(0, 0, 0, 0, 1000, Math.round(Math.min(1000.0f / r0.aspectRatio, 407.0f)) / 814.0f, 15);
                return groupedMessagePositionArr;
            }
            int i9 = 4;
            int i10 = 2;
            int i11 = 1;
            int i12 = 3;
            if (!z && (length == 2 || length == 3 || length == 4)) {
                if (length == 2) {
                    MessageObject.GroupedMessagePosition groupedMessagePosition3 = groupedMessagePositionArr[0];
                    MessageObject.GroupedMessagePosition groupedMessagePosition4 = groupedMessagePositionArr[1];
                    String string = sb.toString();
                    if (string.equals("ww") && f5 > 1.7199017f) {
                        if (groupedMessagePosition3.aspectRatio - groupedMessagePosition4.aspectRatio < 0.2f) {
                            float fRound = Math.round(Math.min(1000.0f / r7, Math.min(1000.0f / r11, 407.0f))) / 814.0f;
                            groupedMessagePosition3.set(0, 0, 0, 0, 1000, fRound, 7);
                            groupedMessagePosition4.set(0, 0, 1, 1, 1000, fRound, 11);
                            return groupedMessagePositionArr;
                        }
                    }
                    if (string.equals("ww") || string.equals("qq")) {
                        float fRound2 = Math.round(Math.min(500.0f / groupedMessagePosition3.aspectRatio, Math.min(500.0f / groupedMessagePosition4.aspectRatio, 814.0f))) / 814.0f;
                        groupedMessagePosition3.set(0, 0, 0, 0, MediaError.DetailedErrorCode.SEGMENT_UNKNOWN, fRound2, 13);
                        groupedMessagePosition4.set(1, 1, 0, 0, MediaError.DetailedErrorCode.SEGMENT_UNKNOWN, fRound2, 14);
                        return groupedMessagePositionArr;
                    }
                    float f7 = groupedMessagePosition3.aspectRatio;
                    int iMax = (int) Math.max(400.0f, Math.round((1000.0f / f7) / ((1.0f / f7) + (1.0f / groupedMessagePosition4.aspectRatio))));
                    int i13 = 1000 - iMax;
                    if (i13 < iMin) {
                        iMax -= iMin - i13;
                    } else {
                        iMin = i13;
                    }
                    float fMin = Math.min(814.0f, Math.round(Math.min(iMin / groupedMessagePosition3.aspectRatio, iMax / groupedMessagePosition4.aspectRatio))) / 814.0f;
                    groupedMessagePosition3.set(0, 0, 0, 0, iMin, fMin, 13);
                    groupedMessagePosition4.set(1, 1, 0, 0, iMax, fMin, 14);
                    return groupedMessagePositionArr;
                }
                if (length == 3) {
                    MessageObject.GroupedMessagePosition groupedMessagePosition5 = groupedMessagePositionArr[0];
                    MessageObject.GroupedMessagePosition groupedMessagePosition6 = groupedMessagePositionArr[1];
                    MessageObject.GroupedMessagePosition groupedMessagePosition7 = groupedMessagePositionArr[2];
                    if (sb.charAt(0) == 'n') {
                        float f8 = groupedMessagePosition6.aspectRatio;
                        float fMin2 = Math.min(407.0f, Math.round((f8 * 1000.0f) / (groupedMessagePosition7.aspectRatio + f8)));
                        int iMax2 = (int) Math.max(iMin, Math.min(500.0f, Math.round(Math.min(groupedMessagePosition7.aspectRatio * fMin2, groupedMessagePosition6.aspectRatio * r4))));
                        groupedMessagePosition5.set(0, 0, 0, 1, Math.round(Math.min((groupedMessagePosition5.aspectRatio * 814.0f) + iMin2, 1000 - iMax2)), 1.0f, 13);
                        groupedMessagePosition6.set(1, 1, 0, 0, iMax2, (814.0f - fMin2) / 814.0f, 6);
                        groupedMessagePosition7.set(1, 1, 1, 1, iMax2, fMin2 / 814.0f, 10);
                        return groupedMessagePositionArr;
                    }
                    float fRound3 = Math.round(Math.min(1000.0f / groupedMessagePosition5.aspectRatio, 537.24005f)) / 814.0f;
                    groupedMessagePosition5.set(0, 1, 0, 0, 1000, fRound3, 7);
                    float fMin3 = Math.min(814.0f - fRound3, Math.round(Math.min(500.0f / groupedMessagePosition6.aspectRatio, 500.0f / groupedMessagePosition7.aspectRatio))) / 814.0f;
                    float f9 = fMin3 < fDp3 ? fDp3 : fMin3;
                    groupedMessagePosition6.set(0, 0, 1, 1, MediaError.DetailedErrorCode.SEGMENT_UNKNOWN, f9, 9);
                    groupedMessagePosition7.set(1, 1, 1, 1, MediaError.DetailedErrorCode.SEGMENT_UNKNOWN, f9, 10);
                    return groupedMessagePositionArr;
                }
                MessageObject.GroupedMessagePosition groupedMessagePosition8 = groupedMessagePositionArr[0];
                MessageObject.GroupedMessagePosition groupedMessagePosition9 = groupedMessagePositionArr[1];
                MessageObject.GroupedMessagePosition groupedMessagePosition10 = groupedMessagePositionArr[2];
                MessageObject.GroupedMessagePosition groupedMessagePosition11 = groupedMessagePositionArr[3];
                if (sb.charAt(0) == 'w') {
                    float fRound4 = Math.round(Math.min(1000.0f / groupedMessagePosition8.aspectRatio, 537.24005f)) / 814.0f;
                    groupedMessagePosition8.set(0, 2, 0, 0, 1000, fRound4, 7);
                    float fRound5 = Math.round(1000.0f / ((groupedMessagePosition9.aspectRatio + groupedMessagePosition10.aspectRatio) + groupedMessagePosition11.aspectRatio));
                    float f10 = iMin;
                    int iMax3 = (int) Math.max(f10, Math.min(400.0f, groupedMessagePosition9.aspectRatio * fRound5));
                    int iMax4 = (int) Math.max(Math.max(f10, 330.0f), groupedMessagePosition11.aspectRatio * fRound5);
                    int iDp2 = (1000 - iMax3) - iMax4;
                    if (iDp2 < AndroidUtilities.dp(58.0f)) {
                        int iDp3 = AndroidUtilities.dp(58.0f) - iDp2;
                        iDp2 = AndroidUtilities.dp(58.0f);
                        int i14 = iDp3 / 2;
                        iMax3 -= i14;
                        iMax4 -= iDp3 - i14;
                    }
                    int i15 = iMax3;
                    float fMin4 = Math.min(814.0f - fRound4, fRound5) / 814.0f;
                    float f11 = fMin4 < fDp3 ? fDp3 : fMin4;
                    groupedMessagePosition9.set(0, 0, 1, 1, i15, f11, 9);
                    groupedMessagePosition10.set(1, 1, 1, 1, iDp2, f11, 8);
                    groupedMessagePosition11.set(2, 2, 1, 1, iMax4, f11, 10);
                    return groupedMessagePositionArr;
                }
                int iMax5 = Math.max(iMin, Math.round(814.0f / (((1.0f / groupedMessagePosition9.aspectRatio) + (1.0f / groupedMessagePosition10.aspectRatio)) + (1.0f / groupedMessagePosition11.aspectRatio))));
                float f12 = iDp;
                float f13 = iMax5;
                float fMin5 = Math.min(0.33f, Math.max(f12, f13 / groupedMessagePosition9.aspectRatio) / 814.0f);
                float fMin6 = Math.min(0.33f, Math.max(f12, f13 / groupedMessagePosition10.aspectRatio) / 814.0f);
                float f14 = (1.0f - fMin5) - fMin6;
                groupedMessagePosition8.set(0, 0, 0, 2, Math.round(Math.min((groupedMessagePosition8.aspectRatio * 814.0f) + iMin2, 1000 - iMax5)), fMin5 + fMin6 + f14, 13);
                groupedMessagePosition9.set(1, 1, 0, 0, iMax5, fMin5, 6);
                groupedMessagePosition10.set(1, 1, 1, 1, iMax5, fMin6, 2);
                groupedMessagePosition11.set(1, 1, 2, 2, iMax5, f14, 10);
                return groupedMessagePositionArr;
            }
            int i16 = 1000;
            float[] fArr2 = new float[length];
            for (int i17 = 0; i17 < length; i17++) {
                float f15 = groupedMessagePositionArr[i17].aspectRatio;
                if (f5 > 1.1f) {
                    fArr2[i17] = Math.max(1.0f, f15);
                } else {
                    fArr2[i17] = Math.min(1.0f, f15);
                }
                fArr2[i17] = Math.max(0.66667f, Math.min(1.7f, fArr2[i17]));
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i18 = 1;
            while (i18 < length) {
                int i19 = length - i18;
                if (i18 > 3 || i19 > 3) {
                    f = f6;
                } else {
                    arrayList.add(new int[]{i18, i19});
                    f = f6;
                    arrayList2.add(new float[]{multiHeight(fArr2, 0, i18, 1000), multiHeight(fArr2, i18, length, 1000)});
                }
                i18++;
                f6 = f;
            }
            float f16 = f6;
            int i20 = 1;
            while (i20 < length - 1) {
                int i21 = 1;
                while (true) {
                    int i22 = length - i20;
                    if (i21 < i22) {
                        int i23 = i22 - i21;
                        if (i20 <= 3) {
                            if (f5 < 0.85f) {
                                i5 = i10;
                                i6 = i9;
                            } else {
                                i5 = i10;
                                i6 = 3;
                            }
                            if (i21 <= i6 && i23 <= 3) {
                                arrayList.add(new int[]{i20, i21, i23});
                                float fMultiHeight = multiHeight(fArr2, 0, i20, 1000);
                                int i24 = i20 + i21;
                                float fMultiHeight2 = multiHeight(fArr2, i20, i24, 1000);
                                float fMultiHeight3 = multiHeight(fArr2, i24, length, 1000);
                                float[] fArr3 = new float[3];
                                fArr3[0] = fMultiHeight;
                                fArr3[1] = fMultiHeight2;
                                fArr3[i5] = fMultiHeight3;
                                arrayList2.add(fArr3);
                            }
                        } else {
                            i5 = i10;
                        }
                        i21++;
                        i10 = i5;
                        i9 = 4;
                    }
                }
                i20++;
                i9 = 4;
            }
            int i25 = i10;
            int i26 = 1;
            while (i26 < length - 2) {
                int i27 = 1;
                while (true) {
                    int i28 = length - i26;
                    if (i27 < i28) {
                        int i29 = 1;
                        while (true) {
                            int i30 = i28 - i27;
                            if (i29 < i30) {
                                int i31 = i30 - i29;
                                if (i26 > i12 || i27 > i12 || i29 > i12 || i31 > i12) {
                                    i3 = i7;
                                    i4 = i12;
                                } else {
                                    arrayList.add(new int[]{i26, i27, i29, i31});
                                    float fMultiHeight4 = multiHeight(fArr2, i7, i26, i16);
                                    int i32 = i26 + i27;
                                    float fMultiHeight5 = multiHeight(fArr2, i26, i32, i16);
                                    i3 = i7;
                                    int i33 = i32 + i29;
                                    float fMultiHeight6 = multiHeight(fArr2, i32, i33, i16);
                                    float fMultiHeight7 = multiHeight(fArr2, i33, length, i16);
                                    i4 = i12;
                                    float[] fArr4 = new float[4];
                                    fArr4[i3] = fMultiHeight4;
                                    fArr4[1] = fMultiHeight5;
                                    fArr4[i25] = fMultiHeight6;
                                    fArr4[i4] = fMultiHeight7;
                                    arrayList2.add(fArr4);
                                }
                                i29++;
                                i12 = i4;
                                i7 = i3;
                                i16 = 1000;
                            }
                        }
                        i27++;
                        i16 = 1000;
                    }
                }
                i26++;
                i16 = 1000;
            }
            int i34 = i7;
            int i35 = i12;
            int i36 = i34;
            int i37 = -1;
            float f17 = 0.0f;
            while (i36 < arrayList.size()) {
                float[] fArr5 = (float[]) arrayList2.get(i36);
                int[] iArr = (int[]) arrayList.get(i36);
                int length2 = fArr5.length;
                float f18 = Float.MAX_VALUE;
                float f19 = 0.0f;
                for (int i38 = i34; i38 < length2; i38++) {
                    float f20 = fArr5[i38];
                    f19 += f20;
                    if (f20 < f18) {
                        f18 = f20;
                    }
                }
                float fAbs = Math.abs(f19 - 1333.3334f);
                int i39 = i11;
                if (iArr.length > i39) {
                    int i40 = iArr[i34];
                    int i41 = iArr[i39];
                    if (i40 <= i41) {
                        i = i25;
                        if (iArr.length <= i || i41 <= iArr[i]) {
                            i2 = i35;
                            if (iArr.length > i2 && iArr[i] > iArr[i2]) {
                            }
                        }
                        fAbs *= 1.2f;
                    } else {
                        i = i25;
                    }
                    i2 = i35;
                    fAbs *= 1.2f;
                } else {
                    i = i25;
                    i2 = i35;
                }
                if (f18 < iMin) {
                    fAbs *= 1.5f;
                }
                if (i37 == -1 || fAbs < f17) {
                    f17 = fAbs;
                    i37 = i36;
                }
                i36++;
                i25 = i;
                i35 = i2;
                i11 = 1;
            }
            if (i37 == -1) {
                int i42 = i34;
                while (i42 < length) {
                    int i43 = i42;
                    groupedMessagePositionArr[i42].set(0, 0, i43, i42, 1000, 0.4f, 3);
                    i42 = i43 + 1;
                }
            } else {
                int[] iArr2 = (int[]) arrayList.get(i37);
                float[] fArr6 = (float[]) arrayList2.get(i37);
                int i44 = i34;
                int i45 = i44;
                while (i45 < iArr2.length) {
                    int i46 = iArr2[i45];
                    float f21 = fArr6[i45];
                    MessageObject.GroupedMessagePosition groupedMessagePosition12 = null;
                    int i47 = i44;
                    int i48 = i34;
                    int i49 = 1000;
                    while (i48 < i46) {
                        int i50 = (int) (fArr2[i47] * f21);
                        int i51 = i49 - i50;
                        MessageObject.GroupedMessagePosition groupedMessagePosition13 = groupedMessagePositionArr[i47];
                        int i52 = i45 == 0 ? 4 : i34;
                        if (i45 == iArr2.length - 1) {
                            i52 |= 8;
                        }
                        if (i48 == 0) {
                            i52 |= 1;
                        }
                        if (i48 == i46 - 1) {
                            i52 |= 2;
                            groupedMessagePosition = groupedMessagePosition13;
                        } else {
                            groupedMessagePosition = groupedMessagePosition12;
                        }
                        int i53 = i48;
                        groupedMessagePosition13.set(i53, i48, i45, i45, i50, Math.max(fDp3, f21 / f16), i52);
                        i47++;
                        i48 = i53 + 1;
                        i49 = i51;
                        groupedMessagePosition12 = groupedMessagePosition;
                    }
                    if (groupedMessagePosition12 != null) {
                        groupedMessagePosition12.pw += i49;
                        groupedMessagePosition12.spanSize += i49;
                    }
                    i45++;
                    i44 = i47;
                }
            }
        }
        return groupedMessagePositionArr;
    }

    private static float multiHeight(float[] fArr, int i, int i2, int i3) {
        float f = 0.0f;
        while (i < i2) {
            f += fArr[i];
            i++;
        }
        return i3 / Math.max(1.0E-4f, f);
    }

    public static abstract class RichBlock implements MultiLayoutTypingAnimator.Block {
        private CheckBoxBase checkbox;
        private ButtonBounce checkboxBounce;
        private TLObject checkboxItem;
        private boolean checkboxPressed;
        private float checkboxY;
        public float currY;
        protected int layoutRow;
        protected int layoutX;
        protected int layoutY;
        public boolean listCheckbox;
        public boolean listChecked;
        public int listLevel;
        public boolean listOrdered;
        public final int maxWidth;
        private StaticLayout numLayout;
        private int numLayoutLeft;
        private int numLayoutRight;
        private float numLayoutY;
        public final Rect padding;
        public RichDetailsBlock parentDetails;
        public float prevY;
        public final RichMessageLayout root;
        public MultiLayoutTypingAnimator typingAnimator;
        protected View view;
        private final RectF checkboxHit = new RectF();
        public boolean currVisible = true;
        public boolean prevVisible = true;

        public void appendAccessibilityText(SpannableStringBuilder spannableStringBuilder) {
        }

        public boolean canDragHorizontally() {
            return false;
        }

        public int getAccessibilityElementCount() {
            return 0;
        }

        public CharSequence getAccessibilityElementText(int i) {
            return null;
        }

        public int getHeight() {
            return 0;
        }

        @Override // org.telegram.ui.MultiLayoutTypingAnimator.Block
        public Layout getLayout() {
            return null;
        }

        @Override // org.telegram.ui.MultiLayoutTypingAnimator.Block
        public View getParentView() {
            return null;
        }

        public TextSelectionHelper.TextLayoutBlock[] getText() {
            return null;
        }

        public boolean isHorizontallyDragging() {
            return false;
        }

        public boolean onAccessibilityElementClick(int i, View view) {
            return false;
        }

        public void onAttachedToWindow() {
        }

        public void onDetachedFromWindow() {
        }

        public void onDraw(Canvas canvas) {
        }

        public boolean onTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        public RichBlock(RichMessageLayout richMessageLayout, Rect rect, int i) {
            this.root = richMessageLayout;
            this.padding = new Rect(rect);
            this.maxWidth = (i - rect.left) - rect.right;
        }

        public boolean isVisible() {
            RichDetailsBlock richDetailsBlock = this.parentDetails;
            if (richDetailsBlock == null) {
                return true;
            }
            if (richDetailsBlock.isOpen()) {
                return this.parentDetails.isVisible();
            }
            return false;
        }

        public boolean isInQuote() {
            int iIndexOf;
            if (this.root.quotes.isEmpty() || (iIndexOf = this.root.blocks.indexOf(this)) < 0) {
                return false;
            }
            for (int i = 0; i < this.root.quotes.size(); i++) {
                QuoteBackground quoteBackground = this.root.quotes.get(i);
                if (iIndexOf >= quoteBackground.startBlockIndex && iIndexOf <= quoteBackground.endBlockIndex) {
                    return true;
                }
            }
            return false;
        }

        public static void appendText(SpannableStringBuilder spannableStringBuilder, Text text, Text[] textArr) {
            StaticLayout staticLayout;
            StaticLayout staticLayout2;
            if (text != null && (staticLayout2 = text.layout) != null && !TextUtils.isEmpty(staticLayout2.getText())) {
                spannableStringBuilder.append(withReplacements(text.layout.getText()));
                return;
            }
            if (textArr != null) {
                for (Text text2 : textArr) {
                    if (text2 != null && (staticLayout = text2.layout) != null && !TextUtils.isEmpty(staticLayout.getText())) {
                        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) != '\n') {
                            spannableStringBuilder.append('\n');
                        }
                        spannableStringBuilder.append(withReplacements(text2.layout.getText()));
                    }
                }
            }
        }

        public static CharSequence withReplacements(CharSequence charSequence) {
            if (!(charSequence instanceof Spanned)) {
                return charSequence;
            }
            final Spanned spanned = (Spanned) charSequence;
            TextSelectionHelper.ReplaceCopyTextSpannable[] replaceCopyTextSpannableArr = (TextSelectionHelper.ReplaceCopyTextSpannable[]) spanned.getSpans(0, spanned.length(), TextSelectionHelper.ReplaceCopyTextSpannable.class);
            if (replaceCopyTextSpannableArr == null || replaceCopyTextSpannableArr.length == 0) {
                return charSequence;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
            Arrays.sort(replaceCopyTextSpannableArr, new Comparator() { // from class: org.telegram.messenger.RichMessageLayout$RichBlock$$ExternalSyntheticLambda0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return RichMessageLayout.RichBlock.$r8$lambda$Eafq4HGhd5N7a_h3ExMSg505OHs(spanned, (TextSelectionHelper.ReplaceCopyTextSpannable) obj, (TextSelectionHelper.ReplaceCopyTextSpannable) obj2);
                }
            });
            for (TextSelectionHelper.ReplaceCopyTextSpannable replaceCopyTextSpannable : replaceCopyTextSpannableArr) {
                int spanStart = spanned.getSpanStart(replaceCopyTextSpannable);
                int spanEnd = spanned.getSpanEnd(replaceCopyTextSpannable);
                if (spanStart >= 0 && spanEnd >= 0 && spanStart <= spanEnd && spanEnd <= spannableStringBuilder.length()) {
                    CharSequence charSequence2 = replaceCopyTextSpannable.replacement;
                    if (charSequence2 == null) {
                        charSequence2 = _UrlKt.FRAGMENT_ENCODE_SET;
                    }
                    spannableStringBuilder.replace(spanStart, spanEnd, charSequence2);
                }
            }
            return spannableStringBuilder;
        }

        public static /* synthetic */ int $r8$lambda$Eafq4HGhd5N7a_h3ExMSg505OHs(Spanned spanned, TextSelectionHelper.ReplaceCopyTextSpannable replaceCopyTextSpannable, TextSelectionHelper.ReplaceCopyTextSpannable replaceCopyTextSpannable2) {
            return spanned.getSpanStart(replaceCopyTextSpannable2) - spanned.getSpanStart(replaceCopyTextSpannable);
        }

        public void getAccessibilityElementBounds(int i, Rect rect) {
            int i2 = this.padding.left;
            float f = this.currY;
            rect.set(i2, (int) f, this.maxWidth + i2, (int) (f + getHeight()));
        }

        public void snapshot() {
            this.prevY = this.currY;
            this.prevVisible = this.currVisible;
        }

        public void setNum(String str) {
            this.root.numTextPaint.setTextSize(AndroidUtilities.dp(SharedConfig.fontSize));
            RichMessageLayout richMessageLayout = this.root;
            TextPaint textPaint = richMessageLayout.numTextPaint;
            boolean zIsRtl = richMessageLayout.isRtl();
            Rect rect = this.padding;
            this.numLayout = new StaticLayout(str, textPaint, Math.max(zIsRtl ? rect.right : rect.left, AndroidUtilities.dp(this.root.fontSize + 4)), this.root.isRtl() ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE, 1.0f, 0.0f, false);
            this.numLayoutLeft = AndroidUtilities.dp(this.root.fontSize + 4);
            this.numLayoutRight = 0;
            for (int i = 0; i < this.numLayout.getLineCount(); i++) {
                this.numLayoutLeft = Math.min(this.numLayoutLeft, (int) this.numLayout.getLineLeft(i));
                this.numLayoutRight = Math.max(this.numLayoutRight, (int) this.numLayout.getLineRight(i));
            }
            if (getLayout() != null && getLayout().getLineCount() > 0 && this.numLayout.getLineCount() > 0) {
                this.numLayoutY = (this.padding.top + getLayout().getLineBaseline(0)) - this.numLayout.getLineBaseline(0);
                return;
            }
            int iDp = AndroidUtilities.dp(this.root.fontSize + 14);
            int height = getHeight();
            Rect rect2 = this.padding;
            this.numLayoutY = (Math.min(iDp, (height - rect2.top) - rect2.bottom) - this.numLayout.getHeight()) / 2.0f;
        }

        public void setCheckbox(boolean z) {
            setCheckbox(z, null);
        }

        public void setCheckbox(boolean z, TLObject tLObject) {
            this.checkboxItem = tLObject;
            if (this.checkbox == null) {
                CheckBoxBase checkBoxBase = new CheckBoxBase(null, 20, this.root.resourcesProvider);
                this.checkbox = checkBoxBase;
                checkBoxBase.setColor(Theme.key_telegram_color, Theme.key_dialogCheckboxSquareDisabled, Theme.key_checkboxCheck);
                this.checkbox.setBackgroundType(10);
                this.checkbox.setDrawUnchecked(true);
                this.checkbox.setCustomRadius(AndroidUtilities.dp(5.0f));
            }
            this.checkbox.setChecked(z, false);
            if (getLayout() != null && getLayout().getLineCount() > 0) {
                this.checkboxY = (this.padding.top + getLayout().getLineBaseline(0)) - (AndroidUtilities.dp(20.0f) * 0.7f);
                return;
            }
            int iDp = AndroidUtilities.dp(this.root.fontSize + 14);
            int height = getHeight();
            Rect rect = this.padding;
            this.checkboxY = (Math.min(iDp, (height - rect.top) - rect.bottom) - AndroidUtilities.dp(20.0f)) / 2.0f;
        }

        public void draw(Canvas canvas) {
            draw(canvas, Integer.MIN_VALUE, 0.0f);
        }

        public void draw(Canvas canvas, int i, float f) {
            canvas.save();
            Rect rect = this.padding;
            canvas.translate(rect.left, rect.top);
            boolean zIsRtl = this.root.isRtl();
            int minWidth = (this.root.getMinWidth() + this.root.padRight) - AndroidUtilities.dp(14.0f);
            Rect rect2 = this.padding;
            float f2 = (minWidth - rect2.right) - rect2.left;
            if (this.numLayout != null) {
                this.root.numTextPaint.setTextSize(AndroidUtilities.dp(SharedConfig.fontSize));
                RichMessageLayout richMessageLayout = this.root;
                richMessageLayout.numTextPaint.setColor(richMessageLayout.getThemedColor(richMessageLayout.isOut() ? Theme.key_chat_messageTextOut : Theme.key_chat_messageTextIn));
                canvas.save();
                if (zIsRtl) {
                    canvas.translate((this.checkbox != null ? AndroidUtilities.dp(26.0f) : 0) + f2 + ((this.numLayout.getWidth() - (this.numLayoutRight - this.numLayoutLeft)) / 2.0f), this.numLayoutY);
                } else {
                    canvas.translate(((((-this.numLayoutLeft) - this.numLayoutRight) - this.numLayout.getWidth()) / 2.0f) - (this.checkbox != null ? AndroidUtilities.dp(26.0f) : 0), this.numLayoutY);
                }
                this.numLayout.draw(canvas);
                canvas.restore();
            }
            if (this.checkbox != null) {
                int iDp = zIsRtl ? (int) (f2 + AndroidUtilities.dp(6.0f)) : -AndroidUtilities.dp(26.0f);
                this.checkboxHit.set(iDp - AndroidUtilities.dp(6.0f), this.checkboxY - AndroidUtilities.dp(6.0f), AndroidUtilities.dp(20.0f) + iDp + AndroidUtilities.dp(6.0f), this.checkboxY + AndroidUtilities.dp(20.0f) + AndroidUtilities.dp(6.0f));
                if (this.root.view != null && this.checkbox.getParentView() == null) {
                    this.checkbox.setParentView(this.root.view);
                }
                ButtonBounce buttonBounce = this.checkboxBounce;
                float scale = buttonBounce != null ? buttonBounce.getScale(0.1f) : 1.0f;
                canvas.save();
                canvas.scale(scale, scale, AndroidUtilities.dp(10.0f) + iDp, this.checkboxY + AndroidUtilities.dp(10.0f));
                this.checkbox.setBounds(iDp, (int) this.checkboxY, AndroidUtilities.dp(20.0f), AndroidUtilities.dp(20.0f));
                this.checkbox.draw(canvas);
                canvas.restore();
            }
            if (i == Integer.MIN_VALUE) {
                onDraw(canvas);
            } else {
                onDrawFaded(canvas, i, f);
            }
            canvas.restore();
        }

        public boolean touchEvent(MotionEvent motionEvent) {
            View view;
            Rect rect = this.padding;
            motionEvent.offsetLocation(-rect.left, -rect.top);
            try {
                if (this.checkbox != null) {
                    int actionMasked = motionEvent.getActionMasked();
                    boolean zContains = this.checkboxHit.contains(motionEvent.getX(), motionEvent.getY());
                    if (actionMasked == 0) {
                        if (zContains && canToggleCheckbox()) {
                            this.checkboxPressed = true;
                            if (this.checkboxBounce == null && (view = this.root.view) != null) {
                                this.checkboxBounce = new ButtonBounce(view);
                            }
                            ButtonBounce buttonBounce = this.checkboxBounce;
                            if (buttonBounce != null) {
                                buttonBounce.setPressed(true);
                            }
                            invalidateCell();
                            Rect rect2 = this.padding;
                            motionEvent.offsetLocation(rect2.left, rect2.top);
                            return true;
                        }
                    } else if (this.checkboxPressed) {
                        if (actionMasked == 2) {
                            if (!zContains) {
                                this.checkboxPressed = false;
                                ButtonBounce buttonBounce2 = this.checkboxBounce;
                                if (buttonBounce2 != null) {
                                    buttonBounce2.setPressed(false);
                                }
                            }
                        } else if (actionMasked == 1 || actionMasked == 3) {
                            boolean z = actionMasked == 1 && zContains;
                            this.checkboxPressed = false;
                            ButtonBounce buttonBounce3 = this.checkboxBounce;
                            if (buttonBounce3 != null) {
                                buttonBounce3.setPressed(false);
                            }
                            if (z) {
                                toggleCheckbox();
                            }
                            invalidateCell();
                        }
                        Rect rect22 = this.padding;
                        motionEvent.offsetLocation(rect22.left, rect22.top);
                        return true;
                    }
                }
                boolean zOnTouchEvent = onTouchEvent(motionEvent);
                Rect rect3 = this.padding;
                motionEvent.offsetLocation(rect3.left, rect3.top);
                return zOnTouchEvent;
            } catch (Throwable th) {
                Rect rect4 = this.padding;
                motionEvent.offsetLocation(rect4.left, rect4.top);
                throw th;
            }
        }

        private void invalidateCell() {
            View view = this.root.view;
            if (view != null) {
                view.invalidate();
            }
        }

        private boolean getCheckboxChecked() {
            TLObject tLObject = this.checkboxItem;
            if (tLObject instanceof TL_iv.PageListItem) {
                return ((TL_iv.PageListItem) tLObject).checked;
            }
            if (tLObject instanceof TL_iv.PageListOrderedItem) {
                return ((TL_iv.PageListOrderedItem) tLObject).checked;
            }
            CheckBoxBase checkBoxBase = this.checkbox;
            return checkBoxBase != null && checkBoxBase.isChecked();
        }

        private void setCheckboxChecked(boolean z) {
            TLObject tLObject = this.checkboxItem;
            if (tLObject instanceof TL_iv.PageListItem) {
                ((TL_iv.PageListItem) tLObject).checked = z;
            } else if (tLObject instanceof TL_iv.PageListOrderedItem) {
                ((TL_iv.PageListOrderedItem) tLObject).checked = z;
            }
        }

        private boolean canToggleCheckbox() {
            return (this.checkbox == null || this.checkboxItem == null || this.root.getCell() == null || this.root.getDelegate() == null || !this.root.getDelegate().canToggleRichMessageCheckbox(this.root.getCell())) ? false : true;
        }

        private void toggleCheckbox() {
            if (canToggleCheckbox()) {
                if (!MessagesController.getInstance(this.root.currentAccount).richEditorAllowed()) {
                    new PremiumFeatureBottomSheet(this.root.cell.getContext(), 43, true, this.root.resourcesProvider).show();
                    return;
                }
                final boolean z = !getCheckboxChecked();
                setCheckboxChecked(z);
                View view = this.root.view;
                if (view != null) {
                    this.checkbox.setParentView(view);
                }
                this.checkbox.setChecked(z, true);
                invalidateCell();
                View view2 = this.root.view;
                if (view2 != null) {
                    view2.performHapticFeedback(3, 2);
                }
                this.root.getDelegate().didToggleRichMessageCheckbox(this.root.getCell(), z, new Runnable() { // from class: org.telegram.messenger.RichMessageLayout$RichBlock$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$toggleCheckbox$1(z);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$toggleCheckbox$1(boolean z) {
            setCheckboxChecked(!z);
            View view = this.root.view;
            if (view != null) {
                this.checkbox.setParentView(view);
            }
            this.checkbox.setChecked(!z, true);
            invalidateCell();
        }

        public boolean isPressingLink() {
            TextSelectionHelper.TextLayoutBlock[] text = getText();
            if (text == null) {
                return false;
            }
            for (TextSelectionHelper.TextLayoutBlock textLayoutBlock : text) {
                if ((textLayoutBlock instanceof Text) && ((Text) textLayoutBlock).isPressingLink()) {
                    return true;
                }
            }
            return false;
        }

        public boolean findLink(CharacterStyle characterStyle, int i, FoundLink foundLink) {
            TextSelectionHelper.TextLayoutBlock[] text = getText();
            if (text == null) {
                return false;
            }
            for (TextSelectionHelper.TextLayoutBlock textLayoutBlock : text) {
                if (textLayoutBlock instanceof Text) {
                    if (((Text) textLayoutBlock).fillFoundLink(characterStyle, foundLink)) {
                        Rect rect = this.padding;
                        foundLink.f812x = rect.left - r4.left;
                        foundLink.f813y = i + rect.top;
                        return true;
                    }
                }
            }
            return false;
        }

        public void requestDisallowParentIntercept(boolean z) {
            View view = this.view;
            if (view == null) {
                return;
            }
            for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
                parent.requestDisallowInterceptTouchEvent(z);
            }
        }

        public int getMinWidth() {
            Rect rect = this.padding;
            return rect.left + this.maxWidth + rect.right;
        }

        public int getLastLineWidth() {
            return getMinWidth();
        }

        public boolean forcesTimeToNewLine() {
            return getLastLineWidth() >= getMinWidth();
        }

        public void onDrawFaded(Canvas canvas, int i, float f) {
            onDraw(canvas);
        }

        public boolean drawOverlay(Canvas canvas) {
            return drawOverlay(canvas, null);
        }

        public boolean drawOverlay(Canvas canvas, ColorFilter colorFilter) {
            Text text;
            AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans;
            TextSelectionHelper.TextLayoutBlock[] text2 = getText();
            if (text2 == null) {
                return false;
            }
            boolean z = false;
            for (TextSelectionHelper.TextLayoutBlock textLayoutBlock : text2) {
                if ((textLayoutBlock instanceof Text) && (emojiGroupedSpans = (text = (Text) textLayoutBlock).animatedEmojiStack) != null && !emojiGroupedSpans.holders.isEmpty()) {
                    canvas.save();
                    canvas.translate(text.f818x - text.left, text.f819y - this.currY);
                    AnimatedEmojiSpan.drawAnimatedEmojis(canvas, text.layout, text.animatedEmojiStack, 0.0f, text.spoilers, 0.0f, 0.0f, 0.0f, 1.0f, colorFilter);
                    canvas.restore();
                    z = true;
                }
            }
            return z;
        }

        public void placeTexts(int i, int i2, int i3) {
            this.layoutX = i;
            this.layoutY = i2;
            this.layoutRow = i3;
            TextSelectionHelper.TextLayoutBlock[] text = getText();
            if (text == null) {
                return;
            }
            for (TextSelectionHelper.TextLayoutBlock textLayoutBlock : text) {
                if (textLayoutBlock instanceof Text) {
                    Text text2 = (Text) textLayoutBlock;
                    text2.setX(i - text2.left);
                    text2.setY(i2);
                    text2.setRow(i3);
                }
            }
        }

        public void collectAnimatorBlocks(List<MultiLayoutTypingAnimator.Block> list) {
            list.add(this);
        }

        public void drawWithTyping(Canvas canvas) {
            MultiLayoutTypingAnimator multiLayoutTypingAnimator = this.typingAnimator;
            if (multiLayoutTypingAnimator != null && multiLayoutTypingAnimator.isRunning() && multiLayoutTypingAnimator.indexOf(this) >= 0) {
                if (!multiLayoutTypingAnimator.needDraw(this)) {
                    return;
                }
                if (multiLayoutTypingAnimator.isFadeBlock(this)) {
                    draw(canvas, multiLayoutTypingAnimator.getFadeLineIndex(this), multiLayoutTypingAnimator.getFadeXPosition(this));
                    return;
                }
                float blockAlpha = multiLayoutTypingAnimator.getBlockAlpha(this);
                if (blockAlpha <= 0.0f) {
                    return;
                }
                if (blockAlpha < 1.0f) {
                    Rect rect = this.padding;
                    int iSaveLayerAlpha = canvas.saveLayerAlpha(0.0f, 0.0f, rect.left + this.maxWidth + rect.right, getHeight(), (int) (blockAlpha * 255.0f));
                    draw(canvas);
                    canvas.restoreToCount(iSaveLayerAlpha);
                    return;
                }
            }
            draw(canvas);
        }

        public void attach(View view) {
            View view2 = this.view;
            if (view2 == view) {
                return;
            }
            if (view2 != null) {
                onDetachedFromWindow();
                CheckBoxBase checkBoxBase = this.checkbox;
                if (checkBoxBase != null) {
                    checkBoxBase.onDetachedFromWindow();
                }
                this.view = null;
            }
            this.view = view;
            CheckBoxBase checkBoxBase2 = this.checkbox;
            if (checkBoxBase2 != null) {
                checkBoxBase2.setParentView(view);
                this.checkbox.onAttachedToWindow();
            }
            onAttachedToWindow();
        }

        public void detach(View view) {
            View view2 = this.view;
            if (view2 != null && view2 == view) {
                onDetachedFromWindow();
                CheckBoxBase checkBoxBase = this.checkbox;
                if (checkBoxBase != null) {
                    checkBoxBase.onDetachedFromWindow();
                }
                this.view = null;
            }
        }

        public boolean isAttachedToWindow() {
            return this.view != null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    public static class PreviewView extends View implements TextSelectionHelper.ArticleSelectableView {
        private boolean allowActions;
        private final int currentAccount;
        private int insetBottom;
        private int insetLeft;
        private int insetRight;
        private int insetTop;
        private RichMessageLayout layout;
        private int maxHeight;
        private MessageObject messageObject;
        private int minHeight;
        private Theme.ResourcesProvider resourcesProvider;
        private TL_iv.RichMessage richMessage;
        private TextSelectionHelper.ArticleTextSelectionHelper textSelectionHelper;
        private Runnable textSelectionLongPressRunnable;
        private boolean translationLoading;

        public PreviewView(Context context) {
            this(context, UserConfig.selectedAccount, null);
        }

        public PreviewView(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.minHeight = -1;
            this.maxHeight = -1;
            this.allowActions = true;
            this.currentAccount = i;
            this.resourcesProvider = resourcesProvider;
            NotificationCenter.listenEmojiLoading(this);
        }

        public void setResourcesProvider(Theme.ResourcesProvider resourcesProvider) {
            this.resourcesProvider = resourcesProvider;
            RichMessageLayout richMessageLayout = this.layout;
            if (richMessageLayout != null) {
                richMessageLayout.setResourcesProvider(resourcesProvider);
            }
        }

        @Override // android.view.View
        public void setPadding(int i, int i2, int i3, int i4) {
            if (this.insetLeft == i && this.insetTop == i2 && this.insetRight == i3 && this.insetBottom == i4) {
                return;
            }
            this.insetLeft = i;
            this.insetTop = i2;
            this.insetRight = i3;
            this.insetBottom = i4;
            requestLayout();
            invalidate();
        }

        public void setTranslationLoading(boolean z) {
            this.translationLoading = z;
            RichMessageLayout richMessageLayout = this.layout;
            if (richMessageLayout != null) {
                richMessageLayout.forceTranslationLoading = z;
            }
            invalidate();
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            if (this.layout != null) {
                int i = this.insetLeft;
                int i2 = this.insetTop;
                for (int i3 = 0; i3 < this.layout.textBlocks.size(); i3++) {
                    arrayList.add(new PaddedTextLayoutBlock(this.layout.textBlocks.get(i3), i, i2));
                }
            }
        }

        public void setTextSelectionHelper(TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper) {
            this.textSelectionHelper = articleTextSelectionHelper;
        }

        public void set(TL_iv.RichMessage richMessage) {
            if (this.richMessage == richMessage) {
                return;
            }
            this.richMessage = richMessage;
            if (this.messageObject == null) {
                TLRPC.TL_message tL_message = new TLRPC.TL_message();
                tL_message.out = true;
                this.messageObject = new MessageObject(this.currentAccount, tL_message, false, false);
            }
            this.messageObject.messageOwner.rich_message = richMessage;
            RichMessageLayout richMessageLayout = this.layout;
            if (richMessageLayout != null) {
                richMessageLayout.detach(this);
            }
            this.layout = null;
            requestLayout();
            invalidate();
        }

        private void buildLayout(int i) {
            TL_iv.RichMessage richMessage;
            if (i <= 0 || (richMessage = this.richMessage) == null) {
                this.layout = null;
                return;
            }
            RichMessageLayout richMessageLayout = this.layout;
            if (richMessageLayout == null || richMessageLayout.needsUpdate(richMessage, i)) {
                RichMessageLayout richMessageLayout2 = this.layout;
                if (richMessageLayout2 != null) {
                    richMessageLayout2.detach(this);
                }
                RichMessageLayout richMessageLayout3 = new RichMessageLayout(this.messageObject, i, null);
                this.layout = richMessageLayout3;
                richMessageLayout3.forceTranslationLoading = this.translationLoading;
                richMessageLayout3.setResourcesProvider(this.resourcesProvider);
                RichMessageLayout richMessageLayout4 = this.layout;
                richMessageLayout4.invalidateAnimatedEmojiInParent = true;
                richMessageLayout4.quoteLine.check(this.messageObject, null, null, this.resourcesProvider, 1);
                if (isAttachedToWindow()) {
                    this.layout.attach(this);
                    this.layout.updateAnimatedEmojis(0);
                }
            }
        }

        public void setMinHeight(int i) {
            this.minHeight = i;
        }

        public void setMaxHeight(int i) {
            this.maxHeight = i;
        }

        @Override // android.view.View
        public void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            buildLayout((size - this.insetLeft) - this.insetRight);
            RichMessageLayout richMessageLayout = this.layout;
            int height = (richMessageLayout != null ? richMessageLayout.getHeight() : 0) + this.insetTop + this.insetBottom;
            int i3 = this.maxHeight;
            if (i3 > 0 && height > i3) {
                height = i3;
            }
            int i4 = this.minHeight;
            if (i4 > 0 && height < i4) {
                height = i4;
            }
            int mode = View.MeasureSpec.getMode(i2);
            if (mode == Integer.MIN_VALUE) {
                height = Math.min(height, View.MeasureSpec.getSize(i2));
            } else if (mode == 1073741824) {
                height = View.MeasureSpec.getSize(i2);
            }
            setMeasuredDimension(size, height);
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            if (this.layout == null) {
                return;
            }
            float height = (getHeight() - this.insetTop) - this.insetBottom;
            boolean z = this.layout.getHeight() > (getHeight() - this.insetTop) - this.insetBottom;
            canvas.save();
            if (z) {
                canvas.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), 255, 31);
            }
            canvas.translate(this.insetLeft, this.insetTop);
            this.layout.draw(canvas, this.insetLeft, Math.max(0, (getWidth() - this.layout.getMinWidth()) - this.insetLeft), null, 0.0f, height);
            if (this.layout.hasOverlay()) {
                this.layout.drawOverlay(canvas, null);
            }
            if (z) {
                canvas.translate(-this.insetLeft, -this.insetTop);
                canvas.save();
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(0.0f, getHeight() - AndroidUtilities.dp(24.0f), getWidth(), getHeight());
                this.layout.clip.draw(canvas, rectF, 3, 1.0f);
                canvas.restore();
                canvas.restore();
            }
            canvas.restore();
            TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper = this.textSelectionHelper;
            if (articleTextSelectionHelper == null || !articleTextSelectionHelper.isInSelectionMode()) {
                return;
            }
            int i = this.insetLeft;
            int i2 = this.insetTop;
            for (int i3 = 0; i3 < this.layout.textBlocks.size(); i3++) {
                TextSelectionHelper.TextLayoutBlock textLayoutBlock = this.layout.textBlocks.get(i3);
                canvas.save();
                canvas.translate(textLayoutBlock.getX() + i, textLayoutBlock.getY() + i2);
                this.textSelectionHelper.draw(canvas, this, i3);
                canvas.restore();
            }
        }

        @Override // android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            RichMessageLayout richMessageLayout = this.layout;
            if (richMessageLayout != null) {
                richMessageLayout.attach(this);
                this.layout.updateAnimatedEmojis(0);
            }
        }

        @Override // android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            RichMessageLayout richMessageLayout = this.layout;
            if (richMessageLayout != null) {
                richMessageLayout.detach(this);
            }
        }

        public void setAllowActions(boolean z) {
            this.allowActions = z;
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            Runnable runnable;
            if (!this.allowActions) {
                return super.onTouchEvent(motionEvent);
            }
            if (this.textSelectionHelper != null) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.textSelectionHelper.setMaybeView((int) motionEvent.getX(), (int) motionEvent.getY(), this);
                    if (this.textSelectionLongPressRunnable == null) {
                        this.textSelectionLongPressRunnable = new Runnable() { // from class: org.telegram.messenger.RichMessageLayout$PreviewView$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onTouchEvent$0();
                            }
                        };
                    }
                    removeCallbacks(this.textSelectionLongPressRunnable);
                    postDelayed(this.textSelectionLongPressRunnable, ViewConfiguration.getLongPressTimeout());
                } else if ((action == 1 || action == 2 || action == 3) && (runnable = this.textSelectionLongPressRunnable) != null) {
                    removeCallbacks(runnable);
                }
            }
            if (this.layout != null) {
                motionEvent.offsetLocation(-this.insetLeft, -this.insetTop);
                boolean zOnTouchEvent = this.layout.onTouchEvent(motionEvent);
                motionEvent.offsetLocation(this.insetLeft, this.insetTop);
                if (zOnTouchEvent) {
                    return true;
                }
            }
            return super.onTouchEvent(motionEvent);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTouchEvent$0() {
            RichMessageLayout richMessageLayout = this.layout;
            if (richMessageLayout == null || !richMessageLayout.isPressingLink()) {
                this.textSelectionHelper.trySelect(this);
            }
        }

        public static final class Factory extends UItem.UItemFactory<PreviewView> {
            @Override // org.telegram.ui.Components.UItem.UItemFactory
            /* JADX INFO: renamed from: isClickable */
            public boolean getIsClickableValue() {
                return false;
            }

            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public PreviewView createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                PreviewView previewView = new PreviewView(context, i, resourcesProvider);
                previewView.setPadding(AndroidUtilities.dp(20.0f), 0, AndroidUtilities.dp(20.0f), AndroidUtilities.dp(16.0f));
                return previewView;
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                PreviewView previewView = (PreviewView) view;
                previewView.set((TL_iv.RichMessage) uItem.object);
                previewView.setTranslationLoading(uItem.checked);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public boolean equals(UItem uItem, UItem uItem2) {
                return uItem.id == uItem2.id;
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public boolean contentsEquals(UItem uItem, UItem uItem2) {
                return uItem.id == uItem2.id && uItem.object == uItem2.object && uItem.checked == uItem2.checked;
            }

            public static UItem of(TL_iv.RichMessage richMessage) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.object = richMessage;
                return uItemOfFactory;
            }
        }

        public static class PaddedTextLayoutBlock implements TextSelectionHelper.TextLayoutBlock {
            private final TextSelectionHelper.TextLayoutBlock inner;
            private final int px;
            private final int py;

            @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
            public /* bridge */ /* synthetic */ Rect getSelectionBounds() {
                return super.getSelectionBounds();
            }

            public PaddedTextLayoutBlock(TextSelectionHelper.TextLayoutBlock textLayoutBlock, int i, int i2) {
                this.inner = textLayoutBlock;
                this.px = i;
                this.py = i2;
            }

            @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
            public Layout getLayout() {
                return this.inner.getLayout();
            }

            @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
            public int getX() {
                return this.inner.getX() + this.px;
            }

            @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
            public int getY() {
                return this.inner.getY() + this.py;
            }

            @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
            public int getRow() {
                return this.inner.getRow();
            }

            @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
            public CharSequence getPrefix() {
                return this.inner.getPrefix();
            }

            @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
            public CharSequence getText() {
                return this.inner.getText();
            }
        }
    }
}
