package org.telegram.ui.Stars;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2484R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.ChatActionCell;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ButtonBounce;
import org.telegram.ui.Components.Text;
import org.telegram.ui.Gifts.GiftSheet;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.Stars.StarsReactionsSheet;

/* JADX INFO: loaded from: classes3.dex */
public class StarGiftUniqueActionLayout {
    TLRPC.TL_messageActionStarGiftUnique action;
    private boolean attached;
    private TL_stars.starGiftAttributeBackdrop backdrop;
    private final ButtonBounce bounce;
    private boolean burned;
    private final ButtonBounce buttonBounce;
    private float buttonHeight;
    private Text buttonText;
    private float buttonY;
    private final int currentAccount;
    MessageObject currentMessageObject;
    private final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable emoji;
    private RadialGradient gradient;
    private int gradientRadius;
    int height;
    public final ImageReceiver imageReceiver;
    private TL_stars.starGiftAttributeModel model;
    private float nameWidth;
    private TL_stars.starGiftAttributePattern pattern;
    public boolean repost;
    private final Theme.ResourcesProvider resourcesProvider;
    private final GiftSheet.RibbonDrawable ribbon;
    private Text subtitle;
    private float subtitleY;
    private Text title;
    private float titleY;
    private float valueWidth;
    private final ChatActionCell view;
    int width;
    private final Paint backgroundPaint = new Paint(1);
    private final Matrix matrix = new Matrix();
    private final RectF backgroundRect = new RectF();
    private final Path backgroundPath = new Path();
    private final ArrayList table = new ArrayList();
    private final RectF buttonRect = new RectF();
    private final Path buttonPath = new Path();
    private final Paint buttonBackgroundPaint = new Paint();
    private final StarsReactionsSheet.Particles buttonParticles = new StarsReactionsSheet.Particles(1, 25);

    /* JADX INFO: loaded from: classes7.dex */
    private static final class Row {
        public final Text name;
        public final Text value;

        /* JADX INFO: renamed from: y */
        public final float f1530y;

        public Row(float f, CharSequence charSequence, CharSequence charSequence2) {
            this.name = new Text(charSequence, 12.0f);
            this.value = new Text(charSequence2, 12.0f, AndroidUtilities.bold());
            this.f1530y = f + (getHeight() / 2.0f);
        }

        public float getHeight() {
            return Math.max(this.name.getHeight(), this.value.getHeight());
        }
    }

