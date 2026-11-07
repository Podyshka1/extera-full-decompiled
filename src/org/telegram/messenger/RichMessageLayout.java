package org.telegram.messenger;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
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
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.Xfermode;
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
import android.text.style.ReplacementSpan;
import android.text.style.URLSpan;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.OverScroller;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.android.dx.AppDataDirGuesser;
import com.exteragram.messenger.utils.chats.ExteraFileHandler;
import com.exteragram.messenger.utils.ui.FontUtils;
import com.google.android.gms.cast.MediaError;
import j$.net.URLDecoder;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.ToIntFunction;
import kotlin.text.Typography;
import me.vkryl.android.util.ClickHelper;
import me.vkryl.core.BitwiseUtils;
import okhttp3.internal.url._UrlKt;
import org.telegram.PhoneFormat.PhoneFormat;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.RichMessageLayout;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.utils.DrawableUtils;
import org.telegram.messenger.utils.tlutils.TLKeyboardHelper;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_iv;
import org.telegram.tgnet.tl.TL_keyboard;
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
import org.telegram.ui.Components.ForegroundColorSpanThemable;
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
import org.telegram.ui.Components.SquigglyLinesSpan;
import org.telegram.ui.Components.TableLayout;
import org.telegram.ui.Components.TextPaintImageReceiverSpan;
import org.telegram.ui.Components.TextStyleSpan;
import org.telegram.ui.Components.TornEdge;
import org.telegram.ui.Components.TypefaceSpan;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.URLSpanBotCommand;
import org.telegram.ui.Components.URLSpanMono;
import org.telegram.ui.Components.URLSpanNoUnderline;
import org.telegram.ui.Components.URLSpanReplacement;
import org.telegram.ui.Components.URLSpanUserMention;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.Components.UnsupportedBlockDrawable;
import org.telegram.ui.Components.spoilers.SpoilerEffect;
import org.telegram.ui.Components.spoilers.SpoilerEffect2;
import org.telegram.ui.GradientClip;
import org.telegram.ui.LinkManager;
import org.telegram.ui.MultiLayoutTypingAnimator;
import org.telegram.ui.iv.Latex;
import org.telegram.ui.iv.RichHtml;
import org.telegram.ui.iv.RichTextStyle;
import org.telegram.ui.web.WebInstantView;
import org.telegram.utils.code.highlight.CodeHighlighting;

/* JADX INFO: loaded from: classes6.dex */
public class RichMessageLayout {
    private static final int ORDERED_LIST_MARKER_START_DP = 6;
    private static final int ORDERED_LIST_MARKER_WIDTH_DP = 28;
    public static final int PART_MAX_HEIGHT_DP = 900;
    public static final int QUOTE_NEST_VPAD = 3;
    public static final int TEXT_FLAG_BLOCKS = 15;
    public static final int TEXT_FLAG_BLOCK_BUTTON = 13;
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
    public static final int TEXT_FLAG_BLOCK_TABLE = 14;
    public static final int TEXT_FLAG_BLOCK_TABLE_TITLE = 15;
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
    public boolean blockquoteAnimating;
    private ChatMessageCell cell;
    public final GradientClip clip;
    public final int currentAccount;
    private ChatMessageCell.ChatMessageCellDelegate delegate;
    private float density;
    public boolean detailsAnimating;
    private int fontSize;
    public boolean forceTranslationLoading;
    protected int height;
    public boolean invalidateAnimatedEmojiInParent;
    public boolean isPart;
    protected int maxWidth;
    public final MessageObject messageObject;
    protected int minWidth;
    public final TextPaint numTextPaint;
    public Utilities.Callback<URLSpan> onLinkPress;
    public int padLeft;
    public int padRight;
    private RichBlock pressedBlock;
    private int pressedBlockY;
    private RichMessageLayout prev;
    private Drawable pullquoteIcon;
    public final ReplyMessageLine quoteLine;
    private IdentityHashMap<TL_iv.RichText, int[]> quoteRecorder;
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
    public final ArrayList<RichUnsupportedBlock> unsupportedBlocks = new ArrayList<>();
    public final ArrayList<RichUnsupportedBlock> unsupportedBlocksRoot = new ArrayList<>();
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
    private float detailsAnimationProgress = 1.0f;

    public static class FoundLink {
        public int end;
        public StaticLayout layout;
        public int originalWidth;
        public int start;

        /* JADX INFO: renamed from: x */
        public float f971x;

        /* JADX INFO: renamed from: y */
        public float f972y;
    }

