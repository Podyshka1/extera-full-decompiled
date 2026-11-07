package org.telegram.ui.Stars;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.MotionEvent;
import android.view.View;
import java.util.ArrayList;
import me.vkryl.android.animator.FactorAnimator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.ChatActionCell;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ButtonBounce;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.Text;
import org.telegram.ui.Gifts.GiftMessageDrawable;
import org.telegram.ui.Gifts.GiftSheet;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.Stars.StarsReactionsSheet;

/* JADX INFO: loaded from: classes7.dex */
public class StarGiftUniqueActionLayout {
    TLRPC.TL_messageActionStarGiftUnique action;
    private final FactorAnimator animatorVisualWidth;
    private boolean attached;
    private TL_stars.starGiftAttributeBackdrop backdrop;
    private final ButtonBounce bounce;
    private boolean burned;
    private final Paint buttonBackgroundPaint;
    private final ButtonBounce buttonBounce;
    private float buttonHeight;
    private final StarsReactionsSheet.Particles buttonParticles;
    private final Path buttonPath;
    private final RectF buttonRect;
    private Text buttonText;
    private float buttonY;
    private final int currentAccount;
    MessageObject currentMessageObject;
    private final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable emoji;
    private RadialGradient gradient;
    private int gradientRadius;
    private boolean hasGiftMessage;
    int height;
    public final ImageReceiver imageReceiver;
    private final ButtonBounce messageBounce;
    private final GiftMessageDrawable messageDrawable;
    private final RectF messageRect;
    private float messageY;
    private TL_stars.starGiftAttributeModel model;
    private float nameWidth;
    private Runnable onButtonClick;
    private Runnable onMessageClick;
    private TL_stars.starGiftAttributePattern pattern;
    public boolean repost;
    private final Theme.ResourcesProvider resourcesProvider;
    private final GiftSheet.RibbonDrawable ribbon;
    private Text subtitle;
    private float subtitleY;
    private Text title;
    private float titleY;
    private float valueWidth;
    private final View view;
    int width;
    private boolean widthExpanded;
    private final Paint backgroundPaint = new Paint(1);
    private final Matrix matrix = new Matrix();
    private final RectF backgroundRect = new RectF();
    private final Path backgroundPath = new Path();
    private final ArrayList<Row> table = new ArrayList<>();

    public static final class Row {
        public final Text name;
        public final Text value;

        /* JADX INFO: renamed from: y */
        public final float f1225y;

        public Row(float f, CharSequence charSequence, CharSequence charSequence2) {
            this.name = new Text(charSequence, 12.0f);
            this.value = new Text(charSequence2, 12.0f, AndroidUtilities.bold());
            this.f1225y = f + (getHeight() / 2.0f);
        }

        public float getHeight() {
            return Math.max(this.name.getHeight(), this.value.getHeight());
        }
    }

    public StarGiftUniqueActionLayout(int i, View view, Theme.ResourcesProvider resourcesProvider) {
        GiftMessageDrawable giftMessageDrawable = new GiftMessageDrawable();
        this.messageDrawable = giftMessageDrawable;
        this.buttonRect = new RectF();
        this.buttonPath = new Path();
        this.buttonBackgroundPaint = new Paint();
        this.buttonParticles = new StarsReactionsSheet.Particles(1, 25);
        this.messageRect = new RectF();
        this.animatorVisualWidth = new FactorAnimator(0, new FactorAnimator.Target() { // from class: org.telegram.ui.Stars.StarGiftUniqueActionLayout$$ExternalSyntheticLambda0
            @Override // me.vkryl.android.animator.FactorAnimator.Target
            public final void onFactorChanged(int i2, float f, float f2, FactorAnimator factorAnimator) {
                this.f$0.lambda$new$0(i2, f, f2, factorAnimator);
            }
        }, CubicBezierInterpolator.EASE_OUT_QUINT, 320L);
        this.currentAccount = i;
        this.view = view;
        this.resourcesProvider = resourcesProvider;
        this.ribbon = new GiftSheet.RibbonDrawable(view, 1.0f);
        this.buttonBounce = new ButtonBounce(view);
        this.bounce = new ButtonBounce(view);
        this.messageBounce = new ButtonBounce(view);
        this.imageReceiver = new ImageReceiver(view);
        this.emoji = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(view, AndroidUtilities.dp(28.0f));
        giftMessageDrawable.setParentView(view);
    }