    public StarGiftUniqueActionLayout(int i, ChatActionCell chatActionCell, Theme.ResourcesProvider resourcesProvider) {
        this.currentAccount = i;
        this.view = chatActionCell;
        this.resourcesProvider = resourcesProvider;
        this.ribbon = new GiftSheet.RibbonDrawable(chatActionCell, 1.0f);
        this.buttonBounce = new ButtonBounce(chatActionCell);
        this.bounce = new ButtonBounce(chatActionCell);
        this.imageReceiver = new ImageReceiver(chatActionCell);
        this.emoji = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(chatActionCell, AndroidUtilities.dp(28.0f));
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void set(MessageObject messageObject, boolean z) {
        TLRPC.TL_messageActionStarGiftUnique tL_messageActionStarGiftUnique;
        int iDp;
        TLRPC.Message message;
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
        if (stargiftattributepattern != null) {
            this.emoji.set(stargiftattributepattern.document, z);
        } else {
            this.emoji.set((Drawable) null, z);
        }
        TL_stars.starGiftAttributeModel stargiftattributemodel2 = this.model;
        if (stargiftattributemodel2 != null && (stargiftattributemodel == null || stargiftattributemodel.document.id != stargiftattributemodel2.document.id)) {
            if (this.repost) {
                this.imageReceiver.setAllowStartLottieAnimation(true);
                this.imageReceiver.setAllowStartAnimation(true);
                this.imageReceiver.setAutoRepeat(1);
            } else {
                this.imageReceiver.setAutoRepeatCount(0);
                this.imageReceiver.clearDecorators();
                this.imageReceiver.setAutoRepeat(0);
            }
            StarsIntroActivity.setGiftImage(this.imageReceiver, this.model.document, 110);
        }
        boolean z2 = tL_starGiftUnique.burned;
        this.burned = z2;
        if (z2) {
            this.ribbon.setColor(Theme.getColor(Theme.key_text_RedBold, this.resourcesProvider));
            this.ribbon.setText(11, LocaleController.getString(C2484R.string.Gift2UniqueRibbonBurned), true);
        } else {
            this.ribbon.setBackdrop(this.backdrop, true, false);
            this.ribbon.setText(11, LocaleController.getString(C2484R.string.Gift2UniqueRibbon), true);
        }
        if (this.repost) {
            this.width = AndroidUtilities.dp(200.0f);
        } else {
            this.width = Math.min((int) (AndroidUtilities.isTablet() ? AndroidUtilities.getMinTabletSide() * 0.6f : (AndroidUtilities.displaySize.x * 0.62f) - AndroidUtilities.dp(34.0f)), ((AndroidUtilities.displaySize.y - ActionBar.getCurrentActionBarHeight()) - AndroidUtilities.statusBarHeight) - AndroidUtilities.dp(64.0f));
            if (!AndroidUtilities.isTablet()) {
                this.width = (int) (this.width * 1.2f);
            }
            this.width -= AndroidUtilities.dp(8.0f);
        }
        float f = this.width;
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
            this.title = new Text(LocaleController.getString(C2484R.string.Gift2UniqueTitle2), 14.0f, AndroidUtilities.bold());
        } else if (messageObject.getDialogId() == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
            if (tL_starGiftUnique.crafted) {
                this.title = new Text(LocaleController.getString(C2484R.string.Gift2ActionCraftedTitle), 14.0f, AndroidUtilities.bold());
            } else if (tL_messageActionStarGiftUnique.resale_amount != null) {
                this.title = new Text(LocaleController.getString(C2484R.string.Gift2ActionPurchasedTitle), 14.0f, AndroidUtilities.bold());
            } else {
                this.title = new Text(LocaleController.getString(C2484R.string.Gift2ActionUpgradedTitle), 14.0f, AndroidUtilities.bold());
            }
        } else {
            this.title = new Text(LocaleController.formatString(C2484R.string.Gift2UniqueTitle, shortName), 14.0f, AndroidUtilities.bold());
        }
        this.titleY = (this.title.getHeight() / 2.0f) + fDp;
        float height = fDp + this.title.getHeight() + AndroidUtilities.dp(3.0f);
        if (this.repost) {
            this.subtitle = new Text(LocaleController.formatPluralStringComma("Gift2CollectionNumber", tL_starGiftUnique.num), 12.0f, AndroidUtilities.bold());
        } else {
            this.subtitle = new Text(tL_starGiftUnique.title + " #" + LocaleController.formatNumber(tL_starGiftUnique.num, ','), 12.0f);
        }
        this.subtitleY = (this.subtitle.getHeight() / 2.0f) + height;
        float height2 = height + this.subtitle.getHeight() + AndroidUtilities.dp(this.repost ? 14.0f : 11.0f);
        this.table.clear();
        this.nameWidth = 0.0f;
        this.valueWidth = 0.0f;
        if (this.model != null) {
            if (!this.table.isEmpty()) {
                height2 += AndroidUtilities.dp(6.0f);
            }
            Row row = new Row(height2, LocaleController.getString(C2484R.string.Gift2AttributeModel), this.model.name);
            this.table.add(row);
            float f2 = f * 0.5f;
            row.name.ellipsize(f2);
            this.nameWidth = Math.max(this.nameWidth, row.name.getCurrentWidth());
            row.value.ellipsize(f2);
            this.valueWidth = Math.max(this.valueWidth, row.value.getCurrentWidth());
            height2 += row.getHeight();
        }
        if (this.backdrop != null) {
            if (!this.table.isEmpty()) {
                height2 += AndroidUtilities.dp(6.0f);
            }
            Row row2 = new Row(height2, LocaleController.getString(C2484R.string.Gift2AttributeBackdrop), this.backdrop.name);
            this.table.add(row2);
            float f3 = f * 0.5f;
            row2.name.ellipsize(f3);
            this.nameWidth = Math.max(this.nameWidth, row2.name.getCurrentWidth());
            row2.value.ellipsize(f3);
            this.valueWidth = Math.max(this.valueWidth, row2.value.getCurrentWidth());
            height2 += row2.getHeight();
        }
        if (this.pattern != null) {
            if (!this.table.isEmpty()) {
                height2 += AndroidUtilities.dp(6.0f);
            }
            Row row3 = new Row(height2, LocaleController.getString(C2484R.string.Gift2AttributeSymbol), this.pattern.name);
            this.table.add(row3);
            float f4 = f * 0.5f;
            row3.name.ellipsize(f4);
            this.nameWidth = Math.max(this.nameWidth, row3.name.getCurrentWidth());
            row3.value.ellipsize(f4);
            this.valueWidth = Math.max(this.valueWidth, row3.value.getCurrentWidth());
            height2 += row3.getHeight();
        }
        float fDp2 = height2 + AndroidUtilities.dp(11.66f);
        if (!this.repost) {
            this.buttonY = fDp2;
            this.buttonText = new Text(LocaleController.getString(C2484R.string.Gift2UniqueView), 14.0f, AndroidUtilities.bold());
            float fDp3 = AndroidUtilities.dp(30.0f);
            this.buttonHeight = fDp3;
            fDp2 += fDp3;
            iDp = AndroidUtilities.dp(11.0f);
        } else {
            iDp = AndroidUtilities.dp(10.0f);
        }
        this.height = (int) (fDp2 + iDp);
    }