    public static int setBlockFlags(int i, int i2) {
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

    public int getGap() {
        return 0;
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

    public boolean hasNameOffset() {
        ChatMessageCell chatMessageCell = this.cell;
        return chatMessageCell != null && chatMessageCell.namesOffset > 0;
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
        if (richMessageLayout != null) {
            this.resourcesProvider = richMessageLayout.resourcesProvider;
        }
        textPaint.setTypeface(AndroidUtilities.regular());
        textPaint2.setTypeface(AndroidUtilities.regular());
        layout(richMessageLayout);
    }

    private RichMessageLayout(int i, int i2, Theme.ResourcesProvider resourcesProvider) {
        TextPaint textPaint = new TextPaint(1);
        this.textPaint = textPaint;
        TextPaint textPaint2 = new TextPaint(1);
        this.numTextPaint = textPaint2;
        this.quoteLine = new ReplyMessageLine(null);
        this.clip = new GradientClip();
        this.showMoreRect = new RectF();
        this.messageObject = null;
        this.currentAccount = i;
        this.maxWidth = i2;
        this.resourcesProvider = resourcesProvider;
        this.fontSize = SharedConfig.fontSize;
        this.density = AndroidUtilities.density;
        textPaint.setTextSize(AndroidUtilities.dp(r5));
        textPaint2.setTextSize(AndroidUtilities.dp(this.fontSize));
    }

    public static RichButtonSpan createEditorButtonSpan(int i, int i2, Theme.ResourcesProvider resourcesProvider, TL_iv.textButton textbutton) {
        return new RichButtonSpan(i2, textbutton, Boolean.FALSE);
    }

    public static RichButton createEditorPageButton(int i, int i2, Theme.ResourcesProvider resourcesProvider, TL_keyboard.PageButton pageButton, Runnable runnable) {
        RichMessageLayout richMessageLayout = new RichMessageLayout(i, i2, resourcesProvider);
        CharSequence text = richMessageLayout.formatText(pageButton.text, setBlockFlags(16, 13));
        TL_keyboard.InlineButtonType inlineButtonType = pageButton.type;
        return new RichButton(richMessageLayout, i2, text, pageButton, inlineButtonType, pageButton.style, inlineButtonType instanceof TL_keyboard.TL_inlineButtonTypeDisabled, true, false, false, false, false, Boolean.FALSE, runnable);
    }

    public boolean needsUpdate(TL_iv.RichMessage richMessage, int i) {
        return (this.richMessage == richMessage && this.fontSize == SharedConfig.fontSize && Math.abs(this.density - AndroidUtilities.density) <= 0.1f && i == this.maxWidth) ? false : true;
    }

    public void setResourcesProvider(Theme.ResourcesProvider resourcesProvider) {
        this.resourcesProvider = resourcesProvider;
    }

    public void checkQuoteLine(TLRPC.User user, TLRPC.Chat chat) {
        this.quoteLine.check(this.messageObject, user, chat, this.resourcesProvider, 1);
        MessageObject messageObject = this.messageObject;
        if (messageObject == null || messageObject.isOutOwner() || this.messageObject.shouldDrawWithoutBackground() || hasCustomIncomingQuoteColor(user, chat)) {
            return;
        }
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        this.quoteLine.setSimpleColor(Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider), resourcesProvider != null ? resourcesProvider.isDark() : Theme.isCurrentThemeDark());
    }

    private boolean hasCustomIncomingQuoteColor(TLRPC.User user, TLRPC.Chat chat) {
        TLRPC.MessageFwdHeader messageFwdHeader;
        TLRPC.Peer peer;
        TLRPC.PeerColor peerColor;
        MessageObject messageObject = this.messageObject;
        if (messageObject.overrideLinkColor >= 0 || messageObject.overrideLinkPeerColor != null) {
            return true;
        }
        if (messageObject.isSponsored() && (peerColor = this.messageObject.sponsoredColor) != null && peerColor.color != -1) {
            return true;
        }
        MessageObject messageObject2 = this.messageObject;
        TLRPC.Message message = messageObject2.messageOwner;
        if (message != null && (messageFwdHeader = message.fwd_from) != null && (peer = messageFwdHeader.from_id) != null) {
            long peerDialogId = DialogObject.getPeerDialogId(peer);
            int i = this.currentAccount;
            if (peerDialogId < 0) {
                TLRPC.Chat chat2 = MessagesController.getInstance(i).getChat(Long.valueOf(-peerDialogId));
                return chat2 != null && hasCustomPeerColor(chat2.color);
            }
            TLRPC.User user2 = MessagesController.getInstance(i).getUser(Long.valueOf(peerDialogId));
            return user2 != null && hasCustomPeerColor(user2.color);
        }
        if (DialogObject.isEncryptedDialog(messageObject2.getDialogId()) || this.messageObject.isFromUser()) {
            return user != null && hasCustomPeerColor(user.color);
        }
        if (!this.messageObject.isFromChannel() || chat == null) {
            return false;
        }
        if (chat.signature_profiles) {
            long fromChatId = this.messageObject.getFromChatId();
            int i2 = this.currentAccount;
            if (fromChatId >= 0) {
                TLRPC.User user3 = MessagesController.getInstance(i2).getUser(Long.valueOf(fromChatId));
                return user3 != null && hasCustomPeerColor(user3.color);
            }
            TLRPC.Chat chat3 = MessagesController.getInstance(i2).getChat(Long.valueOf(-fromChatId));
            return chat3 != null && hasCustomPeerColor(chat3.color);
        }
        return hasCustomPeerColor(chat.color);
    }

    private static boolean hasCustomPeerColor(TLRPC.PeerColor peerColor) {
        return (peerColor instanceof TLRPC.TL_peerColorCollectible) || ((peerColor instanceof TLRPC.TL_peerColor) && (peerColor.flags & 1) != 0);
    }

    public void setChatMessageCellDelegate(ChatMessageCell chatMessageCell, ChatMessageCell.ChatMessageCellDelegate chatMessageCellDelegate) {
        this.cell = chatMessageCell;
        this.delegate = chatMessageCellDelegate;
    }

    public boolean startsWithMedia() {
        if (this.blocks.isEmpty()) {
            return false;
        }
        RichBlock richBlock = this.blocks.get(0);
        return (richBlock instanceof RichPhotoBlock) || (richBlock instanceof RichVideoBlock) || (richBlock instanceof RichCollageBlock) || (richBlock instanceof RichSlideshowBlock);
    }

    public void layout(RichMessageLayout richMessageLayout) {
        boolean z;
        this.height = 0;
        this.minWidth = 0;
        View view = this.view;
        if (view != null) {
            for (int i = 0; i < this.blocks.size(); i++) {
                this.blocks.get(i).detach(view);
            }
        }
        this.unsupportedBlocks.clear();
        this.unsupportedBlocksRoot.clear();
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
        this.richMessage = null;
        MessageObject messageObject = this.messageObject;
        if (messageObject == null || messageObject.messageOwner == null || messageObject.getDisplayRichMessage() == null) {
            return;
        }
        TL_iv.RichMessage displayRichMessage = this.messageObject.getDisplayRichMessage();
        this.richMessage = displayRichMessage;
        this.isPart = displayRichMessage.part;
        this.prev = richMessageLayout;
        int i2 = 0;
        while (i2 < this.richMessage.blocks.size()) {
            TL_iv.PageBlock pageBlock = this.richMessage.blocks.get(i2);
            RichMessageLayout richMessageLayout2 = this;
            RichBlock richBlockEmitBlock = richMessageLayout2.emitBlock(pageBlock, 0, new Rect(), 0, previousBlockIsParagraph(this.richMessage.blocks, i2));
            if ((richBlockEmitBlock instanceof RichTextBlock) && (((z = pageBlock instanceof TL_iv.pageBlockParagraph)) || ArticleViewer.isHeadingBlock(pageBlock))) {
                RichTextBlock richTextBlock = (RichTextBlock) richBlockEmitBlock;
                richTextBlock.setContentPadding((i2 == 0 && z) ? 0 : richTextBlock.contentPaddingTop, i2 == richMessageLayout2.richMessage.blocks.size() + (-1) ? 0 : richTextBlock.contentPaddingBottom);
            }
            i2++;
            this = richMessageLayout2;
        }
        RichMessageLayout richMessageLayout3 = this;
        richMessageLayout3.applyListPaddingFromBlocks();
        richMessageLayout3.prev = null;
        if (richMessageLayout3.typingAnimator != null) {
            for (int i3 = 0; i3 < richMessageLayout3.blocks.size(); i3++) {
                richMessageLayout3.blocks.get(i3).typingAnimator = richMessageLayout3.typingAnimator;
            }
            richMessageLayout3.typingAnimator.setBlocks(richMessageLayout3.getAnimatorBlocks());
        }
        if (view != null) {
            for (int i4 = 0; i4 < richMessageLayout3.blocks.size(); i4++) {
                richMessageLayout3.blocks.get(i4).attach(view);
            }
        }
        richMessageLayout3.reposition();
        richMessageLayout3.snapshotForDetailsAnimation();
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
        for (int i = 0; i < this.blocks.size(); i++) {
            this.minWidth = Math.max(this.minWidth, this.blocks.get(i).getMinWidth());
        }
        for (int i2 = 0; i2 < this.blocks.size(); i2++) {
            RichBlock richBlock = this.blocks.get(i2);
            if (richBlock instanceof RichTableBlock) {
                ((RichTableBlock) richBlock).resolveWidth(this.minWidth);
            }
        }
        StringBuilder sb = new StringBuilder();
        int gap = 0;
        boolean z = false;
        for (int i3 = 0; i3 < this.blocks.size(); i3++) {
            RichBlock richBlock2 = this.blocks.get(i3);
            boolean zIsVisible = richBlock2.isVisible();
            if (zIsVisible && z) {
                gap += getGap();
            }
            richBlock2.currY = gap;
            richBlock2.currH = 0;
            richBlock2.currVisible = zIsVisible;
            Rect rect = richBlock2.padding;
            richBlock2.placeTexts(rect.left, rect.top + gap, i3);
            if (zIsVisible) {
                TextSelectionHelper.TextLayoutBlock[] text = richBlock2.getText();
                if (text != null) {
                    for (TextSelectionHelper.TextLayoutBlock textLayoutBlock : text) {
                        if (textLayoutBlock != null && textLayoutBlock.getLayout() != null) {
                            if (sb.length() > 0) {
                                sb.append('\n');
                            }
                            this.textBlockCharOffsets.add(Integer.valueOf(sb.length()));
                            this.textBlockBlockIndex.add(Integer.valueOf(i3));
                            this.textBlocks.add(textLayoutBlock);
                            CharSequence text2 = textLayoutBlock.getLayout().getText();
                            if (text2 != null) {
                                sb.append(text2);
                            }
                        }
                    }
                }
                int height = richBlock2.getHeight();
                richBlock2.currH = height;
                gap += height;
                z = true;
            }
        }
        this.height = gap;
        this.joinedText = sb;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0045  */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v22 */
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
                        boolean z = (r6 instanceof RichTextWithAuthorBlock) && ((RichTextWithAuthorBlock) r6).author == richMessageLayout.textBlocks.get(i3);
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
                            } else if (z) {
                                richMessageLayout.appendSelectionPiece(sb, text, i5, i6, true);
                                richMessageLayout = this;
                            } else if (i7 < 0) {
                                richMessageLayout = this;
                                richMessageLayout.appendSelectionPiece(sb, text, i5, i6, false);
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

    public void openDetails(List<RichDetailsBlock> list) {
        ChatMessageCell.ChatMessageCellDelegate chatMessageCellDelegate;
        if (list == null || list.isEmpty()) {
            return;
        }
        snapshotForDetailsAnimation();
        for (RichDetailsBlock richDetailsBlock : list) {
            TL_iv.pageBlockDetails pageblockdetails = richDetailsBlock.block;
            if (!pageblockdetails.open) {
                pageblockdetails.open = true;
                richDetailsBlock.arrow.setAnimationProgressAnimated(0.0f);
            }
        }
        this.detailsAnimating = true;
        reposition();
        View view = this.view;
        if (view != null) {
            view.invalidate();
        }
        ChatMessageCell chatMessageCell = this.cell;
        if (chatMessageCell == null || (chatMessageCellDelegate = this.delegate) == null) {
            return;
        }
        chatMessageCellDelegate.forceUpdate(chatMessageCell, true, true);
    }

    public void snapshotForBlockquoteAnimation() {
        snapshotForDetailsAnimation();
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
        int outerBottomVpad;
        int outerTopVpad;
        int padding;
        int startBlockIndex;

        public QuoteBackground(int i, int i2, int i3, int i4) {
            this(i, i2, i3, i4, 0, 0);
        }

        public QuoteBackground(int i, int i2, int i3, int i4, int i5) {
            this(i, i2, i3, i4, i5, i5);
        }

        public QuoteBackground(int i, int i2, int i3, int i4, int i5, int i6) {
            this.startBlockIndex = i;
            this.endBlockIndex = i2;
            this.padding = i3;
            this.level = i4;
            this.outerTopVpad = i5;
            this.outerBottomVpad = i6;
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

    public boolean setSlideshowPage(TL_iv.PageBlock pageBlock) {
        if (pageBlock == null) {
            return false;
        }
        for (int i = 0; i < this.blocks.size(); i++) {
            RichBlock richBlock = this.blocks.get(i);
            if (richBlock instanceof RichSlideshowBlock) {
                RichSlideshowBlock richSlideshowBlock = (RichSlideshowBlock) richBlock;
                for (int i2 = 0; i2 < richSlideshowBlock.cells.size(); i2++) {
                    if (richSlideshowBlock.cells.get(i2).pageBlock == pageBlock) {
                        richSlideshowBlock.setCurrentPage(i2);
                        return true;
                    }
                }
            }
        }
        return false;
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

    private static boolean previousBlockIsParagraph(List<TL_iv.PageBlock> list, int i) {
        return i > 0 && (list.get(i - 1) instanceof TL_iv.pageBlockParagraph);
    }

    private RichBlock emitBlock(TL_iv.PageBlock pageBlock, int i, Rect rect, int i2, boolean z) {
        TLRPC.Document document;
        TL_iv.pageBlockBlockquote pageblockblockquote;
        RichMessageLayout richMessageLayout;
        RichBlock richQuoteBlock;
        int length;
        int i3;
        RichBlock richBlock;
        int i4;
        RichMessageLayout richMessageLayout2;
        int iDp;
        RichMessageLayout richMessageLayout3 = this;
        int i5 = i2;
        RichBlock richBlock2 = null;
        if (rect.left + rect.right >= richMessageLayout3.maxWidth) {
            return null;
        }
        if (pageBlock instanceof TL_iv.pageBlockThinking) {
            RichThinkingBlock richThinkingBlock = new RichThinkingBlock(richMessageLayout3, new Rect(), richMessageLayout3.maxWidth, richMessageLayout3.formatText(pageBlock.text));
            richMessageLayout3.blocks.add(richThinkingBlock);
            return richThinkingBlock;
        }
        if (ArticleViewer.isHeadingBlock(pageBlock) || (pageBlock instanceof TL_iv.pageBlockFooter) || (pageBlock instanceof TL_iv.pageBlockParagraph)) {
            boolean zIsHeadingBlock = ArticleViewer.isHeadingBlock(pageBlock);
            RichTextBlock richTextBlock = new RichTextBlock(richMessageLayout3, rect, richMessageLayout3.maxWidth, richMessageLayout3.formatText(pageBlock.text, setBlockFlags(i5, getBlockTextFlag(pageBlock))));
            if (zIsHeadingBlock) {
                richTextBlock.setContentPadding(AndroidUtilities.dp(10.0f), AndroidUtilities.dp(6.0f));
            } else if (pageBlock instanceof TL_iv.pageBlockParagraph) {
                richTextBlock.setContentPadding(z ? 0 : AndroidUtilities.dp(5.0f), AndroidUtilities.dp(4.66f));
            }
            richTextBlock.accessibilityLabelResId = getBlockAccessibilityLabel(pageBlock);
            richMessageLayout3.blocks.add(richTextBlock);
            return richTextBlock;
        }
        if (pageBlock instanceof TL_iv.pageBlockPreformatted) {
            RichPreformattedBlock richPreformattedBlock = new RichPreformattedBlock(richMessageLayout3, rect, richMessageLayout3.maxWidth, (TL_iv.pageBlockPreformatted) pageBlock, (RichPreformattedBlock) richMessageLayout3.findPrevBlock(pageBlock, RichPreformattedBlock.class));
            richPreformattedBlock.accessibilityLabelResId = C2807R.string.ArticleCode;
            richMessageLayout3.blocks.add(richPreformattedBlock);
            return richPreformattedBlock;
        }
        int i6 = 1;
        if (pageBlock instanceof TL_iv.pageBlockList) {
            TL_iv.pageBlockList pageblocklist = (TL_iv.pageBlockList) pageBlock;
            int i7 = i + 1;
            richMessageLayout3.numTextPaint.setTextSize(AndroidUtilities.dp(SharedConfig.fontSize));
            int iDp2 = AndroidUtilities.dp(18.0f);
            for (int i8 = 0; i8 < pageblocklist.items.size(); i8++) {
                if (pageblocklist.items.get(i8).checkbox) {
                    iDp = AndroidUtilities.dp(26.0f);
                } else {
                    iDp = AndroidUtilities.dp(18.0f);
                }
                iDp2 = Math.max(iDp2, iDp);
            }
            Rect rect2 = new Rect(rect);
            if (richMessageLayout3.isRtl()) {
                rect2.right += iDp2;
            } else {
                rect2.left += iDp2;
            }
            int i9 = 0;
            while (i9 < pageblocklist.items.size()) {
                TL_iv.PageListItem pageListItem = pageblocklist.items.get(i9);
                if (pageListItem instanceof TL_iv.TL_pageListItemText) {
                    TL_iv.TL_pageListItemText tL_pageListItemText = (TL_iv.TL_pageListItemText) pageListItem;
                    richBlock = richBlock2;
                    RichTextBlock richTextBlock2 = new RichTextBlock(richMessageLayout3, new Rect(rect2), richMessageLayout3.maxWidth, richMessageLayout3.formatText(tL_pageListItemText.text, i5));
                    richTextBlock2.setListMarkerWidth(iDp2);
                    if (tL_pageListItemText.checkbox) {
                        richTextBlock2.setCheckbox(tL_pageListItemText.checked, tL_pageListItemText);
                    } else {
                        richTextBlock2.setNum("•◦▪".charAt(i % 3) + _UrlKt.FRAGMENT_ENCODE_SET);
                    }
                    markListItem(richTextBlock2, i7, false, tL_pageListItemText.checkbox, tL_pageListItemText.checked);
                    richMessageLayout3.blocks.add(richTextBlock2);
                } else {
                    richBlock = richBlock2;
                    if (pageListItem instanceof TL_iv.TL_pageListItemBlocks) {
                        TL_iv.TL_pageListItemBlocks tL_pageListItemBlocks = (TL_iv.TL_pageListItemBlocks) pageListItem;
                        if (!tL_pageListItemBlocks.blocks.isEmpty()) {
                            int size = richMessageLayout3.blocks.size();
                            int i10 = 0;
                            boolean z2 = false;
                            while (i10 < tL_pageListItemBlocks.blocks.size()) {
                                int i11 = i10;
                                RichBlock richBlockEmitBlock = emitBlock(tL_pageListItemBlocks.blocks.get(i10), i7, new Rect(rect2), i5, previousBlockIsParagraph(tL_pageListItemBlocks.blocks, i10));
                                int i12 = i7;
                                if (richBlockEmitBlock != null && !z2) {
                                    richBlockEmitBlock.setListMarkerWidth(iDp2);
                                    if (tL_pageListItemBlocks.checkbox) {
                                        richBlockEmitBlock.setCheckbox(tL_pageListItemBlocks.checked, tL_pageListItemBlocks);
                                    } else {
                                        richBlockEmitBlock.setNum("•◦▪".charAt(i % 3) + _UrlKt.FRAGMENT_ENCODE_SET);
                                    }
                                    markListItem(richBlockEmitBlock, i12, false, tL_pageListItemBlocks.checkbox, tL_pageListItemBlocks.checked);
                                    z2 = true;
                                }
                                i7 = i12;
                                i10 = i11 + 1;
                                richMessageLayout3 = this;
                            }
                            i4 = i7;
                            richMessageLayout2 = richMessageLayout3;
                            richMessageLayout2.markListMembership(size, richMessageLayout2.blocks.size(), i4, false);
                        }
                    }
                    i9++;
                    richMessageLayout3 = richMessageLayout2;
                    richBlock2 = richBlock;
                    i7 = i4;
                }
                i4 = i7;
                richMessageLayout2 = richMessageLayout3;
                i9++;
                richMessageLayout3 = richMessageLayout2;
                richBlock2 = richBlock;
                i7 = i4;
            }
            return richBlock2;
        }
        RichMessageLayout richMessageLayout4 = richMessageLayout3;
        if (pageBlock instanceof TL_iv.pageBlockOrderedList) {
            TL_iv.pageBlockOrderedList pageblockorderedlist = (TL_iv.pageBlockOrderedList) pageBlock;
            int i13 = i + 1;
            richMessageLayout4.numTextPaint.setTextSize(AndroidUtilities.dp(SharedConfig.fontSize));
            new TextPaint(richMessageLayout4.numTextPaint).setTypeface(AndroidUtilities.bold());
            int iDp3 = AndroidUtilities.dp(28.0f);
            for (int i14 = 0; i14 < pageblockorderedlist.items.size(); i14++) {
                iDp3 = Math.max(iDp3, ((int) Math.ceil(r1.measureText(orderedListMarker(pageblockorderedlist, r12, i14)))) + AndroidUtilities.dp(10.0f) + (pageblockorderedlist.items.get(i14).checkbox ? AndroidUtilities.dp(26.0f) : 0));
            }
            Rect rect3 = new Rect(rect);
            if (richMessageLayout4.isRtl()) {
                rect3.right += iDp3;
            } else {
                rect3.left += iDp3;
            }
            int i15 = 0;
            while (i15 < pageblockorderedlist.items.size()) {
                TL_iv.PageListOrderedItem pageListOrderedItem = pageblockorderedlist.items.get(i15);
                if (pageListOrderedItem instanceof TL_iv.TL_pageListOrderedItemText) {
                    TL_iv.TL_pageListOrderedItemText tL_pageListOrderedItemText = (TL_iv.TL_pageListOrderedItemText) pageListOrderedItem;
                    RichTextBlock richTextBlock3 = new RichTextBlock(richMessageLayout4, new Rect(rect3), richMessageLayout4.maxWidth, richMessageLayout4.formatText(tL_pageListOrderedItemText.text, i5));
                    richTextBlock3.setListMarkerWidth(iDp3);
                    richTextBlock3.setNum(orderedListMarker(pageblockorderedlist, tL_pageListOrderedItemText, i15));
                    if (tL_pageListOrderedItemText.checkbox) {
                        richTextBlock3.setCheckbox(tL_pageListOrderedItemText.checked, tL_pageListOrderedItemText);
                    }
                    markListItem(richTextBlock3, i13, true, tL_pageListOrderedItemText.checkbox, tL_pageListOrderedItemText.checked);
                    richMessageLayout4.blocks.add(richTextBlock3);
                } else {
                    if (pageListOrderedItem instanceof TL_iv.TL_pageListOrderedItemBlocks) {
                        TL_iv.TL_pageListOrderedItemBlocks tL_pageListOrderedItemBlocks = (TL_iv.TL_pageListOrderedItemBlocks) pageListOrderedItem;
                        if (!tL_pageListOrderedItemBlocks.blocks.isEmpty()) {
                            int size2 = richMessageLayout4.blocks.size();
                            int i16 = 0;
                            boolean z3 = false;
                            while (i16 < tL_pageListOrderedItemBlocks.blocks.size()) {
                                RichMessageLayout richMessageLayout5 = richMessageLayout4;
                                int i17 = i13;
                                RichBlock richBlockEmitBlock2 = richMessageLayout5.emitBlock(tL_pageListOrderedItemBlocks.blocks.get(i16), i17, new Rect(rect3), i5, previousBlockIsParagraph(tL_pageListOrderedItemBlocks.blocks, i16));
                                richMessageLayout4 = richMessageLayout5;
                                i13 = i17;
                                int i18 = i5;
                                if (richBlockEmitBlock2 != null && !z3) {
                                    richBlockEmitBlock2.setListMarkerWidth(iDp3);
                                    if (tL_pageListOrderedItemBlocks.checkbox) {
                                        richBlockEmitBlock2.setCheckbox(tL_pageListOrderedItemBlocks.checked, tL_pageListOrderedItemBlocks);
                                    }
                                    richBlockEmitBlock2.setNum(orderedListMarker(pageblockorderedlist, tL_pageListOrderedItemBlocks, i15));
                                    if (tL_pageListOrderedItemBlocks.checkbox) {
                                        richBlockEmitBlock2.setCheckbox(tL_pageListOrderedItemBlocks.checked, tL_pageListOrderedItemBlocks);
                                    }
                                    markListItem(richBlockEmitBlock2, i13, true, tL_pageListOrderedItemBlocks.checkbox, tL_pageListOrderedItemBlocks.checked);
                                    z3 = true;
                                }
                                i16++;
                                i5 = i18;
                            }
                            i3 = i5;
                            richMessageLayout4.markListMembership(size2, richMessageLayout4.blocks.size(), i13, true);
                        }
                    }
                    i15++;
                    i5 = i3;
                }
                i3 = i5;
                i15++;
                i5 = i3;
            }
            return null;
        }
        int i19 = i5;
        float f = 4.0f;
        float f2 = 12.0f;
        if (pageBlock instanceof TL_iv.pageBlockBlockquote) {
            int i20 = rect.left;
            int size3 = richMessageLayout4.blocks.size();
            TL_iv.pageBlockBlockquote pageblockblockquote2 = (TL_iv.pageBlockBlockquote) pageBlock;
            CharSequence text = richMessageLayout4.formatText(pageBlock.text, setBlockFlags(i19, getBlockTextFlag(pageBlock)));
            TL_iv.RichText richText = pageblockblockquote2.caption;
            CharSequence text2 = (richText == null || TextUtils.isEmpty(getString(richText))) ? null : richMessageLayout4.formatText(pageblockblockquote2.caption, setBlockFlags(i19, 11));
            if (pageblockblockquote2.collapsed) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(text);
                if (text2 != null) {
                    spannableStringBuilder.append('\n');
                    length = spannableStringBuilder.length();
                    spannableStringBuilder.append(text2);
                } else {
                    length = -1;
                }
                int i21 = length;
                RichTextBlockQuote richTextBlockQuote = new RichTextBlockQuote(richMessageLayout4, new Rect(rect.left + AndroidUtilities.dp(12.0f), rect.top + AndroidUtilities.dp(4.0f), rect.right + AndroidUtilities.dp(20.0f), rect.bottom + AndroidUtilities.dp(4.0f)), richMessageLayout4.maxWidth, pageblockblockquote2, spannableStringBuilder);
                pageblockblockquote = pageblockblockquote2;
                richTextBlockQuote.quoteAuthorStart = i21;
                richTextBlockQuote.setContentPadding(AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f));
                richMessageLayout = richMessageLayout4;
                richQuoteBlock = richTextBlockQuote;
            } else {
                pageblockblockquote = pageblockblockquote2;
                richMessageLayout = richMessageLayout4;
                richQuoteBlock = new RichQuoteBlock(richMessageLayout, new Rect(rect.left + AndroidUtilities.dp(12.0f), rect.top + AndroidUtilities.dp(12.0f), rect.right + AndroidUtilities.dp(12.0f), rect.bottom + AndroidUtilities.dp(14.0f)), richMessageLayout4.maxWidth, text, text2);
            }
            RichBlock richBlock3 = richQuoteBlock;
            richBlock3.accessibilityLabelResId = C2807R.string.ArticleQuote;
            richMessageLayout.blocks.add(richBlock3);
            richMessageLayout.quotes.add(new QuoteBackground(size3, richMessageLayout.blocks.size() - 1, i20, i, AndroidUtilities.dp(8.0f), pageblockblockquote.collapsed ? AndroidUtilities.dp(8.0f) : 0));
            return richBlock3;
        }
        RichMessageLayout richMessageLayout6 = richMessageLayout4;
        if (pageBlock instanceof TL_iv.pageBlockBlockquoteBlocks) {
            int i22 = rect.left;
            int i23 = i + 1;
            int size4 = richMessageLayout6.blocks.size();
            TL_iv.pageBlockBlockquoteBlocks pageblockblockquoteblocks = (TL_iv.pageBlockBlockquoteBlocks) pageBlock;
            TL_iv.RichText richText2 = pageblockblockquoteblocks.caption;
            boolean z4 = (richText2 == null || TextUtils.isEmpty(getString(richText2))) ? false : true;
            int i24 = 0;
            while (i24 < pageblockblockquoteblocks.blocks.size()) {
                int i25 = i24 == 0 ? i6 : i;
                float f3 = f;
                int i26 = i24 == pageblockblockquoteblocks.blocks.size() - i6 ? i6 : i;
                float f4 = f2;
                TL_iv.PageBlock pageBlock2 = pageblockblockquoteblocks.blocks.get(i24);
                int i27 = i6;
                Rect rect4 = new Rect(rect.left + AndroidUtilities.dp(f4), rect.top + (i25 != 0 ? AndroidUtilities.dp(f3) : 0), rect.right + AndroidUtilities.dp(f4), rect.bottom + ((i26 == 0 || z4) ? 0 : AndroidUtilities.dp(f3)));
                int i28 = size4;
                int blockFlags = setBlockFlags(i19, 9);
                boolean zPreviousBlockIsParagraph = previousBlockIsParagraph(pageblockblockquoteblocks.blocks, i24);
                TL_iv.pageBlockBlockquoteBlocks pageblockblockquoteblocks2 = pageblockblockquoteblocks;
                RichMessageLayout richMessageLayout7 = richMessageLayout6;
                richMessageLayout7.emitBlock(pageBlock2, i23, rect4, blockFlags, zPreviousBlockIsParagraph);
                richMessageLayout6 = richMessageLayout7;
                i24++;
                i19 = i19;
                size4 = i28;
                pageblockblockquoteblocks = pageblockblockquoteblocks2;
                f = f3;
                f2 = f4;
                i6 = i27;
                i = 0;
            }
            TL_iv.pageBlockBlockquoteBlocks pageblockblockquoteblocks3 = pageblockblockquoteblocks;
            int i29 = i19;
            int i30 = size4;
            float f5 = f2;
            if (richMessageLayout6.blocks.size() > i30) {
                richMessageLayout6.blocks.get(i30).accessibilityParentLabelResId = C2807R.string.ArticleQuote;
            }
            if (z4) {
                RichTextBlock richTextBlock4 = new RichTextBlock(richMessageLayout6, new Rect(rect.left + AndroidUtilities.dp(f5), rect.top, rect.right + AndroidUtilities.dp(f5), rect.bottom + AndroidUtilities.dp(6.0f)), richMessageLayout6.maxWidth, new SpannableStringBuilder(richMessageLayout6.formatText(pageblockblockquoteblocks3.caption, setBlockFlags(i29, 11))));
                richTextBlock4.quoteAuthorStart = 0;
                richTextBlock4.setContentPadding(AndroidUtilities.dp(2.0f), 0);
                richMessageLayout6.blocks.add(richTextBlock4);
            }
            richMessageLayout6.quotes.add(new QuoteBackground(i30, richMessageLayout6.blocks.size() - 1, i22, i));
            return null;
        }
        if (pageBlock instanceof TL_iv.pageBlockPullquote) {
            TL_iv.pageBlockPullquote pageblockpullquote = (TL_iv.pageBlockPullquote) pageBlock;
            CharSequence text3 = richMessageLayout6.formatText(pageBlock.text, setBlockFlags(i19, getBlockTextFlag(pageBlock)));
            TL_iv.RichText richText3 = pageblockpullquote.caption;
            RichPullquoteBlock richPullquoteBlock = new RichPullquoteBlock(richMessageLayout6, new Rect(rect.left + AndroidUtilities.dp(30.0f), rect.top + AndroidUtilities.dp(16.0f), rect.right + AndroidUtilities.dp(30.0f), rect.bottom + AndroidUtilities.dp(16.0f)), richMessageLayout6.maxWidth, text3, (richText3 == null || TextUtils.isEmpty(getString(richText3))) ? null : richMessageLayout6.formatText(pageblockpullquote.caption, setBlockFlags(i19, 11)));
            richPullquoteBlock.accessibilityLabelResId = C2807R.string.ArticlePullquote;
            richMessageLayout6.blocks.add(richPullquoteBlock);
            return richPullquoteBlock;
        }
        if (pageBlock instanceof TL_iv.pageBlockButtonRow) {
            RichButtonRowBlock richButtonRowBlock = new RichButtonRowBlock(richMessageLayout6, rect, richMessageLayout6.maxWidth, (TL_iv.pageBlockButtonRow) pageBlock);
            richButtonRowBlock.accessibilityLabelResId = C2807R.string.AccDescrIVButtons;
            richMessageLayout6.blocks.add(richButtonRowBlock);
            return richButtonRowBlock;
        }
        if (pageBlock instanceof TL_iv.pageBlockTable) {
            try {
                RichTableBlock richTableBlock = new RichTableBlock(richMessageLayout6, rect, richMessageLayout6.maxWidth, (TL_iv.pageBlockTable) pageBlock);
                richTableBlock.accessibilityLabelResId = C2807R.string.AccDescrIVTable;
                richMessageLayout6.blocks.add(richTableBlock);
                return richTableBlock;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        if (pageBlock instanceof TL_iv.pageBlockMath) {
            RichMathBlock richMathBlock = new RichMathBlock(richMessageLayout6, rect, richMessageLayout6.maxWidth, (TL_iv.pageBlockMath) pageBlock);
            richMessageLayout6.blocks.add(richMathBlock);
            return richMathBlock;
        }
        if (pageBlock instanceof TL_iv.pageBlockDivider) {
            RichDividerBlock richDividerBlock = new RichDividerBlock(richMessageLayout6, rect, richMessageLayout6.maxWidth);
            richMessageLayout6.blocks.add(richDividerBlock);
            return richDividerBlock;
        }
        if (pageBlock instanceof TL_iv.pageBlockPhoto) {
            TL_iv.pageBlockPhoto pageblockphoto = (TL_iv.pageBlockPhoto) pageBlock;
            RichPhotoBlock richPhotoBlock = new RichPhotoBlock(richMessageLayout6, rect, richMessageLayout6.maxWidth, pageblockphoto, richMessageLayout6.blocks.isEmpty());
            richMessageLayout6.blocks.add(richPhotoBlock);
            richMessageLayout6.emitCaption(pageblockphoto.caption, rect, i19);
            return richPhotoBlock;
        }
        if (pageBlock instanceof TL_iv.pageBlockVideo) {
            TL_iv.pageBlockVideo pageblockvideo = (TL_iv.pageBlockVideo) pageBlock;
            RichVideoBlock richVideoBlock = new RichVideoBlock(richMessageLayout6, rect, richMessageLayout6.maxWidth, pageblockvideo, richMessageLayout6.blocks.isEmpty());
            richMessageLayout6.blocks.add(richVideoBlock);
            richMessageLayout6.emitCaption(pageblockvideo.caption, rect, i19);
            return richVideoBlock;
        }
        if (pageBlock instanceof TL_iv.pageBlockCollage) {
            TL_iv.pageBlockCollage pageblockcollage = (TL_iv.pageBlockCollage) pageBlock;
            RichCollageBlock richCollageBlock = new RichCollageBlock(richMessageLayout6, rect, richMessageLayout6.maxWidth, pageblockcollage, richMessageLayout6.blocks.isEmpty());
            richMessageLayout6.blocks.add(richCollageBlock);
            richMessageLayout6.emitCaption(pageblockcollage.caption, rect, i19);
            return richCollageBlock;
        }
        if (pageBlock instanceof TL_iv.pageBlockSlideshow) {
            TL_iv.pageBlockSlideshow pageblockslideshow = (TL_iv.pageBlockSlideshow) pageBlock;
            RichSlideshowBlock richSlideshowBlock = new RichSlideshowBlock(richMessageLayout6, rect, richMessageLayout6.maxWidth, pageblockslideshow, richMessageLayout6.blocks.isEmpty());
            richMessageLayout6.blocks.add(richSlideshowBlock);
            richMessageLayout6.emitCaption(pageblockslideshow.caption, rect, i19);
            return richSlideshowBlock;
        }
        if (pageBlock instanceof TL_iv.pageBlockMap) {
            TL_iv.pageBlockMap pageblockmap = (TL_iv.pageBlockMap) pageBlock;
            RichMapBlock richMapBlock = new RichMapBlock(richMessageLayout6, rect, richMessageLayout6.maxWidth, pageblockmap);
            richMessageLayout6.blocks.add(richMapBlock);
            richMessageLayout6.emitCaption(pageblockmap.caption, rect, i19);
            return richMapBlock;
        }
        if (pageBlock instanceof TL_iv.pageBlockAudio) {
            TL_iv.pageBlockAudio pageblockaudio = (TL_iv.pageBlockAudio) pageBlock;
            if (richMessageLayout6.audioBlocks.get(pageblockaudio) == null && (document = richMessageLayout6.getDocument(pageblockaudio.audio_id)) != null) {
                TLRPC.TL_message tL_message = new TLRPC.TL_message();
                tL_message.out = true;
                int i31 = -Long.valueOf(pageblockaudio.audio_id).hashCode();
                pageblockaudio.mid = i31;
                tL_message.id = i31;
                tL_message.realId = richMessageLayout6.messageObject.getRealId();
                tL_message.dialog_id = richMessageLayout6.messageObject.getDialogId();
                TLRPC.Peer peer = richMessageLayout6.messageObject.messageOwner.peer_id;
                tL_message.peer_id = peer;
                if (peer == null) {
                    TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                    tL_message.peer_id = tL_peerUser;
                    tL_peerUser.user_id = UserConfig.getInstance(richMessageLayout6.currentAccount).getClientUserId();
                }
                TLRPC.TL_peerUser tL_peerUser2 = new TLRPC.TL_peerUser();
                tL_message.from_id = tL_peerUser2;
                tL_peerUser2.user_id = UserConfig.getInstance(richMessageLayout6.currentAccount).getClientUserId();
                tL_message.date = (int) (System.currentTimeMillis() / 1000);
                tL_message.message = _UrlKt.FRAGMENT_ENCODE_SET;
                TLRPC.TL_messageMediaDocument tL_messageMediaDocument = new TLRPC.TL_messageMediaDocument();
                tL_message.media = tL_messageMediaDocument;
                tL_messageMediaDocument.flags |= 3;
                tL_messageMediaDocument.document = document;
                tL_message.flags |= 768;
                MessageObject messageObject = new MessageObject(richMessageLayout6.currentAccount, tL_message, false, true);
                richMessageLayout6.audioMessages.add(messageObject);
                richMessageLayout6.audioBlocks.put(pageblockaudio, messageObject);
            }
            RichAudioBlock richAudioBlock = new RichAudioBlock(richMessageLayout6, rect, richMessageLayout6.maxWidth, pageblockaudio);
            richMessageLayout6.blocks.add(richAudioBlock);
            richMessageLayout6.emitCaption(pageblockaudio.caption, rect, i19);
            return richAudioBlock;
        }
        if (pageBlock instanceof TL_iv.pageBlockDocument) {
            TL_iv.pageBlockDocument pageblockdocument = (TL_iv.pageBlockDocument) pageBlock;
            RichDocumentBlock richDocumentBlock = new RichDocumentBlock(richMessageLayout6, rect, richMessageLayout6.maxWidth, pageblockdocument);
            richMessageLayout6.blocks.add(richDocumentBlock);
            richMessageLayout6.emitCaption(pageblockdocument.caption, rect, i19);
            return richDocumentBlock;
        }
        if (pageBlock instanceof TL_iv.pageBlockCover) {
            return richMessageLayout6.emitBlock(((TL_iv.pageBlockCover) pageBlock).cover, i, rect, i19, false);
        }
        if (pageBlock instanceof TL_iv.pageBlockAnchor) {
            String str = ((TL_iv.pageBlockAnchor) pageBlock).name;
            if (str != null) {
                richMessageLayout6.anchors.put(str.toLowerCase(), Integer.valueOf(richMessageLayout6.blocks.size()));
            }
            return null;
        }
        if (pageBlock instanceof TL_iv.pageBlockUnsupported) {
            int iDp4 = BitwiseUtils.hasFlag(i19, 9) ? AndroidUtilities.dp(6.0f) : i > 0 ? AndroidUtilities.dp(4.0f) : 0;
            RichUnsupportedBlock richUnsupportedBlock = new RichUnsupportedBlock(richMessageLayout6, new Rect((rect.left + iDp4) - AndroidUtilities.dp(7.0f), Math.max(AndroidUtilities.dp(14.0f), rect.top), (rect.right + iDp4) - AndroidUtilities.dp(7.0f), Math.max(AndroidUtilities.dp(14.0f), rect.bottom)), richMessageLayout6.maxWidth, richMessageLayout6.blocks.size(), i);
            richMessageLayout6.unsupportedBlocks.add(richUnsupportedBlock);
            if (i == 0) {
                richMessageLayout6.unsupportedBlocksRoot.add(richUnsupportedBlock);
            }
            richMessageLayout6.blocks.add(richUnsupportedBlock);
            return richUnsupportedBlock;
        }
        if (pageBlock instanceof TL_iv.pageBlockDetails) {
            TL_iv.pageBlockDetails pageblockdetails = (TL_iv.pageBlockDetails) pageBlock;
            RichDetailsBlock richDetailsBlock = new RichDetailsBlock(richMessageLayout6, rect, richMessageLayout6.maxWidth, pageblockdetails, richMessageLayout6.formatText(pageblockdetails.title, i19 & (-17)));
            richMessageLayout6.blocks.add(richDetailsBlock);
            for (int i32 = 0; i32 < pageblockdetails.blocks.size(); i32++) {
                RichMessageLayout richMessageLayout8 = richMessageLayout6;
                richMessageLayout8.emitBlock(pageblockdetails.blocks.get(i32), i + 1, rect, i19, previousBlockIsParagraph(pageblockdetails.blocks, i32));
                richMessageLayout6 = richMessageLayout8;
            }
            richMessageLayout6.blocks.add(new RichDetailsEndBlock(richMessageLayout6, new Rect(rect.left, 0, rect.right, 0), richMessageLayout6.maxWidth));
            for (int size5 = richMessageLayout6.blocks.size(); size5 < richMessageLayout6.blocks.size(); size5++) {
                RichBlock richBlock4 = richMessageLayout6.blocks.get(size5);
                if (richBlock4.parentDetails == null) {
                    richBlock4.parentDetails = richDetailsBlock;
                }
            }
            return richDetailsBlock;
        }
        if (!BuildVars.DEBUG_PRIVATE_VERSION) {
            return null;
        }
        RichTextBlock richTextBlock5 = new RichTextBlock(richMessageLayout6, rect, richMessageLayout6.maxWidth, "unsupported block " + pageBlock);
        richMessageLayout6.blocks.add(richTextBlock5);
        return richTextBlock5;
    }

    private static String orderedListMarker(TL_iv.pageBlockOrderedList pageblockorderedlist, TL_iv.PageListOrderedItem pageListOrderedItem, int i) {
        if (!TextUtils.isEmpty(pageListOrderedItem.num)) {
            boolean zEndsWith = pageListOrderedItem.num.endsWith(".");
            String str = pageListOrderedItem.num;
            if (zEndsWith) {
                return str;
            }
            return str + ".";
        }
        if (TLObject.hasFlag(pageListOrderedItem.flags, 8)) {
            return pageListOrderedItem.value + ".";
        }
        if (TLObject.hasFlag(pageblockorderedlist.flags, 1)) {
            StringBuilder sb = new StringBuilder();
            int i2 = pageblockorderedlist.start;
            if (pageblockorderedlist.reversed) {
                i = -i;
            }
            sb.append(i2 + i);
            sb.append(".");
            return sb.toString();
        }
        return (i + 1) + ".";
    }

    private void markListMembership(int i, int i2, int i3, boolean z) {
        while (i < i2) {
            RichBlock richBlock = this.blocks.get(i);
            if (richBlock.listLevel == 0) {
                richBlock.listLevel = i3;
                richBlock.listOrdered = z;
            }
            i++;
        }
    }

    private void applyListPaddingFromBlocks() {
        int i = 0;
        while (i < this.blocks.size()) {
            RichBlock richBlock = this.blocks.get(i);
            if ((richBlock instanceof RichTextBlock) && richBlock.listLevel > 0) {
                int i2 = i + 1;
                ((RichTextBlock) richBlock).setContentPadding(AndroidUtilities.dp(i > 0 && this.blocks.get(i + (-1)).listLevel > 0 ? 2.0f : 6.0f), AndroidUtilities.dp(i2 < this.blocks.size() && this.blocks.get(i2).listLevel > 0 ? 5.0f : 9.0f));
            }
            i++;
        }
    }

    public boolean hasUnsupportedBlocks() {
        return !this.unsupportedBlocks.isEmpty();
    }

    public boolean hasRootUnsupportedBlocks() {
        return !this.unsupportedBlocksRoot.isEmpty();
    }

    public ArrayList<RichUnsupportedBlock> getUnsupportedHoles() {
        return this.unsupportedBlocks;
    }

    public ArrayList<RichUnsupportedBlock> getUnsupportedHolesRoot() {
        return this.unsupportedBlocksRoot;
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

    private void drawBackground(Canvas canvas, ChatMessageCell.TransitionParams transitionParams) {
        if (!this.quotes.isEmpty()) {
            ArrayList<QuoteBackground> arrayList = this.quotes;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                int i2 = i + 1;
                QuoteBackground quoteBackground = arrayList.get(i);
                int blockTop = getBlockTop(quoteBackground.startBlockIndex, transitionParams);
                int blockBottom = getBlockBottom(quoteBackground.endBlockIndex, transitionParams);
                float blockBackgroundScale = getBlockBackgroundScale(quoteBackground.startBlockIndex, quoteBackground.endBlockIndex);
                int iDp = quoteBackground.level * AndroidUtilities.dp(3.0f);
                int i3 = quoteBackground.outerTopVpad + iDp;
                int i4 = iDp + quoteBackground.outerBottomVpad;
                if (blockBottom - blockTop > i3 + i4) {
                    blockTop += i3;
                    blockBottom -= i4;
                }
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(quoteBackground.padding, blockTop, getMinWidth() - AndroidUtilities.dp(quoteBackground.level * 12), blockBottom);
                canvas.save();
                canvas.scale(blockBackgroundScale, blockBackgroundScale, rectF.centerX(), rectF.centerY());
                float fFloor = (float) Math.floor(SharedConfig.bubbleRadius / 3.0f);
                this.quoteLine.drawBackground(canvas, rectF, fFloor, fFloor, fFloor, 1.0f, false, false);
                this.quoteLine.drawLine(canvas, rectF);
                canvas.restore();
                i = i2;
            }
        }
        for (int i5 = 0; i5 < this.blocks.size(); i5++) {
            RichBlock richBlock = this.blocks.get(i5);
            if ((richBlock instanceof RichPullquoteBlock) && (richBlock.currVisible || richBlock.prevVisible)) {
                drawPullquoteBackground(canvas, (RichPullquoteBlock) richBlock, transitionParams);
            }
        }
    }

    private void drawPullquoteBackground(Canvas canvas, RichPullquoteBlock richPullquoteBlock, ChatMessageCell.TransitionParams transitionParams) {
        float fLerp;
        int textWidth = richPullquoteBlock.getTextWidth();
        if (textWidth <= 0) {
            return;
        }
        boolean z = transitionParams != null && (this.detailsAnimating || this.blockquoteAnimating);
        float fMax = z ? Math.max(0.0f, Math.min(1.0f, transitionParams.animateChangeProgress)) : 1.0f;
        if (z) {
            fLerp = AndroidUtilities.lerp(richPullquoteBlock.prevVisible ? 1.0f : 0.0f, richPullquoteBlock.currVisible ? 1.0f : 0.0f, fMax);
        } else {
            fLerp = richPullquoteBlock.currVisible ? 1.0f : 0.0f;
        }
        if (fLerp <= 0.0f) {
            return;
        }
        float minWidth = ((getMinWidth() + this.padRight) - this.padLeft) / 2.0f;
        float f = textWidth / 2.0f;
        float fDp = (minWidth - f) - AndroidUtilities.dp(30.0f);
        float fDp2 = minWidth + f + AndroidUtilities.dp(30.0f);
        float fLerp2 = z ? AndroidUtilities.lerp(richPullquoteBlock.prevY, richPullquoteBlock.currY, fMax) : richPullquoteBlock.currY;
        float fDp3 = fLerp2 + AndroidUtilities.dp(8.0f);
        float fLerp3 = (fLerp2 + (z ? AndroidUtilities.lerp(richPullquoteBlock.prevH, richPullquoteBlock.currH, fMax) : richPullquoteBlock.getHeight())) - AndroidUtilities.dp(8.0f);
        if (fLerp3 <= fDp3) {
            return;
        }
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(fDp, fDp3, fDp2, fLerp3);
        float fFloor = (float) Math.floor(SharedConfig.bubbleRadius / 2.0f);
        this.quoteLine.drawBackground(canvas, rectF, fFloor, fFloor, fFloor, fLerp, false, false);
        if (this.pullquoteIcon == null) {
            this.pullquoteIcon = ContextCompat.getDrawable(ApplicationLoader.applicationContext, C2807R.drawable.mini_quote).mutate();
        }
        this.pullquoteIcon.setColorFilter(this.quoteLine.getColor(), PorterDuff.Mode.SRC_IN);
        this.pullquoteIcon.setAlpha((int) (fLerp * 255.0f));
        int intrinsicWidth = this.pullquoteIcon.getIntrinsicWidth();
        int intrinsicHeight = this.pullquoteIcon.getIntrinsicHeight();
        canvas.save();
        canvas.clipRect(fDp, fDp3, fDp2, fLerp3);
        int i = (int) fDp;
        int i2 = (int) fDp3;
        this.pullquoteIcon.setBounds(AndroidUtilities.dp(8.0f) + i, AndroidUtilities.dp(7.0f) + i2, i + AndroidUtilities.dp(8.0f) + intrinsicWidth, i2 + AndroidUtilities.dp(7.0f) + intrinsicHeight);
        canvas.scale(-1.0f, -1.0f, this.pullquoteIcon.getBounds().centerX(), this.pullquoteIcon.getBounds().centerY());
        this.pullquoteIcon.draw(canvas);
        canvas.restore();
        canvas.save();
        canvas.clipRect(fDp, fDp3, fDp2, fLerp3);
        Drawable drawable = this.pullquoteIcon;
        int i3 = (int) fDp2;
        int iDp = (i3 - AndroidUtilities.dp(8.0f)) - intrinsicWidth;
        int i4 = (int) fLerp3;
        drawable.setBounds(iDp, (i4 - AndroidUtilities.dp(7.0f)) - intrinsicHeight, i3 - AndroidUtilities.dp(8.0f), i4 - AndroidUtilities.dp(7.0f));
        canvas.scale(1.0f, -1.0f, this.pullquoteIcon.getBounds().centerX(), this.pullquoteIcon.getBounds().centerY());
        this.pullquoteIcon.draw(canvas);
        canvas.restore();
        this.pullquoteIcon.setAlpha(255);
    }

    private int getBlockTop(int i, ChatMessageCell.TransitionParams transitionParams) {
        int height;
        if (i >= 0 && i < this.blocks.size() && transitionParams != null && (this.detailsAnimating || this.blockquoteAnimating)) {
            float fMax = Math.max(0.0f, Math.min(1.0f, transitionParams.animateChangeProgress));
            RichBlock richBlock = this.blocks.get(i);
            return Math.round(AndroidUtilities.lerp(richBlock.prevY, richBlock.currY, fMax));
        }
        boolean z = false;
        int gap = 0;
        for (int i2 = 0; i2 < this.blocks.size(); i2++) {
            RichBlock richBlock2 = this.blocks.get(i2);
            boolean zIsVisible = richBlock2.isVisible();
            if (zIsVisible && z) {
                gap += getGap();
            }
            if (i2 == i) {
                return gap;
            }
            if (zIsVisible) {
                if (transitionParams != null && (this.detailsAnimating || this.blockquoteAnimating)) {
                    height = AndroidUtilities.lerp(richBlock2.prevH, richBlock2.currH, Math.max(0.0f, Math.min(1.0f, transitionParams.animateChangeProgress)));
                } else {
                    height = richBlock2.getHeight();
                }
                gap += height;
                z = true;
            }
        }
        return this.height;
    }

    private int getBlockBottom(int i, ChatMessageCell.TransitionParams transitionParams) {
        int height;
        if (i >= 0 && i < this.blocks.size() && transitionParams != null && (this.detailsAnimating || this.blockquoteAnimating)) {
            float fMax = Math.max(0.0f, Math.min(1.0f, transitionParams.animateChangeProgress));
            RichBlock richBlock = this.blocks.get(i);
            int iMax = Math.max(0, richBlock.padding.bottom - AndroidUtilities.dp(4.0f));
            return Math.round(AndroidUtilities.lerp((richBlock.prevY + richBlock.prevH) - (richBlock.prevVisible ? iMax : 0), (richBlock.currY + richBlock.currH) - (richBlock.currVisible ? iMax : 0), fMax));
        }
        boolean z = false;
        int iDp = 0;
        while (i < this.blocks.size()) {
            RichBlock richBlock2 = this.blocks.get(i);
            boolean zIsVisible = richBlock2.isVisible();
            if (zIsVisible && z) {
                iDp += getGap();
            }
            if (zIsVisible) {
                if (transitionParams != null && (this.detailsAnimating || this.blockquoteAnimating)) {
                    height = AndroidUtilities.lerp(richBlock2.prevH, richBlock2.currH, Math.max(0.0f, Math.min(1.0f, transitionParams.animateChangeProgress)));
                } else {
                    height = richBlock2.getHeight();
                }
                iDp += height;
                if (i == i && richBlock2.padding.bottom > AndroidUtilities.dp(4.0f)) {
                    iDp -= richBlock2.padding.bottom - AndroidUtilities.dp(4.0f);
                }
            }
            if (i == i) {
                return iDp;
            }
            if (zIsVisible) {
                z = true;
            }
            i++;
        }
        return this.height;
    }

    private float getBlockBackgroundScale(int i, int i2) {
        float backgroundScale = 1.0f;
        while (i < Math.min(i2 + 1, this.blocks.size())) {
            RichBlock richBlock = this.blocks.get(i);
            if (richBlock.isVisible()) {
                backgroundScale *= richBlock.getBackgroundScale();
            }
            i++;
        }
        return backgroundScale;
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

    /* JADX WARN: Removed duplicated region for block: B:34:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void drawInternal(Canvas canvas, ChatMessageCell.TransitionParams transitionParams, boolean z, float f, float f2) {
        float fLerp;
        float f3;
        RichDetailsBlock richDetailsBlock;
        drawBackground(canvas, transitionParams);
        updateTranslationLoading();
        float f4 = 0.0f;
        float f5 = 1.0f;
        float fMax = (transitionParams == null || !(this.detailsAnimating || this.blockquoteAnimating)) ? 1.0f : Math.max(0.0f, Math.min(1.0f, transitionParams.animateChangeProgress));
        this.detailsAnimationProgress = fMax;
        if (fMax >= 1.0f) {
            this.detailsAnimating = false;
            this.blockquoteAnimating = false;
        }
        boolean z2 = this.detailsAnimating;
        boolean z3 = (z2 || this.blockquoteAnimating) ? false : z;
        boolean z4 = z2 && fMax < 1.0f;
        if (z4) {
            computeDetailsClips(fMax);
        }
        computeBlockquoteClips(fMax);
        int i = 0;
        while (i < this.blocks.size()) {
            RichBlock richBlock = this.blocks.get(i);
            if (richBlock.currVisible || richBlock.prevVisible) {
                float fLerp2 = AndroidUtilities.lerp(richBlock.prevY, richBlock.currY, fMax);
                boolean z5 = richBlock instanceof RichDetailsEndBlock;
                if (z5) {
                    fLerp = f5;
                } else {
                    fLerp = AndroidUtilities.lerp(richBlock.prevVisible ? f5 : f4, richBlock.currVisible ? f5 : f4, fMax);
                }
                if (fLerp <= f4) {
                    f3 = f5;
                } else {
                    int height = richBlock.getHeight();
                    if (!z3 || (height + fLerp2 > f && fLerp2 < f2)) {
                        canvas.save();
                        if (!z4 || (richDetailsBlock = richBlock.parentDetails) == null || z5) {
                            f3 = f5;
                        } else {
                            float fMax2 = -3.4028235E38f;
                            float fMin = Float.MAX_VALUE;
                            while (richDetailsBlock != null) {
                                fMax2 = Math.max(fMax2, richDetailsBlock.animClipTop);
                                fMin = Math.min(fMin, richDetailsBlock.animClipBottom);
                                richDetailsBlock = richDetailsBlock.parentDetails;
                                f5 = f5;
                            }
                            f3 = f5;
                            if (fMin <= fMax2) {
                                canvas.restore();
                            } else {
                                canvas.clipRect(-this.padLeft, fMax2, getMinWidth() + this.padRight, fMin);
                                f4 = 0.0f;
                            }
                        }
                        canvas.translate(f4, fLerp2);
                        if (fLerp < f3) {
                            int iSaveLayerAlpha = canvas.saveLayerAlpha(-this.padLeft, 0.0f, getMinWidth() + this.padRight, height, (int) (fLerp * 255.0f), 31);
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
            f5 = f3;
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

    private void computeBlockquoteClips(float f) {
        for (int i = 0; i < this.blocks.size(); i++) {
            RichBlock richBlock = this.blocks.get(i);
            if (richBlock instanceof RichTextBlockQuote) {
                RichTextBlockQuote richTextBlockQuote = (RichTextBlockQuote) richBlock;
                richTextBlockQuote.collapsedProgress = AndroidUtilities.lerp(richTextBlockQuote.prevCollapsed ? 1.0f : 0.0f, richTextBlockQuote.currentCollapsed ? 1.0f : 0.0f, f);
                richTextBlockQuote.collapsedHeightToDraw = AndroidUtilities.lerp(richTextBlockQuote.prevH, richTextBlockQuote.currH, f);
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
        setBubblePaddings(i, i2);
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
        setBubblePaddings(i, i2);
        this.textPaint.linkColor = getThemedColor(isOut() ? Theme.key_chat_messageLinkOut : Theme.key_chat_messageLinkIn);
        drawInternal(canvas, transitionParams, f2 > f, f, f2);
    }

    private void setBubblePaddings(int i, int i2) {
        if (this.padLeft == i && this.padRight == i2) {
            return;
        }
        this.padLeft = i;
        this.padRight = i2;
        for (int i3 = 0; i3 < this.blocks.size(); i3++) {
            RichBlock richBlock = this.blocks.get(i3);
            if (richBlock instanceof RichDetailsBlock) {
                ((RichDetailsBlock) richBlock).updateBubbleInsets();
            }
        }
    }

    private void drawShowMoreButton(Canvas canvas, int i) {
        ChatMessageCell.ChatMessageCellDelegate chatMessageCellDelegate;
        int themedColor = getThemedColor(isOut() ? Theme.key_chat_outPreviewInstantText : Theme.key_chat_inPreviewInstantText);
        if (this.showMoreText == null) {
            this.showMoreText = new org.telegram.ui.Components.Text(LocaleController.getString(C2807R.string.ShowMore), 16.0f, AndroidUtilities.bold());
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
        recyclerView.smoothScrollBy(0, (((this.cell.getTop() + this.cell.textY) + getBlockTop(i, null)) - recyclerView.getPaddingTop()) - AndroidUtilities.dp(8.0f));
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
        textView.setText(LocaleController.getString(C2807R.string.InstantViewReference));
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

    private static int getBlockAccessibilityLabel(TL_iv.PageBlock pageBlock) {
        if (pageBlock instanceof TL_iv.pageBlockHeading1) {
            return C2807R.string.ArticleHeading1;
        }
        if (pageBlock instanceof TL_iv.pageBlockHeading2) {
            return C2807R.string.ArticleHeading2;
        }
        if (pageBlock instanceof TL_iv.pageBlockHeading3) {
            return C2807R.string.ArticleHeading3;
        }
        if (pageBlock instanceof TL_iv.pageBlockHeading4) {
            return C2807R.string.ArticleHeading4;
        }
        if (pageBlock instanceof TL_iv.pageBlockHeading5) {
            return C2807R.string.ArticleHeading5;
        }
        if (pageBlock instanceof TL_iv.pageBlockHeading6) {
            return C2807R.string.ArticleHeading6;
        }
        if (pageBlock instanceof TL_iv.pageBlockFooter) {
            return C2807R.string.ArticleFooter;
        }
        return 0;
    }

    public CharSequence formatText(TL_iv.RichText richText) {
        return formatText(richText, 0);
    }

    public CharSequence formatText(TL_iv.RichText richText, int i) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (i == 0) {
            formatText(richText, spannableStringBuilder, 0);
        } else {
            formatTextAndSetSpan(richText, spannableStringBuilder, i, new StyleSpan(this, i));
        }
        if (richText != null && spannableStringBuilder.length() > 0) {
            spannableStringBuilder.setSpan(new QuoteRootSpan(richText, i), 0, spannableStringBuilder.length(), 33);
        }
        return spannableStringBuilder;
    }

    public static class QuoteRootSpan {
        public final int flags;
        public final TL_iv.RichText text;

        public QuoteRootSpan(TL_iv.RichText richText, int i) {
            this.text = richText;
            this.flags = i;
        }
    }

    public CharSequence formatTextRecording(TL_iv.RichText richText, int i, IdentityHashMap<TL_iv.RichText, int[]> identityHashMap) {
        IdentityHashMap<TL_iv.RichText, int[]> identityHashMap2 = this.quoteRecorder;
        this.quoteRecorder = identityHashMap;
        try {
            return formatText(richText, new SpannableStringBuilder(), i);
        } finally {
            this.quoteRecorder = identityHashMap2;
        }
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
        int length = spannableStringBuilder.length();
        formatTextNode(richText, spannableStringBuilder, i);
        IdentityHashMap<TL_iv.RichText, int[]> identityHashMap = this.quoteRecorder;
        if (identityHashMap != null && richText != null) {
            identityHashMap.put(richText, new int[]{length, spannableStringBuilder.length()});
        }
        return spannableStringBuilder;
    }

    private CharSequence formatTextNode(TL_iv.RichText richText, SpannableStringBuilder spannableStringBuilder, int i) {
        Object size;
        if (richText instanceof TL_iv.textEmpty) {
            return spannableStringBuilder;
        }
        if (richText instanceof TL_iv.textPlain) {
            spannableStringBuilder.append(((TL_iv.textPlain) richText).text);
            return spannableStringBuilder;
        }
        if (richText instanceof TL_iv.textDiff) {
            TL_iv.textDiff textdiff = (TL_iv.textDiff) richText;
            boolean zIsEmpty = RichTextStyle.isEmpty(textdiff.text);
            boolean zIsEmpty2 = RichTextStyle.isEmpty(textdiff.old_text);
            if (zIsEmpty && !zIsEmpty2) {
                formatTextAndSetSpan(textdiff.old_text, spannableStringBuilder, i, new TextStyleSpan(getTextStyleRun(8192)));
                return spannableStringBuilder;
            }
            if (!zIsEmpty && zIsEmpty2) {
                formatTextAndSetSpan(textdiff.text, spannableStringBuilder, i, new TextStyleSpan(getTextStyleRun(4096)));
                return spannableStringBuilder;
            }
            if (!zIsEmpty) {
                formatTextAndSetSpan(textdiff.text, spannableStringBuilder, i, new SquigglyLinesSpan());
                return spannableStringBuilder;
            }
        } else {
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
                formatTextAndSetSpan(richText.text, spannableStringBuilder, i, new URLSpanReplacement(((TL_iv.textUrl) richText).url, getTextStyleRun(1024)));
                return spannableStringBuilder;
            }
            if (richText instanceof TL_iv.textEmail) {
                TL_iv.textEmail textemail = (TL_iv.textEmail) richText;
                formatTextAndSetSpan(richText.text, spannableStringBuilder, i, new URLSpanReplacement("mailto:" + textemail.email, getTextStyleRun(1024)));
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
                        Latex latexRender = Latex.render(textmath.source, AndroidUtilities.dp(this.fontSize + 4), true);
                        if (latexRender != null) {
                            textmath.f1055w = latexRender.width;
                            textmath.f1054h = latexRender.height;
                            textmath.depth = latexRender.depth;
                            textmath.bitmap = latexRender.bitmap;
                        }
                    }
                    if (textmath.bitmap == null) {
                        String str3 = textmath.source;
                        return str3 == null ? _UrlKt.FRAGMENT_ENCODE_SET : str3;
                    }
                    int length = spannableStringBuilder.length();
                    spannableStringBuilder.append(" ");
                    int length2 = spannableStringBuilder.length();
                    spannableStringBuilder.setSpan(new TextPaintImageReceiverSpan(null, textmath.bitmap, textmath.f1055w, textmath.f1054h, Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider), textmath.depth), length, length2, 33);
                    String str4 = textmath.source;
                    if (str4 != null && !str4.isEmpty()) {
                        spannableStringBuilder.setSpan(new TextSelectionHelper.ReplaceCopyTextSpannable(textmath.source), length, length2, 33);
                        return spannableStringBuilder;
                    }
                } else {
                    if (richText instanceof TL_iv.textCustomEmoji) {
                        TL_iv.textCustomEmoji textcustomemoji = (TL_iv.textCustomEmoji) richText;
                        CharSequence charSequence = TextUtils.isEmpty(textcustomemoji.alt) ? "😀" : textcustomemoji.alt;
                        int length3 = spannableStringBuilder.length();
                        spannableStringBuilder.append(charSequence);
                        int length4 = spannableStringBuilder.length();
                        boolean zHasFlag = BitwiseUtils.hasFlag(i, 13);
                        int i11 = i & 15;
                        if (i11 >= 1 && i11 <= 6) {
                            TextPaint textPaint = new TextPaint(this.textPaint);
                            new StyleSpan(this, i, true).applyStyle(textPaint);
                            size = new AnimatedEmojiSpan(textcustomemoji.document_id, 0.85f, textPaint.getFontMetricsInt());
                        } else {
                            size = new AnimatedEmojiSpan(textcustomemoji.document_id, zHasFlag ? 1.0f : 1.2f, (Paint.FontMetricsInt) null).setSize(AndroidUtilities.dp(this.fontSize + 4 + (zHasFlag ? -2 : 4)));
                        }
                        spannableStringBuilder.setSpan(size, length3, length4, 33);
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
                    if (richText instanceof TL_iv.textTonAddress) {
                        String string3 = getString(richText);
                        formatTextAndSetSpan(richText.text, spannableStringBuilder, i, new URLSpanNoUnderline("tonaddress:" + string3));
                        return spannableStringBuilder;
                    }
                    if (richText instanceof TL_iv.textBankCard) {
                        String string4 = getString(richText);
                        formatTextAndSetSpan(richText.text, spannableStringBuilder, i, new URLSpanNoUnderline("card:" + string4));
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
                        int i12 = i | 512;
                        formatTextAndSetSpan(richText.text, spannableStringBuilder, i12, new StyleSpan(this, i12), new FormattedDateSpan(getString(richText), null, tL_messageEntityFormattedDate));
                        return spannableStringBuilder;
                    }
                    if (!(richText instanceof TL_iv.textButton)) {
                        return spannableStringBuilder;
                    }
                    int length5 = spannableStringBuilder.length();
                    spannableStringBuilder.append("*");
                    RichButtonSpan richButtonSpan = new RichButtonSpan(this, this.maxWidth, (TL_iv.textButton) richText);
                    richButtonSpan.scale = 1.2f;
                    spannableStringBuilder.setSpan(richButtonSpan, length5, spannableStringBuilder.length(), 33);
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
        if (richText instanceof TL_iv.textDiff) {
            TL_iv.textDiff textdiff = (TL_iv.textDiff) richText;
            if (!RichTextStyle.isEmpty(textdiff.text)) {
                getString(textdiff.text, sb);
                return;
            } else {
                if (RichTextStyle.isEmpty(textdiff.old_text)) {
                    return;
                }
                getString(textdiff.old_text, sb);
                return;
            }
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
        private boolean fullSizeTableEmoji;
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
            if (i != 14 || !this.fullSizeTableEmoji) {
                switch (i) {
                }
                return AndroidUtilities.dp(i2);
            }
            return AndroidUtilities.dp(i2);
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
        private static final int EMOJI_LINE_HEIGHT_MIN_PERCENT = 70;
        private static Paint markPaint;
        public AnimatedEmojiSpan.EmojiGroupedSpans animatedEmojiStack;
        public int blockX;
        public int blockY;
        public boolean doNotInvalidateEmojiInParent;
        private boolean drawAtOrigin;
        private int emojiOnlyCount;
        public int lastLineRight;
        public final StaticLayout layout;
        public int left;
        public LinkSpanDrawable.LinkCollector linkCollector;
        private boolean longPressFired;
        private Runnable longPressRunnable;
        public LinkPath markPath;
        private RichButtonSpan pressedButtonSpan;
        private AnimatedEmojiSpan pressedEmoji;
        private CharacterStyle pressedLink;
        private LinkSpanDrawable<CharacterStyle> pressedLinkDrawable;
        private int pressedLinkEnd;
        private int pressedLinkStart;
        private SpoilerEffect pressedSpoiler;
        public int right;
        public final RichMessageLayout root;
        public int row;
        private final RectF soleButtonHitBounds;
        public final List<SpoilerEffect> spoilers;
        public final AtomicReference<Layout> spoilersPatchedTextLayout;
        public final Stack<SpoilerEffect> spoilersPool;
        private LoadingDrawable translationLoadingDrawable;
        private LinkPath translationLoadingPath;
        public View view;

        /* JADX INFO: renamed from: x */
        public int f979x;

        /* JADX INFO: renamed from: y */
        public int f980y;

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
            return (this.pressedLink == null && this.pressedButtonSpan == null) ? false : true;
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
            this(richMessageLayout, charSequence, i, alignment, 1.0f);
        }

        public Text(RichMessageLayout richMessageLayout, CharSequence charSequence, int i, Layout.Alignment alignment, float f) {
            boolean z;
            int iDp;
            int iDp2;
            this.spoilers = new ArrayList();
            this.spoilersPool = new Stack<>();
            this.spoilersPatchedTextLayout = new AtomicReference<>();
            this.soleButtonHitBounds = new RectF();
            this.root = richMessageLayout;
            Paint.FontMetricsInt fontMetricsInt = richMessageLayout.textPaint.getFontMetricsInt();
            if (charSequence instanceof Spanned) {
                for (StyleSpan styleSpan : (StyleSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), StyleSpan.class)) {
                    int i2 = styleSpan.flags & 15;
                    if (i2 >= 1 && i2 <= 6) {
                        TextPaint textPaint = new TextPaint(richMessageLayout.textPaint);
                        styleSpan.applyStyle(textPaint);
                        fontMetricsInt = textPaint.getFontMetricsInt();
                        z = true;
                        break;
                    }
                }
                z = false;
            } else {
                z = false;
            }
            CharSequence charSequenceConfigureEmojiLineHeights = configureEmojiLineHeights(Emoji.replaceEmoji(charSequence, fontMetricsInt, false, z ? 0.85f : 1.0f), richMessageLayout.textPaint);
            int iEmojiOnlyCount = RichTextStyle.emojiOnlyCount(charSequenceConfigureEmojiLineHeights);
            this.emojiOnlyCount = iEmojiOnlyCount;
            if (iEmojiOnlyCount == 0 && (charSequenceConfigureEmojiLineHeights instanceof Spanned)) {
                final Spanned spanned = (Spanned) charSequenceConfigureEmojiLineHeights;
                RichButtonSpan[] richButtonSpanArr = (RichButtonSpan[]) spanned.getSpans(0, charSequenceConfigureEmojiLineHeights.length(), RichButtonSpan.class);
                if (richButtonSpanArr.length > 0) {
                    Arrays.sort(richButtonSpanArr, new Comparator() { // from class: org.telegram.messenger.RichMessageLayout$Text$$ExternalSyntheticLambda3
                        @Override // java.util.Comparator
                        public final int compare(Object obj, Object obj2) {
                            return RichMessageLayout.Text.$r8$lambda$8kZ87wDke8KEzxFP1RMnCjBCZ3k(spanned, (RichMessageLayout.RichButtonSpan) obj, (RichMessageLayout.RichButtonSpan) obj2);
                        }
                    });
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequenceConfigureEmojiLineHeights);
                    int length = richButtonSpanArr.length;
                    int i3 = 0;
                    while (true) {
                        if (i3 < length) {
                            RichButtonSpan richButtonSpan = richButtonSpanArr[i3];
                            int spanStart = spanned.getSpanStart(richButtonSpan);
                            int spanEnd = spanned.getSpanEnd(richButtonSpan);
                            if (spanStart < 0 || spanEnd <= spanStart || richButtonSpan.getButton().text.getEmojiOnlyCount() == 0) {
                                break;
                            }
                            spannableStringBuilder.replace(spanStart, spanEnd, richButtonSpan.getButton().text.layout.getText());
                            i3++;
                        } else {
                            this.emojiOnlyCount = RichTextStyle.emojiOnlyCount(spannableStringBuilder);
                            break;
                        }
                    }
                }
            }
            if (this.emojiOnlyCount > 0 && (charSequenceConfigureEmojiLineHeights instanceof Spanned)) {
                for (StyleSpan styleSpan2 : (StyleSpan[]) ((Spanned) charSequenceConfigureEmojiLineHeights).getSpans(0, charSequenceConfigureEmojiLineHeights.length(), StyleSpan.class)) {
                    if ((styleSpan2.flags & 15) == 14) {
                        styleSpan2.fullSizeTableEmoji = true;
                    }
                }
            }
            if (charSequenceConfigureEmojiLineHeights instanceof Spanned) {
                StyleSpan[] styleSpanArr = (StyleSpan[]) ((Spanned) charSequenceConfigureEmojiLineHeights).getSpans(0, charSequenceConfigureEmojiLineHeights.length(), StyleSpan.class);
                int length2 = styleSpanArr.length;
                for (int i4 = 0; i4 < length2 && (styleSpanArr[i4].flags & 15) == 0; i4++) {
                }
            }
            this.layout = MessageObject.makeStaticLayout(charSequenceConfigureEmojiLineHeights, richMessageLayout.textPaint, i, f, 0.0f, false, alignment);
            this.left = i;
            this.right = 0;
            for (int i5 = 0; i5 < this.layout.getLineCount(); i5++) {
                this.left = Math.min(this.left, (int) Math.floor(this.layout.getLineLeft(i5)));
                this.right = Math.max(this.right, (int) Math.ceil(this.layout.getLineRight(i5)));
            }
            this.lastLineRight = 0;
            if (this.layout.getLineCount() > 0) {
                StaticLayout staticLayout = this.layout;
                this.lastLineRight = (int) Math.ceil(staticLayout.getLineRight(staticLayout.getLineCount() - 1));
            }
            LinkPath linkPath = null;
            SpoilerEffect.addSpoilers((View) null, this.layout, this.spoilersPool, this.spoilers);
            if (this.layout.getText() instanceof Spanned) {
                Spanned spanned2 = (Spanned) this.layout.getText();
                for (StyleSpan styleSpan3 : (StyleSpan[]) spanned2.getSpans(0, spanned2.length(), StyleSpan.class)) {
                    if (TLObject.hasFlag(styleSpan3.flags, 8192)) {
                        int spanStart2 = spanned2.getSpanStart(styleSpan3);
                        int spanEnd2 = spanned2.getSpanEnd(styleSpan3);
                        if (spanStart2 >= 0 && spanEnd2 > spanStart2) {
                            if (linkPath == null) {
                                linkPath = new LinkPath(true);
                                linkPath.setAllowReset(false);
                            }
                            linkPath.setCurrentLayout(this.layout, spanStart2, 0.0f);
                            if (TLObject.hasFlag(styleSpan3.flags, 4096)) {
                                iDp = -AndroidUtilities.dp(6.0f);
                            } else {
                                iDp = TLObject.hasFlag(styleSpan3.flags, 2048) ? AndroidUtilities.dp(2.0f) : 0;
                            }
                            if (iDp != 0) {
                                iDp2 = iDp + AndroidUtilities.dp(iDp > 0 ? 5.0f : -2.0f);
                            } else {
                                iDp2 = 0;
                            }
                            linkPath.setBaselineShift(iDp2);
                            this.layout.getSelectionPath(spanStart2, spanEnd2, linkPath);
                        }
                    }
                }
                if (linkPath != null) {
                    linkPath.setAllowReset(true);
                    this.markPath = linkPath;
                }
            }
        }

        public static /* synthetic */ int $r8$lambda$8kZ87wDke8KEzxFP1RMnCjBCZ3k(Spanned spanned, RichButtonSpan richButtonSpan, RichButtonSpan richButtonSpan2) {
            return spanned.getSpanStart(richButtonSpan2) - spanned.getSpanStart(richButtonSpan);
        }

        private static CharSequence configureEmojiLineHeights(CharSequence charSequence, TextPaint textPaint) {
            if (!(charSequence instanceof Spanned)) {
                return charSequence;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
            for (AnimatedEmojiSpan animatedEmojiSpan : (AnimatedEmojiSpan[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), AnimatedEmojiSpan.class)) {
                animatedEmojiSpan.setPreserveFontMetrics(true);
            }
            for (Emoji.EmojiSpan emojiSpan : (Emoji.EmojiSpan[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), Emoji.EmojiSpan.class)) {
                emojiSpan.setPreserveFontMetrics(true);
            }
            for (RichButtonSpan richButtonSpan : (RichButtonSpan[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), RichButtonSpan.class)) {
                if (richButtonSpan.getButton().text.getEmojiOnlyCount() > 0) {
                    richButtonSpan.preserveFontMetrics = true;
                }
            }
            int i = 0;
            while (i < spannableStringBuilder.length()) {
                int iIndexOf = TextUtils.indexOf((CharSequence) spannableStringBuilder, '\n', i);
                boolean z = iIndexOf >= 0;
                if (!z) {
                    iIndexOf = spannableStringBuilder.length();
                }
                EmojiLineMetrics emojiLineMetricsMeasureEmojiLine = measureEmojiLine(spannableStringBuilder, i, iIndexOf, textPaint);
                if (emojiLineMetricsMeasureEmojiLine.allowsEmojiLineHeight() && emojiLineMetricsMeasureEmojiLine.emojiSide > 0) {
                    allowEmojiLineHeight(spannableStringBuilder, i, iIndexOf, emojiLineMetricsMeasureEmojiLine.emojiSide);
                }
                if (!z) {
                    break;
                }
                i = iIndexOf + 1;
            }
            return spannableStringBuilder;
        }

        private static void allowEmojiLineHeight(Spanned spanned, int i, int i2, int i3) {
            for (AnimatedEmojiSpan animatedEmojiSpan : (AnimatedEmojiSpan[]) spanned.getSpans(i, i2, AnimatedEmojiSpan.class)) {
                int spanStart = spanned.getSpanStart(animatedEmojiSpan);
                if (spanStart >= i && spanStart < i2) {
                    animatedEmojiSpan.setMinimumLineHeight(i3);
                }
            }
            for (Emoji.EmojiSpan emojiSpan : (Emoji.EmojiSpan[]) spanned.getSpans(i, i2, Emoji.EmojiSpan.class)) {
                int spanStart2 = spanned.getSpanStart(emojiSpan);
                if (spanStart2 >= i && spanStart2 < i2) {
                    emojiSpan.setMinimumLineHeight(i3);
                }
            }
            for (RichButtonSpan richButtonSpan : (RichButtonSpan[]) spanned.getSpans(i, i2, RichButtonSpan.class)) {
                int spanStart3 = spanned.getSpanStart(richButtonSpan);
                if (richButtonSpan.button.text.getEmojiOnlyCount() > 0 && spanStart3 >= i && spanStart3 < i2) {
                    richButtonSpan.minimumLineHeight = i3;
                }
            }
        }

        private static EmojiLineMetrics measureEmojiLine(Spanned spanned, int i, int i2, TextPaint textPaint) {
            RichButtonSpan[] richButtonSpanArr;
            int i3;
            EmojiLineMetrics emojiLineMetrics = new EmojiLineMetrics();
            int i4 = i2 - i;
            if (i4 > 0) {
                AnimatedEmojiSpan[] animatedEmojiSpanArr = (AnimatedEmojiSpan[]) spanned.getSpans(i, i2, AnimatedEmojiSpan.class);
                Emoji.EmojiSpan[] emojiSpanArr = (Emoji.EmojiSpan[]) spanned.getSpans(i, i2, Emoji.EmojiSpan.class);
                int[] iArr = (animatedEmojiSpanArr.length == 0 && emojiSpanArr.length == 0) ? null : new int[i4];
                int length = animatedEmojiSpanArr.length;
                int i5 = 0;
                while (i5 < length) {
                    int i6 = i5;
                    AnimatedEmojiSpan animatedEmojiSpan = animatedEmojiSpanArr[i6];
                    int spanStart = spanned.getSpanStart(animatedEmojiSpan);
                    int iMin = Math.min(i2, spanned.getSpanEnd(animatedEmojiSpan));
                    if (spanStart < i || spanStart >= i2 || iMin <= spanStart) {
                        i3 = i6;
                    } else {
                        int i7 = spanStart - i;
                        iArr[i7] = Math.max(iArr[i7], iMin);
                        i3 = i6;
                        emojiLineMetrics.emojiSide = Math.max(emojiLineMetrics.emojiSide, animatedEmojiSpan.getSize(textPaint, spanned, spanStart, iMin, null) + 1);
                    }
                    i5 = i3 + 1;
                }
                for (Emoji.EmojiSpan emojiSpan : emojiSpanArr) {
                    int spanStart2 = spanned.getSpanStart(emojiSpan);
                    int iMin2 = Math.min(i2, spanned.getSpanEnd(emojiSpan));
                    if (spanStart2 >= i && spanStart2 < i2 && iMin2 > spanStart2) {
                        int i8 = spanStart2 - i;
                        iArr[i8] = Math.max(iArr[i8], iMin2);
                        emojiLineMetrics.emojiSide = Math.max(emojiLineMetrics.emojiSide, emojiSpan.getSize(textPaint, spanned, spanStart2, iMin2, null));
                    }
                }
                RichButtonSpan[] richButtonSpanArr2 = (RichButtonSpan[]) spanned.getSpans(i, i2, RichButtonSpan.class);
                if (richButtonSpanArr2.length > 0) {
                    richButtonSpanArr = null;
                    for (RichButtonSpan richButtonSpan : richButtonSpanArr2) {
                        int spanStart3 = spanned.getSpanStart(richButtonSpan);
                        if (richButtonSpan.button.text.getEmojiOnlyCount() > 0 && spanStart3 >= i && spanStart3 < i2) {
                            if (richButtonSpanArr == null) {
                                richButtonSpanArr = new RichButtonSpan[i4];
                            }
                            richButtonSpanArr[spanStart3 - i] = richButtonSpan;
                        }
                    }
                } else {
                    richButtonSpanArr = null;
                }
                if (iArr != null || richButtonSpanArr != null) {
                    int iCharCount = i;
                    while (iCharCount < i2) {
                        int i9 = iCharCount - i;
                        RichButtonSpan richButtonSpan2 = richButtonSpanArr == null ? null : richButtonSpanArr[i9];
                        if (richButtonSpan2 != null && (richButtonSpan2.button.text.layout.getText() instanceof Spanned)) {
                            Spanned spanned2 = (Spanned) richButtonSpan2.button.text.layout.getText();
                            EmojiLineMetrics emojiLineMetricsMeasureEmojiLine = measureEmojiLine(spanned2, 0, spanned2.length(), richButtonSpan2.button.text.layout.getPaint());
                            emojiLineMetrics.emojiCount += emojiLineMetricsMeasureEmojiLine.emojiCount;
                            emojiLineMetrics.contentCount += Math.max(1, emojiLineMetricsMeasureEmojiLine.contentCount);
                            emojiLineMetrics.emojiSide = Math.max(emojiLineMetrics.emojiSide, emojiLineMetricsMeasureEmojiLine.emojiSide);
                            iCharCount = Math.min(i2, spanned.getSpanEnd(richButtonSpan2));
                        } else {
                            int i10 = iArr == null ? 0 : iArr[i9];
                            if (i10 > iCharCount) {
                                emojiLineMetrics.emojiCount++;
                                emojiLineMetrics.contentCount++;
                                iCharCount = i10;
                            } else {
                                int iCodePointAt = Character.codePointAt(spanned, iCharCount);
                                if (!Character.isWhitespace(iCodePointAt)) {
                                    emojiLineMetrics.contentCount++;
                                }
                                iCharCount += Character.charCount(iCodePointAt);
                            }
                        }
                    }
                }
            }
            return emojiLineMetrics;
        }

        public static class EmojiLineMetrics {
            private int contentCount;
            private int emojiCount;
            private int emojiSide;

            private EmojiLineMetrics() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean allowsEmojiLineHeight() {
                int i = this.contentCount;
                return i > 0 && ((long) this.emojiCount) * 100 >= ((long) i) * 70;
            }
        }

        private RichButtonSpan[] getButtonSpans() {
            if (!(this.layout.getText() instanceof Spanned)) {
                return null;
            }
            Spanned spanned = (Spanned) this.layout.getText();
            return (RichButtonSpan[]) spanned.getSpans(0, spanned.length(), RichButtonSpan.class);
        }

        public void setDrawAtOrigin(boolean z) {
            this.drawAtOrigin = z;
        }

        @Override // org.telegram.ui.Components.TableLayout.CellText
        public int getEmojiOnlyCount() {
            return this.emojiOnlyCount;
        }

        public int drawLeft() {
            if (this.drawAtOrigin) {
                return 0;
            }
            return this.left;
        }

        public int getBaseline() {
            StaticLayout staticLayout = this.layout;
            if (staticLayout == null || staticLayout.getLineCount() <= 0) {
                return -1;
            }
            return this.layout.getLineBaseline(0);
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
            SquigglyLinesSpan.drawOnText(canvas, this.layout);
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
            MultiLayoutTypingAnimator.drawLayoutWithLastLineFade(canvas, this.layout, i, f, new MultiLayoutTypingAnimator.Renderer() { // from class: org.telegram.messenger.RichMessageLayout$Text$$ExternalSyntheticLambda1
                @Override // org.telegram.ui.MultiLayoutTypingAnimator.Renderer
                public final void draw(Canvas canvas2) {
                    this.f$0.lambda$drawFade$1(view, themedColor, canvas2);
                }
            });
            canvas.restore();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$drawFade$1(View view, int i, Canvas canvas) {
            SpoilerEffect.renderWithRipple(view, false, i, 0, this.spoilersPatchedTextLayout, 0, this.layout, this.spoilers, canvas, false);
            SquigglyLinesSpan.drawOnText(canvas, this.layout);
            AnimatedEmojiSpan.drawAnimatedEmojis(canvas, this.layout, this.animatedEmojiStack, 0.0f, this.spoilers, 0.0f, 0.0f, 0.0f, 1.0f);
        }

        private RichButtonSpan getSoleButtonSpan() {
            if (!(this.layout.getText() instanceof Spanned)) {
                return null;
            }
            Spanned spanned = (Spanned) this.layout.getText();
            RichButtonSpan[] richButtonSpanArr = (RichButtonSpan[]) spanned.getSpans(0, spanned.length(), RichButtonSpan.class);
            if (richButtonSpanArr.length != 1) {
                return null;
            }
            int spanStart = spanned.getSpanStart(richButtonSpanArr[0]);
            int spanEnd = spanned.getSpanEnd(richButtonSpanArr[0]);
            for (int i = 0; i < spanned.length(); i++) {
                if ((i < spanStart || i >= spanEnd) && !Character.isWhitespace(spanned.charAt(i))) {
                    return null;
                }
            }
            return richButtonSpanArr[0];
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSoleButtonHitBounds(float f, float f2, float f3, float f4) {
            this.soleButtonHitBounds.set(f, f2, f3, f4);
        }

        private boolean buttonContains(RichButtonSpan richButtonSpan, float f, float f2) {
            if (richButtonSpan.contains(f, f2, AndroidUtilities.dp(8.0f))) {
                return true;
            }
            return richButtonSpan == getSoleButtonSpan() && this.soleButtonHitBounds.contains(f, f2);
        }

        /* JADX WARN: Removed duplicated region for block: B:57:0x0132  */
        /* JADX WARN: Removed duplicated region for block: B:95:0x01d7  */
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
                if (actionMasked == 2) {
                    RichButtonSpan richButtonSpan = this.pressedButtonSpan;
                    if (richButtonSpan == null) {
                        return false;
                    }
                    if (!buttonContains(richButtonSpan, x, y)) {
                        cancelLongPress();
                        this.pressedButtonSpan.setPressed(false);
                        this.pressedButtonSpan = null;
                        this.longPressFired = false;
                    }
                    return true;
                }
                if (actionMasked != 1) {
                    if (actionMasked == 3) {
                        this.pressedSpoiler = null;
                        this.pressedEmoji = null;
                        if (this.pressedButtonSpan != null) {
                            cancelLongPress();
                            this.pressedButtonSpan.setPressed(false);
                            this.pressedButtonSpan = null;
                            this.longPressFired = false;
                        }
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
                if (this.pressedButtonSpan != null) {
                    cancelLongPress();
                    RichButtonSpan richButtonSpan2 = this.pressedButtonSpan;
                    this.pressedButtonSpan = null;
                    richButtonSpan2.setPressed(false);
                    if (!this.longPressFired) {
                        View view = this.view;
                        if (view != null) {
                            view.playSoundEffect(0);
                        }
                        richButtonSpan2.didPress(this.root.getCell(), this.root.getDelegate(), false);
                    }
                    this.longPressFired = false;
                    return true;
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
                View view2 = this.view;
                if (view2 != null) {
                    view2.playSoundEffect(0);
                }
                delegate.didPressAnimatedEmoji(cell, animatedEmojiSpan);
                return true;
            }
            this.pressedSpoiler = null;
            this.pressedLink = null;
            this.pressedEmoji = null;
            this.pressedButtonSpan = null;
            for (SpoilerEffect spoilerEffect : this.spoilers) {
                if (spoilerEffect.getBounds().contains(x, y)) {
                    this.pressedSpoiler = spoilerEffect;
                    return true;
                }
            }
            RichButtonSpan[] buttonSpans = getButtonSpans();
            if (buttonSpans != null) {
                for (RichButtonSpan richButtonSpan3 : buttonSpans) {
                    if (buttonContains(richButtonSpan3, x, y)) {
                        if (richButtonSpan3.isDisabled()) {
                            return true;
                        }
                        this.pressedButtonSpan = richButtonSpan3;
                        this.longPressFired = false;
                        richButtonSpan3.setPressed(true);
                        View view3 = this.view;
                        if (view3 != null) {
                            view3.invalidate();
                        }
                        scheduleLongPress();
                        return true;
                    }
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
                        View view4 = this.view;
                        if (view4 != null) {
                            view4.invalidate();
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
                                    z = z2;
                                    if (i4 >= length2) {
                                        styleSpan3 = null;
                                        break;
                                    }
                                    styleSpan3 = styleSpanArr2[i4];
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
                            View view5 = this.view;
                            if (view5 != null) {
                                view5.invalidate();
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
            Runnable runnable = new Runnable() { // from class: org.telegram.messenger.RichMessageLayout$Text$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$scheduleLongPress$2();
                }
            };
            this.longPressRunnable = runnable;
            AndroidUtilities.runOnUIThread(runnable, ViewConfiguration.getLongPressTimeout());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$scheduleLongPress$2() {
            this.longPressRunnable = null;
            if (this.pressedButtonSpan != null) {
                this.longPressFired = true;
                View view = this.view;
                if (view != null) {
                    try {
                        view.performHapticFeedback(0);
                    } catch (Exception unused) {
                    }
                }
                this.pressedButtonSpan.didPress(this.root.getCell(), this.root.getDelegate(), true);
                return;
            }
            if (this.pressedLink == null) {
                return;
            }
            this.longPressFired = true;
            View view2 = this.view;
            if (view2 != null) {
                try {
                    view2.performHapticFeedback(0);
                } catch (Exception unused2) {
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
            String url;
            CharacterStyle uRLSpanMono;
            View view;
            if (characterStyle == null) {
                return;
            }
            if (z || !(characterStyle instanceof URLSpan)) {
                url = null;
            } else {
                url = ((URLSpan) characterStyle).getURL();
                if (url != null && url.startsWith("#") && this.root.handleAnchorClick(url)) {
                    View view2 = this.view;
                    if (view2 != null) {
                        view2.playSoundEffect(0);
                        return;
                    }
                    return;
                }
            }
            if (url != null && !url.startsWith("#") && this.root.onLinkPress != null) {
                View view3 = this.view;
                if (view3 != null) {
                    view3.playSoundEffect(0);
                }
                this.root.onLinkPress.run((URLSpan) characterStyle);
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
                View view4 = this.view;
                if (view4 != null && !z) {
                    view4.playSoundEffect(0);
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
            this.pressedSpoiler.setOnRippleEndCallback(new Runnable() { // from class: org.telegram.messenger.RichMessageLayout$Text$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$revealSpoilers$4(view, richMessageLayout);
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
        public /* synthetic */ void lambda$revealSpoilers$4(final View view, final RichMessageLayout richMessageLayout) {
            if (view == null) {
                return;
            }
            view.post(new Runnable() { // from class: org.telegram.messenger.RichMessageLayout$Text$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$revealSpoilers$3(richMessageLayout, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$revealSpoilers$3(RichMessageLayout richMessageLayout, View view) {
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
            this.animatedEmojiStack = AnimatedEmojiSpan.update(0, this.view, this.root.invalidateAnimatedEmojiInParent && !this.doNotInvalidateEmojiInParent, this.animatedEmojiStack, this.layout);
            LinkSpanDrawable.LinkCollector linkCollector = this.linkCollector;
            if (linkCollector != null) {
                linkCollector.setParent(this.view);
            }
            RichButtonSpan[] buttonSpans = getButtonSpans();
            if (buttonSpans != null) {
                for (RichButtonSpan richButtonSpan : buttonSpans) {
                    richButtonSpan.attach(this.view);
                }
            }
        }

        public void onDetachedFromWindow() {
            AnimatedEmojiSpan.release(this.view, this.animatedEmojiStack);
            this.animatedEmojiStack = null;
            LinkSpanDrawable.LinkCollector linkCollector = this.linkCollector;
            if (linkCollector != null) {
                linkCollector.setParent(null);
            }
            RichButtonSpan[] buttonSpans = getButtonSpans();
            if (buttonSpans != null) {
                for (RichButtonSpan richButtonSpan : buttonSpans) {
                    richButtonSpan.detach(this.view);
                }
            }
        }

        public void refreshAnimatedEmoji(int i) {
            View view = this.view;
            if (view == null) {
                return;
            }
            AnimatedEmojiSpan.release(view, this.animatedEmojiStack);
            this.animatedEmojiStack = null;
            this.animatedEmojiStack = AnimatedEmojiSpan.update(i, this.view, this.root.invalidateAnimatedEmojiInParent && !this.doNotInvalidateEmojiInParent, (AnimatedEmojiSpan.EmojiGroupedSpans) null, this.layout);
        }

        public void setBlockX(int i) {
            this.blockX = i;
        }

        public void setBlockY(int i) {
            this.blockY = i;
        }

        @Override // org.telegram.ui.Components.TableLayout.CellText
        public void setX(int i) {
            this.f979x = i;
        }

        @Override // org.telegram.ui.Components.TableLayout.CellText
        public void setY(int i) {
            this.f980y = i;
        }

        @Override // org.telegram.ui.Components.TableLayout.CellText
        public void setRow(int i) {
            this.row = i;
        }

        public Text offset(int i, int i2) {
            this.f979x += i;
            this.f980y += i2;
            return this;
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
        public Layout getLayout() {
            return this.layout;
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
        public int getX() {
            return this.blockX + this.f979x;
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
        public int getY() {
            return this.blockY + this.f980y;
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
        protected int contentPaddingBottom;
        protected int contentPaddingTop;
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

        public void setContentPadding(int i, int i2) {
            this.contentPaddingTop = i;
            this.contentPaddingBottom = i2;
            updateListMarkerY();
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getContentPaddingTop() {
            return this.contentPaddingTop;
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
            canvas.save();
            canvas.translate(0.0f, this.contentPaddingTop);
            int iRtlOffset = rtlOffset();
            Text text = this.text;
            if (iRtlOffset != 0) {
                text.setX((this.padding.left + iRtlOffset) - text.left);
                canvas.save();
                canvas.translate(iRtlOffset, 0.0f);
                this.text.draw(canvas);
                canvas.restore();
            } else {
                text.draw(canvas);
            }
            canvas.restore();
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDrawFaded(Canvas canvas, int i, float f) {
            canvas.save();
            canvas.translate(0.0f, this.contentPaddingTop);
            int iRtlOffset = rtlOffset();
            Text text = this.text;
            if (iRtlOffset != 0) {
                text.setX((this.padding.left + iRtlOffset) - text.left);
                canvas.save();
                canvas.translate(iRtlOffset, 0.0f);
                this.text.drawFade(canvas, i, f);
                canvas.restore();
            } else {
                text.drawFade(canvas, i, f);
            }
            canvas.restore();
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock, org.telegram.ui.MultiLayoutTypingAnimator.Block
        public Layout getLayout() {
            return this.text.layout;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int iRtlOffset = rtlOffset();
            motionEvent.offsetLocation(-iRtlOffset, -this.contentPaddingTop);
            boolean zOnTouchEvent = this.text.onTouchEvent(motionEvent);
            motionEvent.offsetLocation(iRtlOffset, this.contentPaddingTop);
            return zOnTouchEvent;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean findLink(CharacterStyle characterStyle, int i, FoundLink foundLink) {
            if (!this.text.fillFoundLink(characterStyle, foundLink)) {
                return false;
            }
            foundLink.f971x = (this.padding.left + rtlOffset()) - this.text.left;
            foundLink.f972y = i + this.padding.top + this.contentPaddingTop;
            return true;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getHeight() {
            return this.padding.top + this.contentPaddingTop + this.text.getHeight() + this.contentPaddingBottom + this.padding.bottom;
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
            super.placeTexts(i, i2 + this.contentPaddingTop, i3);
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

    public static class RichTextWithAuthorBlock extends RichBlock {
        public final Text author;
        private final boolean centered;
        public final Text text;
        private final Text[] texts;

        public RichTextWithAuthorBlock(RichMessageLayout richMessageLayout, Rect rect, int i, CharSequence charSequence, CharSequence charSequence2, Layout.Alignment alignment) {
            super(richMessageLayout, rect, i);
            this.centered = alignment == Layout.Alignment.ALIGN_CENTER;
            Text text = new Text(richMessageLayout, charSequence, this.maxWidth, alignment);
            this.text = text;
            Text text2 = !TextUtils.isEmpty(charSequence2) ? new Text(richMessageLayout, charSequence2, this.maxWidth, alignment) : null;
            this.author = text2;
            this.texts = text2 == null ? new Text[]{text} : new Text[]{text, text2};
        }

        private int gap() {
            if (this.author != null) {
                return AndroidUtilities.dp(2.0f);
            }
            return 0;
        }

        private int offset(Text text) {
            int minWidth;
            int minWidth2;
            boolean z = this.centered;
            RichMessageLayout richMessageLayout = this.root;
            if (z) {
                int minWidth3 = richMessageLayout.getMinWidth();
                RichMessageLayout richMessageLayout2 = this.root;
                minWidth = (((minWidth3 + richMessageLayout2.padRight) - richMessageLayout2.padLeft) - text.getMinWidth()) / 2;
                minWidth2 = this.padding.left;
            } else {
                if (!richMessageLayout.isRtl()) {
                    return 0;
                }
                int minWidth4 = (this.root.getMinWidth() + this.root.padRight) - AndroidUtilities.dp(14.0f);
                Rect rect = this.padding;
                minWidth = (minWidth4 - rect.right) - rect.left;
                minWidth2 = text.getMinWidth();
            }
            return minWidth - minWidth2;
        }

        public int getTextWidth() {
            int minWidth = this.text.getMinWidth();
            Text text = this.author;
            return Math.max(minWidth, text != null ? text.getMinWidth() : 0);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void appendAccessibilityText(SpannableStringBuilder spannableStringBuilder) {
            RichBlock.appendText(spannableStringBuilder, null, this.texts);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getHeight() {
            int height = this.padding.top + this.text.getHeight() + gap();
            Text text = this.author;
            return height + (text != null ? text.getHeight() : 0) + this.padding.bottom;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getMinWidth() {
            return this.padding.left + getTextWidth() + this.padding.right;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getLastLineWidth() {
            Text text = this.author;
            if (text == null) {
                text = this.text;
            }
            return this.padding.left + text.getLastLineWidth() + this.padding.right;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean forcesTimeToNewLine() {
            return this.centered;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock, org.telegram.ui.MultiLayoutTypingAnimator.Block
        public Layout getLayout() {
            return this.text.layout;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDraw(Canvas canvas) {
            canvas.save();
            canvas.translate(offset(this.text), 0.0f);
            this.text.draw(canvas);
            canvas.restore();
            if (this.author != null) {
                canvas.save();
                canvas.translate(offset(this.author), this.text.getHeight() + gap());
                this.author.draw(canvas);
                canvas.restore();
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean onTouchEvent(MotionEvent motionEvent) {
            Text text;
            int iOffset;
            int height = this.text.getHeight();
            float y = motionEvent.getY();
            int iGap = 0;
            if (y >= 0.0f && y < height) {
                text = this.text;
                iOffset = offset(text);
            } else {
                if (this.author == null || y < gap() + height) {
                    return false;
                }
                Text text2 = this.author;
                int iOffset2 = offset(text2);
                iGap = height + gap();
                text = text2;
                iOffset = iOffset2;
            }
            motionEvent.offsetLocation(-iOffset, -iGap);
            boolean zOnTouchEvent = text.onTouchEvent(motionEvent);
            motionEvent.offsetLocation(iOffset, iGap);
            return zOnTouchEvent;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean findLink(CharacterStyle characterStyle, int i, FoundLink foundLink) {
            if (this.text.fillFoundLink(characterStyle, foundLink)) {
                foundLink.f971x = (this.padding.left + offset(this.text)) - this.text.left;
                foundLink.f972y = i + this.padding.top;
                return true;
            }
            Text text = this.author;
            if (text == null || !text.fillFoundLink(characterStyle, foundLink)) {
                return false;
            }
            foundLink.f971x = (this.padding.left + offset(this.author)) - this.author.left;
            foundLink.f972y = i + this.padding.top + this.text.getHeight() + gap();
            return true;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public TextSelectionHelper.TextLayoutBlock[] getText() {
            return this.texts;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void placeTexts(int i, int i2, int i3) {
            Text text = this.text;
            text.setX((offset(text) + i) - this.text.left);
            this.text.setY(i2);
            this.text.setRow(i3);
            Text text2 = this.author;
            if (text2 != null) {
                text2.setX((i + offset(text2)) - this.author.left);
                this.author.setY(i2 + this.text.getHeight() + gap());
                this.author.setRow(i3);
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onAttachedToWindow() {
            this.text.attach(this.view);
            Text text = this.author;
            if (text != null) {
                text.attach(this.view);
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDetachedFromWindow() {
            this.text.detach(this.view);
            Text text = this.author;
            if (text != null) {
                text.detach(this.view);
            }
        }
    }

    public static class RichPullquoteBlock extends RichTextWithAuthorBlock {
        public RichPullquoteBlock(RichMessageLayout richMessageLayout, Rect rect, int i, CharSequence charSequence, CharSequence charSequence2) {
            super(richMessageLayout, rect, i, charSequence, charSequence2, Layout.Alignment.ALIGN_CENTER);
        }
    }

    public static class RichQuoteBlock extends RichTextWithAuthorBlock {
        public RichQuoteBlock(RichMessageLayout richMessageLayout, Rect rect, int i, CharSequence charSequence, CharSequence charSequence2) {
            super(richMessageLayout, rect, i, charSequence, charSequence2, Layout.Alignment.ALIGN_NORMAL);
        }
    }

    public static class RichTextBlockQuote extends RichTextBlock {
        public final TL_iv.pageBlockBlockquote block;
        private ButtonBounce bounce;
        private boolean capturedByParent;
        private GradientClip clip;
        public int collapsedHeightToDraw;
        public float collapsedProgress;
        private boolean currentCollapsed;
        private boolean pressed;
        private boolean prevCollapsed;
        public final Drawable quoteArrow;
        private int quoteArrowColor;

        public RichTextBlockQuote(RichMessageLayout richMessageLayout, Rect rect, int i, TL_iv.pageBlockBlockquote pageblockblockquote, CharSequence charSequence) {
            super(richMessageLayout, rect, i, charSequence);
            this.block = pageblockblockquote;
            this.quoteArrow = ApplicationLoader.applicationContext.getResources().getDrawable(C2807R.drawable.arrow_more).mutate();
            boolean z = pageblockblockquote.collapsed;
            this.currentCollapsed = z;
            this.prevCollapsed = z;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichTextBlock, org.telegram.messenger.RichMessageLayout.RichBlock
        public int getHeight() {
            return this.currentCollapsed ? getCollapsedHeight() : super.getHeight();
        }

        public int getCollapsedHeight() {
            return (int) Math.min(this.padding.top + this.contentPaddingTop + (this.text.layout.getPaint().getTextSize() * 1.4f * 3.0f) + this.padding.bottom, super.getHeight());
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichTextBlock, org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (this.capturedByParent) {
                if (actionMasked == 1 || actionMasked == 3) {
                    this.capturedByParent = false;
                }
                return super.onTouchEvent(motionEvent);
            }
            if (actionMasked == 0) {
                boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
                this.capturedByParent = zOnTouchEvent;
                if (zOnTouchEvent) {
                    return true;
                }
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

        @Override // org.telegram.messenger.RichMessageLayout.RichTextBlock, org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDraw(Canvas canvas) {
            Canvas canvas2;
            ButtonBounce buttonBounce = this.bounce;
            float scale = buttonBounce != null ? buttonBounce.getScale(0.01f) : 1.0f;
            if (scale != 1.0f) {
                canvas.save();
                canvas.scale(scale, scale, this.maxWidth / 2.0f, getHeight() / 2.0f);
            }
            boolean z = this.collapsedProgress > 0.0f;
            int i = (this.collapsedHeightToDraw - this.padding.bottom) - this.contentPaddingBottom;
            canvas.save();
            canvas.clipRect(0, 0, this.maxWidth, i);
            if (z) {
                canvas2 = canvas;
                canvas2.saveLayer(0.0f, 0.0f, this.maxWidth, i, null);
            } else {
                canvas2 = canvas;
            }
            super.onDraw(canvas2);
            if (z) {
                if (this.clip == null) {
                    this.clip = new GradientClip();
                }
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(0.0f, i - AndroidUtilities.dp(24.0f), this.maxWidth, i + 1);
                this.clip.draw(canvas2, rectF, 3, this.collapsedProgress);
                canvas2.restore();
            }
            canvas2.restore();
            if (this.root.quoteLine.getColor() != this.quoteArrowColor) {
                Drawable drawable = this.quoteArrow;
                int color = this.root.quoteLine.getColor();
                this.quoteArrowColor = color;
                drawable.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
            }
            DrawableUtils.setBounds(this.quoteArrow, this.root.getMinWidth() - AndroidUtilities.dp(24.0f), ((i - AndroidUtilities.dp(16.0f)) - AndroidUtilities.dp(2.0f)) + AndroidUtilities.dp(8.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), 17);
            canvas2.save();
            canvas2.rotate(AndroidUtilities.lerp(180, 0, this.collapsedProgress), this.quoteArrow.getBounds().exactCenterX(), this.quoteArrow.getBounds().exactCenterY());
            this.quoteArrow.draw(canvas2);
            canvas2.restore();
            if (scale != 1.0f) {
                canvas2.restore();
            }
        }

        private void toggle() {
            this.root.snapshotForBlockquoteAnimation();
            this.currentCollapsed = !this.currentCollapsed;
            RichMessageLayout richMessageLayout = this.root;
            richMessageLayout.blockquoteAnimating = true;
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
            delegate.forceUpdate(cell, true, true);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void snapshot() {
            super.snapshot();
            this.prevCollapsed = this.currentCollapsed;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public float getBackgroundScale() {
            ButtonBounce buttonBounce = this.bounce;
            if (buttonBounce != null) {
                return buttonBounce.getScale(0.01f);
            }
            return 1.0f;
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
        private static final float ARROW_HEIGHT_DP = 6.16f;
        private static final float ARROW_LEFT_DP = 22.6f;
        private static final float ARROW_STROKE_DP = 1.66f;
        private static final float ARROW_TOP_DP = 21.66f;
        private static final float ARROW_WIDTH_DP = 12.66f;
        private static final float TEXT_BOTTOM_DP = 12.66f;
        private static final float TEXT_LEFT_DP = 53.0f;
        private static final float TEXT_RIGHT_DP = 16.0f;
        private static final float TEXT_TOP_DP = 14.0f;
        public float animClipBottom;
        public float animClipTop;
        public final AnimatedArrowDrawable arrow;
        public final TL_iv.pageBlockDetails block;
        private ButtonBounce bounce;
        private final Paint linePaint;
        private boolean pressed;
        public final Text[] texts;
        public final Text title;

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getBlockAccessibilityElementCount() {
            return 1;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean isBlockAccessibilityElementText(int i) {
            return true;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void appendAccessibilityText(SpannableStringBuilder spannableStringBuilder) {
            RichBlock.appendText(spannableStringBuilder, this.title, this.texts);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public CharSequence getBlockAccessibilityElementText(int i) {
            StaticLayout staticLayout;
            Text text = this.title;
            CharSequence charSequenceWithReplacements = (text == null || (staticLayout = text.layout) == null) ? null : RichBlock.withReplacements(staticLayout.getText());
            return TextUtils.concat(LocaleController.getString(C2807R.string.ArticleToggleBlock), ", ", LocaleController.getString(isOpen() ? C2807R.string.AccDescrExpanded : C2807R.string.AccDescrCollapsed), TextUtils.isEmpty(charSequenceWithReplacements) ? _UrlKt.FRAGMENT_ENCODE_SET : TextUtils.concat(", ", charSequenceWithReplacements));
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public CharSequence getBlockAccessibilityElementStateDescription(int i) {
            return LocaleController.getString(isOpen() ? C2807R.string.AccDescrExpanded : C2807R.string.AccDescrCollapsed);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void getBlockAccessibilityElementBounds(int i, Rect rect) {
            int i2 = (int) this.currY;
            Rect rect2 = this.padding;
            int i3 = i2 + rect2.top;
            int i4 = rect2.left;
            RichMessageLayout richMessageLayout = this.root;
            rect.set(i4 - richMessageLayout.padLeft, i3, (richMessageLayout.getMinWidth() + this.root.padRight) - this.padding.right, getContentHeight() + i3);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean onBlockAccessibilityElementClick(int i, View view) {
            toggle();
            return true;
        }

        public RichDetailsBlock(RichMessageLayout richMessageLayout, Rect rect, int i, TL_iv.pageBlockDetails pageblockdetails, CharSequence charSequence) {
            int i2;
            super(richMessageLayout, rect, i);
            this.linePaint = new Paint(1);
            this.block = pageblockdetails;
            Text text = new Text(richMessageLayout, charSequence, Math.max(0, (this.maxWidth - AndroidUtilities.dp(TEXT_LEFT_DP)) - AndroidUtilities.dp(TEXT_RIGHT_DP)));
            this.title = text;
            this.texts = new Text[]{text};
            if (richMessageLayout.isOut()) {
                i2 = Theme.key_chat_outArticleDetailsArrow;
            } else {
                i2 = Theme.key_chat_inArticleDetailsArrow;
            }
            AnimatedArrowDrawable animatedArrowDrawable = new AnimatedArrowDrawable(richMessageLayout.getThemedColor(i2), 12.66f, ARROW_HEIGHT_DP, ARROW_STROKE_DP);
            this.arrow = animatedArrowDrawable;
            animatedArrowDrawable.setAnimationProgress(pageblockdetails.open ? 0.0f : 1.0f);
        }

        public boolean isOpen() {
            return this.block.open;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDraw(Canvas canvas) {
            int i;
            int i2;
            ButtonBounce buttonBounce = this.bounce;
            float scale = buttonBounce != null ? buttonBounce.getScale(0.02f) : 1.0f;
            RichMessageLayout richMessageLayout = this.root;
            float f = -richMessageLayout.padLeft;
            int minWidth = richMessageLayout.getMinWidth() + this.root.padRight;
            Rect rect = this.padding;
            float f2 = (minWidth - rect.left) - rect.right;
            if (scale != 1.0f) {
                canvas.save();
                canvas.scale(scale, scale, (f + f2) / 2.0f, getContentHeight() / 2.0f);
            }
            RichMessageLayout richMessageLayout2 = this.root;
            if (richMessageLayout2.isOut()) {
                i = Theme.key_chat_outArticleDetailsArrow;
            } else {
                i = Theme.key_chat_inArticleDetailsArrow;
            }
            this.arrow.setColor(richMessageLayout2.getThemedColor(i));
            canvas.save();
            canvas.translate(AndroidUtilities.dpf2(ARROW_LEFT_DP) + f, AndroidUtilities.dpf2(ARROW_TOP_DP));
            this.arrow.draw(canvas);
            canvas.restore();
            canvas.save();
            canvas.translate(AndroidUtilities.dp(TEXT_LEFT_DP) + f, AndroidUtilities.dp(TEXT_TOP_DP));
            this.title.draw(canvas);
            canvas.restore();
            if (scale != 1.0f) {
                canvas.restore();
            }
            if (isOpen()) {
                return;
            }
            RichMessageLayout richMessageLayout3 = this.root;
            if (richMessageLayout3.detailsAnimating) {
                return;
            }
            Paint paint = this.linePaint;
            if (richMessageLayout3.isOut()) {
                i2 = Theme.key_chat_outArticleDetailsLine;
            } else {
                i2 = Theme.key_chat_inArticleDetailsLine;
            }
            paint.setColor(richMessageLayout3.getThemedColor(i2));
            canvas.drawRect(f, getContentHeight() - 1.0f, f2, getContentHeight(), this.linePaint);
        }

        private int getContentHeight() {
            return Math.max(AndroidUtilities.dp(27.82f), AndroidUtilities.dp(TEXT_TOP_DP) + this.title.getHeight() + AndroidUtilities.dp(12.66f));
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getHeight() {
            return this.padding.top + getContentHeight() + this.padding.bottom;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getMinWidth() {
            return this.padding.left + AndroidUtilities.dp(TEXT_LEFT_DP) + this.title.getMinWidth() + AndroidUtilities.dp(TEXT_RIGHT_DP) + this.padding.right;
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
            this.title.setX(((i - this.root.padLeft) + AndroidUtilities.dp(TEXT_LEFT_DP)) - this.title.left);
            this.title.setY(i2 + AndroidUtilities.dp(TEXT_TOP_DP));
            this.title.setRow(i3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateBubbleInsets() {
            this.title.setX(((this.layoutX - this.root.padLeft) + AndroidUtilities.dp(TEXT_LEFT_DP)) - this.title.left);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean findLink(CharacterStyle characterStyle, int i, FoundLink foundLink) {
            if (!this.title.fillFoundLink(characterStyle, foundLink)) {
                return false;
            }
            foundLink.f971x = ((this.padding.left - this.root.padLeft) + AndroidUtilities.dp(TEXT_LEFT_DP)) - this.title.left;
            foundLink.f972y = i + this.padding.top + AndroidUtilities.dp(TEXT_TOP_DP);
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
            delegate.forceUpdate(cell, true, true);
        }
    }

    public static class RichDetailsEndBlock extends RichBlock {
        private final Paint paint;

        public RichDetailsEndBlock(RichMessageLayout richMessageLayout, Rect rect, int i) {
            super(richMessageLayout, rect, i);
            this.paint = new Paint(1);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDraw(Canvas canvas) {
            int i;
            Paint paint = this.paint;
            RichMessageLayout richMessageLayout = this.root;
            if (richMessageLayout.isOut()) {
                i = Theme.key_chat_outArticleDetailsLine;
            } else {
                i = Theme.key_chat_inArticleDetailsLine;
            }
            paint.setColor(richMessageLayout.getThemedColor(i));
            RichMessageLayout richMessageLayout2 = this.root;
            float f = -richMessageLayout2.padLeft;
            int minWidth = richMessageLayout2.getMinWidth();
            RichMessageLayout richMessageLayout3 = this.root;
            int i2 = minWidth + richMessageLayout3.padRight;
            Rect rect = this.padding;
            float f2 = (i2 - rect.left) - rect.right;
            if (richMessageLayout3.detailsAnimating) {
                fLerp = AndroidUtilities.lerp(this.prevVisible ? 1.0f : 0.0f, this.currVisible ? 1.0f : 0.0f, richMessageLayout3.detailsAnimationProgress);
            } else if (this.currVisible) {
                fLerp = 1.0f;
            }
            float fLerp = AndroidUtilities.lerp((-1.0f) - (this.parentDetails != null ? r0.padding.bottom : 0), AndroidUtilities.dp(6.0f), fLerp);
            canvas.drawRect(f, fLerp, f2, fLerp + 1.0f, this.paint);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getMinWidth() {
            return this.padding.left + AndroidUtilities.dp(32.0f) + this.padding.right;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getHeight() {
            return this.padding.top + AndroidUtilities.dp(6.0f) + 1 + this.padding.bottom;
        }
    }

    public static class RichTableBlock extends RichBlock implements TableLayout.TableLayoutDelegate {
        private static final int VERTICAL_PADDING_DP = 10;
        private final ArrayList<CellBlock> cellBlocks;
        private float cellDx;
        private float cellDy;
        private final ArrayList<Text> cellTexts;
        private int contentHeight;
        private final int contentMeasuredWidth;
        private int downScrollX;
        private float downX;
        private float downY;
        private boolean dragging;
        private final Runnable flingTick;
        private Paint halfLinePaint;
        private Paint headerPaint;
        private final int intrinsicContentWidth;
        private final int intrinsicTableWidth;
        private Paint linePaint;
        private int maxFlingVelocity;
        private final int maxScrollX;
        private int minFlingVelocity;
        public final TL_iv.pageBlockTable pageBlock;
        private Text pressedCellText;
        private int resolvedTableWidth;
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
                this.linePaint.setStrokeWidth(AndroidUtilities.dpf2(0.66f));
                Paint paint2 = new Paint();
                this.halfLinePaint = paint2;
                paint2.setStyle(style);
                this.halfLinePaint.setStrokeWidth(AndroidUtilities.dpf2(0.66f));
                this.headerPaint = new Paint();
                this.stripPaint = new Paint();
            }
            RichMessageLayout richMessageLayout = this.root;
            int themedColor = richMessageLayout.getThemedColor(richMessageLayout.isOut() ? Theme.key_chat_outTableBorder : Theme.key_chat_inTableBorder);
            this.linePaint.setColor(themedColor);
            this.halfLinePaint.setColor(themedColor);
            Paint paint3 = this.headerPaint;
            RichMessageLayout richMessageLayout2 = this.root;
            paint3.setColor(richMessageLayout2.getThemedColor(richMessageLayout2.isOut() ? Theme.key_chat_outTableBackground : Theme.key_chat_inTableBackground));
            this.stripPaint.setColor(167772160);
        }

        public RichTableBlock(RichMessageLayout richMessageLayout, Rect rect, int i, TL_iv.pageBlockTable pageblocktable) {
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
            this.padding.top += AndroidUtilities.dp(10.0f);
            this.pageBlock = pageblocktable;
            int i2 = this.maxWidth;
            this.viewportWidth = i2;
            TableLayout tableLayout = new TableLayout(ApplicationLoader.applicationContext, this, null);
            this.tableLayout = tableLayout;
            tableLayout.setOrientation(0);
            tableLayout.setRowOrderPreserved(true);
            tableLayout.setDrawLines(pageblocktable.bordered);
            tableLayout.setStriped(pageblocktable.striped);
            tableLayout.setRtl(richMessageLayout.isRtl());
            tableLayout.setFillWidth(false);
            if (pageblocktable.compact) {
                tableLayout.setCellPadding(AndroidUtilities.dp(5.0f), AndroidUtilities.dp(5.0f), AndroidUtilities.dp(5.0f));
            }
            tableLayout.setMinimumCellHeight(AndroidUtilities.dp(pageblocktable.compact ? 18.0f : 36.0f));
            tableLayout.addRows(pageblocktable.rows);
            tableLayout.measure(View.MeasureSpec.makeMeasureSpec(this.maxWidth, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            int measuredWidth = tableLayout.getMeasuredWidth();
            this.contentMeasuredWidth = measuredWidth;
            this.intrinsicContentWidth = measuredWidth;
            this.contentHeight = tableLayout.getMeasuredHeight();
            this.maxScrollX = Math.max(0, measuredWidth - i2);
            TL_iv.RichText richText = pageblocktable.title;
            if (richText != null && !(richText instanceof TL_iv.textEmpty) && !TextUtils.isEmpty(RichMessageLayout.getString(richText))) {
                Text text = new Text(richMessageLayout, richMessageLayout.formatText(pageblocktable.title, RichMessageLayout.setBlockFlags(0, 15)), i2);
                this.title = text;
                text.setDrawAtOrigin(true);
                this.titleHeight = text.getHeight() + AndroidUtilities.dp(9.0f);
            } else {
                this.title = null;
                this.titleHeight = 0;
            }
            Text text2 = this.title;
            int iMax = Math.max(0, Math.min(i2, Math.max(measuredWidth, text2 != null ? text2.getMinWidth() : 0)));
            this.intrinsicTableWidth = iMax;
            this.resolvedTableWidth = iMax;
            for (int i3 = 0; i3 < this.tableLayout.getChildCount(); i3++) {
                TableLayout.Child childAt = this.tableLayout.getChildAt(i3);
                TableLayout.CellText cellText = childAt.textLayout;
                if (cellText instanceof Text) {
                    this.cellTexts.add((Text) cellText);
                    this.cellBlocks.add(new CellBlock(childAt));
                }
            }
            ArrayList arrayList = new ArrayList();
            Text text3 = this.title;
            if (text3 != null) {
                arrayList.add(text3);
            }
            arrayList.addAll(this.cellTexts);
            this.textsArr = (TextSelectionHelper.TextLayoutBlock[]) arrayList.toArray(new TextSelectionHelper.TextLayoutBlock[0]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void resolveWidth(int i) {
            int i2 = this.intrinsicTableWidth;
            int i3 = this.viewportWidth;
            Rect rect = this.padding;
            int iMax = Math.max(i2, Math.min(i3, Math.max(0, (i - rect.left) - rect.right)));
            this.resolvedTableWidth = iMax;
            this.tableLayout.setRenderWidth(iMax);
            this.contentHeight = this.tableLayout.getRenderHeight();
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
            RichMessageLayout richMessageLayout = this.root;
            float f2 = -richMessageLayout.padLeft;
            int minWidth = richMessageLayout.getMinWidth() + this.root.padRight;
            Rect rect = this.padding;
            int iSaveLayerAlpha = canvas.saveLayerAlpha(f2, 0.0f, (minWidth - rect.left) - rect.right, this.contentHeight, (int) (f * 255.0f), 31);
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
            int minWidth2 = this.root.getMinWidth() + this.root.padRight;
            Rect rect2 = this.padding;
            rectF.set(r4 - AndroidUtilities.dp(12.0f), 0.0f, (minWidth2 - rect2.left) - rect2.right, this.contentHeight);
            this.root.clip.draw(canvas, rectF, 2, 1.0f);
            canvas.restoreToCount(iSaveLayerAlpha);
        }

        @Override // org.telegram.ui.Components.TableLayout.TableLayoutDelegate
        public Text createTextLayout(TL_iv.pageTableCell pagetablecell, int i) {
            Layout.Alignment alignment;
            if (pagetablecell == null) {
                return null;
            }
            CharSequence text = this.root.formatText(pagetablecell.text, RichMessageLayout.setBlockFlags(0, 14));
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
            RichMessageLayout richMessageLayout = this.root;
            float f = -richMessageLayout.padLeft;
            int minWidth = richMessageLayout.getMinWidth() + this.root.padRight;
            Rect rect = this.padding;
            canvas.saveLayerAlpha(f, 0.0f, (minWidth - rect.left) - rect.right, this.contentHeight, 255, 31);
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
            int minWidth2 = this.root.getMinWidth() + this.root.padRight;
            Rect rect2 = this.padding;
            rectF.set(r0 - AndroidUtilities.dp(12.0f), 0.0f, (minWidth2 - rect2.left) - rect2.right, this.contentHeight);
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
            return this.padding.top + this.titleHeight + this.contentHeight + AndroidUtilities.dp(10.0f) + this.padding.bottom;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getMinWidth() {
            Rect rect = this.padding;
            return rect.left + this.intrinsicTableWidth + rect.right;
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
                    if (f3 >= childAt.f1181x && f3 < r3 + childAt.getMeasuredWidth()) {
                        if (f4 >= childAt.f1182y && f4 < r3 + childAt.getMeasuredHeight()) {
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
                    this.cellDy = this.titleHeight + childFindCellChildAt.getTextY();
                    this.pressedCellText.setSoleButtonHitBounds(childFindCellChildAt.f1181x - childFindCellChildAt.getTextX(), childFindCellChildAt.f1182y - childFindCellChildAt.getTextY(), (childFindCellChildAt.f1181x + childFindCellChildAt.getMeasuredWidth()) - childFindCellChildAt.getTextX(), (childFindCellChildAt.f1182y + childFindCellChildAt.getMeasuredHeight()) - childFindCellChildAt.getTextY());
                    motionEvent.offsetLocation(-this.cellDx, -this.cellDy);
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
                foundLink.f971x = (this.padding.left + titleDrawX()) - this.title.drawLeft();
                foundLink.f972y = i + this.padding.top;
                return true;
            }
            int childCount = this.tableLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                TableLayout.CellText cellText = this.tableLayout.getChildAt(i2).textLayout;
                if (cellText instanceof Text) {
                    if (((Text) cellText).fillFoundLink(characterStyle, foundLink)) {
                        foundLink.f971x = ((this.padding.left + r4.getTextX()) - this.scrollX) - r5.drawLeft();
                        foundLink.f972y = i + this.padding.top + this.titleHeight + r4.getTextY();
                        return true;
                    }
                }
            }
            return false;
        }

        private int titleDrawX() {
            Text text = this.title;
            if (text == null) {
                return 0;
            }
            int i = this.resolvedTableWidth;
            int i2 = text.right;
            return Math.round(((i - (i2 - r0)) / 2.0f) - text.left);
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
            int i;
            AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans2;
            canvas.save();
            Rect rect = this.padding;
            canvas.translate(rect.left, rect.top);
            Text text2 = this.title;
            boolean z2 = true;
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
            int size = this.cellTexts.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    z2 = z;
                    break;
                }
                AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans3 = this.cellTexts.get(i2).animatedEmojiStack;
                if (emojiGroupedSpans3 == null || emojiGroupedSpans3.holders.isEmpty()) {
                    i2++;
                } else {
                    RichMessageLayout richMessageLayout = this.root;
                    float f = -richMessageLayout.padLeft;
                    int minWidth = richMessageLayout.getMinWidth() + this.root.padRight;
                    Rect rect2 = this.padding;
                    int iSaveLayerAlpha = canvas.saveLayerAlpha(f, 0.0f, (minWidth - rect2.left) - rect2.right, this.contentHeight, 255, 31);
                    canvas.save();
                    canvas.translate(-this.scrollX, 0.0f);
                    int childCount = this.tableLayout.getChildCount();
                    int i3 = 0;
                    while (i3 < childCount) {
                        TableLayout.CellText cellText = this.tableLayout.getChildAt(i3).textLayout;
                        if (!(cellText instanceof Text) || (emojiGroupedSpans = (text = (Text) cellText).animatedEmojiStack) == null || emojiGroupedSpans.holders.isEmpty()) {
                            i = i3;
                        } else {
                            canvas.save();
                            canvas.translate(r3.getTextX(), r3.getTextY());
                            i = i3;
                            AnimatedEmojiSpan.drawAnimatedEmojis(canvas, text.layout, text.animatedEmojiStack, 0.0f, text.spoilers, 0.0f, 0.0f, 0.0f, 1.0f, colorFilter);
                            canvas.restore();
                        }
                        i3 = i + 1;
                    }
                    canvas.restore();
                    RectF rectF = AndroidUtilities.rectTmp;
                    int i4 = this.root.padLeft;
                    rectF.set(-i4, 0.0f, (-i4) + AndroidUtilities.dp(12.0f), this.contentHeight);
                    this.root.clip.draw(canvas, rectF, 0, 1.0f);
                    int minWidth2 = this.root.getMinWidth() + this.root.padRight;
                    Rect rect3 = this.padding;
                    rectF.set(r3 - AndroidUtilities.dp(12.0f), 0.0f, (minWidth2 - rect3.left) - rect3.right, this.contentHeight);
                    this.root.clip.draw(canvas, rectF, 2, 1.0f);
                    canvas.restoreToCount(iSaveLayerAlpha);
                }
            }
            canvas.restore();
            return z2;
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
            int i = richMessageLayout.padLeft;
            int i2 = minWidth + i + richMessageLayout.padRight;
            Rect rect = this.padding;
            int i3 = rect.left;
            int i4 = ((i2 - i3) - rect.right) / 2;
            float f = (((r0 - i4) / 2.0f) - i) + i3;
            float fDp = (AndroidUtilities.dp(12.0f) - AndroidUtilities.dp(1.0f)) / 2.0f;
            Paint paint = this.paint;
            RichMessageLayout richMessageLayout2 = this.root;
            paint.setColor(richMessageLayout2.getThemedColor(richMessageLayout2.isOut() ? Theme.key_chat_outDivider : Theme.key_chat_inDivider));
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(f, fDp, i4 + f, AndroidUtilities.dp(1.0f) + fDp);
            canvas.drawRoundRect(rectF, AndroidUtilities.dp(0.5f), AndroidUtilities.dp(0.5f), this.paint);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getMinWidth() {
            return AndroidUtilities.dp(32.0f);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getHeight() {
            return this.padding.top + AndroidUtilities.dp(12.0f) + this.padding.bottom;
        }
    }

    public static class RichUnsupportedBlock extends RichBlock implements Drawable.Callback {
        public final int index;
        public final int level;
        public Bitmap tornBitmap;
        public TornEdge.Params tornParams;
        public final UnsupportedBlockDrawable unsupportedBlockDrawable;
        public final int unsupportedBlockHeight;
        public final int unsupportedBlockWidth;

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        }

        public RichUnsupportedBlock(final RichMessageLayout richMessageLayout, Rect rect, int i, int i2, int i3) {
            super(richMessageLayout, rect, i);
            this.index = i2;
            this.level = i3;
            UnsupportedBlockDrawable unsupportedBlockDrawable = new UnsupportedBlockDrawable(richMessageLayout.resourcesProvider);
            this.unsupportedBlockDrawable = unsupportedBlockDrawable;
            unsupportedBlockDrawable.setCallback(this);
            unsupportedBlockDrawable.setTitle(LocaleController.getString(C2807R.string.UnsupportedBlockTitle));
            unsupportedBlockDrawable.setSubtitle(LocaleController.getString(C2807R.string.UnsupportedBlockMessage));
            unsupportedBlockDrawable.setButtonText(LocaleController.getString(C2807R.string.UnsupportedUpdate));
            unsupportedBlockDrawable.setOnClickListener(new Runnable() { // from class: org.telegram.messenger.RichMessageLayout$RichUnsupportedBlock$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    RichMessageLayout.RichUnsupportedBlock.m6437$r8$lambda$hWM9UH9UMJ4IikZyjX2ZmyCfbc(richMessageLayout);
                }
            });
            int i4 = this.maxWidth;
            this.unsupportedBlockWidth = i4;
            this.unsupportedBlockHeight = unsupportedBlockDrawable.measure(i4);
        }

        /* JADX INFO: renamed from: $r8$lambda$hWM9UH9UMJ4IikZyjX2Z-myCfbc, reason: not valid java name */
        public static /* synthetic */ void m6437$r8$lambda$hWM9UH9UMJ4IikZyjX2ZmyCfbc(RichMessageLayout richMessageLayout) {
            if (richMessageLayout.delegate != null) {
                richMessageLayout.delegate.didPressAppUpdateButton();
            }
        }

        public float getY(ChatMessageCell.TransitionParams transitionParams) {
            if (transitionParams != null) {
                RichMessageLayout richMessageLayout = this.root;
                if (richMessageLayout.detailsAnimating || richMessageLayout.blockquoteAnimating) {
                    return AndroidUtilities.lerp(this.prevY, this.currY, Math.max(0.0f, Math.min(1.0f, transitionParams.animateChangeProgress)));
                }
            }
            return this.currY;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public float getHeight(ChatMessageCell.TransitionParams transitionParams) {
            int iLerp;
            if (transitionParams != null) {
                RichMessageLayout richMessageLayout = this.root;
                if (richMessageLayout.detailsAnimating || richMessageLayout.blockquoteAnimating) {
                    iLerp = AndroidUtilities.lerp(this.prevH, this.currH, Math.max(0.0f, Math.min(1.0f, transitionParams.animateChangeProgress)));
                } else {
                    iLerp = this.currH;
                }
            }
            return iLerp;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getHeight() {
            Rect rect = this.padding;
            return rect.top + this.unsupportedBlockHeight + rect.bottom;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void draw(Canvas canvas) {
            UnsupportedBlockDrawable unsupportedBlockDrawable = this.unsupportedBlockDrawable;
            Rect rect = this.padding;
            int i = rect.left;
            int i2 = rect.top;
            unsupportedBlockDrawable.setBounds(i, i2, this.unsupportedBlockWidth + i, this.unsupportedBlockHeight + i2);
            this.unsupportedBlockDrawable.draw(canvas);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            View view = this.view;
            if (view != null) {
                view.invalidate();
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean onTouchEvent(MotionEvent motionEvent) {
            View view = this.view;
            if (view != null) {
                return this.unsupportedBlockDrawable.onTouchEvent(view, motionEvent);
            }
            return super.onTouchEvent(motionEvent);
        }
    }

    public static class RichButtonRowBlock extends RichBlock {
        private static final int GAP = 7;
        private final Align align;
        private final RichButton[] buttons;
        private final ClickHelper clickHelper;
        private int layoutWidth;
        private RichButton pressedButton;
        private RichButton touchButton;

        public enum Align {
            LEFT,
            RIGHT,
            CENTER,
            FILL
        }

        public RichButtonRowBlock(RichMessageLayout richMessageLayout, Rect rect, int i, TL_iv.pageBlockButtonRow pageblockbuttonrow) {
            super(richMessageLayout, rect, i);
            this.layoutWidth = -1;
            this.clickHelper = new ClickHelper(new ClickHelper.Delegate() { // from class: org.telegram.messenger.RichMessageLayout.RichButtonRowBlock.1
                @Override // me.vkryl.android.util.ClickHelper.Delegate
                public /* bridge */ /* synthetic */ boolean forceEnableVibration() {
                    return super.forceEnableVibration();
                }

                @Override // me.vkryl.android.util.ClickHelper.Delegate
                public /* bridge */ /* synthetic */ long getLongPressDuration() {
                    return super.getLongPressDuration();
                }

                @Override // me.vkryl.android.util.ClickHelper.Delegate
                public /* bridge */ /* synthetic */ boolean ignoreHapticFeedbackSettings(float f, float f2) {
                    return super.ignoreHapticFeedbackSettings(f, f2);
                }

                @Override // me.vkryl.android.util.ClickHelper.Delegate
                public /* bridge */ /* synthetic */ boolean needCancelTouchBySlopMove() {
                    return super.needCancelTouchBySlopMove();
                }

                @Override // me.vkryl.android.util.ClickHelper.Delegate
                public boolean needLongPress(float f, float f2) {
                    return true;
                }

                @Override // me.vkryl.android.util.ClickHelper.Delegate
                public /* bridge */ /* synthetic */ void onLongPressCancelled(View view, float f, float f2) {
                    super.onLongPressCancelled(view, f, f2);
                }

                @Override // me.vkryl.android.util.ClickHelper.Delegate
                public /* bridge */ /* synthetic */ void onLongPressFinish(View view, float f, float f2) {
                    super.onLongPressFinish(view, f, f2);
                }

                @Override // me.vkryl.android.util.ClickHelper.Delegate
                public /* bridge */ /* synthetic */ void onLongPressMove(View view, MotionEvent motionEvent, float f, float f2, float f3, float f4) {
                    super.onLongPressMove(view, motionEvent, f, f2, f3, f4);
                }

                @Override // me.vkryl.android.util.ClickHelper.Delegate
                public boolean needClickAt(View view, float f, float f2) {
                    RichButton buttonAt = RichButtonRowBlock.this.getButtonAt(f, f2);
                    RichButtonRowBlock richButtonRowBlock = RichButtonRowBlock.this;
                    if (buttonAt == null || buttonAt.isDisabled) {
                        buttonAt = null;
                    }
                    richButtonRowBlock.touchButton = buttonAt;
                    return RichButtonRowBlock.this.touchButton != null;
                }

                @Override // me.vkryl.android.util.ClickHelper.Delegate
                public void onClickTouchDown(View view, float f, float f2) {
                    RichButtonRowBlock richButtonRowBlock = RichButtonRowBlock.this;
                    richButtonRowBlock.setPressedButton(richButtonRowBlock.touchButton);
                }

                @Override // me.vkryl.android.util.ClickHelper.Delegate
                public void onClickTouchMove(View view, float f, float f2) {
                    RichButtonRowBlock richButtonRowBlock = RichButtonRowBlock.this;
                    richButtonRowBlock.setPressedButton(richButtonRowBlock.getButtonAt(f, f2) == RichButtonRowBlock.this.touchButton ? RichButtonRowBlock.this.touchButton : null);
                }

                @Override // me.vkryl.android.util.ClickHelper.Delegate
                public void onClickTouchUp(View view, float f, float f2) {
                    RichButtonRowBlock.this.setPressedButton(null);
                    RichButtonRowBlock.this.touchButton = null;
                }

                @Override // me.vkryl.android.util.ClickHelper.Delegate
                public void onClickAt(View view, float f, float f2) {
                    if (RichButtonRowBlock.this.touchButton != null) {
                        RichButtonRowBlock richButtonRowBlock = RichButtonRowBlock.this;
                        richButtonRowBlock.onButtonClick(richButtonRowBlock.touchButton);
                    }
                }

                @Override // me.vkryl.android.util.ClickHelper.Delegate
                public boolean onLongPressRequestedAt(View view, float f, float f2) {
                    if (RichButtonRowBlock.this.touchButton == null || RichButtonRowBlock.this.getButtonAt(f, f2) != RichButtonRowBlock.this.touchButton) {
                        return false;
                    }
                    RichButtonRowBlock richButtonRowBlock = RichButtonRowBlock.this;
                    richButtonRowBlock.onButtonLongClick(richButtonRowBlock.touchButton);
                    return true;
                }
            });
            this.buttons = new RichButton[pageblockbuttonrow.buttons.size()];
            int size = pageblockbuttonrow.buttons.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.buttons[i2] = new RichButton(richMessageLayout, i, pageblockbuttonrow.buttons.get(i2), new Runnable() { // from class: org.telegram.messenger.RichMessageLayout$RichButtonRowBlock$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.invalidate();
                    }
                });
            }
            if (pageblockbuttonrow.align_left) {
                this.align = Align.LEFT;
            } else if (pageblockbuttonrow.align_center) {
                this.align = Align.CENTER;
            } else if (pageblockbuttonrow.align_right) {
                this.align = Align.RIGHT;
            } else {
                this.align = Align.FILL;
            }
            layout(getIntrinsicWidth());
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void draw(Canvas canvas) {
            updateLayout();
            for (RichButton richButton : this.buttons) {
                canvas.save();
                canvas.translate(richButton.f977x, Math.round((getHeight() - richButton.getHeight()) / 2.0f));
                richButton.draw(canvas);
                canvas.restore();
            }
        }

        private int getIntrinsicWidth() {
            int length = this.buttons.length;
            if (length == 0) {
                return 0;
            }
            int iDp = AndroidUtilities.dp(7.0f) * (length - 1);
            for (RichButton richButton : this.buttons) {
                iDp += richButton.getPreferredWidth();
            }
            return Math.min(this.maxWidth, iDp);
        }

        private void updateLayout() {
            int minWidth = this.root.getMinWidth();
            RichMessageLayout richMessageLayout = this.root;
            int i = richMessageLayout.padLeft;
            int i2 = ((minWidth + i) + richMessageLayout.padRight) - (i * 2);
            Rect rect = this.padding;
            int iMax = Math.max(0, (i2 - rect.left) - rect.right);
            if (this.layoutWidth != iMax) {
                layout(iMax);
            }
        }

        private void layout(int i) {
            int i2;
            this.layoutWidth = i;
            int length = this.buttons.length;
            if (length == 0) {
                return;
            }
            int iDp = AndroidUtilities.dp(7.0f);
            int i3 = (length - 1) * iDp;
            int iMax = Math.max(0, i - i3);
            int i4 = 0;
            for (RichButton richButton : this.buttons) {
                int preferredWidth = richButton.getPreferredWidth();
                richButton.width = preferredWidth;
                i4 += preferredWidth;
            }
            if (i4 > iMax) {
                squeeze(iMax, i4);
            } else if (this.align == Align.FILL) {
                stretch(iMax);
            }
            for (RichButton richButton2 : this.buttons) {
                i3 += richButton2.width;
            }
            int i5 = C28081.f970x10111965[this.align.ordinal()];
            if (i5 != 1) {
                i2 = i5 != 2 ? 0 : (i - i3) / 2;
            } else {
                i2 = i - i3;
            }
            for (RichButton richButton3 : this.buttons) {
                richButton3.f977x = i2;
                i2 += richButton3.width + iDp;
            }
        }

        private void stretch(int i) {
            int i2;
            RichButton[] richButtonArr = this.buttons;
            boolean[] zArr = new boolean[richButtonArr.length];
            int length = richButtonArr.length;
            boolean z = true;
            while (true) {
                boolean z2 = false;
                if (!z || length <= 0) {
                    break;
                }
                int i3 = i / length;
                int i4 = 0;
                while (true) {
                    RichButton[] richButtonArr2 = this.buttons;
                    if (i4 < richButtonArr2.length) {
                        if (!zArr[i4] && (i2 = richButtonArr2[i4].width) > i3) {
                            zArr[i4] = true;
                            i -= i2;
                            length--;
                            z2 = true;
                        }
                        i4++;
                    }
                }
                z = z2;
            }
            if (length <= 0) {
                return;
            }
            int i5 = i / length;
            int i6 = i - (length * i5);
            int i7 = 0;
            while (true) {
                RichButton[] richButtonArr3 = this.buttons;
                if (i7 >= richButtonArr3.length) {
                    return;
                }
                if (!zArr[i7]) {
                    int i8 = i6 - 1;
                    richButtonArr3[i7].width = (i6 > 0 ? 1 : 0) + i5;
                    i6 = i8;
                }
                i7++;
            }
        }

        private void squeeze(int i, int i2) {
            int i3 = 0;
            int minWidth = 0;
            for (RichButton richButton : this.buttons) {
                minWidth += richButton.width - richButton.getMinWidth();
            }
            if (minWidth <= 0) {
                RichButton[] richButtonArr = this.buttons;
                int length = richButtonArr.length;
                while (i3 < length) {
                    RichButton richButton2 = richButtonArr[i3];
                    richButton2.width = richButton2.getMinWidth();
                    i3++;
                }
                return;
            }
            int iMin = Math.min(i2 - i, minWidth);
            int i4 = 0;
            while (true) {
                RichButton[] richButtonArr2 = this.buttons;
                if (i3 >= richButtonArr2.length) {
                    return;
                }
                RichButton richButton3 = richButtonArr2[i3];
                int minWidth2 = richButton3.width - richButton3.getMinWidth();
                int iMin2 = Math.min(i3 == this.buttons.length + (-1) ? iMin - i4 : (int) ((((long) iMin) * ((long) minWidth2)) / ((long) minWidth)), minWidth2);
                richButton3.width -= iMin2;
                i4 += iMin2;
                i3++;
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getHeight() {
            RichButton[] richButtonArr = this.buttons;
            return this.padding.top + (richButtonArr.length == 0 ? AndroidUtilities.dp(this.root.fontSize + 18) : richButtonArr[0].getHeight()) + AndroidUtilities.dp(4.333f) + this.padding.bottom;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getMinWidth() {
            return this.padding.left + getIntrinsicWidth() + this.padding.right;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public RichButton getButtonAt(float f, float f2) {
            updateLayout();
            RichButton[] richButtonArr = this.buttons;
            int iDp = richButtonArr.length == 0 ? AndroidUtilities.dp(this.root.fontSize + 18) : richButtonArr[0].getHeight();
            float height = (getHeight() - iDp) / 2.0f;
            if (f2 >= height && f2 <= height + iDp) {
                for (RichButton richButton : this.buttons) {
                    if (richButton.contains(f)) {
                        return richButton;
                    }
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void invalidate() {
            View view = this.view;
            if (view != null) {
                view.invalidate();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPressedButton(RichButton richButton) {
            RichButton richButton2 = this.pressedButton;
            if (richButton2 == richButton) {
                return;
            }
            if (richButton2 != null) {
                richButton2.setPressed(false);
            }
            this.pressedButton = richButton;
            if (richButton != null) {
                richButton.setPressed(true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onButtonClick(RichButton richButton) {
            if (this.root.delegate != null) {
                this.root.delegate.didPressBotButton(this.root.cell, richButton.pageButton);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onButtonLongClick(RichButton richButton) {
            if (this.root.delegate != null) {
                this.root.delegate.didLongPressBotButton(this.root.cell, richButton.pageButton);
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean onTouchEvent(MotionEvent motionEvent) {
            View view = this.view;
            if (view == null) {
                return false;
            }
            return this.clickHelper.onTouchEvent(view, motionEvent);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean isHorizontallyDragging() {
            return this.touchButton != null;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            for (RichButton richButton : this.buttons) {
                richButton.attach(this.view);
            }
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            for (RichButton richButton : this.buttons) {
                richButton.detach(this.view);
            }
        }
    }

    /* JADX INFO: renamed from: org.telegram.messenger.RichMessageLayout$1 */
    public static /* synthetic */ class C28081 {

        /* JADX INFO: renamed from: $SwitchMap$org$telegram$messenger$RichMessageLayout$RichButtonRowBlock$Align */
        static final /* synthetic */ int[] f970x10111965;

        static {
            int[] iArr = new int[RichButtonRowBlock.Align.values().length];
            f970x10111965 = iArr;
            try {
                iArr[RichButtonRowBlock.Align.RIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f970x10111965[RichButtonRowBlock.Align.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static class RichButton {
        private static final float ICON_OFFSET_X = 12.33f;
        private static final float ICON_OFFSET_Y = 11.66f;
        private static final float ICON_OFFSET_Y_INLINE = 9.33f;
        public static final int INLINE_PADDING_HORIZONTAL = 7;
        private static final int MIN_PADDING = 8;
        private static final int PADDING = 20;
        private static final int PADDING_WITH_ICON = 26;
        private static final float PRESS_SCALE = 0.04f;
        private static final float PRESS_SCALE_INLINE = 0.09f;
        private static final Xfermode SRC_OUT;
        private static final Paint SRC_OUT_PAINT;
        public int backgroundColor;
        public final Paint backgroundPaint;
        public int backgroundPressedColor;
        private final ForegroundColorSpanThemable colorSpan;
        private final boolean emojiFirst;
        private final boolean emojiLast;
        private Drawable iconDrawable;
        private final boolean inline;
        public final Runnable invalidateRunnable;
        public final boolean isDisabled;
        private int lastLinkColorFilterColor;
        private final RichMessageLayout layout;
        private final boolean link;
        private ColorFilter linkColorFilter;
        private boolean loading;
        public LoadingDrawable loadingDrawable;
        private final RectF loadingRect;
        private final int maxWidth;
        private boolean needSaveLayer;
        private final boolean out;
        public final TL_keyboard.PageButton pageButton;
        public ValueAnimator pressAnimator;
        public float pressT;
        public boolean pressed;
        public final TL_keyboard.RichButtonStyle style;
        private final Theme.IvButtonColors styleKeys;
        public final Text text;
        public int textColor;
        private ColorFilter textColorFilter;
        public int textColorKey;
        private final RectF textFadeRect;
        public final TL_keyboard.InlineButtonType type;
        public int width;

        /* JADX INFO: renamed from: x */
        public int f977x;

        static {
            PorterDuffXfermode porterDuffXfermode = new PorterDuffXfermode(PorterDuff.Mode.SRC_OUT);
            SRC_OUT = porterDuffXfermode;
            Paint paint = new Paint();
            SRC_OUT_PAINT = paint;
            paint.setXfermode(porterDuffXfermode);
        }

        public RichButton(RichMessageLayout richMessageLayout, int i, TL_keyboard.PageButton pageButton, Runnable runnable) {
            this(richMessageLayout, i, richMessageLayout.formatText(pageButton.text, RichMessageLayout.setBlockFlags(16, 13)), pageButton, pageButton.type, pageButton.style, TLKeyboardHelper.isType(pageButton, TL_keyboard.TL_inlineButtonTypeDisabled.class), true, false, false, false, false, null, runnable);
        }

        public RichButton(RichMessageLayout richMessageLayout, int i, CharSequence charSequence, TL_keyboard.PageButton pageButton, TL_keyboard.InlineButtonType inlineButtonType, TL_keyboard.RichButtonStyle richButtonStyle, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, Boolean bool, Runnable runnable) {
            this.backgroundPaint = new Paint(1);
            this.loadingRect = new RectF();
            this.textFadeRect = new RectF();
            this.layout = richMessageLayout;
            this.maxWidth = Math.max(1, i);
            this.invalidateRunnable = runnable;
            this.pageButton = pageButton;
            this.type = inlineButtonType;
            this.style = richButtonStyle;
            this.isDisabled = z;
            this.emojiFirst = z3;
            this.emojiLast = z4;
            this.inline = z6;
            this.link = z5;
            boolean zBooleanValue = bool != null ? bool.booleanValue() : richMessageLayout.isOut();
            this.out = zBooleanValue;
            Theme.IvButtonColors ivButtonColorsOf = Theme.IvButtonColors.of(richButtonStyle);
            if (ivButtonColorsOf == Theme.IvButtonColors.DEFAULT && z6) {
                ivButtonColorsOf = Theme.IvButtonColors.DEFAULT_IN_TEXT;
            }
            this.styleKeys = ivButtonColorsOf;
            ForegroundColorSpanThemable foregroundColorSpanThemable = new ForegroundColorSpanThemable(ivButtonColorsOf.getTextKey(zBooleanValue));
            this.colorSpan = foregroundColorSpanThemable;
            foregroundColorSpanThemable.setAlpha(z ? 0.5f : 1.0f);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
            if (z5) {
                spannableStringBuilder.setSpan(new URLSpanNoUnderline(_UrlKt.FRAGMENT_ENCODE_SET), 0, spannableStringBuilder.length(), 33);
            } else {
                spannableStringBuilder.setSpan(foregroundColorSpanThemable, 0, spannableStringBuilder.length(), 33);
            }
            AndroidUtilities.replaceNewLines(spannableStringBuilder);
            Math.max(1, ((int) Math.ceil(Layout.getDesiredWidth(spannableStringBuilder, richMessageLayout.textPaint))) + AndroidUtilities.dp(2.0f));
            Text text = new Text(richMessageLayout, spannableStringBuilder, AppDataDirGuesser.PER_USER_RANGE, Layout.Alignment.ALIGN_CENTER);
            this.text = text;
            text.setDrawAtOrigin(true);
            text.doNotInvalidateEmojiInParent = true;
            int buttonIcon = z2 ? getButtonIcon(inlineButtonType) : 0;
            if (buttonIcon != 0) {
                this.iconDrawable = ApplicationLoader.applicationContext.getResources().getDrawable(buttonIcon).mutate();
            }
            this.width = getPreferredWidth();
            updateColors();
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void updateColors() {
            boolean z;
            Theme.ResourcesProvider resourcesProvider = this.layout.resourcesProvider;
            boolean zIsDark = resourcesProvider != null ? resourcesProvider.isDark() : Theme.isCurrentThemeDark();
            if (this.out && zIsDark) {
                int themedColor = this.layout.getThemedColor(Theme.key_chat_outBubbleGradient1);
                int themedColor2 = this.layout.getThemedColor(Theme.key_chat_outBubbleGradient2);
                int themedColor3 = this.layout.getThemedColor(Theme.key_chat_outBubbleGradient3);
                if (themedColor != 0 || themedColor2 != 0 || themedColor3 != 0) {
                    z = true;
                }
            } else {
                z = false;
            }
            Theme.IvButtonColors ivButtonColors = this.styleKeys;
            if (z && ivButtonColors != Theme.IvButtonColors.PRIMARY) {
                ivButtonColors = Theme.IvButtonColors.DEFAULT;
            }
            int backgroundKey = ivButtonColors.getBackgroundKey(this.out);
            int backgroundPressedKey = ivButtonColors.getBackgroundPressedKey(this.out);
            int textKey = ivButtonColors.getTextKey(this.out);
            int themedColor4 = this.layout.getThemedColor(textKey);
            this.needSaveLayer = false;
            if (z && ivButtonColors == Theme.IvButtonColors.PRIMARY) {
                int themedColor5 = this.layout.getThemedColor(textKey);
                this.backgroundPressedColor = themedColor5;
                this.backgroundColor = themedColor5;
                this.needSaveLayer = true;
            } else {
                if (Theme.hasThemeKey(backgroundKey) || ivButtonColors == Theme.IvButtonColors.PRIMARY) {
                    this.backgroundColor = this.layout.getThemedColor(backgroundKey);
                    if (Theme.hasThemeKey(backgroundPressedKey)) {
                        this.backgroundPressedColor = this.layout.getThemedColor(backgroundPressedKey);
                    } else {
                        this.backgroundPressedColor = ColorUtils.blendARGB(this.backgroundColor, themedColor4, 0.1f);
                    }
                } else {
                    this.backgroundColor = Theme.multAlpha(this.layout.getThemedColor(textKey), ivButtonColors == Theme.IvButtonColors.DEFAULT ? 0.08f : 0.1f);
                    this.backgroundPressedColor = Theme.multAlpha(this.layout.getThemedColor(textKey), 0.16f);
                }
            }
            setTextColorKey(textKey);
        }

        public void setTextColorKey(int i) {
            this.textColorKey = i;
            int themedColor = this.layout.getThemedColor(i);
            if (this.isDisabled) {
                themedColor = Theme.multAlpha(themedColor, 0.5f);
            }
            if (themedColor != this.textColor || this.textColorFilter == null) {
                this.textColor = themedColor;
                this.textColorFilter = new PorterDuffColorFilter(this.textColor, PorterDuff.Mode.SRC_IN);
            }
            this.colorSpan.setColorKey(i);
            this.invalidateRunnable.run();
            Drawable drawable = this.iconDrawable;
            if (drawable != null) {
                drawable.setColorFilter(new PorterDuffColorFilter(this.textColor, PorterDuff.Mode.MULTIPLY));
            }
        }

        public int getTextWidth() {
            Text text = this.text;
            return text.right - text.left;
        }

        public int getHeight() {
            boolean z = this.inline;
            RichMessageLayout richMessageLayout = this.layout;
            return AndroidUtilities.dp(z ? richMessageLayout.fontSize * 1.166666f : richMessageLayout.fontSize + 18);
        }

        public int getPaddingLeft() {
            if (this.link) {
                return 0;
            }
            if (this.emojiFirst && this.inline) {
                return AndroidUtilities.dp(4.0f);
            }
            if (this.inline) {
                return AndroidUtilities.dp(7.0f);
            }
            return AndroidUtilities.dp(this.iconDrawable != null ? 26.0f : 20.0f);
        }

        public int getPaddingRight() {
            if (this.link) {
                return 0;
            }
            if (this.emojiLast && this.inline) {
                return AndroidUtilities.dp((this.iconDrawable != null ? 14 : 0) + 4);
            }
            boolean z = this.inline;
            Drawable drawable = this.iconDrawable;
            if (z) {
                return AndroidUtilities.dp((drawable != null ? 14 : 0) + 7);
            }
            return AndroidUtilities.dp(drawable != null ? 26.0f : 20.0f);
        }

        public int getIconReserve() {
            if (this.iconDrawable != null) {
                return AndroidUtilities.dp(ICON_OFFSET_X) + (AndroidUtilities.dp(ICON_OFFSET_Y) / 2);
            }
            return 0;
        }

        public float getTextX() {
            if (this.inline) {
                return getPaddingLeft();
            }
            if (getTextWidth() > getTextAvailableWidth()) {
                return getTextViewportLeft();
            }
            Drawable drawable = this.iconDrawable;
            int i = this.width;
            if (drawable == null) {
                return (i - getTextWidth()) / 2.0f;
            }
            return Math.max(Math.min((i - getTextWidth()) / 2.0f, (this.width - getIconReserve()) - getTextWidth()), AndroidUtilities.dp(8.0f));
        }

        private int getTextViewportLeft() {
            if (this.link) {
                return 0;
            }
            return this.inline ? getPaddingLeft() : AndroidUtilities.dp(8.0f);
        }

        private int getTextViewportRight() {
            int iMax;
            if (this.link) {
                return this.width;
            }
            boolean z = this.inline;
            int i = this.width;
            if (z) {
                iMax = getPaddingRight();
            } else {
                iMax = Math.max(AndroidUtilities.dp(8.0f), getIconReserve());
            }
            return i - iMax;
        }

        private int getTextAvailableWidth() {
            return Math.max(1, getTextViewportRight() - getTextViewportLeft());
        }

        public int getPreferredWidth() {
            return Math.min(this.maxWidth, getTextWidth() + getPaddingLeft() + getPaddingRight());
        }

        public int getMinWidth() {
            return Math.min(getPreferredWidth(), getHeight() + getIconReserve());
        }

        public void draw(Canvas canvas) {
            Canvas canvas2;
            float f;
            float f2;
            float f3;
            float pressScale = getPressScale();
            canvas.save();
            if (pressScale != 1.0f) {
                canvas.scale(pressScale, pressScale, this.width / 2.0f, getHeight() / 2.0f);
            }
            boolean z = this.link;
            boolean z2 = this.needSaveLayer && !z;
            if (z2) {
                canvas.saveLayer(0.0f, 0.0f, this.width, getHeight(), null);
            } else {
                this.backgroundPaint.setColor(this.pressed ? this.backgroundPressedColor : this.backgroundColor);
                if (!z) {
                    canvas.drawRoundRect(0.0f, 0.0f, this.width, getHeight(), getHeight() / 2.0f, getHeight() / 2.0f, this.backgroundPaint);
                }
                drawLoading(canvas);
            }
            canvas.save();
            int textViewportLeft = getTextViewportLeft();
            int textViewportRight = getTextViewportRight();
            boolean z3 = getTextWidth() > getTextAvailableWidth();
            if (z3) {
                canvas2 = canvas;
                canvas2.saveLayer(textViewportLeft, -AndroidUtilities.dp(10.0f), textViewportRight, getHeight() + AndroidUtilities.dp(10.0f), null);
            } else {
                canvas2 = canvas;
            }
            canvas2.clipRect(textViewportLeft, -AndroidUtilities.dp(10.0f), textViewportRight, getHeight() + AndroidUtilities.dp(10.0f));
            canvas2.save();
            int baseline = this.text.getBaseline();
            boolean z4 = this.text.getEmojiOnlyCount() > 0;
            if (z4) {
                canvas2.translate(getTextX() - this.text.left, (getHeight() - this.text.getHeight()) / 2.0f);
            } else if (baseline > 0) {
                if (this.inline) {
                    canvas2.translate(getTextX() - this.text.left, (-baseline) + ((getHeight() * 43) / 56));
                } else {
                    canvas2.translate(getTextX() - this.text.left, (-baseline) + ((getHeight() * 65) / 102));
                }
            } else {
                canvas2.translate(getTextX() - this.text.left, ((getHeight() - this.text.getHeight()) / 2.0f) - AndroidUtilities.dp(1.0f));
            }
            this.text.draw(canvas2);
            if (this.layout.isOverlayActive()) {
                if (z4) {
                    f3 = 0.0f;
                } else {
                    f3 = this.link ? 0.66f : 2.0f;
                }
                canvas2.translate(0.0f, AndroidUtilities.dp(f3));
                boolean z5 = this.link;
                Text text = this.text;
                if (z5) {
                    int i = text.layout.getPaint().linkColor;
                    if (this.lastLinkColorFilterColor != i || this.linkColorFilter == null) {
                        this.lastLinkColorFilterColor = i;
                        this.linkColorFilter = new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN);
                    }
                    Text text2 = this.text;
                    f = 2.0f;
                    f2 = 0.0f;
                    AnimatedEmojiSpan.drawAnimatedEmojis(canvas2, text2.layout, text2.animatedEmojiStack, 0.0f, text2.spoilers, 0.0f, 0.0f, 0.0f, 1.0f, this.linkColorFilter);
                    canvas2 = canvas;
                } else {
                    f = 2.0f;
                    f2 = 0.0f;
                    canvas2 = canvas;
                    AnimatedEmojiSpan.drawAnimatedEmojis(canvas2, text.layout, text.animatedEmojiStack, 0.0f, text.spoilers, 0.0f, 0.0f, 0.0f, 1.0f, this.textColorFilter);
                }
            } else {
                f = 2.0f;
                f2 = 0.0f;
            }
            canvas2.restore();
            if (z3) {
                this.textFadeRect.set(textViewportRight - AndroidUtilities.dp(8.0f), f2, textViewportRight, getHeight());
                this.layout.clip.draw(canvas2, this.textFadeRect, 2, 1.0f);
                canvas2.restore();
            }
            canvas2.restore();
            Drawable drawable = this.iconDrawable;
            if (drawable != null) {
                DrawableUtils.setBounds(drawable, this.width - AndroidUtilities.dp(ICON_OFFSET_X), AndroidUtilities.dp(this.inline ? ICON_OFFSET_Y_INLINE : ICON_OFFSET_Y), 17);
                this.iconDrawable.draw(canvas2);
            }
            if (z2) {
                Paint paint = SRC_OUT_PAINT;
                paint.setColor(this.pressed ? this.backgroundPressedColor : this.backgroundColor);
                canvas2.drawRoundRect(0.0f, 0.0f, this.width, getHeight(), getHeight() / f, getHeight() / f, paint);
                canvas.restore();
                drawLoading(canvas);
            }
            canvas.restore();
        }

        private void drawLoading(Canvas canvas) {
            boolean z = (this.pageButton == null || this.layout.cell == null || !this.layout.cell.drawButtonProgress(this.pageButton)) ? false : true;
            setLoading(z);
            LoadingDrawable loadingDrawable = this.loadingDrawable;
            if (loadingDrawable != null) {
                if (z || loadingDrawable.isDisappearing()) {
                    float strokeWidth = this.loadingDrawable.strokePaint.getStrokeWidth();
                    this.loadingRect.set(0.0f, 0.0f, this.width, getHeight());
                    float f = strokeWidth / 2.0f;
                    this.loadingRect.inset(f, f);
                    this.loadingDrawable.setRadii((getHeight() / 2.0f) - f);
                    this.loadingDrawable.setBounds(this.loadingRect);
                    this.loadingDrawable.setColors(Theme.multAlpha(this.textColor, 0.07f), Theme.multAlpha(this.textColor, 0.175f), Theme.multAlpha(this.textColor, 0.175f), Theme.multAlpha(this.textColor, 0.42f));
                    this.loadingDrawable.setAlpha(255);
                    this.loadingDrawable.draw(canvas);
                    this.invalidateRunnable.run();
                }
            }
        }

        public void setLoading(boolean z) {
            if (this.loading == z) {
                return;
            }
            this.loading = z;
            LoadingDrawable loadingDrawable = this.loadingDrawable;
            if (z) {
                if (loadingDrawable == null) {
                    LoadingDrawable loadingDrawable2 = new LoadingDrawable();
                    this.loadingDrawable = loadingDrawable2;
                    loadingDrawable2.setAppearByGradient(true);
                    this.loadingDrawable.strokePaint.setStrokeWidth(AndroidUtilities.dpf2(1.25f));
                } else {
                    loadingDrawable.reset();
                    this.loadingDrawable.resetDisappear();
                }
            } else if (loadingDrawable != null) {
                loadingDrawable.disappear();
            }
            this.invalidateRunnable.run();
        }

        public boolean isLoading() {
            return this.loading;
        }

        public void setPressed(boolean z) {
            if (this.pressed == z) {
                return;
            }
            this.pressed = z;
            this.invalidateRunnable.run();
            if (z) {
                ValueAnimator valueAnimator = this.pressAnimator;
                if (valueAnimator != null) {
                    valueAnimator.removeAllListeners();
                    this.pressAnimator.cancel();
                    this.pressAnimator = null;
                    return;
                }
                return;
            }
            float f = this.pressT;
            if (f != 0.0f) {
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, 0.0f);
                this.pressAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.messenger.RichMessageLayout$RichButton$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$setPressed$0(valueAnimator2);
                    }
                });
                this.pressAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.messenger.RichMessageLayout.RichButton.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        RichButton.this.pressAnimator = null;
                    }
                });
                this.pressAnimator.setInterpolator(new OvershootInterpolator(this.inline ? 3.5f : 2.0f));
                this.pressAnimator.setDuration(this.inline ? 420L : 350L);
                this.pressAnimator.start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setPressed$0(ValueAnimator valueAnimator) {
            this.pressT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.invalidateRunnable.run();
        }

        public float getPressScale() {
            if (this.pressed) {
                float f = this.pressT;
                if (f != 1.0f) {
                    float fMin = f + (Math.min(40.0f, 1000.0f / AndroidUtilities.screenRefreshRate) / 100.0f);
                    this.pressT = fMin;
                    this.pressT = Utilities.clamp(fMin, 1.0f, 0.0f);
                    this.invalidateRunnable.run();
                }
            }
            float f2 = this.inline ? PRESS_SCALE_INLINE : PRESS_SCALE;
            return (1.0f - f2) + (f2 * (1.0f - this.pressT));
        }

        public boolean contains(float f) {
            int i = this.f977x;
            return f >= ((float) i) && f <= ((float) (i + this.width));
        }

        public void attach(View view) {
            this.text.attach(view);
        }

        public void detach(View view) {
            this.text.detach(view);
        }

        private static int getButtonIcon(TL_keyboard.InlineButtonType inlineButtonType) {
            if (inlineButtonType instanceof TL_keyboard.TL_inlineButtonTypeCopy) {
                return C2807R.drawable.mini_inline_copy_16;
            }
            if (inlineButtonType instanceof TL_keyboard.TL_inlineButtonTypeUrlAuth) {
                return C2807R.drawable.mini_inline_arrow_16;
            }
            if (inlineButtonType instanceof TL_keyboard.TL_inlineButtonTypeUrl) {
                if (LinkManager.isWebAppLink(((TL_keyboard.TL_inlineButtonTypeUrl) inlineButtonType).url)) {
                    return C2807R.drawable.bot_webview;
                }
                return C2807R.drawable.mini_inline_arrow_16;
            }
            if (inlineButtonType instanceof TL_keyboard.TL_inlineButtonTypeWebView) {
                return C2807R.drawable.bot_webview;
            }
            if (inlineButtonType instanceof TL_keyboard.TL_inlineButtonTypeSwitchInline) {
                return C2807R.drawable.mini_inline_switch_16;
            }
            if (inlineButtonType instanceof TL_keyboard.TL_inlineButtonTypeBuy) {
                return C2807R.drawable.bot_card;
            }
            if (inlineButtonType instanceof TL_keyboard.TL_inlineButtonTypeUserProfile) {
                return C2807R.drawable.mini_inline_profile_16;
            }
            return 0;
        }
    }

    public static class RichButtonSpan extends ReplacementSpan {
        private static final int MARGIN_HORIZONTAL = 1;
        private final RectF bounds;
        private final RichButton button;
        private int minimumLineHeight;
        private boolean preserveFontMetrics;
        private float scale;
        private final TL_iv.textButton textButton;

        /* JADX INFO: renamed from: v */
        private View f978v;

        public RichButtonSpan(RichMessageLayout richMessageLayout, int i, TL_iv.textButton textbutton) {
            this(richMessageLayout, i, textbutton, null);
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x003b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private RichButtonSpan(RichMessageLayout richMessageLayout, int i, TL_iv.textButton textbutton, Boolean bool) {
            boolean z;
            boolean z2;
            int blockFlags;
            this.bounds = new RectF();
            this.textButton = textbutton;
            TL_iv.RichText richText = textbutton.text;
            if (richText instanceof TL_iv.textConcat) {
                TL_iv.textConcat textconcat = (TL_iv.textConcat) richText;
                if (textconcat.texts.isEmpty()) {
                    z = false;
                    z2 = false;
                } else {
                    boolean z3 = textconcat.texts.get(0) instanceof TL_iv.textCustomEmoji;
                    ArrayList<TL_iv.RichText> arrayList = textconcat.texts;
                    z2 = arrayList.get(arrayList.size() - 1) instanceof TL_iv.textCustomEmoji;
                    z = z3;
                }
            }
            TL_keyboard.RichButtonStyle richButtonStyle = textbutton.style;
            boolean z4 = richButtonStyle != null && richButtonStyle.link;
            if (z4) {
                blockFlags = RichMessageLayout.setBlockFlags(512, 0);
            } else {
                blockFlags = RichMessageLayout.setBlockFlags(16, 13);
            }
            CharSequence text = richMessageLayout.formatText(textbutton.text, blockFlags);
            TL_keyboard.InlineButtonType inlineButtonType = textbutton.type;
            RichButton richButton = new RichButton(richMessageLayout, i, text, null, inlineButtonType, textbutton.style, inlineButtonType instanceof TL_keyboard.TL_inlineButtonTypeDisabled, true, z, z2, z4, true, bool, new Runnable() { // from class: org.telegram.messenger.RichMessageLayout$RichButtonSpan$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.invalidate();
                }
            });
            this.button = richButton;
            richButton.width = richButton.getPreferredWidth();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void invalidate() {
            View view = this.f978v;
            if (view != null) {
                view.invalidate();
            }
        }

        public RichButton getButton() {
            return this.button;
        }

        @Override // android.text.style.ReplacementSpan
        public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
            boolean z = this.preserveFontMetrics && fontMetricsInt != null;
            int i3 = z ? fontMetricsInt.top : 0;
            int i4 = z ? fontMetricsInt.ascent : 0;
            int i5 = z ? fontMetricsInt.descent : 0;
            int i6 = z ? fontMetricsInt.bottom : 0;
            int i7 = z ? fontMetricsInt.leading : 0;
            int iDp = AndroidUtilities.dp(8.0f);
            int iDp2 = AndroidUtilities.dp(10.0f);
            if (fontMetricsInt != null && this.button.link) {
                float f = (-iDp2) - iDp;
                float f2 = this.scale;
                fontMetricsInt.top = (int) (f * f2);
                float f3 = iDp2 - iDp;
                fontMetricsInt.bottom = (int) (f3 * f2);
                fontMetricsInt.ascent = (int) (f * f2);
                fontMetricsInt.descent = (int) (f3 * f2);
                fontMetricsInt.leading = 0;
            }
            if (z) {
                fontMetricsInt.top = i3;
                fontMetricsInt.ascent = i4;
                fontMetricsInt.descent = i5;
                fontMetricsInt.bottom = i6;
                fontMetricsInt.leading = i7;
                expandFontMetrics(fontMetricsInt, this.minimumLineHeight);
            }
            RichButton richButton = this.button;
            return richButton.width + (richButton.link ? 0 : AndroidUtilities.dp(1.0f) * 2);
        }

        private static void expandFontMetrics(Paint.FontMetricsInt fontMetricsInt, int i) {
            int i2 = fontMetricsInt.descent;
            int i3 = fontMetricsInt.ascent;
            int i4 = i2 - i3;
            if (i <= i4) {
                return;
            }
            int i5 = i - i4;
            int i6 = (i5 + 1) / 2;
            int i7 = i3 - i6;
            fontMetricsInt.ascent = i7;
            fontMetricsInt.descent = i2 + (i5 - i6);
            fontMetricsInt.top = Math.min(fontMetricsInt.top, i7);
            fontMetricsInt.bottom = Math.max(fontMetricsInt.bottom, fontMetricsInt.descent);
        }

        @Override // android.text.style.ReplacementSpan
        public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
            float f2;
            int i6 = (this.button.text.getEmojiOnlyCount() <= 0 || this.minimumLineHeight <= 0) ? 0 : 1;
            if (i6 == 0 && this.button.text.getEmojiOnlyCount() > 0 && (charSequence instanceof Spanned)) {
                StyleSpan[] styleSpanArr = (StyleSpan[]) ((Spanned) charSequence).getSpans(i, i2, StyleSpan.class);
                int length = styleSpanArr.length;
                int i7 = 0;
                while (true) {
                    if (i7 >= length) {
                        break;
                    }
                    if ((styleSpanArr[i7].flags & 15) == 14) {
                        i6 = 1;
                        break;
                    }
                    i7++;
                }
            }
            if (i6 != 0) {
                f2 = (i3 + i5) / 2.0f;
            } else {
                Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
                f2 = ((fontMetricsInt.ascent + fontMetricsInt.descent) / 2.0f) + i4;
            }
            canvas.save();
            int iRound = Math.round(f + (this.button.link ? 0 : AndroidUtilities.dp(1.0f)));
            int iCeil = (int) Math.ceil((f2 - (this.button.getHeight() / 2.0f)) + (i6 ^ 1));
            RectF rectF = this.bounds;
            float f3 = iRound;
            float f4 = iCeil;
            RichButton richButton = this.button;
            rectF.set(f3, f4, iRound + richButton.width, iCeil + richButton.getHeight());
            canvas.translate(f3, f4);
            this.button.draw(canvas);
            canvas.restore();
        }

        public boolean isDisabled() {
            return this.button.isDisabled;
        }

        public boolean contains(float f, float f2) {
            return this.bounds.contains(f, f2);
        }

        public boolean contains(float f, float f2, float f3) {
            RectF rectF = this.bounds;
            return f >= rectF.left - f3 && f < rectF.right + f3 && f2 >= rectF.top - f3 && f2 < rectF.bottom + f3;
        }

        public void setPressed(boolean z) {
            this.button.setPressed(z);
        }

        public void didPress(ChatMessageCell chatMessageCell, ChatMessageCell.ChatMessageCellDelegate chatMessageCellDelegate, boolean z) {
            if (chatMessageCell == null || chatMessageCellDelegate == null) {
                return;
            }
            TL_iv.textButton textbutton = this.textButton;
            if (z) {
                chatMessageCellDelegate.didLongPressBotButton(chatMessageCell, textbutton);
            } else {
                chatMessageCellDelegate.didPressBotButton(chatMessageCell, textbutton);
            }
        }

        public void attach(View view) {
            this.f978v = view;
            this.button.attach(view);
        }

        public void detach(View view) {
            this.f978v = null;
            this.button.detach(view);
        }
    }

    public static class RichPreformattedBlock extends RichBlock {
        private static final int BACKGROUND_OUTER_VPAD = 7;
        private static final int HPAD = 0;
        private static final int SCROLLBAR_HEIGHT = 5;
        private static final int SCROLLBAR_HPAD = 6;
        private static final int SCROLLBAR_VPAD = 7;
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

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public CharSequence getAccessibilityLabel() {
            CharSequence accessibilityLabel = super.getAccessibilityLabel();
            if (!TextUtils.isEmpty(this.language)) {
                String strCapitalizeLanguage = MessageObject.TextLayoutBlock.capitalizeLanguage(this.language);
                if (!TextUtils.isEmpty(strCapitalizeLanguage)) {
                    return TextUtils.concat(accessibilityLabel, " (", strCapitalizeLanguage, ")");
                }
            }
            return accessibilityLabel;
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
                this.content.setSpan(new QuoteRootSpan(pageblockpreformatted.text, 0), 0, this.content.length(), 33);
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
            Text text = new Text(richMessageLayout, this.content, AndroidUtilities.dp(5000.0f), Layout.Alignment.ALIGN_NORMAL, 1.3f);
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
            int i;
            Paint paint = this.bgPaint;
            RichMessageLayout richMessageLayout = this.root;
            if (richMessageLayout.isOut()) {
                i = Theme.key_chat_outArticleCodeBackground;
            } else {
                i = Theme.key_chat_inArticleCodeBackground;
            }
            paint.setColor(richMessageLayout.getThemedColor(i));
            int i2 = this.padding.left;
            RichMessageLayout richMessageLayout2 = this.root;
            if (i2 > 0) {
                int minWidth = richMessageLayout2.getMinWidth();
                Rect rect = this.padding;
                canvas.drawRect(0.0f, 0.0f, (minWidth - rect.left) - rect.right, getBackgroundHeight(), this.bgPaint);
                return;
            }
            canvas.drawRect(-richMessageLayout2.padLeft, 0.0f, richMessageLayout2.getMinWidth() + this.root.padRight, getBackgroundHeight(), this.bgPaint);
        }

        private int getBackgroundHeight() {
            return this.text.getHeight() + AndroidUtilities.dp(16.0f) + (this.maxScrollX > 0 ? AndroidUtilities.dp(19.0f) : 0);
        }

        private void drawScrollbar(Canvas canvas) {
            float f;
            float f2;
            int i;
            int i2;
            if (this.maxScrollX <= 0) {
                return;
            }
            int i3 = this.padding.left;
            RichMessageLayout richMessageLayout = this.root;
            if (i3 > 0) {
                int minWidth = richMessageLayout.getMinWidth();
                Rect rect = this.padding;
                f2 = (minWidth - rect.left) - rect.right;
                f = 0.0f;
            } else {
                float f3 = -richMessageLayout.padLeft;
                float minWidth2 = richMessageLayout.getMinWidth() + this.root.padRight;
                f = f3;
                f2 = minWidth2;
            }
            float fDp = f + AndroidUtilities.dp(6.0f);
            float fDp2 = f2 - AndroidUtilities.dp(6.0f);
            if (fDp2 <= fDp) {
                return;
            }
            float height = this.text.getHeight() + AndroidUtilities.dp(23.0f);
            float fDp3 = height + AndroidUtilities.dp(5.0f);
            float fDp4 = AndroidUtilities.dp(2.5f);
            Paint paint = this.bgPaint;
            RichMessageLayout richMessageLayout2 = this.root;
            if (richMessageLayout2.isOut()) {
                i = Theme.key_chat_outArticleCodeScrollbarBackground;
            } else {
                i = Theme.key_chat_inArticleCodeScrollbarBackground;
            }
            paint.setColor(richMessageLayout2.getThemedColor(i));
            canvas.drawRoundRect(fDp, height, fDp2, fDp3, fDp4, fDp4, this.bgPaint);
            float f4 = fDp2 - fDp;
            float fMin = Math.min(f4, Math.max(AndroidUtilities.dp(5.0f), (this.viewportWidth * f4) / this.contentWidth));
            float f5 = fDp + (((f4 - fMin) * this.scrollX) / this.maxScrollX);
            Paint paint2 = this.bgPaint;
            RichMessageLayout richMessageLayout3 = this.root;
            if (richMessageLayout3.isOut()) {
                i2 = Theme.key_chat_outArticleCodeScrollbar;
            } else {
                i2 = Theme.key_chat_inArticleCodeScrollbar;
            }
            paint2.setColor(richMessageLayout3.getThemedColor(i2));
            canvas.drawRoundRect(f5, height, f5 + fMin, fDp3, fDp4, fDp4, this.bgPaint);
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
            canvas.save();
            canvas.translate(0.0f, AndroidUtilities.dp(7.0f));
            drawBackground(canvas);
            drawTextContent(canvas, false, 0, 0.0f);
            drawScrollbar(canvas);
            canvas.restore();
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDrawFaded(Canvas canvas, int i, float f) {
            StaticLayout staticLayout = this.text.layout;
            if (staticLayout == null || i < 0 || i >= staticLayout.getLineCount()) {
                onDraw(canvas);
                return;
            }
            canvas.save();
            canvas.translate(0.0f, AndroidUtilities.dp(7.0f));
            drawBackground(canvas);
            drawTextContent(canvas, true, i, f);
            drawScrollbar(canvas);
            canvas.restore();
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock, org.telegram.ui.MultiLayoutTypingAnimator.Block
        public Layout getLayout() {
            return this.text.layout;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getHeight() {
            return this.padding.top + (AndroidUtilities.dp(7.0f) * 2) + getBackgroundHeight() + this.padding.bottom;
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
            float fDp2 = AndroidUtilities.dp(15.0f);
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
            foundLink.f971x = ((this.padding.left + AndroidUtilities.dp(0.0f)) - this.scrollX) - this.text.left;
            foundLink.f972y = i + this.padding.top + AndroidUtilities.dp(15.0f);
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
            this.text.setY(i2 + AndroidUtilities.dp(15.0f));
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
            int i2 = this.maxWidth;
            this.viewportWidth = i2;
            Latex latexRender = (pageblockmath == null || TextUtils.isEmpty(pageblockmath.source)) ? null : Latex.render(pageblockmath.source, AndroidUtilities.dp(richMessageLayout.fontSize + 4), false);
            if (latexRender != null) {
                this.bitmap = latexRender.bitmap;
                this.contentW = latexRender.width;
                this.contentH = latexRender.height;
            }
            int iDp = this.contentW + (AndroidUtilities.dp(0.0f) * 2);
            this.contentWidth = iDp;
            this.maxScrollX = Math.max(0, iDp - i2);
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
            foundLink.f971x = (this.padding.left + rtlOffset()) - this.text.left;
            foundLink.f972y = i + this.padding.top;
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

        public abstract TL_iv.PageBlock getBlock();

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getBlockAccessibilityElementCount() {
            return 1;
        }

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
            int i2 = (!this.first || this.root.hasNameOffset() || (!this.root.isOut() && this.root.isPinnedTop())) ? iMin : iDp;
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
        public CharSequence getBlockAccessibilityElementText(int i) {
            String string = LocaleController.getString(isRealVideo() ? C2807R.string.AttachVideo : C2807R.string.AttachPhoto);
            return (!isSpoiler() || this.spoilerReveal.fullyRevealed()) ? string : TextUtils.concat(string, ", ", LocaleController.getString(C2807R.string.Spoiler));
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void getBlockAccessibilityElementBounds(int i, Rect rect) {
            int imageLeft = this.padding.left + getImageLeft();
            int i2 = ((int) this.currY) + this.padding.top;
            rect.set(imageLeft, i2, this.imgWidth + imageLeft, this.imgHeight + i2);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean onBlockAccessibilityElementClick(int i, View view) {
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
            RadialProgress2 radialProgress2 = this.radialProgress;
            if (radialProgress2 != null || this.view == null) {
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
            RadialProgress2 radialProgress23 = new RadialProgress2(this.view);
            this.radialProgress = radialProgress23;
            radialProgress23.setStyle(1);
            this.radialProgress.setProgressColor(-1);
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
            int i2 = photoSize != null ? photoSize.f1019w : 100;
            int i3 = photoSize != null ? photoSize.f1018h : 100;
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
                        i3 = documentAttribute.f1017w;
                        i2 = documentAttribute.f1016h;
                        break;
                    }
                    i4++;
                }
                if (i3 <= 0 || i2 <= 0) {
                    TLRPC.PhotoSize photoSize = this.previewThumb;
                    i3 = photoSize != null ? photoSize.f1019w : 100;
                    i2 = photoSize != null ? photoSize.f1018h : 100;
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
            int i2 = pageblockmap.f1051w;
            i2 = i2 <= 0 ? 100 : i2;
            int i3 = pageblockmap.f1050h;
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
                    this.redPinIcon = ContextCompat.getDrawable(view.getContext(), C2807R.drawable.map_pin).mutate();
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
                            FileLog.m1040e(e);
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
        private int layoutWidth;
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
            this.layoutWidth = -1;
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
            int i = this.maxWidth;
            RichMessageLayout richMessageLayout = this.root;
            this.layoutWidth = i + richMessageLayout.padLeft + richMessageLayout.padRight;
            int iDp = this.buttonX + AndroidUtilities.dp(50.0f) + this.size;
            this.seekBarX = iDp;
            this.seekBarWidth = Math.max(0, (this.layoutWidth - iDp) - AndroidUtilities.dp(18.0f));
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
                int iDp2 = this.seekBarWidth + AndroidUtilities.dp(50.0f);
                this.titleLayout = new StaticLayout(TextUtils.ellipsize(spannableStringBuilder, this.audioTimePaint, iDp2, TextUtils.TruncateAt.END), this.audioTimePaint, iDp2, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
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

        private boolean canStream() {
            MessageObject messageObject;
            return (!SharedConfig.streamMedia || (messageObject = this.currentMessageObject) == null || !messageObject.isMusic() || this.currentMessageObject.shouldEncryptPhotoOrVideo() || DialogObject.isEncryptedDialog(this.currentMessageObject.getDialogId())) ? false : true;
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
                if (canStream()) {
                    this.buttonState = (!MediaController.getInstance().isPlayingMessage(this.currentMessageObject) || MediaController.getInstance().isMessagePaused()) ? 0 : 1;
                    this.radialProgress.setIcon(getIconForCurrentState(), false, z);
                } else {
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
                if (MediaController.getInstance().lambda$startAudioAgain$9(this.currentMessageObject)) {
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
            int i = this.layoutWidth;
            int i2 = this.maxWidth;
            RichMessageLayout richMessageLayout = this.root;
            if (i != i2 + richMessageLayout.padLeft + richMessageLayout.padRight) {
                layoutInner();
            }
            canvas.save();
            canvas.translate(-this.root.padLeft, 0.0f);
            this.radialProgress.setColorKeys(this.root.isOut() ? Theme.key_chat_outLoader : Theme.key_chat_inLoader, this.root.isOut() ? Theme.key_chat_outLoaderSelected : Theme.key_chat_inLoaderSelected, this.root.isOut() ? Theme.key_chat_outMediaIcon : Theme.key_chat_inMediaIcon, this.root.isOut() ? Theme.key_chat_outMediaIconSelected : Theme.key_chat_inMediaIconSelected);
            RadialProgress2 radialProgress2 = this.radialProgress;
            RichMessageLayout richMessageLayout2 = this.root;
            radialProgress2.setProgressColor(richMessageLayout2.getThemedColor(richMessageLayout2.isOut() ? Theme.key_chat_outFileProgress : Theme.key_chat_inFileProgress));
            this.radialProgress.draw(canvas);
            SeekBar seekBar = this.seekBar;
            RichMessageLayout richMessageLayout3 = this.root;
            int themedColor = richMessageLayout3.getThemedColor(richMessageLayout3.isOut() ? Theme.key_chat_outAudioSeekbar : Theme.key_chat_inAudioSeekbar);
            RichMessageLayout richMessageLayout4 = this.root;
            int themedColor2 = richMessageLayout4.getThemedColor(richMessageLayout4.isOut() ? Theme.key_chat_outAudioCacheSeekbar : Theme.key_chat_inAudioCacheSeekbar);
            RichMessageLayout richMessageLayout5 = this.root;
            int themedColor3 = richMessageLayout5.getThemedColor(richMessageLayout5.isOut() ? Theme.key_chat_outAudioSeekbarFill : Theme.key_chat_inAudioSeekbarFill);
            RichMessageLayout richMessageLayout6 = this.root;
            int themedColor4 = richMessageLayout6.getThemedColor(richMessageLayout6.isOut() ? Theme.key_chat_outAudioSeekbarFill : Theme.key_chat_inAudioSeekbarFill);
            RichMessageLayout richMessageLayout7 = this.root;
            seekBar.setColors(themedColor, themedColor2, themedColor3, themedColor4, richMessageLayout7.getThemedColor(richMessageLayout7.isOut() ? Theme.key_chat_outAudioSeekbarSelected : Theme.key_chat_inAudioSeekbarSelected));
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

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            float x = motionEvent.getX() + this.root.padLeft;
            float y = motionEvent.getY();
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
                        if (y >= this.buttonY && y <= r0 + AndroidUtilities.dp(48.0f)) {
                            this.buttonPressed = true;
                            View view2 = this.view;
                            if (view2 != null) {
                                view2.invalidate();
                            }
                            return true;
                        }
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
                this.radialProgress.setStyle(1);
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

    public static class RichDocumentBlock extends RichBlock implements DownloadController.FileDownloadProgressListener {
        private static final int MIN_WIDTH_DP = 220;
        public final TL_iv.pageBlockDocument block;
        private final int buttonSize;
        private int buttonState;
        private final int buttonTextSpacing;
        private final int buttonX;
        private final int buttonY;
        private final TLRPC.Document document;
        private final boolean hasPreview;
        private int layoutWidth;
        private final int observerTag;
        private final RectF optionsHit;
        private boolean optionsPressed;
        private boolean pressed;
        private final Paint previewBackgroundPaint;
        private final ImageReceiver previewImage;
        private final int previewX;
        private final RadialProgress2 radialProgress;
        private StaticLayout sizeLayout;
        private final TextPaint sizePaint;
        private StaticLayout titleLayout;
        private final TextPaint titlePaint;

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onProgressUpload(String str, long j, long j2, boolean z) {
        }

        public RichDocumentBlock(RichMessageLayout richMessageLayout, Rect rect, int i, TL_iv.pageBlockDocument pageblockdocument) {
            super(richMessageLayout, rect, i);
            ImageReceiver imageReceiver = new ImageReceiver();
            this.previewImage = imageReceiver;
            this.previewBackgroundPaint = new Paint(1);
            this.titlePaint = new TextPaint(1);
            this.sizePaint = new TextPaint(1);
            int iDp = AndroidUtilities.dp(16.0f);
            this.buttonX = iDp;
            int iDp2 = AndroidUtilities.dp(9.0f);
            this.buttonY = iDp2;
            int iDp3 = AndroidUtilities.dp(42.0f);
            this.buttonSize = iDp3;
            this.buttonTextSpacing = AndroidUtilities.dp(14.0f);
            this.optionsHit = new RectF();
            this.layoutWidth = -1;
            this.block = pageblockdocument;
            TLRPC.Document document = richMessageLayout.getDocument(pageblockdocument.document_id);
            this.document = document;
            int iDp4 = richMessageLayout.padLeft + AndroidUtilities.dp(10.0f);
            this.previewX = iDp4;
            boolean zIsDocumentHasThumb = MessageObject.isDocumentHasThumb(document);
            this.hasPreview = zIsDocumentHasThumb;
            this.observerTag = DownloadController.getInstance(richMessageLayout.currentAccount).generateObserverTag();
            RadialProgress2 radialProgress2 = new RadialProgress2(null);
            this.radialProgress = radialProgress2;
            radialProgress2.setCircleRadius(iDp3 / 2);
            iDp = zIsDocumentHasThumb ? ((AndroidUtilities.dp(86.0f) - iDp3) / 2) + iDp4 : iDp;
            iDp2 = zIsDocumentHasThumb ? AndroidUtilities.dp(10.0f) + ((AndroidUtilities.dp(86.0f) - iDp3) / 2) : iDp2;
            radialProgress2.setProgressRect(iDp, iDp2, iDp + iDp3, iDp3 + iDp2);
            imageReceiver.setRoundRadius(AndroidUtilities.dp(6.0f));
            imageReceiver.setAllowLoadingOnAttachedOnly(true);
            if (zIsDocumentHasThumb) {
                TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 320, false, null, true);
                imageReceiver.setImageCoords(iDp4, AndroidUtilities.dp(10.0f), AndroidUtilities.dp(86.0f), AndroidUtilities.dp(86.0f));
                imageReceiver.setImage(closestPhotoSizeWithSize != null ? ImageLocation.getForDocument(closestPhotoSizeWithSize, document) : null, "86_86", ImageLoader.createStripedBitmap(document.thumbs), null, richMessageLayout.messageObject, 1);
            }
            rebuildLayouts();
            updateButtonState(false);
        }

        private void rebuildLayouts() {
            int i;
            int iDp;
            this.layoutWidth = getLayoutWidth();
            if (this.hasPreview) {
                i = this.previewX;
                iDp = AndroidUtilities.dp(97.0f);
            } else {
                i = this.buttonX + this.buttonSize;
                iDp = this.buttonTextSpacing;
            }
            int iMax = Math.max(AndroidUtilities.dp(40.0f), (this.layoutWidth - (i + iDp)) - AndroidUtilities.dp(48.0f));
            this.titlePaint.setTextSize(AndroidUtilities.dp(this.root.fontSize - 1));
            this.titlePaint.setTypeface(AndroidUtilities.bold());
            this.sizePaint.setTextSize(AndroidUtilities.dp(this.root.fontSize - 3));
            TLRPC.Document document = this.document;
            String fileSize = _UrlKt.FRAGMENT_ENCODE_SET;
            CharSequence charSequenceEllipsize = TextUtils.ellipsize(document == null ? _UrlKt.FRAGMENT_ENCODE_SET : FileLoader.getDocumentFileName(document), this.titlePaint, iMax, TextUtils.TruncateAt.END);
            TextPaint textPaint = this.titlePaint;
            Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
            this.titleLayout = new StaticLayout(charSequenceEllipsize, textPaint, iMax, alignment, 1.0f, 0.0f, false);
            TLRPC.Document document2 = this.document;
            if (document2 != null) {
                fileSize = AndroidUtilities.formatFileSize(document2.size);
            }
            this.sizeLayout = new StaticLayout(fileSize, this.sizePaint, iMax, alignment, 1.0f, 0.0f, false);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getHeight() {
            return this.padding.top + AndroidUtilities.dp(this.hasPreview ? 106.0f : 60.0f) + this.padding.bottom;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getMinWidth() {
            TLRPC.Document document = this.document;
            String fileSize = _UrlKt.FRAGMENT_ENCODE_SET;
            String documentFileName = document == null ? _UrlKt.FRAGMENT_ENCODE_SET : FileLoader.getDocumentFileName(document);
            TLRPC.Document document2 = this.document;
            if (document2 != null) {
                fileSize = AndroidUtilities.formatFileSize(document2.size);
            }
            int iMin = Math.min(this.maxWidth, Math.max(AndroidUtilities.dp(220.0f), (this.hasPreview ? AndroidUtilities.dp(107.0f) : this.buttonX + this.buttonSize + this.buttonTextSpacing) + ((int) Math.ceil(Math.max(this.titlePaint.measureText(documentFileName), this.sizePaint.measureText(fileSize)))) + AndroidUtilities.dp(48.0f)));
            Rect rect = this.padding;
            return rect.left + iMin + rect.right;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public int getLastLineWidth() {
            int iCeil;
            int iDp;
            if (this.hasPreview) {
                iDp = (this.previewX - this.root.padLeft) + AndroidUtilities.dp(86.0f);
            } else {
                StaticLayout staticLayout = this.sizeLayout;
                if (staticLayout == null || staticLayout.getLineCount() <= 0) {
                    iCeil = 0;
                } else {
                    StaticLayout staticLayout2 = this.sizeLayout;
                    iCeil = (int) Math.ceil(staticLayout2.getLineWidth(staticLayout2.getLineCount() - 1));
                }
                iDp = iCeil + (this.buttonX - this.root.padLeft) + this.buttonSize + this.buttonTextSpacing;
            }
            Rect rect = this.padding;
            return rect.left + iDp + rect.right;
        }

        private int getLayoutWidth() {
            int minWidth = this.root.getMinWidth();
            int iMin = this.maxWidth;
            if (minWidth > 0) {
                Rect rect = this.padding;
                iMin = Math.min(iMin, Math.max(0, (minWidth - rect.left) - rect.right));
            }
            RichMessageLayout richMessageLayout = this.root;
            return iMin + richMessageLayout.padLeft + richMessageLayout.padRight;
        }

        private File path() {
            if (this.document == null) {
                return null;
            }
            File pathToAttach = FileLoader.getInstance(this.root.currentAccount).getPathToAttach(this.document, false);
            return (pathToAttach == null || !pathToAttach.exists()) ? FileLoader.getInstance(this.root.currentAccount).getPathToAttach(this.document, true) : pathToAttach;
        }

        public void updateButtonState(boolean z) {
            boolean z2 = this.hasPreview;
            RadialProgress2 radialProgress2 = this.radialProgress;
            if (z2) {
                radialProgress2.setColorKeys(Theme.key_chat_mediaLoaderPhoto, Theme.key_chat_mediaLoaderPhotoSelected, Theme.key_chat_mediaLoaderPhotoIcon, Theme.key_chat_mediaLoaderPhotoIconSelected);
                this.radialProgress.setProgressColor(this.root.getThemedColor(Theme.key_chat_mediaProgress));
            } else {
                radialProgress2.setColorKeys(this.root.isOut() ? Theme.key_chat_outLoader : Theme.key_chat_inLoader, this.root.isOut() ? Theme.key_chat_outLoaderSelected : Theme.key_chat_inLoaderSelected, this.root.isOut() ? Theme.key_chat_outMediaIcon : Theme.key_chat_inMediaIcon, this.root.isOut() ? Theme.key_chat_outMediaIconSelected : Theme.key_chat_inMediaIconSelected);
                RadialProgress2 radialProgress22 = this.radialProgress;
                RichMessageLayout richMessageLayout = this.root;
                radialProgress22.setProgressColor(richMessageLayout.getThemedColor(richMessageLayout.isOut() ? Theme.key_chat_outFileProgress : Theme.key_chat_inFileProgress));
            }
            String attachFileName = FileLoader.getAttachFileName(this.document);
            File filePath = path();
            if (filePath != null && filePath.exists()) {
                DownloadController.getInstance(this.root.currentAccount).removeLoadingFileObserver(this);
                this.buttonState = 0;
                this.radialProgress.setIcon(this.hasPreview ? 4 : ExteraFileHandler.getFileIcon(filePath, FileLoader.getDocumentFileName(this.document), null), false, z);
            } else if (!TextUtils.isEmpty(attachFileName)) {
                DownloadController.getInstance(this.root.currentAccount).addLoadingFileObserver(attachFileName, null, this);
                if (FileLoader.getInstance(this.root.currentAccount).isLoadingFile(attachFileName)) {
                    this.buttonState = 2;
                    Float fileProgress = ImageLoader.getInstance().getFileProgress(attachFileName);
                    this.radialProgress.setProgress(fileProgress != null ? fileProgress.floatValue() : 0.0f, z);
                    this.radialProgress.setIcon(3, true, z);
                } else {
                    this.buttonState = 1;
                    this.radialProgress.setProgress(0.0f, z);
                    this.radialProgress.setIcon(2, false, z);
                }
            } else {
                this.radialProgress.setIcon(4, false, z);
            }
            View view = this.view;
            if (view != null) {
                view.invalidate();
            }
        }

        private void press() {
            int i = this.buttonState;
            if (i == 0) {
                View view = this.view;
                Activity activityFindActivity = findActivity(view == null ? null : view.getContext());
                File filePath = path();
                if (activityFindActivity != null && filePath != null && (this.root.cell == null || this.root.delegate == null || !this.root.delegate.didPressRichDocument(this.root.cell, this.document, filePath))) {
                    AndroidUtilities.openForView(filePath, FileLoader.getDocumentFileName(this.document), this.document.mime_type, activityFindActivity, this.root.resourcesProvider, false);
                }
            } else if (i == 1 && this.document != null) {
                FileLoader.getInstance(this.root.currentAccount).loadFile(this.document, this.root.messageObject, 1, 1);
                this.buttonState = 2;
                this.radialProgress.setIcon(3, true, true);
            } else if (i == 2 && this.document != null) {
                FileLoader.getInstance(this.root.currentAccount).cancelLoadFile(this.document);
                this.buttonState = 1;
                this.radialProgress.setIcon(2, false, true);
            }
            View view2 = this.view;
            if (view2 != null) {
                view2.invalidate();
            }
        }

        private static Activity findActivity(Context context) {
            while (context instanceof ContextWrapper) {
                if (context instanceof Activity) {
                    return (Activity) context;
                }
                context = ((ContextWrapper) context).getBaseContext();
            }
            if (context instanceof Activity) {
                return (Activity) context;
            }
            return null;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDraw(Canvas canvas) {
            Canvas canvas2;
            int i;
            int iDp;
            Drawable themedDrawable;
            if (this.document == null) {
                return;
            }
            if (this.layoutWidth != getLayoutWidth()) {
                rebuildLayouts();
            }
            canvas.save();
            canvas.translate(-this.root.padLeft, 0.0f);
            if (!this.hasPreview || this.previewImage.draw(canvas)) {
                canvas2 = canvas;
            } else {
                Paint paint = this.previewBackgroundPaint;
                RichMessageLayout richMessageLayout = this.root;
                paint.setColor(richMessageLayout.getThemedColor(richMessageLayout.isOut() ? Theme.key_chat_outFileBackground : Theme.key_chat_inFileBackground));
                canvas2 = canvas;
                canvas2.drawRoundRect(this.previewX, AndroidUtilities.dp(10.0f), this.previewX + AndroidUtilities.dp(86.0f), AndroidUtilities.dp(96.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), this.previewBackgroundPaint);
            }
            this.radialProgress.draw(canvas2);
            TextPaint textPaint = this.titlePaint;
            RichMessageLayout richMessageLayout2 = this.root;
            textPaint.setColor(richMessageLayout2.getThemedColor(richMessageLayout2.isOut() ? Theme.key_chat_outFileNameText : Theme.key_chat_inFileNameText));
            TextPaint textPaint2 = this.sizePaint;
            RichMessageLayout richMessageLayout3 = this.root;
            textPaint2.setColor(richMessageLayout3.getThemedColor(richMessageLayout3.isOut() ? Theme.key_chat_outTimeText : Theme.key_chat_inTimeText));
            if (this.hasPreview) {
                i = this.previewX;
                iDp = AndroidUtilities.dp(97.0f);
            } else {
                i = this.buttonX + this.buttonSize;
                iDp = this.buttonTextSpacing;
            }
            int i2 = i + iDp;
            int iDp2 = AndroidUtilities.dp(11.0f);
            int height = this.titleLayout.getHeight() + iDp2 + AndroidUtilities.dp(2.0f);
            canvas2.save();
            float f = i2;
            canvas2.translate(f, iDp2);
            this.titleLayout.draw(canvas2);
            canvas2.restore();
            canvas2.save();
            canvas2.translate(f, height);
            this.sizeLayout.draw(canvas2);
            canvas2.restore();
            if (canShowOptions()) {
                if (this.root.isOut()) {
                    themedDrawable = this.root.getThemedDrawable("drawableMsgOutMenu");
                } else {
                    themedDrawable = Theme.chat_msgInMenuDrawable;
                }
                int menuX = getMenuX();
                int iDp3 = AndroidUtilities.dp(7.0f);
                themedDrawable.setBounds(menuX, iDp3, themedDrawable.getIntrinsicWidth() + menuX, themedDrawable.getIntrinsicHeight() + iDp3);
                themedDrawable.draw(canvas2);
                this.optionsHit.set(menuX - AndroidUtilities.dp(8.0f), 0.0f, menuX + themedDrawable.getIntrinsicWidth() + AndroidUtilities.dp(8.0f), AndroidUtilities.dp(54.0f));
            } else {
                this.optionsHit.setEmpty();
            }
            canvas2.restore();
        }

        /* JADX WARN: Removed duplicated region for block: B:51:0x00e1  */
        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z;
            float x = motionEvent.getX() + this.root.padLeft;
            float y = motionEvent.getY();
            boolean zContains = this.optionsHit.contains(x, y);
            if (motionEvent.getActionMasked() == 0 && zContains) {
                this.optionsPressed = true;
                return true;
            }
            if (this.optionsPressed) {
                if (motionEvent.getActionMasked() == 2 && !zContains) {
                    this.optionsPressed = false;
                    return true;
                }
                if (motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 3) {
                    boolean z2 = motionEvent.getActionMasked() == 1 && zContains;
                    this.optionsPressed = false;
                    if (z2 && this.document != null && canShowOptions()) {
                        View view = this.view;
                        if (view != null) {
                            view.playSoundEffect(0);
                        }
                        this.root.delegate.didPressRichDocumentOptions(this.root.cell, this.document, ((this.root.cell.getTextX() + this.padding.left) - this.root.padLeft) + getMenuX(), this.root.cell.getTextY() + this.currY + this.padding.top + AndroidUtilities.dp(7.0f));
                    }
                    return true;
                }
            }
            if (x < (this.hasPreview ? this.previewX : this.buttonX) || x > this.layoutWidth - AndroidUtilities.dp(12.0f) || y < AndroidUtilities.dp(10.0f)) {
                z = false;
            } else {
                if (y <= AndroidUtilities.dp(this.hasPreview ? 96.0f : 53.0f)) {
                    z = true;
                }
            }
            if (motionEvent.getActionMasked() == 0 && z) {
                this.pressed = true;
                return true;
            }
            if (motionEvent.getActionMasked() == 1 && this.pressed) {
                this.pressed = false;
                if (z) {
                    View view2 = this.view;
                    if (view2 != null) {
                        view2.playSoundEffect(0);
                    }
                    press();
                }
                return true;
            }
            if (motionEvent.getActionMasked() == 3) {
                this.pressed = false;
            }
            return this.pressed;
        }

        private boolean canShowOptions() {
            return (this.document == null || this.root.cell == null || this.root.delegate == null || !this.root.delegate.canSaveRichDocument(this.root.cell)) ? false : true;
        }

        private int getMenuX() {
            return (this.layoutWidth + this.padding.right) - AndroidUtilities.dp(32.0f);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onAttachedToWindow() {
            View view = this.view;
            if (view != null) {
                this.radialProgress.setParent(view);
                this.radialProgress.setStyle(1);
                this.previewImage.setParentView(this.view);
            }
            this.previewImage.onAttachedToWindow();
            updateButtonState(false);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDetachedFromWindow() {
            this.previewImage.onDetachedFromWindow();
            DownloadController.getInstance(this.root.currentAccount).removeLoadingFileObserver(this);
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
            this.radialProgress.setProgress(j2 <= 0 ? 0.0f : Math.min(1.0f, j / j2), true);
            if (this.buttonState != 2) {
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
        public int f973h;
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
        public int f974w;

        /* JADX INFO: renamed from: x */
        public int f975x;

        /* JADX INFO: renamed from: y */
        public int f976y;

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
            this.aspectRatio = (photoSize == null || (i = photoSize.f1018h) <= 0) ? 1.0f : photoSize.f1019w / i;
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
                    if ((documentAttribute instanceof TLRPC.TL_documentAttributeVideo) && (i = documentAttribute.f1016h) > 0) {
                        f = documentAttribute.f1017w / i;
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
            this.f975x = i;
            this.f976y = i2;
            this.f974w = i3;
            this.f973h = i4;
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
            TLRPC.Photo photo = this.photo;
            if (photo != null && this.sizeFull != null) {
                TLRPC.PhotoSize photoSize = this.strippedSize;
                ImageLocation forPhoto = photoSize != null ? ImageLocation.getForPhoto(photoSize, photo) : null;
                ImageReceiver imageReceiver = this.imageReceiver;
                if (z) {
                    imageReceiver.setImage(null, null, ImageLocation.getForPhoto(this.sizeFull, this.photo), null, forPhoto, "b1", null, this.sizeFull.size, null, this.root.messageObject, 1);
                    return;
                } else {
                    imageReceiver.setImage(null, null, null, null, forPhoto, "b1", null, this.sizeFull.size, null, this.root.messageObject, 1);
                    return;
                }
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
                    return;
                }
                this.imageReceiver.setImage(null, null, forDocument2, null, forDocument, "b1", null, this.document.size, "mp4", this.root.messageObject, 1);
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
            radialProgress23.setStyle(1);
            this.radialProgress.setProgressColor(-1);
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
            if (f < this.f975x || f > r0 + this.f974w) {
                return false;
            }
            int i = this.f976y;
            return f2 >= ((float) i) && f2 <= ((float) (i + this.f973h));
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
            String string = LocaleController.getString(this.isVideo ? C2807R.string.AttachVideo : C2807R.string.AttachPhoto);
            return (!isSpoiler() || this.spoilerReveal.fullyRevealed()) ? string : TextUtils.concat(string, ", ", LocaleController.getString(C2807R.string.Spoiler));
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
                i2 = (!this.first || this.root.hasNameOffset() || (!this.root.isOut() && this.root.isPinnedTop())) ? iMin : iDp;
            } else {
                i2 = 0;
            }
            if (!z2 || !z5) {
                iDp = 0;
            } else if (!this.first || this.root.hasNameOffset() || (this.root.isOut() && this.root.isPinnedTop())) {
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
                int iRound = Math.round(mediaCell.f975x * f) - i;
                int iRound2 = Math.round(mediaCell.f974w * f);
                ImageReceiver imageReceiver = mediaCell.imageReceiver;
                int[] iArr = this.cellFlags;
                updateRoundRadius(imageReceiver, (iArr == null || i4 >= iArr.length) ? 0 : iArr[i4], zIsInQuote);
                float f2 = iRound;
                mediaCell.imageReceiver.setImageCoords(f2, mediaCell.f976y, iRound2, mediaCell.f973h);
                if (mediaCell.imageReceiver.hasBitmapImage() && mediaCell.imageReceiver.getCurrentAlpha() == 1.0f) {
                    canvas2 = canvas;
                } else {
                    canvas2 = canvas;
                    canvas2.drawRect(f2, mediaCell.f976y, iRound + iRound2, r10 + mediaCell.f973h, mediaBgPaint);
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
        public int getBlockAccessibilityElementCount() {
            return this.cells.size();
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public CharSequence getBlockAccessibilityElementText(int i) {
            if (i < 0 || i >= this.cells.size()) {
                return null;
            }
            return this.cells.get(i).getAccessibilityText();
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void getBlockAccessibilityElementBounds(int i, Rect rect) {
            if (i < 0 || i >= this.cells.size()) {
                return;
            }
            MediaCell mediaCell = this.cells.get(i);
            Rect rect2 = this.padding;
            int i2 = rect2.left + mediaCell.f975x;
            int i3 = ((int) this.currY) + rect2.top + mediaCell.f976y;
            rect.set(i2, i3, mediaCell.f974w + i2, mediaCell.f973h + i3);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean onBlockAccessibilityElementClick(int i, View view) {
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
        private static Paint slideDotPaint;
        public final TL_iv.pageBlockSlideshow block;
        public final ArrayList<MediaCell> cells;
        private final Path clipPath;
        private int currentPage;
        private int dotsHeight;
        private float downX;
        private float downY;
        private boolean dragging;
        public final boolean first;
        private int maxFlingVelocity;
        private int minFlingVelocity;
        private float pageOffset;
        private ValueAnimator settleAnimator;
        private int slideHeight;
        private int slideWidth;
        private int touchSlop;
        private VelocityTracker velocityTracker;
        private boolean verticalDragging;

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

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void onDraw(Canvas canvas) {
            float f;
            float f2;
            float f3;
            int i;
            int i2;
            int i3;
            int i4;
            int iDp;
            float fClamp;
            float f4;
            int i5;
            char c2;
            int i6;
            float f5;
            MediaCell mediaCell;
            if (this.cells.isEmpty()) {
                return;
            }
            int i7 = 1;
            if (mediaBgPaint == null) {
                Paint paint = new Paint(1);
                mediaBgPaint = paint;
                paint.setColor(251658240);
            }
            boolean zIsInQuote = isInQuote();
            int iDp2 = AndroidUtilities.dp(2.0f);
            int i8 = 0;
            int i9 = zIsInQuote ? 0 : this.root.padLeft - iDp2;
            int i10 = zIsInQuote ? 0 : this.root.padRight - iDp2;
            int i11 = this.slideWidth + i9 + i10;
            canvas.save();
            char c3 = 2;
            if (zIsInQuote) {
                int iDp3 = AndroidUtilities.dp(8.0f);
                this.clipPath.rewind();
                float f6 = iDp3;
                this.clipPath.addRoundRect(0.0f, 0.0f, this.slideWidth, this.slideHeight, f6, f6, Path.Direction.CW);
                canvas.clipPath(this.clipPath);
                i4 = iDp3;
                f = 2.0f;
                f2 = 3.0f;
                f3 = 8.0f;
                i = i4;
                i2 = i;
                i3 = i2;
            } else if (this.first) {
                int i12 = SharedConfig.bubbleRadius;
                if (i12 > 2) {
                    iDp = AndroidUtilities.dp(i12 - 2);
                } else {
                    iDp = AndroidUtilities.dp(i12);
                }
                int iMin = Math.min(AndroidUtilities.dp(3.0f), iDp);
                int i13 = ((this.root.isOut() || !this.root.isPinnedTop()) && !this.root.hasNameOffset()) ? iDp : iMin;
                if ((this.root.isOut() && this.root.isPinnedTop()) || this.root.hasNameOffset()) {
                    iDp = iMin;
                }
                float f7 = i13;
                float f8 = iDp;
                f = 2.0f;
                float f9 = iMin;
                f2 = 3.0f;
                this.clipPath.rewind();
                f3 = 8.0f;
                this.clipPath.addRoundRect(-i9, 0.0f, this.slideWidth + i10, this.slideHeight, new float[]{f7, f7, f8, f8, f9, f9, f9, f9}, Path.Direction.CW);
                canvas.clipPath(this.clipPath);
                i2 = iDp;
                i3 = iMin;
                i4 = i3;
                i = i13;
            } else {
                f = 2.0f;
                f2 = 3.0f;
                f3 = 8.0f;
                canvas.clipRect(-i9, 0, this.root.getMinWidth() + i10, this.slideHeight);
                i = 0;
                i2 = 0;
                i3 = 0;
                i4 = 0;
            }
            int i14 = this.currentPage;
            float f10 = 0.0f;
            if ((i14 == 0 && this.pageOffset < 0.0f) || (i14 == this.cells.size() - 1 && this.pageOffset > 0.0f)) {
                RichMessageLayout richMessageLayout = this.root;
                canvas.drawColor(Theme.multAlpha(richMessageLayout.getThemedColor(richMessageLayout.isOut() ? Theme.key_chat_outReplyNameText : Theme.key_chat_inReplyNameText), 0.2f));
            }
            float f11 = i11;
            float f12 = (-this.pageOffset) * f11;
            int i15 = this.currentPage - 1;
            while (i15 <= this.currentPage + i7) {
                if (i15 < 0 || i15 >= this.cells.size()) {
                    f4 = f11;
                    i5 = i7;
                    c2 = c3;
                    i6 = i15;
                    f5 = f10;
                } else {
                    MediaCell mediaCell2 = this.cells.get(i15);
                    canvas.save();
                    canvas.translate(((i15 - this.currentPage) * i11) + f12, f10);
                    c2 = c3;
                    i5 = i7;
                    mediaCell2.imageReceiver.setRoundRadius(i15 == 0 ? i : i8, i15 == this.cells.size() - i7 ? i2 : 0, i15 == this.cells.size() + (-1) ? i3 : 0, i15 == 0 ? i4 : 0);
                    mediaCell2.blurImageReceiver.setRoundRadius(i15 == 0 ? i : 0, i15 == this.cells.size() + (-1) ? i2 : 0, i15 == this.cells.size() + (-1) ? i3 : 0, i15 == 0 ? i4 : 0);
                    float f13 = -i9;
                    mediaCell2.imageReceiver.setImageCoords(f13, 0.0f, f11, this.slideHeight);
                    if (mediaCell2.imageReceiver.hasBitmapImage() && mediaCell2.imageReceiver.getCurrentAlpha() == 1.0f) {
                        i6 = i15;
                        f4 = f11;
                        f5 = 0.0f;
                        mediaCell = mediaCell2;
                    } else {
                        i6 = i15;
                        mediaCell = mediaCell2;
                        f5 = 0.0f;
                        f4 = f11;
                        canvas.drawRect(f13, 0.0f, i11 + i10, this.slideHeight, mediaBgPaint);
                    }
                    mediaCell.draw(canvas);
                    canvas.restore();
                }
                i15 = i6 + 1;
                f10 = f5;
                c3 = c2;
                i7 = i5;
                f11 = f4;
                i8 = 0;
            }
            int i16 = i7;
            float f14 = f10;
            canvas.restore();
            int size = this.cells.size();
            if (size > i16) {
                if (slideDotPaint == null) {
                    Paint paint2 = new Paint(i16);
                    slideDotPaint = paint2;
                    paint2.setColor(-1);
                    slideDotPaint.setShadowLayer(AndroidUtilities.dpf2(f2), f14, AndroidUtilities.dpf2(1.0f), Integer.MIN_VALUE);
                }
                float fDp = (this.slideHeight - AndroidUtilities.dp(23.0f)) + AndroidUtilities.dp(5.0f);
                int iDp4 = (AndroidUtilities.dp(7.0f) * size) + ((size - 1) * AndroidUtilities.dp(6.0f)) + AndroidUtilities.dp(4.0f);
                float f15 = this.currentPage + this.pageOffset;
                if (iDp4 < i11) {
                    fClamp = (i11 - iDp4) / f;
                } else {
                    float fDp2 = AndroidUtilities.dp(4.0f);
                    int iDp5 = AndroidUtilities.dp(13.0f);
                    fClamp = fDp2 - (Utilities.clamp(f15 - (((i11 - AndroidUtilities.dp(f3)) / 2) / iDp5), Math.max(0, (size - (r11 * 2)) - 1), f14) * iDp5);
                }
                canvas.save();
                canvas.clipRect(0, this.slideHeight - AndroidUtilities.dp(23.0f), i11, this.slideHeight);
                for (int i17 = 0; i17 < size; i17++) {
                    float fMax = Math.max(f14, 1.0f - Math.abs(i17 - f15));
                    slideDotPaint.setAlpha((int) ((fMax * 95.0f) + 160.0f));
                    canvas.drawCircle(AndroidUtilities.dp(4.0f) + fClamp + (AndroidUtilities.dp(13.0f) * i17), fDp, AndroidUtilities.dp(f) + (AndroidUtilities.dp(1.0f) * fMax), slideDotPaint);
                }
                canvas.restore();
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
        public int getBlockAccessibilityElementCount() {
            return !this.cells.isEmpty() ? 1 : 0;
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public CharSequence getBlockAccessibilityElementText(int i) {
            if (this.cells.isEmpty()) {
                return null;
            }
            int iMax = Math.max(0, Math.min(this.currentPage, this.cells.size() - 1));
            return TextUtils.concat(this.cells.get(iMax).getAccessibilityText(), ", ", LocaleController.formatString(C2807R.string.Of, Integer.valueOf(iMax + 1), Integer.valueOf(this.cells.size())));
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public void getBlockAccessibilityElementBounds(int i, Rect rect) {
            Rect rect2 = this.padding;
            int i2 = rect2.left;
            int i3 = ((int) this.currY) + rect2.top;
            rect.set(i2, i3, this.slideWidth + i2, this.slideHeight + i3);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean onBlockAccessibilityElementClick(int i, View view) {
            if (this.cells.isEmpty()) {
                return false;
            }
            return this.cells.get(Math.max(0, Math.min(this.currentPage, this.cells.size() - 1))).onAccessibilityClick(view);
        }

        @Override // org.telegram.messenger.RichMessageLayout.RichBlock
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean zOnTouchEvent;
            VelocityTracker velocityTracker;
            View view;
            int actionMasked = motionEvent.getActionMasked();
            Rect rect = this.padding;
            motionEvent.offsetLocation(-rect.left, -rect.top);
            try {
                if (actionMasked == 0) {
                    if (this.touchSlop == 0 && (view = this.view) != null) {
                        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
                        this.touchSlop = viewConfiguration.getScaledTouchSlop();
                        this.minFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
                        this.maxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
                    }
                    this.downX = motionEvent.getX();
                    this.downY = motionEvent.getY();
                    this.dragging = false;
                    this.verticalDragging = false;
                    VelocityTracker velocityTracker2 = this.velocityTracker;
                    if (velocityTracker2 == null) {
                        this.velocityTracker = VelocityTracker.obtain();
                    } else {
                        velocityTracker2.clear();
                    }
                    this.velocityTracker.addMovement(motionEvent);
                    requestDisallowParentIntercept(true);
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
                    float f = 0.0f;
                    if (actionMasked != 2) {
                        if (actionMasked == 1 || actionMasked == 3) {
                            boolean z = this.verticalDragging;
                            this.verticalDragging = false;
                            if (!z && actionMasked == 1 && (velocityTracker = this.velocityTracker) != null) {
                                velocityTracker.addMovement(motionEvent);
                                this.velocityTracker.computeCurrentVelocity(1000, this.maxFlingVelocity);
                                float xVelocity = this.velocityTracker.getXVelocity();
                                float yVelocity = this.velocityTracker.getYVelocity();
                                if (Math.abs(xVelocity) >= this.minFlingVelocity && Math.abs(xVelocity) > Math.abs(yVelocity)) {
                                    f = xVelocity;
                                }
                            }
                            VelocityTracker velocityTracker3 = this.velocityTracker;
                            if (velocityTracker3 != null) {
                                velocityTracker3.recycle();
                                this.velocityTracker = null;
                            }
                            requestDisallowParentIntercept(false);
                            if (!z) {
                                if (this.dragging) {
                                    this.dragging = false;
                                    settle(f);
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
                        }
                        Rect rect3 = this.padding;
                        motionEvent.offsetLocation(rect3.left, rect3.top);
                        return false;
                    }
                    if (!this.verticalDragging) {
                        VelocityTracker velocityTracker4 = this.velocityTracker;
                        if (velocityTracker4 != null) {
                            velocityTracker4.addMovement(motionEvent);
                        }
                        float x = motionEvent.getX() - this.downX;
                        float y = motionEvent.getY() - this.downY;
                        if (!this.dragging && Math.abs(y) > this.touchSlop && Math.abs(y) > Math.abs(x)) {
                            this.verticalDragging = true;
                            int i3 = this.currentPage;
                            if (i3 >= 0 && i3 < this.cells.size()) {
                                MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                                motionEventObtain.setAction(3);
                                this.cells.get(this.currentPage).onTouchEvent(motionEventObtain, this.view);
                                motionEventObtain.recycle();
                            }
                            requestDisallowParentIntercept(false);
                        } else {
                            if (!this.dragging && Math.abs(x) > this.touchSlop && Math.abs(x) > Math.abs(y)) {
                                this.dragging = true;
                                int i4 = this.currentPage;
                                if (i4 >= 0 && i4 < this.cells.size()) {
                                    MotionEvent motionEventObtain2 = MotionEvent.obtain(motionEvent);
                                    motionEventObtain2.setAction(3);
                                    this.cells.get(this.currentPage).onTouchEvent(motionEventObtain2, this.view);
                                    motionEventObtain2.recycle();
                                }
                            }
                            if (this.dragging) {
                                float f2 = (-x) / this.slideWidth;
                                int i5 = this.currentPage;
                                if (i5 == 0 && f2 < 0.0f) {
                                    f2 *= 0.3f;
                                }
                                if (i5 == this.cells.size() - 1 && f2 > 0.0f) {
                                    f2 *= 0.3f;
                                }
                                this.pageOffset = f2;
                                View view2 = this.view;
                                if (view2 != null) {
                                    view2.invalidate();
                                }
                            } else {
                                int i6 = this.currentPage;
                                if (i6 >= 0 && i6 < this.cells.size()) {
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
                    }
                }
                return true;
            } finally {
                Rect rect4 = this.padding;
                motionEvent.offsetLocation(rect4.left, rect4.top);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:6:0x0012  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void settle(float f) {
            int i;
            if (f >= 0.0f || this.currentPage >= this.cells.size() - 1) {
                i = -1;
                if (f <= 0.0f || this.currentPage <= 0) {
                    if (this.pageOffset > 0.15f && this.currentPage < this.cells.size() - 1) {
                        i = 1;
                    } else if (this.pageOffset >= -0.15f || this.currentPage <= 0) {
                        i = 0;
                    }
                }
            }
            final int i2 = i + this.currentPage;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.pageOffset, i2 - r6);
            this.settleAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(420L);
            this.settleAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
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

        public void setCurrentPage(int i) {
            int iMax = Math.max(0, Math.min(i, this.cells.size() - 1));
            ValueAnimator valueAnimator = this.settleAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.settleAnimator = null;
            }
            if (this.currentPage == iMax && this.pageOffset == 0.0f) {
                return;
            }
            this.currentPage = iMax;
            this.pageOffset = 0.0f;
            this.dragging = false;
            this.verticalDragging = false;
            View view = this.view;
            if (view != null) {
                view.invalidate();
            }
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
            int i = 0;
            requestDisallowParentIntercept(false);
            this.dragging = false;
            this.verticalDragging = false;
            VelocityTracker velocityTracker = this.velocityTracker;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.velocityTracker = null;
            }
            ArrayList<MediaCell> arrayList = this.cells;
            int size = arrayList.size();
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
        public int accessibilityLabelResId;
        public int accessibilityParentLabelResId;
        private CheckBoxBase checkbox;
        private ButtonBounce checkboxBounce;
        private TLObject checkboxItem;
        private boolean checkboxPressed;
        private float checkboxY;
        public int currH;
        public float currY;
        protected int layoutRow;
        protected int layoutX;
        protected int layoutY;
        public boolean listCheckbox;
        public boolean listChecked;
        public int listLevel;
        private int listMarkerWidth;
        public boolean listOrdered;
        public final int maxWidth;
        private StaticLayout numLayout;
        private int numLayoutLeft;
        private int numLayoutRight;
        private float numLayoutY;
        public final Rect padding;
        public RichDetailsBlock parentDetails;
        public int prevH;
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

        public float getBackgroundScale() {
            return 1.0f;
        }

        public int getBlockAccessibilityElementCount() {
            return 0;
        }

        public CharSequence getBlockAccessibilityElementStateDescription(int i) {
            return null;
        }

        public CharSequence getBlockAccessibilityElementText(int i) {
            return null;
        }

        public int getContentPaddingTop() {
            return 0;
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

        public boolean isBlockAccessibilityElementText(int i) {
            return false;
        }

        public boolean isHorizontallyDragging() {
            return false;
        }

        public void onAttachedToWindow() {
        }

        public boolean onBlockAccessibilityElementClick(int i, View view) {
            return false;
        }

        public void onDetachedFromWindow() {
        }

        public void onDraw(Canvas canvas) {
        }

        public boolean onTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        public CharSequence getAccessibilityLabel() {
            int i = this.accessibilityParentLabelResId;
            String string = i == 0 ? null : LocaleController.getString(i);
            int i2 = this.accessibilityLabelResId;
            String string2 = i2 != 0 ? LocaleController.getString(i2) : null;
            return TextUtils.isEmpty(string) ? string2 : TextUtils.isEmpty(string2) ? string : TextUtils.concat(string, ", ", string2);
        }

        public CharSequence getAccessibilityListMarker() {
            StaticLayout staticLayout;
            if (!this.listOrdered || (staticLayout = this.numLayout) == null) {
                return null;
            }
            return staticLayout.getText();
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

        public final int getAccessibilityElementCount() {
            return getCheckboxAccessibilityElementCount() + getBlockAccessibilityElementCount();
        }

        public final CharSequence getAccessibilityElementText(int i) {
            if (this.checkbox != null && i == 0) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                CharSequence accessibilityListMarker = getAccessibilityListMarker();
                CharSequence accessibilityLabel = getAccessibilityLabel();
                if (!TextUtils.isEmpty(accessibilityListMarker)) {
                    spannableStringBuilder.append(accessibilityListMarker).append(' ');
                }
                if (!TextUtils.isEmpty(accessibilityLabel)) {
                    spannableStringBuilder.append(accessibilityLabel).append(", ");
                }
                appendAccessibilityText(spannableStringBuilder);
                return spannableStringBuilder.length() > 0 ? spannableStringBuilder : LocaleController.getString(C2807R.string.AccDescrCheckbox);
            }
            return getBlockAccessibilityElementText(i - getCheckboxAccessibilityElementCount());
        }

        public final boolean isAccessibilityElementCheckbox(int i) {
            return this.checkbox != null && i == 0;
        }

        public final boolean isAccessibilityElementChecked(int i) {
            return isAccessibilityElementCheckbox(i) && getCheckboxChecked();
        }

        public final boolean isAccessibilityElementClickable(int i) {
            return !isAccessibilityElementCheckbox(i) || canToggleCheckbox();
        }

        public final boolean isAccessibilityElementText(int i) {
            return !isAccessibilityElementCheckbox(i) && isBlockAccessibilityElementText(i - getCheckboxAccessibilityElementCount());
        }

        public final CharSequence getAccessibilityElementStateDescription(int i) {
            if (isAccessibilityElementCheckbox(i)) {
                return LocaleController.getString(getCheckboxChecked() ? C2807R.string.AccDescrChecked : C2807R.string.AccDescrNotChecked);
            }
            return getBlockAccessibilityElementStateDescription(i - getCheckboxAccessibilityElementCount());
        }

        public final void getAccessibilityElementBounds(int i, Rect rect) {
            if (this.checkbox != null && i == 0) {
                int i2 = this.padding.left;
                float f = this.currY;
                rect.set(i2, (int) f, this.maxWidth + i2, (int) (f + getHeight()));
            } else {
                getBlockAccessibilityElementBounds(i - getCheckboxAccessibilityElementCount(), rect);
            }
            RichMessageLayout richMessageLayout = this.root;
            int i3 = -richMessageLayout.padLeft;
            int minWidth = richMessageLayout.getMinWidth() + this.root.padRight;
            int iMin = Math.min(minWidth, Math.max(rect.left, i3));
            rect.left = iMin;
            rect.right = Math.max(iMin, Math.min(rect.right, minWidth));
        }

        public void getBlockAccessibilityElementBounds(int i, Rect rect) {
            int i2 = this.padding.left;
            float f = this.currY;
            rect.set(i2, (int) f, this.maxWidth + i2, (int) (f + getHeight()));
        }

        public final boolean onAccessibilityElementClick(int i, View view) {
            if (this.checkbox != null && i == 0) {
                if (!canToggleCheckbox()) {
                    return false;
                }
                toggleCheckbox();
                return true;
            }
            return onBlockAccessibilityElementClick(i - getCheckboxAccessibilityElementCount(), view);
        }

        private int getCheckboxAccessibilityElementCount() {
            return this.checkbox == null ? 0 : 1;
        }

        public void snapshot() {
            this.prevY = this.currY;
            this.prevH = this.currH;
            this.prevVisible = this.currVisible;
        }

        public void setNum(String str) {
            CharSequence charSequence;
            this.root.numTextPaint.setTextSize(AndroidUtilities.dp(SharedConfig.fontSize));
            Layout layout = getLayout();
            CharSequence text = layout == null ? null : layout.getText();
            if (TextUtils.isEmpty(str) || !(text instanceof Spanned) || text.length() <= 0) {
                charSequence = str;
            } else {
                for (StyleSpan styleSpan : (StyleSpan[]) ((Spanned) text).getSpans(0, 1, StyleSpan.class)) {
                    if (TLObject.hasFlag(styleSpan.flags, 16)) {
                        SpannableString spannableString = new SpannableString(str);
                        spannableString.setSpan(new android.text.style.StyleSpan(1), 0, spannableString.length(), 33);
                        charSequence = spannableString;
                        break;
                    }
                }
                charSequence = str;
            }
            int iMax = this.listMarkerWidth;
            if (iMax <= 0) {
                boolean zIsRtl = this.root.isRtl();
                Rect rect = this.padding;
                iMax = Math.max(zIsRtl ? rect.right : rect.left, AndroidUtilities.dp(this.root.fontSize + 4));
            }
            int i = iMax;
            RichMessageLayout richMessageLayout = this.root;
            this.numLayout = new StaticLayout(charSequence, richMessageLayout.numTextPaint, i, richMessageLayout.isRtl() ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE, 1.0f, 0.0f, false);
            this.numLayoutLeft = AndroidUtilities.dp(this.root.fontSize + 4);
            this.numLayoutRight = 0;
            for (int i2 = 0; i2 < this.numLayout.getLineCount(); i2++) {
                this.numLayoutLeft = Math.min(this.numLayoutLeft, (int) this.numLayout.getLineLeft(i2));
                this.numLayoutRight = Math.max(this.numLayoutRight, (int) this.numLayout.getLineRight(i2));
            }
            updateListMarkerY();
        }

        public void setListMarkerWidth(int i) {
            this.listMarkerWidth = i;
        }

        public final void updateListMarkerY() {
            if (this.numLayout != null) {
                if (getLayout() != null && getLayout().getLineCount() > 0 && this.numLayout.getLineCount() > 0) {
                    this.numLayoutY = (getContentPaddingTop() + getLayout().getLineBaseline(0)) - this.numLayout.getLineBaseline(0);
                } else {
                    int iDp = AndroidUtilities.dp(this.root.fontSize + 14);
                    int height = getHeight();
                    Rect rect = this.padding;
                    this.numLayoutY = (Math.min(iDp, (height - rect.top) - rect.bottom) - this.numLayout.getHeight()) / 2.0f;
                }
            }
            if (this.checkbox != null) {
                if (getLayout() != null && getLayout().getLineCount() > 0) {
                    this.checkboxY = (getContentPaddingTop() + getLayout().getLineBaseline(0)) - (AndroidUtilities.dp(20.0f) * 0.7f);
                    return;
                }
                int iDp2 = AndroidUtilities.dp(this.root.fontSize + 14);
                int height2 = getHeight();
                Rect rect2 = this.padding;
                this.checkboxY = (Math.min(iDp2, (height2 - rect2.top) - rect2.bottom) - AndroidUtilities.dp(20.0f)) / 2.0f;
            }
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
            updateListMarkerY();
        }

        public void draw(Canvas canvas) {
            draw(canvas, Integer.MIN_VALUE, 0.0f);
        }

        public void draw(Canvas canvas, int i, float f) {
            float fDpf2;
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
                if (!this.listOrdered && !this.listCheckbox) {
                    float fDpf22 = AndroidUtilities.dpf2(4.3f);
                    if (zIsRtl) {
                        fDpf2 = ((AndroidUtilities.dp(18.0f) + f2) - AndroidUtilities.dpf2(5.66f)) - (fDpf22 / 2.0f);
                    } else {
                        fDpf2 = (AndroidUtilities.dpf2(5.66f) + (fDpf22 / 2.0f)) - AndroidUtilities.dp(18.0f);
                    }
                    canvas.drawCircle(fDpf2, (this.numLayoutY + this.numLayout.getLineBaseline(0)) - (AndroidUtilities.dp(SharedConfig.fontSize) * 0.35f), fDpf22 / 2.0f, this.root.numTextPaint);
                } else if (zIsRtl) {
                    canvas.translate(((AndroidUtilities.dp(6.0f) + f2) - this.numLayoutLeft) + (this.checkbox != null ? AndroidUtilities.dp(26.0f) : 0), this.numLayoutY);
                    this.numLayout.draw(canvas);
                } else {
                    canvas.translate((AndroidUtilities.dp(6.0f) - this.listMarkerWidth) - this.numLayoutLeft, this.numLayoutY);
                    this.numLayout.draw(canvas);
                }
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
                        foundLink.f971x = rect.left - r4.left;
                        foundLink.f972y = i + rect.top;
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
                    canvas.translate(text.f979x, text.f980y - this.currY);
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

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable getThemedDrawable(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Drawable drawable = resourcesProvider != null ? resourcesProvider.getDrawable(str) : null;
        return drawable != null ? drawable : Theme.getThemeDrawable(str);
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
        private Utilities.Callback<URLSpan> onLinkPress;
        private float pressedX;
        private float pressedY;
        private Theme.ResourcesProvider resourcesProvider;
        private TL_iv.RichMessage richMessage;
        private TextSelectionHelper.ArticleTextSelectionHelper textSelectionHelper;
        private Runnable textSelectionLongPressRunnable;
        private final int touchSlop;
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
            this.touchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
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

        public void setOnLinkPress(Utilities.Callback<URLSpan> callback) {
            this.onLinkPress = callback;
            RichMessageLayout richMessageLayout = this.layout;
            if (richMessageLayout != null) {
                richMessageLayout.onLinkPress = callback;
            }
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
                RichMessageLayout richMessageLayout3 = new RichMessageLayout(this.messageObject, i, (RichMessageLayout) null);
                this.layout = richMessageLayout3;
                richMessageLayout3.forceTranslationLoading = this.translationLoading;
                richMessageLayout3.onLinkPress = this.onLinkPress;
                richMessageLayout3.setResourcesProvider(this.resourcesProvider);
                RichMessageLayout richMessageLayout4 = this.layout;
                richMessageLayout4.invalidateAnimatedEmojiInParent = true;
                richMessageLayout4.checkQuoteLine(null, null);
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
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.pressedX = motionEvent.getX();
                this.pressedY = motionEvent.getY();
            } else if (actionMasked == 2 && this.textSelectionHelper != null && Math.abs(motionEvent.getX() - this.pressedX) < this.touchSlop && Math.abs(motionEvent.getY() - this.pressedY) < this.touchSlop) {
                return true;
            }
            TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper = this.textSelectionHelper;
            if (articleTextSelectionHelper != null) {
                if (actionMasked == 0) {
                    articleTextSelectionHelper.setMaybeView((int) motionEvent.getX(), (int) motionEvent.getY(), this);
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
                } else if ((actionMasked == 1 || actionMasked == 2 || actionMasked == 3) && (runnable = this.textSelectionLongPressRunnable) != null) {
                    removeCallbacks(runnable);
                }
            }
            if (this.layout != null) {
                motionEvent.offsetLocation(-this.insetLeft, -this.insetTop);
                boolean zOnTouchEvent = this.layout.onTouchEvent(motionEvent);
                motionEvent.offsetLocation(this.insetLeft, this.insetTop);
                if (zOnTouchEvent) {
                    if (actionMasked == 1) {
                        requestLayout();
                    }
                    return true;
                }
            }
            return super.onTouchEvent(motionEvent) || (this.textSelectionHelper != null && actionMasked == 0);
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