    public GiftMessageDrawable getMessageDrawable() {
        return this.messageDrawable;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void set(MessageObject messageObject, boolean z) {
        TLRPC.TL_messageActionStarGiftUnique tL_messageActionStarGiftUnique;
        float fDp;
        TLRPC.Message message;
        this.widthExpanded = false;
        this.currentMessageObject = messageObject;
        if (messageObject == null || (message = messageObject.messageOwner) == null) {
            tL_messageActionStarGiftUnique = null;
        } else {
            TLRPC.MessageAction messageAction = message.action;
            if (messageAction instanceof TLRPC.TL_messageActionStarGiftUnique) {
                tL_messageActionStarGiftUnique = (TLRPC.TL_messageActionStarGiftUnique) messageAction;
            }
        }
        if (tL_messageActionStarGiftUnique == null || tL_messageActionStarGiftUnique.refunded || !(tL_messageActionStarGiftUnique.gift instanceof TL_stars.TL_starGiftUnique)) {
            tL_messageActionStarGiftUnique = null;
        }
        if (this.attached && tL_messageActionStarGiftUnique != null && this.action == null) {
            this.imageReceiver.onAttachedToWindow();
            this.emoji.attach();
            this.messageDrawable.attach();
        }
        this.action = tL_messageActionStarGiftUnique;
        this.repost = messageObject != null && messageObject.isRepostPreview;
        if (tL_messageActionStarGiftUnique == null) {
            return;
        }
        TL_stars.TL_starGiftUnique tL_starGiftUnique = (TL_stars.TL_starGiftUnique) tL_messageActionStarGiftUnique.gift;
        this.backdrop = (TL_stars.starGiftAttributeBackdrop) StarsController.findAttribute(tL_starGiftUnique.attributes, TL_stars.starGiftAttributeBackdrop.class);
        this.pattern = (TL_stars.starGiftAttributePattern) StarsController.findAttribute(tL_starGiftUnique.attributes, TL_stars.starGiftAttributePattern.class);
        TL_stars.starGiftAttributeModel stargiftattributemodel = this.model;
        this.model = (TL_stars.starGiftAttributeModel) StarsController.findAttribute(tL_starGiftUnique.attributes, TL_stars.starGiftAttributeModel.class);
        Paint paint = this.backgroundPaint;
        this.gradient = null;
        paint.setShader(null);
        TL_stars.starGiftAttributePattern stargiftattributepattern = this.pattern;
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emoji;
        if (stargiftattributepattern != null) {
            swapAnimatedEmojiDrawable.set(stargiftattributepattern.document, z);
        } else {
            swapAnimatedEmojiDrawable.set((Drawable) null, z);
        }
        TL_stars.starGiftAttributeModel stargiftattributemodel2 = this.model;
        if (stargiftattributemodel2 != null && (stargiftattributemodel == null || stargiftattributemodel.document.id != stargiftattributemodel2.document.id)) {
            boolean z2 = this.repost;
            ImageReceiver imageReceiver = this.imageReceiver;
            if (z2) {
                imageReceiver.setAllowStartLottieAnimation(true);
                this.imageReceiver.setAllowStartAnimation(true);
                this.imageReceiver.setAutoRepeat(1);
            } else {
                imageReceiver.setAutoRepeatCount(0);
                this.imageReceiver.clearDecorators();
                this.imageReceiver.setAutoRepeat(0);
            }
            StarsIntroActivity.setGiftImage(this.imageReceiver, this.model.document, 110);
        }
        boolean z3 = tL_starGiftUnique.burned;
        this.burned = z3;
        GiftSheet.RibbonDrawable ribbonDrawable = this.ribbon;
        if (z3) {
            ribbonDrawable.setColor(Theme.getColor(Theme.key_text_RedBold, this.resourcesProvider));
            this.ribbon.setText(11, LocaleController.getString(C2807R.string.Gift2UniqueRibbonBurned), true);
        } else {
            ribbonDrawable.setBackdrop(this.backdrop, true, false);
            this.ribbon.setText(11, LocaleController.getString(C2807R.string.Gift2UniqueRibbon), true);
        }
        if (this.repost) {
            this.width = AndroidUtilities.dp(200.0f);
        } else {
            if (AndroidUtilities.isTablet()) {
                fDp = AndroidUtilities.getMinTabletSide() * 0.6f;
            } else {
                fDp = (AndroidUtilities.displaySize.x * 0.62f) - AndroidUtilities.dp(34.0f);
            }
            this.width = Math.min((int) fDp, ((AndroidUtilities.displaySize.y - ActionBar.getCurrentActionBarHeight()) - AndroidUtilities.statusBarHeight) - AndroidUtilities.dp(64.0f));
            if (!AndroidUtilities.isTablet()) {
                this.width = (int) (this.width * 1.2f);
            }
            this.width -= AndroidUtilities.dp(8.0f);
        }
        setInternal(messageObject, tL_messageActionStarGiftUnique, tL_starGiftUnique, z);
        checkAnimatedWidth(z);
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x0340  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0364  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void setInternal(MessageObject messageObject, TLRPC.TL_messageActionStarGiftUnique tL_messageActionStarGiftUnique, TL_stars.TL_starGiftUnique tL_starGiftUnique, boolean z) {
        float f;
        float height;
        int iDp;
        float f2 = this.width;
        long clientUserId = (tL_messageActionStarGiftUnique.upgrade ^ true) == messageObject.isOutOwner() ? UserConfig.getInstance(this.currentAccount).getClientUserId() : messageObject.getDialogId();
        TLRPC.Peer peer = tL_messageActionStarGiftUnique.from_id;
        if (peer != null) {
            clientUserId = DialogObject.getPeerDialogId(peer);
        }
        String shortName = DialogObject.getShortName(clientUserId);
        float fDp = AndroidUtilities.dp(10.0f) + 0.0f + AndroidUtilities.dp(110.0f) + AndroidUtilities.dp(9.33f);
        if (this.repost) {
            this.title = new Text(tL_starGiftUnique.title, 14.0f, AndroidUtilities.bold());
        } else if (tL_messageActionStarGiftUnique.peer != null || UserObject.isService(messageObject.getDialogId())) {
            this.title = new Text(LocaleController.getString(C2807R.string.Gift2UniqueTitle2), 14.0f, AndroidUtilities.bold());
        } else if (messageObject.getDialogId() == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
            if (tL_starGiftUnique.crafted) {
                this.title = new Text(LocaleController.getString(C2807R.string.Gift2ActionCraftedTitle), 14.0f, AndroidUtilities.bold());
            } else if (tL_messageActionStarGiftUnique.resale_amount != null) {
                this.title = new Text(LocaleController.getString(C2807R.string.Gift2ActionPurchasedTitle), 14.0f, AndroidUtilities.bold());
            } else {
                this.title = new Text(LocaleController.getString(C2807R.string.Gift2ActionUpgradedTitle), 14.0f, AndroidUtilities.bold());
            }
        } else {
            this.title = new Text(LocaleController.formatString(C2807R.string.Gift2UniqueTitle, shortName), 14.0f, AndroidUtilities.bold());
        }
        this.titleY = (this.title.getHeight() / 2.0f) + fDp;
        float height2 = fDp + this.title.getHeight() + AndroidUtilities.dp(3.0f);
        if (this.repost) {
            this.subtitle = new Text(LocaleController.formatPluralStringComma("Gift2CollectionNumber", tL_starGiftUnique.num), 12.0f, AndroidUtilities.bold());
            f = 3.0f;
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append(tL_starGiftUnique.title);
            sb.append(" #");
            f = 3.0f;
            sb.append(LocaleController.formatNumber(tL_starGiftUnique.num, ','));
            this.subtitle = new Text(sb.toString(), 12.0f);
        }
        this.subtitleY = (this.subtitle.getHeight() / 2.0f) + height2;
        float height3 = height2 + this.subtitle.getHeight() + AndroidUtilities.dp(this.repost ? 14.0f : 11.0f);
        this.table.clear();
        this.nameWidth = 0.0f;
        this.valueWidth = 0.0f;
        TLRPC.TL_textWithEntities tL_textWithEntities = tL_messageActionStarGiftUnique.message;
        TLObject userOrChat = null;
        if (tL_textWithEntities != null) {
            TextPaint textPaint = this.messageDrawable.getTextPaint();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(tL_textWithEntities.text);
            MessageObject.addEntitiesToText(spannableStringBuilder, tL_textWithEntities.entities, false, false, false, false);
            Spannable spannableReplaceAnimatedEmoji = MessageObject.replaceAnimatedEmoji(Emoji.replaceEmoji(spannableStringBuilder, textPaint.getFontMetricsInt(), false), tL_textWithEntities.entities, textPaint.getFontMetricsInt());
            if (!tL_messageActionStarGiftUnique.name_hidden) {
                TLRPC.Peer peer2 = tL_messageActionStarGiftUnique.from_id;
                int i = this.currentAccount;
                if (peer2 != null) {
                    userOrChat = MessagesController.getInstance(i).getUserOrChat(DialogObject.getPeerDialogId(tL_messageActionStarGiftUnique.from_id));
                } else {
                    userOrChat = MessagesController.getInstance(i).getUserOrChat(messageObject.getFromChatId());
                }
            }
            this.hasGiftMessage = true;
            this.messageDrawable.setUser(userOrChat);
            this.messageDrawable.setMessage(spannableReplaceAnimatedEmoji);
            this.messageDrawable.measure(((int) f2) - AndroidUtilities.dp(24.0f));
            if (!this.widthExpanded && this.messageDrawable.getLineCount() > 3) {
                this.widthExpanded = true;
                this.width = (int) (this.width * (Math.min(0.4f, (this.messageDrawable.getLineCount() - 3) * 0.1f) + 1.0f));
                setInternal(messageObject, tL_messageActionStarGiftUnique, tL_starGiftUnique, z);
                return;
            } else {
                float fDp2 = height3 + AndroidUtilities.dp(4.0f);
                this.messageY = fDp2;
                height3 = fDp2 + this.messageDrawable.getMinimumHeight();
                height = AndroidUtilities.dp(f);
            }
        } else {
            this.hasGiftMessage = false;
            this.messageDrawable.setUser(null);
            this.messageDrawable.setMessage(null);
            if (this.model != null) {
                if (!this.table.isEmpty()) {
                    height3 += AndroidUtilities.dp(6.0f);
                }
                Row row = new Row(height3, LocaleController.getString(C2807R.string.Gift2AttributeModel), this.model.name);
                this.table.add(row);
                float f3 = f2 * 0.5f;
                row.name.ellipsize(f3);
                this.nameWidth = Math.max(this.nameWidth, row.name.getCurrentWidth());
                row.value.ellipsize(f3);
                this.valueWidth = Math.max(this.valueWidth, row.value.getCurrentWidth());
                height3 += row.getHeight();
            }
            if (this.backdrop != null) {
                if (!this.table.isEmpty()) {
                    height3 += AndroidUtilities.dp(6.0f);
                }
                Row row2 = new Row(height3, LocaleController.getString(C2807R.string.Gift2AttributeBackdrop), this.backdrop.name);
                this.table.add(row2);
                float f4 = f2 * 0.5f;
                row2.name.ellipsize(f4);
                this.nameWidth = Math.max(this.nameWidth, row2.name.getCurrentWidth());
                row2.value.ellipsize(f4);
                this.valueWidth = Math.max(this.valueWidth, row2.value.getCurrentWidth());
                height3 += row2.getHeight();
            }
            if (this.pattern != null) {
                if (!this.table.isEmpty()) {
                    height3 += AndroidUtilities.dp(6.0f);
                }
                Row row3 = new Row(height3, LocaleController.getString(C2807R.string.Gift2AttributeSymbol), this.pattern.name);
                this.table.add(row3);
                float f5 = f2 * 0.5f;
                row3.name.ellipsize(f5);
                this.nameWidth = Math.max(this.nameWidth, row3.name.getCurrentWidth());
                row3.value.ellipsize(f5);
                this.valueWidth = Math.max(this.valueWidth, row3.value.getCurrentWidth());
                height = row3.getHeight();
            }
            float fDp3 = height3 + AndroidUtilities.dp(11.66f);
            if (this.repost) {
                this.buttonY = fDp3;
                this.buttonText = new Text(LocaleController.getString(C2807R.string.Gift2UniqueView), 14.0f, AndroidUtilities.bold());
                float fDp4 = AndroidUtilities.dp(30.0f);
                this.buttonHeight = fDp4;
                fDp3 += fDp4;
                iDp = AndroidUtilities.dp(11.0f);
            } else {
                iDp = AndroidUtilities.dp(10.0f);
            }
            this.height = (int) (fDp3 + iDp);
        }
        height3 += height;
        float fDp32 = height3 + AndroidUtilities.dp(11.66f);
        if (this.repost) {
        }
        this.height = (int) (fDp32 + iDp);
    }

    public void set(TL_stars.TL_starGiftUnique tL_starGiftUnique, long j, TLRPC.TL_textWithEntities tL_textWithEntities, String str, boolean z) {
        this.widthExpanded = false;
        this.action = null;
        this.currentMessageObject = null;
        this.repost = false;
        if (tL_starGiftUnique == null) {
            return;
        }
        this.backdrop = (TL_stars.starGiftAttributeBackdrop) StarsController.findAttribute(tL_starGiftUnique.attributes, TL_stars.starGiftAttributeBackdrop.class);
        this.pattern = (TL_stars.starGiftAttributePattern) StarsController.findAttribute(tL_starGiftUnique.attributes, TL_stars.starGiftAttributePattern.class);
        TL_stars.starGiftAttributeModel stargiftattributemodel = this.model;
        this.model = (TL_stars.starGiftAttributeModel) StarsController.findAttribute(tL_starGiftUnique.attributes, TL_stars.starGiftAttributeModel.class);
        Paint paint = this.backgroundPaint;
        this.gradient = null;
        paint.setShader(null);
        TL_stars.starGiftAttributePattern stargiftattributepattern = this.pattern;
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emoji;
        if (stargiftattributepattern != null) {
            swapAnimatedEmojiDrawable.set(stargiftattributepattern.document, false);
        } else {
            swapAnimatedEmojiDrawable.set((Drawable) null, false);
        }
        TL_stars.starGiftAttributeModel stargiftattributemodel2 = this.model;
        if (stargiftattributemodel2 != null && (stargiftattributemodel == null || stargiftattributemodel.document.id != stargiftattributemodel2.document.id)) {
            this.imageReceiver.setAutoRepeatCount(0);
            this.imageReceiver.clearDecorators();
            this.imageReceiver.setAutoRepeat(0);
            StarsIntroActivity.setGiftImage(this.imageReceiver, this.model.document, 110);
        }
        boolean z2 = tL_starGiftUnique.burned;
        this.burned = z2;
        GiftSheet.RibbonDrawable ribbonDrawable = this.ribbon;
        if (z2) {
            ribbonDrawable.setColor(Theme.getColor(Theme.key_text_RedBold, this.resourcesProvider));
            this.ribbon.setText(11, LocaleController.getString(C2807R.string.Gift2UniqueRibbonBurned), true);
        } else {
            ribbonDrawable.setBackdrop(this.backdrop, true, false);
            this.ribbon.setText(11, LocaleController.getString(C2807R.string.Gift2UniqueRibbon), true);
        }
        if (this.attached) {
            this.imageReceiver.onAttachedToWindow();
            this.emoji.attach();
            this.messageDrawable.attach();
        }
        this.width = Math.min((int) (AndroidUtilities.isTablet() ? AndroidUtilities.getMinTabletSide() * 0.6f : (AndroidUtilities.displaySize.x * 0.62f) - AndroidUtilities.dp(34.0f)), ((AndroidUtilities.displaySize.y - ActionBar.getCurrentActionBarHeight()) - AndroidUtilities.statusBarHeight) - AndroidUtilities.dp(64.0f));
        if (!AndroidUtilities.isTablet()) {
            this.width = (int) (this.width * 1.2f);
        }
        this.width -= AndroidUtilities.dp(8.0f);
        setInternal2(tL_starGiftUnique, j, tL_textWithEntities, str);
        checkAnimatedWidth(z);
    }

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
    private void setInternal2(TL_stars.TL_starGiftUnique tL_starGiftUnique, long j, TLRPC.TL_textWithEntities tL_textWithEntities, String str) {
        Spannable spannableReplaceAnimatedEmoji;
        float f = this.width;
        float fDp = AndroidUtilities.dp(10.0f) + 0.0f + AndroidUtilities.dp(110.0f) + AndroidUtilities.dp(9.33f);
        Text text = new Text(LocaleController.formatString(C2807R.string.Gift2UniqueTitle, DialogObject.getShortName(j)), 14.0f, AndroidUtilities.bold());
        this.title = text;
        this.titleY = (text.getHeight() / 2.0f) + fDp;
        float height = fDp + this.title.getHeight() + AndroidUtilities.dp(3.0f);
        Text text2 = new Text(tL_starGiftUnique.title + " #" + LocaleController.formatNumber(tL_starGiftUnique.num, ','), 12.0f);
        this.subtitle = text2;
        this.subtitleY = (text2.getHeight() / 2.0f) + height;
        float height2 = height + this.subtitle.getHeight() + ((float) AndroidUtilities.dp(11.0f));
        this.table.clear();
        this.nameWidth = 0.0f;
        this.valueWidth = 0.0f;
        TextPaint textPaint = this.messageDrawable.getTextPaint();
        if (tL_textWithEntities != null && !TextUtils.isEmpty(tL_textWithEntities.text)) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(tL_textWithEntities.text);
            MessageObject.addEntitiesToText(spannableStringBuilder, tL_textWithEntities.entities, false, false, false, false);
            spannableReplaceAnimatedEmoji = MessageObject.replaceAnimatedEmoji(Emoji.replaceEmoji(spannableStringBuilder, textPaint.getFontMetricsInt(), false), tL_textWithEntities.entities, textPaint.getFontMetricsInt());
        } else {
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(LocaleController.getString(C2807R.string.GiftMessageHint));
            spannableStringBuilder2.setSpan(new ForegroundColorSpan(-1593835521), 0, spannableStringBuilder2.length(), 33);
            spannableReplaceAnimatedEmoji = spannableStringBuilder2;
        }
        TLObject userOrChat = j != 0 ? MessagesController.getInstance(this.currentAccount).getUserOrChat(j) : null;
        this.hasGiftMessage = true;
        this.messageDrawable.setUser(userOrChat);
        this.messageDrawable.setMessage(spannableReplaceAnimatedEmoji);
        this.messageDrawable.measure(((int) f) - AndroidUtilities.dp(24.0f));
        if (!this.widthExpanded && this.messageDrawable.getLineCount() > 3) {
            this.widthExpanded = true;
            this.width = (int) (this.width * (Math.min(0.4f, (this.messageDrawable.getLineCount() - 3) * 0.1f) + 1.0f));
            setInternal2(tL_starGiftUnique, j, tL_textWithEntities, str);
            return;
        }
        float fDp2 = height2 + AndroidUtilities.dp(4.0f);
        this.messageY = fDp2;
        float minimumHeight = fDp2 + this.messageDrawable.getMinimumHeight() + AndroidUtilities.dp(3.0f) + AndroidUtilities.dp(11.66f);
        this.buttonY = minimumHeight;
        this.buttonText = new Text(str, 14.0f, AndroidUtilities.bold());
        float fDp3 = AndroidUtilities.dp(30.0f);
        this.buttonHeight = fDp3;
        this.height = (int) (minimumHeight + fDp3 + AndroidUtilities.dp(11.0f));
    }

    public boolean has() {
        return this.action != null;
    }

    public float getWidth() {
        return this.animatorVisualWidth.getFactor();
    }

    public float getHeight() {
        return this.height;
    }

    public void attach() {
        this.attached = true;
        if (this.action != null) {
            this.imageReceiver.onAttachedToWindow();
            this.emoji.attach();
            this.messageDrawable.attach();
        }
    }

    public void detach() {
        this.attached = false;
        this.imageReceiver.onDetachedFromWindow();
        this.emoji.detach();
        this.messageDrawable.detach();
    }

    public void draw(Canvas canvas) {
        float width = getWidth() / 2.0f;
        this.backgroundRect.set(0.0f, 0.0f, getWidth(), getHeight());
        int iWidth = ((int) (this.backgroundRect.width() + this.backgroundRect.height())) / 2;
        if (this.backdrop != null && (this.gradient == null || this.gradientRadius != iWidth)) {
            this.gradientRadius = iWidth;
            float f = iWidth;
            TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop = this.backdrop;
            this.gradient = new RadialGradient(0.0f, 0.0f, f, new int[]{stargiftattributebackdrop.center_color | (-16777216), stargiftattributebackdrop.edge_color | (-16777216)}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
        }
        if (this.gradient != null) {
            this.matrix.reset();
            this.matrix.postTranslate(width, width);
            this.gradient.setLocalMatrix(this.matrix);
            this.backgroundPaint.setShader(this.gradient);
        }
        this.backgroundPath.rewind();
        this.backgroundPath.addRoundRect(this.backgroundRect, AndroidUtilities.dp(14.0f), AndroidUtilities.dp(14.0f), Path.Direction.CW);
        canvas.save();
        float scale = this.bounce.getScale(0.0125f);
        canvas.scale(scale, scale, this.backgroundRect.centerX(), this.backgroundRect.centerY());
        canvas.save();
        canvas.clipPath(this.backgroundPath);
        canvas.drawPaint(this.backgroundPaint);
        canvas.save();
        canvas.translate(width, AndroidUtilities.dp(65.0f));
        TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop2 = this.backdrop;
        if (stargiftattributebackdrop2 != null) {
            this.emoji.setColor(Integer.valueOf(stargiftattributebackdrop2.pattern_color | (-16777216)));
        }
        StarGiftPatterns.drawPattern(canvas, 1, this.emoji, this.backgroundRect.width(), this.backgroundRect.height(), 1.0f, 1.1f);
        canvas.restore();
        this.imageReceiver.setImageCoords(width - (AndroidUtilities.dp(110.0f) / 2.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(110.0f), AndroidUtilities.dp(110.0f));
        this.imageReceiver.draw(canvas);
        int iMultAlpha = Theme.multAlpha(-1, 0.6f);
        TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop3 = this.backdrop;
        if (stargiftattributebackdrop3 != null) {
            iMultAlpha = stargiftattributebackdrop3.text_color | (-16777216);
        }
        int i = iMultAlpha;
        this.title.ellipsize(getWidth() - AndroidUtilities.dp(12.0f));
        Text text = this.title;
        text.draw(canvas, width - (text.getCurrentWidth() / 2.0f), this.titleY, -1, 1.0f);
        this.subtitle.ellipsize(getWidth() - AndroidUtilities.dp(12.0f));
        Text text2 = this.subtitle;
        Canvas canvas2 = canvas;
        int i2 = i;
        text2.draw(canvas2, width - (text2.getCurrentWidth() / 2.0f), this.subtitleY, i2, 1.0f);
        if (this.hasGiftMessage) {
            int minimumWidth = this.messageDrawable.getMinimumWidth();
            int minimumHeight = this.messageDrawable.getMinimumHeight();
            int i3 = (int) (width - (minimumWidth / 2.0f));
            GiftMessageDrawable giftMessageDrawable = this.messageDrawable;
            float f2 = this.messageY;
            int i4 = minimumWidth + i3;
            giftMessageDrawable.setBounds(i3, (int) f2, i4, ((int) f2) + minimumHeight);
            float f3 = this.messageY;
            this.messageRect.set(i3, f3, i4, minimumHeight + f3);
            float scale2 = this.messageBounce.getScale(0.04f);
            canvas2.save();
            canvas2.scale(scale2, scale2, this.messageRect.centerX(), this.messageRect.centerY());
            this.messageDrawable.draw(canvas2);
            canvas2.restore();
        } else {
            float fDp = this.nameWidth + AndroidUtilities.dp(9.0f) + this.valueWidth;
            ArrayList<Row> arrayList = this.table;
            int size = arrayList.size();
            int i5 = 0;
            while (i5 < size) {
                int i6 = i5 + 1;
                Row row = arrayList.get(i5);
                Text text3 = row.name;
                float f4 = width - (fDp / 2.0f);
                text3.draw(canvas2, (f4 + this.nameWidth) - text3.getCurrentWidth(), row.f1225y, i2, 1.0f);
                canvas2 = canvas;
                row.value.draw(canvas2, f4 + this.nameWidth + AndroidUtilities.dp(9.0f), row.f1225y, -1, 1.0f);
                i5 = i6;
                i2 = i2;
            }
        }
        int i7 = i2;
        if (!this.repost) {
            this.buttonRect.set(width - ((this.buttonText.getCurrentWidth() + AndroidUtilities.dp(30.0f)) / 2.0f), this.buttonY, width + ((this.buttonText.getCurrentWidth() + AndroidUtilities.dp(30.0f)) / 2.0f), this.buttonY + this.buttonHeight);
            this.buttonPath.rewind();
            Path path = this.buttonPath;
            RectF rectF = this.buttonRect;
            float f5 = this.buttonHeight;
            path.addRoundRect(rectF, f5 / 2.0f, f5 / 2.0f, Path.Direction.CW);
            this.buttonBackgroundPaint.setColor(Theme.multAlpha(-16777216, 0.13f));
            float scale3 = this.buttonBounce.getScale(0.075f);
            canvas2.scale(scale3, scale3, this.buttonRect.centerX(), this.buttonRect.centerY());
            canvas2.drawPath(this.buttonPath, this.buttonBackgroundPaint);
            canvas2.restore();
            this.ribbon.setBounds(((int) this.backgroundRect.right) - AndroidUtilities.dp(46.67f), ((int) this.backgroundRect.top) - AndroidUtilities.dp(1.33f), ((int) this.backgroundRect.right) + AndroidUtilities.dp(1.33f), ((int) this.backgroundRect.top) + AndroidUtilities.dp(46.67f));
            this.ribbon.setTextColor(i7);
            this.ribbon.draw(canvas2);
        }
        canvas2.restore();
    }

    public void drawOutbounds(Canvas canvas) {
        if (this.repost) {
            return;
        }
        canvas.save();
        float scale = this.bounce.getScale(0.0125f);
        canvas.scale(scale, scale, this.backgroundRect.centerX(), this.backgroundRect.centerY());
        float scale2 = this.buttonBounce.getScale(0.075f);
        canvas.scale(scale2, scale2, this.buttonRect.centerX(), this.buttonRect.centerY());
        canvas.clipPath(this.buttonPath);
        this.buttonParticles.setBounds(this.buttonRect);
        this.buttonParticles.process();
        this.buttonParticles.draw(canvas, Theme.multAlpha(-1, 0.7f));
        this.buttonText.draw(canvas, this.buttonRect.left + AndroidUtilities.dp(15.0f), this.buttonRect.centerY(), -1, 1.0f);
        canvas.restore();
        invalidate();
    }

    private void invalidate() {
        View view = this.view;
        if (view instanceof ChatActionCell) {
            ((ChatActionCell) view).invalidateOutbounds();
        } else {
            view.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(int i, float f, float f2, FactorAnimator factorAnimator) {
        invalidate();
    }

    private void checkAnimatedWidth(boolean z) {
        FactorAnimator factorAnimator = this.animatorVisualWidth;
        if (z) {
            int iRound = Math.round(factorAnimator.getToFactor());
            int i = this.width;
            if (iRound != i) {
                this.animatorVisualWidth.animateTo(i);
                return;
            }
            return;
        }
        factorAnimator.forceFactor(this.width);
    }

    public boolean onTouchEvent(float f, float f2, MotionEvent motionEvent) {
        boolean zContains = this.buttonRect.contains(motionEvent.getX() - f, motionEvent.getY() - f2);
        boolean z = this.onMessageClick != null && this.hasGiftMessage && !zContains && this.messageRect.contains(motionEvent.getX() - f, motionEvent.getY() - f2);
        boolean zContains2 = this.backgroundRect.contains(motionEvent.getX() - f, motionEvent.getY() - f2);
        if (motionEvent.getAction() == 0) {
            this.bounce.setPressed((!zContains2 || zContains || z) ? false : true);
            this.buttonBounce.setPressed(zContains);
            this.messageBounce.setPressed(z);
        } else if (motionEvent.getAction() == 2) {
            if (this.buttonBounce.isPressed() && !zContains) {
                this.buttonBounce.setPressed(false);
            } else if (this.messageBounce.isPressed() && !z) {
                this.messageBounce.setPressed(false);
            } else if (this.bounce.isPressed() && !zContains2) {
                this.bounce.setPressed(false);
            }
        } else {
            if (motionEvent.getAction() == 1 && this.messageBounce.isPressed()) {
                this.messageBounce.setPressed(false);
                this.onMessageClick.run();
                return true;
            }
            if (motionEvent.getAction() == 1 && (this.buttonBounce.isPressed() || this.bounce.isPressed())) {
                if (this.onButtonClick != null) {
                    if (this.buttonBounce.isPressed()) {
                        this.onButtonClick.run();
                    }
                } else if (this.burned) {
                    BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
                    if (safeLastFragment != null) {
                        BulletinFactory.of(safeLastFragment).createSimpleBulletin(C2807R.raw.fire_on, LocaleController.getString(C2807R.string.UniqueGiftNotFoundBurned)).show();
                    }
                } else {
                    new StarGiftSheet(this.view.getContext(), this.currentAccount, this.currentMessageObject.getDialogId(), this.resourcesProvider).set(this.currentMessageObject).show();
                }
                this.buttonBounce.setPressed(false);
                this.bounce.setPressed(false);
                return true;
            }
            if (motionEvent.getAction() == 3 && (this.buttonBounce.isPressed() || this.bounce.isPressed() || this.messageBounce.isPressed())) {
                this.buttonBounce.setPressed(false);
                this.bounce.setPressed(false);
                this.messageBounce.setPressed(false);
                return true;
            }
        }
        return this.buttonBounce.isPressed() || this.bounce.isPressed() || this.messageBounce.isPressed();
    }

    public void setOnMessageClickListener(Runnable runnable) {
        this.onMessageClick = runnable;
    }

    public void setOnButtonClickListener(Runnable runnable) {
        this.onButtonClick = runnable;
    }
}