    public boolean has() {
        return this.action != null;
    }

    public float getWidth() {
        return this.width;
    }

    public float getHeight() {
        return this.height;
    }

    public void attach() {
        this.attached = true;
        if (this.action != null) {
            this.imageReceiver.onAttachedToWindow();
            this.emoji.attach();
        }
    }

    public void detach() {
        this.attached = false;
        this.imageReceiver.onDetachedFromWindow();
        this.emoji.detach();
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
        int i2 = i;
        text2.draw(canvas, width - (text2.getCurrentWidth() / 2.0f), this.subtitleY, i2, 1.0f);
        float fDp = this.nameWidth + AndroidUtilities.dp(9.0f) + this.valueWidth;
        ArrayList arrayList = this.table;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            int i4 = i3 + 1;
            Row row = (Row) arrayList.get(i3);
            Text text3 = row.name;
            float f2 = width - (fDp / 2.0f);
            text3.draw(canvas, (f2 + this.nameWidth) - text3.getCurrentWidth(), row.f1530y, i2, 1.0f);
            row.value.draw(canvas, f2 + this.nameWidth + AndroidUtilities.dp(9.0f), row.f1530y, -1, 1.0f);
            i3 = i4;
            i2 = i2;
        }
        int i5 = i2;
        if (!this.repost) {
            this.buttonRect.set(width - ((this.buttonText.getCurrentWidth() + AndroidUtilities.dp(30.0f)) / 2.0f), this.buttonY, width + ((this.buttonText.getCurrentWidth() + AndroidUtilities.dp(30.0f)) / 2.0f), this.buttonY + this.buttonHeight);
            this.buttonPath.rewind();
            Path path = this.buttonPath;
            RectF rectF = this.buttonRect;
            float f3 = this.buttonHeight;
            path.addRoundRect(rectF, f3 / 2.0f, f3 / 2.0f, Path.Direction.CW);
            this.buttonBackgroundPaint.setColor(Theme.multAlpha(-16777216, 0.13f));
            float scale2 = this.buttonBounce.getScale(0.075f);
            canvas.scale(scale2, scale2, this.buttonRect.centerX(), this.buttonRect.centerY());
            canvas.drawPath(this.buttonPath, this.buttonBackgroundPaint);
            canvas.restore();
            this.ribbon.setBounds(((int) this.backgroundRect.right) - AndroidUtilities.dp(46.67f), ((int) this.backgroundRect.top) - AndroidUtilities.dp(1.33f), ((int) this.backgroundRect.right) + AndroidUtilities.dp(1.33f), ((int) this.backgroundRect.top) + AndroidUtilities.dp(46.67f));
            this.ribbon.setTextColor(i5);
            this.ribbon.draw(canvas);
        }
        canvas.restore();
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
        this.view.invalidateOutbounds();
    }

    public boolean onTouchEvent(float f, float f2, MotionEvent motionEvent) {
        boolean zContains = this.buttonRect.contains(motionEvent.getX() - f, motionEvent.getY() - f2);
        boolean zContains2 = this.backgroundRect.contains(motionEvent.getX() - f, motionEvent.getY() - f2);
        if (motionEvent.getAction() == 0) {
            this.bounce.setPressed(zContains2 && !zContains);
            this.buttonBounce.setPressed(zContains);
        } else if (motionEvent.getAction() == 2) {
            if (this.buttonBounce.isPressed() && !zContains) {
                this.buttonBounce.setPressed(false);
            } else if (this.bounce.isPressed() && !zContains2) {
                this.bounce.setPressed(false);
            }
        } else {
            if (motionEvent.getAction() == 1 && (this.buttonBounce.isPressed() || this.bounce.isPressed())) {
                if (this.burned) {
                    BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
                    if (safeLastFragment != null) {
                        BulletinFactory.of(safeLastFragment).createSimpleBulletin(C2484R.raw.fire_on, LocaleController.getString(C2484R.string.UniqueGiftNotFoundBurned)).show();
                    }
                } else {
                    new StarGiftSheet(this.view.getContext(), this.currentAccount, this.currentMessageObject.getDialogId(), this.resourcesProvider).set(this.currentMessageObject).show();
                }
                this.buttonBounce.setPressed(false);
                this.bounce.setPressed(false);
                return true;
            }
            if (motionEvent.getAction() == 3 && (this.buttonBounce.isPressed() || this.bounce.isPressed())) {
                this.buttonBounce.setPressed(false);
                this.bounce.setPressed(false);
                return true;
            }
        }
        return this.buttonBounce.isPressed() || this.bounce.isPressed();
    }
}
