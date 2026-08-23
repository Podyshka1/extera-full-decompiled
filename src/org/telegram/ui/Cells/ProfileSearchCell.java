package org.telegram.ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.exteragram.messenger.AvatarCornerType;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.api.dto.BadgeDTO;
import com.exteragram.messenger.badges.BadgesController;
import com.google.android.material.timepicker.TimeModel;
import java.util.Locale;
import org.telegram.PhoneFormat.PhoneFormat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.utils.DrawableUtils;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.ButtonBounce;
import org.telegram.ui.Components.CanvasButton;
import org.telegram.ui.Components.CheckBox2;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.CombinedDrawable;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.Forum.ForumUtilities;
import org.telegram.ui.Components.PhotoBubbleClip;
import org.telegram.ui.Components.Premium.PremiumGradient;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.Text;
import org.telegram.ui.FilterCreateActivity;
import org.telegram.ui.Stories.StoriesUtilities;

/* JADX INFO: loaded from: classes3.dex */
public class ProfileSearchCell extends BaseCell implements NotificationCenter.NotificationCenterDelegate, Theme.Colorable {
    CanvasButton actionButton;
    private StaticLayout actionLayout;
    private int actionLeft;
    private TLRPC.TL_sponsoredPeer ad;
    private Paint adBackgroundPaint;
    private final ButtonBounce adBounce;
    private final RectF adBounds;
    private Text adText;
    private boolean allowBotOpenButton;
    private boolean allowEmojiStatus;
    private AvatarDrawable avatarDrawable;
    public ImageReceiver avatarImage;
    public StoriesUtilities.AvatarStoryParams avatarStoryParams;
    private AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable botVerificationDrawable;
    private PhotoBubbleClip bubbleClip;
    private boolean callCellStyle;
    private TLRPC.Chat chat;
    CheckBox2 checkBox;
    private ContactsController.Contact contact;
    private StaticLayout countLayout;
    private int countLeft;
    private int countTop;
    private int countWidth;
    private int currentAccount;
    private CharSequence currentName;
    private boolean customPaints;
    private long dialog_id;
    public boolean dontDrawAvatar;
    private boolean drawCheck;
    private boolean drawCount;
    private boolean drawNameLock;
    private boolean drawPremium;
    private TLRPC.EncryptedChat encryptedChat;
    private boolean[] isOnline;
    private TLRPC.FileLocation lastAvatar;
    private String lastName;
    private int lastStatus;
    private int lastUnreadCount;
    private Drawable lockDrawable;
    private StaticLayout nameLayout;
    private int nameLeft;
    private int nameLockLeft;
    private int nameLockTop;
    private TextPaint namePaint;
    private int nameTop;
    private int nameWidth;
    private Utilities.Callback<TLRPC.User> onOpenButtonClick;
    private Utilities.Callback2<ProfileSearchCell, TLRPC.TL_sponsoredPeer> onSponsoredOptionsClick;
    private boolean openBot;
    private final Paint openButtonBackgroundPaint;
    private final ButtonBounce openButtonBounce;
    private final RectF openButtonRect;
    private Text openButtonText;
    private boolean premiumBlocked;
    private final AnimatedFloat premiumBlockedT;
    private PremiumGradient.PremiumGradientTools premiumGradient;
    private RectF rect;
    private boolean rectangularAvatar;
    private Theme.ResourcesProvider resourcesProvider;
    private boolean savedMessages;
    private boolean showPremiumBlocked;
    private final AnimatedFloat starsBlockedT;
    private long starsPriceBlocked;
    private AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable statusDrawable;
    private StaticLayout statusLayout;
    private int statusLeft;
    private TextPaint statusPaint;
    private CharSequence subLabel;
    private int sublabelOffsetX;
    private int sublabelOffsetY;
    public boolean useSeparator;
    private TLRPC.User user;

    @Override // org.telegram.ui.ActionBar.Theme.Colorable
    public /* bridge */ /* synthetic */ int[] getColorKeys() {
        return super.getColorKeys();
    }

    public ProfileSearchCell(Context context) {
        this(context, null);
    }

    public ProfileSearchCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.currentAccount = UserConfig.selectedAccount;
        this.countTop = AndroidUtilities.dp(19.0f);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.premiumBlockedT = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator);
        this.starsBlockedT = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator);
        this.avatarStoryParams = new StoriesUtilities.AvatarStoryParams(false);
        this.adBounds = new RectF();
        this.adBounce = new ButtonBounce(this);
        this.rect = new RectF();
        this.allowEmojiStatus = true;
        this.openButtonBounce = new ButtonBounce(this);
        this.openButtonBackgroundPaint = new Paint(1);
        this.openButtonRect = new RectF();
        this.resourcesProvider = resourcesProvider;
        ImageReceiver imageReceiver = new ImageReceiver(this);
        this.avatarImage = imageReceiver;
        imageReceiver.setRoundRadius(ExteraConfig.getAvatarCorners(46.0f));
        this.avatarDrawable = new AvatarDrawable();
        CheckBox2 checkBox2 = new CheckBox2(context, 21, resourcesProvider);
        this.checkBox = checkBox2;
        checkBox2.setColor(-1, Theme.key_windowBackgroundWhite, Theme.key_checkboxCheck);
        this.checkBox.setDrawUnchecked(false);
        this.checkBox.setDrawBackgroundAsArc(3);
        addView(this.checkBox);
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, AndroidUtilities.dp(20.0f));
        this.botVerificationDrawable = swapAnimatedEmojiDrawable;
        swapAnimatedEmojiDrawable.setCallback(this);
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable2 = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, AndroidUtilities.dp(20.0f));
        this.statusDrawable = swapAnimatedEmojiDrawable2;
        swapAnimatedEmojiDrawable2.setCallback(this);
    }

    public ProfileSearchCell allowBotOpenButton(boolean z, Utilities.Callback<TLRPC.User> callback) {
        this.allowBotOpenButton = z;
        this.onOpenButtonClick = callback;
        return this;
    }

    public void setOnSponsoredOptionsClick(Utilities.Callback2<ProfileSearchCell, TLRPC.TL_sponsoredPeer> callback2) {
        this.onSponsoredOptionsClick = callback2;
    }

    public ProfileSearchCell showPremiumBlock(boolean z) {
        this.showPremiumBlocked = z;
        return this;
    }

    public ProfileSearchCell useCustomPaints() {
        this.customPaints = true;
        return this;
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return this.statusDrawable == drawable || this.botVerificationDrawable == drawable || super.verifyDrawable(drawable);
    }

    public void setAd(TLRPC.TL_sponsoredPeer tL_sponsoredPeer) {
        this.ad = tL_sponsoredPeer;
    }

    public void setAllowEmojiStatus(boolean z) {
        this.allowEmojiStatus = z;
    }

    public void setData(Object obj, TLRPC.EncryptedChat encryptedChat, CharSequence charSequence, CharSequence charSequence2, boolean z, boolean z2) {
        this.currentName = charSequence;
        if (obj instanceof TLRPC.User) {
            this.user = (TLRPC.User) obj;
            this.chat = null;
            this.contact = null;
            requirementToContactIsUserContactBlocked = this.showPremiumBlocked ? MessagesController.getInstance(this.currentAccount).isUserContactBlocked(this.user.id) : null;
            this.premiumBlocked = DialogObject.isPremiumBlocked(requirementToContactIsUserContactBlocked);
            this.starsPriceBlocked = DialogObject.getMessagesStarsPrice(requirementToContactIsUserContactBlocked);
            setOpenBotButton(this.allowBotOpenButton && this.user.bot_has_main_app);
        } else if (obj instanceof TLRPC.Chat) {
            TLRPC.Chat chat = (TLRPC.Chat) obj;
            this.chat = chat;
            this.user = null;
            this.contact = null;
            TL_account.RequirementToContact requirementToContact = ChatObject.getRequirementToContact(chat);
            this.premiumBlocked = DialogObject.isPremiumBlocked(requirementToContact);
            this.starsPriceBlocked = DialogObject.getMessagesStarsPrice(requirementToContact);
            setOpenBotButton(false);
        } else if (obj instanceof ContactsController.Contact) {
            ContactsController.Contact contact = (ContactsController.Contact) obj;
            this.contact = contact;
            this.chat = null;
            this.user = null;
            if (this.showPremiumBlocked && contact.user != null) {
                requirementToContactIsUserContactBlocked = MessagesController.getInstance(this.currentAccount).isUserContactBlocked(this.contact.user.id);
            }
            this.premiumBlocked = DialogObject.isPremiumBlocked(requirementToContactIsUserContactBlocked);
            this.starsPriceBlocked = DialogObject.getMessagesStarsPrice(requirementToContactIsUserContactBlocked);
            setOpenBotButton(false);
        } else {
            setOpenBotButton(false);
        }
        this.encryptedChat = encryptedChat;
        this.subLabel = charSequence2;
        this.drawCount = z;
        this.savedMessages = z2;
        update(0);
    }

    public void setSubLabel(CharSequence charSequence) {
        this.subLabel = charSequence;
        update(0);
    }

    public void setOpenBotButton(boolean z) {
        if (this.openBot == z) {
            return;
        }
        if (this.openButtonText == null) {
            this.openButtonText = new Text(LocaleController.getString(C2573R.string.BotOpen), 14.0f, AndroidUtilities.bold());
        }
        int currentWidth = z ? ((int) this.openButtonText.getCurrentWidth()) + AndroidUtilities.dp(30.0f) : 0;
        boolean z2 = LocaleController.isRTL;
        int i = z2 ? currentWidth : 0;
        if (z2) {
            currentWidth = 0;
        }
        setPadding(i, 0, currentWidth, 0);
        this.openBot = z;
        this.openButtonBounce.setPressed(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.avatarImage.onDetachedFromWindow();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
        if (this.showPremiumBlocked) {
            NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.userIsPremiumBlockedUpadted);
        }
        this.statusDrawable.detach();
        this.botVerificationDrawable.detach();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.avatarImage.onAttachedToWindow();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
        if (this.showPremiumBlocked) {
            NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.userIsPremiumBlockedUpadted);
        }
        this.statusDrawable.attach();
        this.botVerificationDrawable.attach();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.emojiLoaded) {
            invalidate();
            return;
        }
        if (i == NotificationCenter.userIsPremiumBlockedUpadted) {
            TL_account.RequirementToContact requirementToContactIsUserContactBlocked = null;
            if (this.user != null) {
                if (this.showPremiumBlocked) {
                    requirementToContactIsUserContactBlocked = MessagesController.getInstance(this.currentAccount).isUserContactBlocked(this.user.id);
                }
            } else {
                TLRPC.Chat chat = this.chat;
                if (chat != null) {
                    requirementToContactIsUserContactBlocked = ChatObject.getRequirementToContact(chat);
                } else {
                    ContactsController.Contact contact = this.contact;
                    if (contact == null) {
                        return;
                    }
                    if (this.showPremiumBlocked && contact.user != null) {
                        requirementToContactIsUserContactBlocked = MessagesController.getInstance(this.currentAccount).isUserContactBlocked(this.contact.user.id);
                    }
                }
            }
            if (this.premiumBlocked == DialogObject.isPremiumBlocked(requirementToContactIsUserContactBlocked) && this.starsPriceBlocked == DialogObject.getMessagesStarsPrice(requirementToContactIsUserContactBlocked)) {
                return;
            }
            this.premiumBlocked = DialogObject.isPremiumBlocked(requirementToContactIsUserContactBlocked);
            this.starsPriceBlocked = DialogObject.getMessagesStarsPrice(requirementToContactIsUserContactBlocked);
            invalidate();
        }
    }

    public void setCallCellStyle() {
        this.callCellStyle = true;
        this.customPaints = true;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        CheckBox2 checkBox2 = this.checkBox;
        if (checkBox2 != null) {
            checkBox2.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(24.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(24.0f), TLObject.FLAG_30));
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i), this.callCellStyle ? AndroidUtilities.dp(56.0f) : AndroidUtilities.dp(60.0f) + (this.useSeparator ? 1 : 0));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.user == null && this.chat == null && this.encryptedChat == null && this.contact == null) {
            return;
        }
        if (this.checkBox != null) {
            int iDp = LocaleController.isRTL ? (i3 - i) - AndroidUtilities.dp(42.0f) : AndroidUtilities.dp(42.0f);
            int iDp2 = AndroidUtilities.dp(36.0f);
            CheckBox2 checkBox2 = this.checkBox;
            checkBox2.layout(iDp, iDp2, checkBox2.getMeasuredWidth() + iDp, this.checkBox.getMeasuredHeight() + iDp2);
        }
        if (z) {
            buildLayout();
        }
    }

    public TLRPC.User getUser() {
        return this.user;
    }

    public TLRPC.Chat getChat() {
        return this.chat;
    }

    public void setSublabelOffset(int i, int i2) {
        this.sublabelOffsetX = i;
        this.sublabelOffsetY = i2;
    }

    public void buildLayout() {
        TLRPC.Chat chat;
        TextPaint textPaint;
        int measuredWidth;
        CharSequence userStatus;
        TLRPC.UserStatus userStatus2;
        int i;
        int i2;
        int iDp;
        this.drawNameLock = false;
        this.drawCheck = false;
        this.drawPremium = false;
        float f = 11.0f;
        if (this.encryptedChat != null) {
            this.drawNameLock = true;
            this.dialog_id = DialogObject.makeEncryptedDialogId(r1.id);
            if (!LocaleController.isRTL) {
                this.nameLockLeft = AndroidUtilities.dp(AndroidUtilities.leftBaseline);
                this.nameLeft = AndroidUtilities.dp(AndroidUtilities.leftBaseline + 4) + Theme.dialogs_lockDrawable.getIntrinsicWidth();
            } else {
                this.nameLockLeft = (getMeasuredWidth() - AndroidUtilities.dp(AndroidUtilities.leftBaseline + 2)) - Theme.dialogs_lockDrawable.getIntrinsicWidth();
                this.nameLeft = AndroidUtilities.dp(11.0f);
            }
            this.nameLockTop = AndroidUtilities.dp(22.0f);
            updateStatus(false, null, null, null, false);
        } else {
            TLRPC.Chat chat2 = this.chat;
            if (chat2 != null) {
                this.dialog_id = -chat2.id;
                this.drawCheck = chat2.verified;
                if (chat2.monoforum && (chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.chat.linked_monoforum_id))) != null) {
                    this.drawCheck = chat.verified;
                }
                if (!LocaleController.isRTL) {
                    this.nameLeft = AndroidUtilities.dp(AndroidUtilities.leftBaseline);
                } else {
                    this.nameLeft = AndroidUtilities.dp(11.0f);
                }
                updateStatus(this.drawCheck, BadgesController.INSTANCE.getBadge(this.chat), null, this.chat, false);
            } else {
                TLRPC.User user = this.user;
                if (user != null) {
                    this.dialog_id = user.id;
                    if (!LocaleController.isRTL) {
                        this.nameLeft = AndroidUtilities.dp(AndroidUtilities.leftBaseline);
                    } else {
                        this.nameLeft = AndroidUtilities.dp(11.0f);
                    }
                    this.nameLockTop = AndroidUtilities.dp(21.0f);
                    this.drawCheck = this.user.verified;
                    this.drawPremium = !this.savedMessages && MessagesController.getInstance(this.currentAccount).isPremiumUser(this.user);
                    updateStatus(this.drawCheck, BadgesController.INSTANCE.getBadge(this.user), this.user, null, false);
                } else if (this.contact != null) {
                    this.dialog_id = 0L;
                    if (!LocaleController.isRTL) {
                        this.nameLeft = AndroidUtilities.dp(AndroidUtilities.leftBaseline);
                    } else {
                        this.nameLeft = AndroidUtilities.dp(11.0f);
                    }
                    if (this.actionButton == null) {
                        CanvasButton canvasButton = new CanvasButton(this);
                        this.actionButton = canvasButton;
                        canvasButton.setDelegate(new Runnable() { // from class: org.telegram.ui.Cells.ProfileSearchCell$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$buildLayout$0();
                            }
                        });
                    }
                }
            }
        }
        if (!LocaleController.isRTL) {
            this.statusLeft = AndroidUtilities.dp(AndroidUtilities.leftBaseline);
        } else {
            this.statusLeft = AndroidUtilities.dp(11.0f);
        }
        if (this.ad != null) {
            if (this.adText == null) {
                SpannableStringBuilder spannableStringBuilderAppend = new SpannableStringBuilder(LocaleController.getString(C2573R.string.SearchAd)).append((CharSequence) " i");
                ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2573R.drawable.ic_ab_other);
                coloredImageSpan.setScale(0.55f, 0.55f);
                coloredImageSpan.spaceScaleX = 0.7f;
                coloredImageSpan.translate(-AndroidUtilities.dp(2.0f), 0.0f);
                spannableStringBuilderAppend.setSpan(coloredImageSpan, spannableStringBuilderAppend.length() - 1, spannableStringBuilderAppend.length(), 33);
                this.adText = new Text(spannableStringBuilderAppend, 12.0f);
            }
            if (this.adBackgroundPaint == null) {
                this.adBackgroundPaint = new Paint(1);
            }
        }
        CharSequence charSequence = this.currentName;
        CharSequence charSequence2 = charSequence;
        if (charSequence == null) {
            charSequence2 = null;
        }
        TLRPC.Chat chat3 = this.chat;
        CharSequence charSequenceRemoveRTL = charSequence2;
        if (chat3 != null) {
            charSequenceRemoveRTL = charSequence2;
            if (chat3.monoforum) {
                TLRPC.Chat chat4 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.chat.linked_monoforum_id));
                charSequenceRemoveRTL = charSequence2;
                if (chat4 != null) {
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(AndroidUtilities.escape(chat4.title));
                    spannableStringBuilder.append((CharSequence) " ");
                    int length = spannableStringBuilder.length();
                    spannableStringBuilder.append((CharSequence) LocaleController.getString(C2573R.string.MonoforumSpan));
                    spannableStringBuilder.setSpan(new FilterCreateActivity.TextSpan(LocaleController.getString(C2573R.string.MonoforumSpan), 9.33f, Theme.key_windowBackgroundWhiteGrayText, this.resourcesProvider), length, spannableStringBuilder.length(), 33);
                    charSequenceRemoveRTL = spannableStringBuilder;
                } else if (charSequence2 == null) {
                    charSequenceRemoveRTL = AndroidUtilities.removeRTL(AndroidUtilities.removeDiacritics(this.chat.title));
                }
            } else if (charSequence2 == null) {
                charSequenceRemoveRTL = AndroidUtilities.removeRTL(AndroidUtilities.removeDiacritics(chat3.title));
            }
        } else if (charSequence2 == null) {
            TLRPC.User user2 = this.user;
            charSequenceRemoveRTL = charSequence2;
            if (user2 != null) {
                charSequenceRemoveRTL = AndroidUtilities.removeRTL(AndroidUtilities.removeDiacritics(UserObject.getUserName(user2)));
            }
        }
        CharSequence charSequenceReplaceNewLines = AndroidUtilities.replaceNewLines(charSequenceRemoveRTL);
        if (TextUtils.isEmpty(charSequenceReplaceNewLines)) {
            if (ExteraConfig.getHidePhoneNumber()) {
                charSequenceReplaceNewLines = LocaleController.getString(C2573R.string.MobileHidden);
            } else {
                TLRPC.User user3 = this.user;
                if (user3 != null && !TextUtils.isEmpty(user3.phone)) {
                    charSequenceReplaceNewLines = PhoneFormat.getInstance().format("+" + this.user.phone);
                } else {
                    charSequenceReplaceNewLines = LocaleController.getString(C2573R.string.HiddenName);
                }
            }
        }
        if (this.customPaints) {
            if (this.namePaint == null) {
                TextPaint textPaint2 = new TextPaint(1);
                this.namePaint = textPaint2;
                textPaint2.setTypeface(AndroidUtilities.bold());
            }
            this.namePaint.setTextSize(AndroidUtilities.dp(this.callCellStyle ? 15.0f : 16.0f));
            TLRPC.EncryptedChat encryptedChat = this.encryptedChat;
            TextPaint textPaint3 = this.namePaint;
            if (encryptedChat != null) {
                textPaint3.setColor(Theme.getColor(Theme.key_chats_secretName, this.resourcesProvider));
            } else {
                textPaint3.setColor(Theme.getColor(Theme.key_chats_name, this.resourcesProvider));
            }
            textPaint = this.namePaint;
        } else if (this.encryptedChat != null) {
            textPaint = Theme.dialogs_searchNameEncryptedPaint;
        } else {
            textPaint = Theme.dialogs_searchNamePaint;
        }
        TextPaint textPaint4 = textPaint;
        if (!LocaleController.isRTL) {
            measuredWidth = (getMeasuredWidth() - this.nameLeft) - AndroidUtilities.dp(14.0f);
            this.nameWidth = measuredWidth;
        } else {
            measuredWidth = (getMeasuredWidth() - this.nameLeft) - AndroidUtilities.dp(AndroidUtilities.leftBaseline);
            this.nameWidth = measuredWidth;
        }
        if (this.drawNameLock) {
            this.nameWidth -= AndroidUtilities.dp(6.0f) + Theme.dialogs_lockDrawable.getIntrinsicWidth();
        }
        if (this.ad != null) {
            int currentWidth = ((int) this.adText.getCurrentWidth()) + AndroidUtilities.dp(20.66f);
            this.nameWidth -= currentWidth;
            if (LocaleController.isRTL) {
                this.nameLeft += currentWidth;
            }
        }
        if (this.contact != null) {
            int iMeasureText = (int) (Theme.dialogs_countTextPaint.measureText(LocaleController.getString(C2573R.string.Invite)) + 1.0f);
            this.actionLayout = new StaticLayout(LocaleController.getString(C2573R.string.Invite), Theme.dialogs_countTextPaint, iMeasureText, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
            if (!LocaleController.isRTL) {
                this.actionLeft = ((getMeasuredWidth() - iMeasureText) - AndroidUtilities.dp(19.0f)) - AndroidUtilities.dp(16.0f);
            } else {
                this.actionLeft = AndroidUtilities.dp(19.0f) + AndroidUtilities.dp(16.0f);
                this.nameLeft += iMeasureText;
                this.statusLeft += iMeasureText;
            }
            this.nameWidth -= AndroidUtilities.dp(32.0f) + iMeasureText;
        }
        this.nameWidth -= getPaddingLeft() + getPaddingRight();
        int paddingLeft = measuredWidth - (getPaddingLeft() + getPaddingRight());
        if (this.drawCount) {
            int dialogUnreadCount = MessagesController.getInstance(this.currentAccount).getDialogUnreadCount(MessagesController.getInstance(this.currentAccount).dialogs_dict.get(this.dialog_id));
            if (dialogUnreadCount != 0) {
                this.lastUnreadCount = dialogUnreadCount;
                String str = String.format(Locale.US, TimeModel.NUMBER_FORMAT, Integer.valueOf(dialogUnreadCount));
                this.countWidth = Math.max(AndroidUtilities.dp(12.0f), (int) Math.ceil(Theme.dialogs_countTextPaint.measureText(str)));
                this.countLayout = new StaticLayout(str, Theme.dialogs_countTextPaint, this.countWidth, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
                int iDp2 = this.countWidth + AndroidUtilities.dp(18.0f);
                this.nameWidth -= iDp2;
                paddingLeft -= iDp2;
                if (!LocaleController.isRTL) {
                    this.countLeft = (getMeasuredWidth() - this.countWidth) - AndroidUtilities.dp(19.0f);
                } else {
                    this.countLeft = AndroidUtilities.dp(19.0f);
                    this.nameLeft += iDp2;
                    this.statusLeft += iDp2;
                }
            } else {
                this.lastUnreadCount = 0;
                this.countLayout = null;
            }
        } else {
            this.lastUnreadCount = 0;
            this.countLayout = null;
        }
        int i3 = paddingLeft;
        if (!this.botVerificationDrawable.isEmpty()) {
            if (LocaleController.isRTL) {
                this.nameWidth -= this.botVerificationDrawable.getIntrinsicWidth();
            } else {
                this.nameLeft += this.botVerificationDrawable.getIntrinsicWidth();
            }
        }
        if (!this.statusDrawable.isEmpty() && !LocaleController.isRTL) {
            this.nameWidth -= this.statusDrawable.getIntrinsicWidth();
        }
        if (this.nameWidth < 0) {
            this.nameWidth = 0;
        }
        float fDp = this.nameWidth - AndroidUtilities.dp(12.0f);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        CharSequence charSequenceEllipsize = TextUtils.ellipsize(charSequenceReplaceNewLines, textPaint4, fDp, truncateAt);
        if (charSequenceEllipsize != null) {
            charSequenceEllipsize = Emoji.replaceEmoji(charSequenceEllipsize, textPaint4.getFontMetricsInt(), false);
        }
        int i4 = this.nameWidth;
        Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
        this.nameLayout = new StaticLayout(charSequenceEllipsize, textPaint4, i4, alignment, 1.0f, 0.0f, false);
        TextPaint textPaint5 = Theme.dialogs_offlinePaint;
        TLRPC.Chat chat5 = this.chat;
        if (chat5 == null || this.subLabel != null) {
            userStatus = this.subLabel;
            if (userStatus == null) {
                TLRPC.User user4 = this.user;
                if (user4 == null) {
                    userStatus = null;
                } else if (MessagesController.isSupportUser(user4)) {
                    userStatus = LocaleController.getString(C2573R.string.SupportStatus);
                } else {
                    TLRPC.User user5 = this.user;
                    boolean z = user5.bot;
                    if (z && (i = user5.bot_active_users) != 0) {
                        userStatus = LocaleController.formatPluralStringSpaced("BotUsersShort", i);
                    } else if (z) {
                        userStatus = LocaleController.getString(C2573R.string.Bot);
                    } else {
                        long j = user5.id;
                        if (j == UserObject.VERIFY) {
                            userStatus = LocaleController.getString(C2573R.string.VerifyCodesNotifications);
                        } else if (UserObject.isService(j)) {
                            userStatus = LocaleController.getString(C2573R.string.ServiceNotifications);
                        } else {
                            if (this.isOnline == null) {
                                this.isOnline = new boolean[1];
                            }
                            boolean[] zArr = this.isOnline;
                            zArr[0] = false;
                            userStatus = LocaleController.formatUserStatus(this.currentAccount, this.user, zArr);
                            if (this.isOnline[0]) {
                                textPaint5 = Theme.dialogs_onlinePaint;
                            }
                            TLRPC.User user6 = this.user;
                            if (user6 != null && (user6.id == UserConfig.getInstance(this.currentAccount).getClientUserId() || ((userStatus2 = this.user.status) != null && userStatus2.expires > ConnectionsManager.getInstance(this.currentAccount).getCurrentTime()))) {
                                textPaint5 = Theme.dialogs_onlinePaint;
                                userStatus = LocaleController.getString(C2573R.string.Online);
                            }
                        }
                    }
                }
            }
            if (this.savedMessages || UserObject.isReplyUser(this.user)) {
                this.nameTop = AndroidUtilities.dp(20.0f);
                userStatus = null;
            }
        } else {
            if (ChatObject.isCommunity(chat5)) {
                userStatus = LocaleController.getString(C2573R.string.Community).toLowerCase();
            } else {
                boolean zIsChannelAndNotMegaGroup = ChatObject.isChannelAndNotMegaGroup(this.chat);
                TLRPC.Chat chat6 = this.chat;
                if (zIsChannelAndNotMegaGroup) {
                    int i5 = chat6.participants_count;
                    if (i5 != 0) {
                        userStatus = LocaleController.formatPluralStringComma("Subscribers", i5);
                    } else if (!ChatObject.isPublic(chat6)) {
                        userStatus = LocaleController.getString(C2573R.string.ChannelPrivate).toLowerCase();
                    } else {
                        userStatus = LocaleController.getString(C2573R.string.ChannelPublic).toLowerCase();
                    }
                } else {
                    int i6 = chat6.participants_count;
                    if (i6 != 0) {
                        userStatus = LocaleController.formatPluralStringComma("Members", i6);
                    } else if (chat6.has_geo) {
                        userStatus = LocaleController.getString(C2573R.string.MegaLocation);
                    } else if (ChatObject.isMonoForum(chat6)) {
                        userStatus = LocaleController.getString(C2573R.string.MonoforumMessages);
                    } else if (!ChatObject.isPublic(this.chat)) {
                        userStatus = LocaleController.getString(C2573R.string.MegaPrivate).toLowerCase();
                    } else {
                        userStatus = LocaleController.getString(C2573R.string.MegaPublic).toLowerCase();
                    }
                }
            }
            this.nameTop = AndroidUtilities.dp(19.0f);
        }
        if (this.customPaints) {
            if (this.statusPaint == null) {
                this.statusPaint = new TextPaint(1);
            }
            this.statusPaint.setTextSize(AndroidUtilities.dp(this.callCellStyle ? 13.0f : 15.0f));
            if (textPaint5 == Theme.dialogs_offlinePaint) {
                this.statusPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText3, this.resourcesProvider));
            } else if (textPaint5 == Theme.dialogs_onlinePaint) {
                this.statusPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText3, this.resourcesProvider));
            }
            textPaint5 = this.statusPaint;
        }
        if (!TextUtils.isEmpty(userStatus)) {
            StaticLayout staticLayout = new StaticLayout(TextUtils.ellipsize(userStatus, textPaint5, i3 - AndroidUtilities.dp(12.0f), truncateAt), textPaint5, i3, alignment, 1.0f, 0.0f, false);
            i2 = i3;
            this.statusLayout = staticLayout;
            this.nameTop = AndroidUtilities.dp(9.0f);
            this.nameLockTop -= AndroidUtilities.dp(10.0f);
        } else {
            i2 = i3;
            this.nameTop = AndroidUtilities.dp(20.0f);
            this.statusLayout = null;
        }
        if (LocaleController.isRTL) {
            iDp = (getMeasuredWidth() - AndroidUtilities.dp(57.0f)) - getPaddingRight();
        } else {
            if (this.callCellStyle) {
                f = 14.0f;
            } else if (this.rectangularAvatar) {
                f = 15.0f;
            }
            iDp = AndroidUtilities.dp(f) + getPaddingLeft();
        }
        this.avatarStoryParams.originalAvatarRect.set(iDp, AndroidUtilities.dp(this.callCellStyle ? 6.0f : 7.0f), iDp + AndroidUtilities.dp(this.callCellStyle ? 44.0f : this.rectangularAvatar ? 42.0f : 46.0f), AndroidUtilities.dp(this.callCellStyle ? 6.0f : 7.0f) + AndroidUtilities.dp(this.callCellStyle ? 44.0f : 46.0f));
        boolean z2 = LocaleController.isRTL;
        StaticLayout staticLayout2 = this.nameLayout;
        if (z2) {
            if (staticLayout2.getLineCount() > 0 && this.nameLayout.getLineLeft(0) == 0.0f) {
                double dCeil = Math.ceil(this.nameLayout.getLineWidth(0));
                int i7 = this.nameWidth;
                if (dCeil < i7) {
                    this.nameLeft = (int) (((double) this.nameLeft) + (((double) i7) - dCeil));
                }
            }
            StaticLayout staticLayout3 = this.statusLayout;
            if (staticLayout3 != null && staticLayout3.getLineCount() > 0 && this.statusLayout.getLineLeft(0) == 0.0f) {
                double dCeil2 = Math.ceil(this.statusLayout.getLineWidth(0));
                double d = i2;
                if (dCeil2 < d) {
                    this.statusLeft = (int) (((double) this.statusLeft) + (d - dCeil2));
                }
            }
        } else {
            if (staticLayout2.getLineCount() > 0 && this.nameLayout.getLineRight(0) == this.nameWidth) {
                double dCeil3 = Math.ceil(this.nameLayout.getLineWidth(0));
                int i8 = this.nameWidth;
                if (dCeil3 < i8) {
                    this.nameLeft = (int) (((double) this.nameLeft) - (((double) i8) - dCeil3));
                }
            }
            StaticLayout staticLayout4 = this.statusLayout;
            if (staticLayout4 != null && staticLayout4.getLineCount() > 0 && this.statusLayout.getLineRight(0) == i2) {
                double dCeil4 = Math.ceil(this.statusLayout.getLineWidth(0));
                double d2 = i2;
                if (dCeil4 < d2) {
                    this.statusLeft = (int) (((double) this.statusLeft) - (d2 - dCeil4));
                }
            }
        }
        this.nameLeft += getPaddingLeft();
        this.statusLeft += getPaddingLeft();
        this.nameLockLeft += getPaddingLeft();
        if (this.callCellStyle) {
            this.nameLeft += AndroidUtilities.dp(1.0f);
            this.nameTop += AndroidUtilities.dp(1.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildLayout$0() {
        if (getParent() instanceof RecyclerListView) {
            RecyclerListView recyclerListView = (RecyclerListView) getParent();
            recyclerListView.getOnItemClickListener().onItemClick(this, recyclerListView.getChildAdapterPosition(this));
        } else {
            callOnClick();
        }
    }

    public void updateStatus(boolean z, BadgeDTO badgeDTO, TLRPC.User user, TLRPC.Chat chat, boolean z2) {
        long botVerificationIcon;
        this.statusDrawable.center = LocaleController.isRTL;
        if (this.allowEmojiStatus && user != null && !this.savedMessages && DialogObject.getEmojiStatusDocumentId(user.emoji_status) != 0) {
            this.statusDrawable.set(DialogObject.getEmojiStatusDocumentId(user.emoji_status), z2);
            this.statusDrawable.setColor(Integer.valueOf(Theme.getColor(Theme.key_chats_verifiedBackground, this.resourcesProvider)));
        } else if (this.allowEmojiStatus && chat != null && !this.savedMessages && DialogObject.getEmojiStatusDocumentId(chat.emoji_status) != 0) {
            this.statusDrawable.set(DialogObject.getEmojiStatusDocumentId(chat.emoji_status), z2);
            this.statusDrawable.setColor(Integer.valueOf(Theme.getColor(Theme.key_chats_verifiedBackground, this.resourcesProvider)));
        } else {
            boolean z3 = this.allowEmojiStatus;
            if (z3 && z) {
                this.statusDrawable.set(new CombinedDrawable(Theme.dialogs_verifiedDrawable, Theme.dialogs_verifiedCheckDrawable, 0, 0), z2);
                this.statusDrawable.setColor(null);
            } else if (badgeDTO != null && !this.savedMessages) {
                this.statusDrawable.set(badgeDTO.getDocumentId(), z2);
                this.statusDrawable.setParticles(true, false);
                this.statusDrawable.setColor(Integer.valueOf(Theme.getColor(Theme.key_chats_verifiedBackground, this.resourcesProvider)));
            } else if (z3 && user != null && !this.savedMessages && MessagesController.getInstance(this.currentAccount).isPremiumUser(user)) {
                this.statusDrawable.set(PremiumGradient.getInstance().premiumStarDrawableMini, z2);
                this.statusDrawable.setColor(Integer.valueOf(Theme.getColor(Theme.key_chats_verifiedBackground, this.resourcesProvider)));
            } else {
                this.statusDrawable.set((Drawable) null, z2);
                this.statusDrawable.setColor(Integer.valueOf(Theme.getColor(Theme.key_chats_verifiedBackground, this.resourcesProvider)));
            }
        }
        if (badgeDTO == null || this.savedMessages) {
            this.statusDrawable.setParticles(false, false);
        }
        if (user != null) {
            botVerificationIcon = DialogObject.getBotVerificationIcon(user);
        } else {
            botVerificationIcon = chat != null ? DialogObject.getBotVerificationIcon(chat) : 0L;
        }
        if (botVerificationIcon == 0 || this.savedMessages) {
            this.botVerificationDrawable.set((Drawable) null, z2);
        } else {
            this.botVerificationDrawable.set(botVerificationIcon, z2);
        }
        this.botVerificationDrawable.setColor(Integer.valueOf(Theme.getColor(Theme.key_chats_verifiedBackground, this.resourcesProvider)));
    }

    public void setRectangularAvatar(boolean z) {
        this.rectangularAvatar = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0217 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0050 A[PHI: r3
  0x0050: PHI (r3v17 org.telegram.tgnet.TLRPC$FileLocation) = (r3v0 org.telegram.tgnet.TLRPC$FileLocation), (r3v19 org.telegram.tgnet.TLRPC$FileLocation) binds: [B:11:0x0046, B:13:0x004c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007e A[PHI: r3
  0x007e: PHI (r3v1 org.telegram.tgnet.TLRPC$FileLocation) = (r3v0 org.telegram.tgnet.TLRPC$FileLocation), (r3v3 org.telegram.tgnet.TLRPC$FileLocation) binds: [B:21:0x0074, B:23:0x007a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x018a  */
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void update(int i) {
        int avatarCorners;
        String monoForumTitle;
        boolean z;
        TLRPC.Dialog dialog;
        String monoForumTitle2;
        TLRPC.User user;
        TLRPC.User user2;
        TLRPC.FileLocation fileLocation;
        TLRPC.User user3 = this.user;
        TLRPC.FileLocation fileLocation2 = null;
        if (user3 != null) {
            this.avatarDrawable.setInfo(this.currentAccount, user3);
            if (UserObject.isReplyUser(this.user)) {
                this.avatarDrawable.setAvatarType(12);
                this.avatarImage.setImage(null, null, this.avatarDrawable, null, null, 0);
            } else {
                boolean z2 = this.savedMessages;
                AvatarDrawable avatarDrawable = this.avatarDrawable;
                if (z2) {
                    avatarDrawable.setAvatarType(1);
                    this.avatarImage.setImage(null, null, this.avatarDrawable, null, null, 0);
                } else {
                    TLRPC.User user4 = this.user;
                    TLRPC.UserProfilePhoto userProfilePhoto = user4.photo;
                    if (userProfilePhoto != null) {
                        fileLocation2 = userProfilePhoto.photo_small;
                        BitmapDrawable bitmapDrawable = userProfilePhoto.strippedBitmap;
                        Drawable drawable = bitmapDrawable != null ? bitmapDrawable : avatarDrawable;
                        this.avatarImage.setImage(ImageLocation.getForUserOrChat(this.currentAccount, user4, 1), "50_50", ImageLocation.getForUserOrChat(this.user, 2), "50_50", drawable, this.user, 0);
                    }
                }
            }
        } else {
            TLRPC.Chat chat = this.chat;
            if (chat != null) {
                AvatarDrawable avatarDrawable2 = this.avatarDrawable;
                TLRPC.ChatPhoto chatPhoto = chat.photo;
                if (chatPhoto != null) {
                    fileLocation2 = chatPhoto.photo_small;
                    BitmapDrawable bitmapDrawable2 = chatPhoto.strippedBitmap;
                    Drawable drawable2 = bitmapDrawable2 != null ? bitmapDrawable2 : avatarDrawable2;
                    boolean z3 = chat.monoforum;
                    int i2 = this.currentAccount;
                    if (z3) {
                        ForumUtilities.setMonoForumAvatar(i2, chat, avatarDrawable2, this.avatarImage);
                    } else {
                        avatarDrawable2.setInfo(i2, chat);
                        this.avatarImage.setImage(ImageLocation.getForUserOrChat(this.currentAccount, this.chat, 1), "50_50", ImageLocation.getForUserOrChat(this.chat, 2), "50_50", drawable2, this.chat, 0);
                    }
                }
            } else {
                ContactsController.Contact contact = this.contact;
                AvatarDrawable avatarDrawable3 = this.avatarDrawable;
                if (contact != null) {
                    avatarDrawable3.setInfo(0L, contact.first_name, contact.last_name);
                    this.avatarImage.setImage(null, null, this.avatarDrawable, null, null, 0);
                } else {
                    avatarDrawable3.setInfo(0L, null, null);
                    this.avatarImage.setImage(null, null, this.avatarDrawable, null, null, 0);
                }
            }
        }
        TLRPC.FileLocation fileLocation3 = fileLocation2;
        boolean zHasStories = MessagesController.getInstance(this.currentAccount).getStoriesController().hasStories(this.dialog_id);
        ImageReceiver imageReceiver = this.avatarImage;
        if (ChatObject.isCommunity(this.chat)) {
            avatarCorners = ExteraConfig.getAvatarCorners(46.0f, false, AvatarCornerType.COMMUNITY, zHasStories);
        } else {
            TLRPC.Chat chat2 = this.chat;
            if (chat2 == null || !chat2.monoforum) {
                avatarCorners = ExteraConfig.getAvatarCorners(46.0f, false, (chat2 != null && chat2.forum) || this.rectangularAvatar, zHasStories);
            } else {
                avatarCorners = 0;
            }
        }
        imageReceiver.setRoundRadius(avatarCorners);
        if (i != 0) {
            boolean z4 = !(((i & MessagesController.UPDATE_MASK_AVATAR) == 0 || this.user == null) && ((i & MessagesController.UPDATE_MASK_CHAT_AVATAR) == 0 || this.chat == null)) && (((fileLocation = this.lastAvatar) != null && fileLocation3 == null) || ((fileLocation == null && fileLocation3 != null) || !(fileLocation == null || (fileLocation.volume_id == fileLocation3.volume_id && fileLocation.local_id == fileLocation3.local_id))));
            if (!z4 && (i & MessagesController.UPDATE_MASK_STATUS) != 0 && (user2 = this.user) != null) {
                TLRPC.UserStatus userStatus = user2.status;
                if ((userStatus != null ? userStatus.expires : 0) != this.lastStatus) {
                    z = true;
                }
                if (!z) {
                    if (user == null) {
                    }
                    BadgesController badgesController = BadgesController.INSTANCE;
                    TLObject tLObject = user;
                    if (user == null) {
                    }
                    updateStatus(z, badgesController.getBadge(tLObject), this.user, this.chat, true);
                }
                if (z) {
                    if (this.user != null) {
                    }
                    if (!monoForumTitle2.equals(this.lastName)) {
                    }
                    if (z) {
                        if (!((z || !this.drawCount || (i & MessagesController.UPDATE_MASK_READ_DIALOG_MESSAGE) == 0 || (dialog = MessagesController.getInstance(this.currentAccount).dialogs_dict.get(this.dialog_id)) == null || MessagesController.getInstance(this.currentAccount).getDialogUnreadCount(dialog) == this.lastUnreadCount) ? z : true)) {
                        }
                    }
                } else {
                    if (this.user != null) {
                    }
                    if (!monoForumTitle2.equals(this.lastName)) {
                    }
                }
            } else {
                z = z4;
                if (!z && (i & MessagesController.UPDATE_MASK_EMOJI_STATUS) != 0 && ((user = this.user) != null || this.chat != null)) {
                    boolean z5 = user == null ? user.verified : this.chat.verified;
                    BadgesController badgesController2 = BadgesController.INSTANCE;
                    TLObject tLObject2 = user;
                    if (user == null) {
                        tLObject2 = this.chat;
                    }
                    updateStatus(z5, badgesController2.getBadge(tLObject2), this.user, this.chat, true);
                }
                if ((z && (i & MessagesController.UPDATE_MASK_NAME) != 0 && this.user != null) || ((i & MessagesController.UPDATE_MASK_CHAT_NAME) != 0 && this.chat != null)) {
                    if (this.user != null) {
                        monoForumTitle2 = this.user.first_name + this.user.last_name;
                    } else {
                        TLRPC.Chat chat3 = this.chat;
                        if (chat3.monoforum) {
                            monoForumTitle2 = ForumUtilities.getMonoForumTitle(this.currentAccount, chat3);
                        } else {
                            monoForumTitle2 = chat3.title;
                        }
                    }
                    if (!monoForumTitle2.equals(this.lastName)) {
                        z = true;
                    }
                }
                if (!((z || !this.drawCount || (i & MessagesController.UPDATE_MASK_READ_DIALOG_MESSAGE) == 0 || (dialog = MessagesController.getInstance(this.currentAccount).dialogs_dict.get(this.dialog_id)) == null || MessagesController.getInstance(this.currentAccount).getDialogUnreadCount(dialog) == this.lastUnreadCount) ? z : true)) {
                    return;
                }
            }
        }
        TLRPC.User user5 = this.user;
        if (user5 != null) {
            TLRPC.UserStatus userStatus2 = user5.status;
            if (userStatus2 != null) {
                this.lastStatus = userStatus2.expires;
            } else {
                this.lastStatus = 0;
            }
            this.lastName = this.user.first_name + this.user.last_name;
        } else {
            TLRPC.Chat chat4 = this.chat;
            if (chat4 != null) {
                if (chat4.monoforum) {
                    monoForumTitle = ForumUtilities.getMonoForumTitle(this.currentAccount, chat4);
                } else {
                    monoForumTitle = chat4.title;
                }
                this.lastName = monoForumTitle;
            }
        }
        this.lastAvatar = fileLocation3;
        if (getMeasuredWidth() != 0 || getMeasuredHeight() != 0) {
            buildLayout();
        } else {
            requestLayout();
        }
        postInvalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Canvas canvas2;
        int width;
        int iCeil;
        int lineRight;
        Theme.ResourcesProvider resourcesProvider;
        if (this.user == null && this.chat == null && this.encryptedChat == null && this.contact == null) {
            return;
        }
        if (this.useSeparator) {
            Paint paint = (!this.customPaints || (resourcesProvider = this.resourcesProvider) == null) ? null : resourcesProvider.getPaint("paintDivider");
            if (paint == null) {
                paint = Theme.dividerPaint;
            }
            Paint paint2 = paint;
            if (LocaleController.isRTL) {
                canvas2 = canvas;
                canvas2.drawLine(0.0f, getMeasuredHeight() - 1, getMeasuredWidth() - AndroidUtilities.dp(AndroidUtilities.leftBaseline), getMeasuredHeight() - 1, paint2);
            } else {
                canvas2 = canvas;
                canvas2.drawLine(AndroidUtilities.dp(AndroidUtilities.leftBaseline), getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight() - 1, paint2);
            }
        } else {
            canvas2 = canvas;
        }
        if (this.drawNameLock) {
            BaseCell.setDrawableBounds(Theme.dialogs_lockDrawable, this.nameLockLeft, this.nameLockTop);
            Theme.dialogs_lockDrawable.draw(canvas2);
        }
        StaticLayout staticLayout = this.nameLayout;
        if (staticLayout != null) {
            if (LocaleController.isRTL) {
                iCeil = (int) (this.nameLeft + staticLayout.getLineRight(0) + AndroidUtilities.dp(6.0f));
            } else if (staticLayout.getLineLeft(0) == 0.0f) {
                iCeil = (this.nameLeft - AndroidUtilities.dp(3.0f)) - this.botVerificationDrawable.getIntrinsicWidth();
            } else {
                iCeil = (int) (((((double) (this.nameLeft + this.nameWidth)) - Math.ceil(this.nameLayout.getLineWidth(0))) - ((double) AndroidUtilities.dp(3.0f))) - ((double) this.botVerificationDrawable.getIntrinsicWidth()));
            }
            BaseCell.setDrawableBounds(this.botVerificationDrawable, iCeil, this.nameTop + ((this.nameLayout.getHeight() - this.botVerificationDrawable.getIntrinsicHeight()) / 2.0f));
            this.botVerificationDrawable.draw(canvas2);
            canvas2.save();
            canvas2.translate(this.nameLeft, this.nameTop);
            this.nameLayout.draw(canvas2);
            canvas2.restore();
            if (!LocaleController.isRTL) {
                lineRight = (int) (this.nameLeft + this.nameLayout.getLineRight(0) + AndroidUtilities.dp(6.0f));
            } else if (this.nameLayout.getLineLeft(0) == 0.0f) {
                lineRight = (this.nameLeft - AndroidUtilities.dp(3.0f)) - this.statusDrawable.getIntrinsicWidth();
            } else {
                lineRight = (int) (((((double) (this.nameLeft + this.nameWidth)) - Math.ceil(this.nameLayout.getLineWidth(0))) - ((double) AndroidUtilities.dp(3.0f))) - ((double) this.statusDrawable.getIntrinsicWidth()));
            }
            BaseCell.setDrawableBounds(this.statusDrawable, lineRight, this.nameTop + ((this.nameLayout.getHeight() - this.statusDrawable.getIntrinsicHeight()) / 2.0f));
            this.statusDrawable.draw(canvas2);
        }
        if (this.ad != null && this.adText != null && this.adBackgroundPaint != null) {
            int color = Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider);
            this.adBackgroundPaint.setColor(Theme.multAlpha(color, 0.1f));
            int width2 = ((int) this.adText.getWidth()) + AndroidUtilities.dp(12.66f);
            int iDp = AndroidUtilities.dp(17.33f);
            if (LocaleController.isRTL) {
                width = AndroidUtilities.dp(12.0f);
            } else {
                width = (getWidth() - AndroidUtilities.dp(12.0f)) - width2;
            }
            float f = width;
            this.adBounds.set(f, this.nameTop, width + width2, r10 + iDp);
            this.adBounds.inset(-AndroidUtilities.dp(6.0f), -AndroidUtilities.dp(6.0f));
            canvas2.save();
            float scale = this.adBounce.getScale(0.1f);
            canvas2.scale(scale, scale, this.adBounds.centerX(), this.adBounds.centerY());
            canvas2.translate(f, this.nameTop);
            RectF rectF = AndroidUtilities.rectTmp;
            float f2 = iDp;
            rectF.set(0.0f, 0.0f, width2, f2);
            float f3 = f2 / 2.0f;
            canvas2.drawRoundRect(rectF, f3, f3, this.adBackgroundPaint);
            this.adText.draw(canvas2, AndroidUtilities.dp(6.33f), f3, color, 1.0f);
            canvas2.restore();
        }
        if (this.statusLayout != null) {
            canvas2.save();
            canvas2.translate(this.statusLeft + this.sublabelOffsetX, AndroidUtilities.dp(this.callCellStyle ? 35.0f : 33.0f) + this.sublabelOffsetY);
            this.statusLayout.draw(canvas2);
            canvas2.restore();
        }
        if (this.countLayout != null) {
            this.rect.set(this.countLeft - AndroidUtilities.dp(5.5f), this.countTop, r15 + this.countWidth + AndroidUtilities.dp(11.0f), this.countTop + AndroidUtilities.dp(23.0f));
            RectF rectF2 = this.rect;
            float f4 = AndroidUtilities.density;
            canvas2.drawRoundRect(rectF2, f4 * 11.5f, f4 * 11.5f, MessagesController.getInstance(this.currentAccount).isDialogMuted(this.dialog_id, 0L) ? Theme.dialogs_countGrayPaint : Theme.dialogs_countPaint);
            canvas2.save();
            canvas2.translate(this.countLeft, this.countTop + AndroidUtilities.dp(4.0f));
            this.countLayout.draw(canvas2);
            canvas2.restore();
        }
        if (this.actionLayout != null) {
            this.actionButton.setColor(Theme.getColor(Theme.key_chats_unreadCounter), Theme.getColor(Theme.key_chats_unreadCounterText));
            RectF rectF3 = AndroidUtilities.rectTmp;
            rectF3.set(this.actionLeft, this.countTop, r7 + this.actionLayout.getWidth(), this.countTop + AndroidUtilities.dp(23.0f));
            rectF3.inset(-AndroidUtilities.dp(16.0f), -AndroidUtilities.dp(4.0f));
            this.actionButton.setRect(rectF3);
            this.actionButton.setRounded(true);
            this.actionButton.draw(canvas2);
            canvas2.save();
            canvas2.translate(this.actionLeft, this.countTop + AndroidUtilities.dp(4.0f));
            this.actionLayout.draw(canvas2);
            canvas2.restore();
        }
        if (!this.dontDrawAvatar) {
            TLRPC.Chat chat = this.chat;
            if (chat != null && chat.monoforum) {
                if (this.bubbleClip == null) {
                    this.bubbleClip = new PhotoBubbleClip();
                }
                this.bubbleClip.setBounds((int) this.avatarStoryParams.originalAvatarRect.centerX(), (int) this.avatarStoryParams.originalAvatarRect.centerY(), (int) (this.avatarStoryParams.originalAvatarRect.width() / 2.0f));
                canvas2.save();
                canvas2.clipPath(this.bubbleClip);
                this.avatarImage.setImageCoords(this.avatarStoryParams.originalAvatarRect);
                this.avatarImage.draw(canvas2);
                canvas2.restore();
            } else {
                TLRPC.User user = this.user;
                if (user != null) {
                    StoriesUtilities.drawAvatarWithStory(user.id, canvas2, this.avatarImage, this.avatarStoryParams);
                } else if (chat != null) {
                    if (ChatObject.isCommunity(chat)) {
                        DrawableUtils.drawCommunityCardDrawable(canvas2, Theme.dialogs_communityCardsDrawable, this.avatarStoryParams.originalAvatarRect.centerX(), this.avatarStoryParams.originalAvatarRect.centerY(), this.avatarStoryParams.originalAvatarRect.width());
                    }
                    StoriesUtilities.drawAvatarWithStory(-this.chat.id, canvas2, this.avatarImage, this.avatarStoryParams);
                } else {
                    this.avatarImage.setImageCoords(this.avatarStoryParams.originalAvatarRect);
                    this.avatarImage.draw(canvas2);
                }
            }
        }
        float f5 = this.premiumBlockedT.set(this.premiumBlocked);
        if (f5 > 0.0f) {
            float centerY = this.avatarImage.getCenterY() + AndroidUtilities.dp(14.0f);
            float centerX = this.avatarImage.getCenterX() + AndroidUtilities.dp(16.0f);
            canvas2.save();
            Theme.dialogs_onlineCirclePaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider));
            canvas2.drawCircle(centerX, centerY, AndroidUtilities.dp(11.33f) * f5, Theme.dialogs_onlineCirclePaint);
            if (this.premiumGradient == null) {
                this.premiumGradient = new PremiumGradient.PremiumGradientTools(Theme.key_premiumGradient1, Theme.key_premiumGradient2, -1, -1, -1, this.resourcesProvider);
            }
            this.premiumGradient.gradientMatrix((int) (centerX - AndroidUtilities.dp(10.0f)), (int) (centerY - AndroidUtilities.dp(10.0f)), (int) (AndroidUtilities.dp(10.0f) + centerX), (int) (AndroidUtilities.dp(10.0f) + centerY), 0.0f, 0.0f);
            canvas2.drawCircle(centerX, centerY, AndroidUtilities.dp(10.0f) * f5, this.premiumGradient.paint);
            if (this.lockDrawable == null) {
                Drawable drawableMutate = getContext().getResources().getDrawable(C2573R.drawable.msg_mini_lock2).mutate();
                this.lockDrawable = drawableMutate;
                drawableMutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
            }
            this.lockDrawable.setBounds((int) (centerX - (((r5.getIntrinsicWidth() / 2.0f) * 0.875f) * f5)), (int) (centerY - (((this.lockDrawable.getIntrinsicHeight() / 2.0f) * 0.875f) * f5)), (int) (centerX + ((this.lockDrawable.getIntrinsicWidth() / 2.0f) * 0.875f * f5)), (int) (centerY + ((this.lockDrawable.getIntrinsicHeight() / 2.0f) * 0.875f * f5)));
            this.lockDrawable.setAlpha((int) (f5 * 255.0f));
            this.lockDrawable.draw(canvas2);
            canvas2.restore();
        }
        if (!this.openBot || this.openButtonText == null) {
            return;
        }
        float fDp = AndroidUtilities.dp(28.0f) + this.openButtonText.getCurrentWidth();
        float fDp2 = LocaleController.isRTL ? AndroidUtilities.dp(15.0f) : (getWidth() - fDp) - AndroidUtilities.dp(15.0f);
        float fDp3 = AndroidUtilities.dp(28.0f);
        this.openButtonBackgroundPaint.setColor(Theme.getColor(Theme.key_featuredStickers_addButton));
        this.openButtonRect.set(fDp2, (getHeight() - fDp3) / 2.0f, fDp + fDp2, (getHeight() + fDp3) / 2.0f);
        canvas2.save();
        float scale2 = this.openButtonBounce.getScale(0.06f);
        canvas2.scale(scale2, scale2, this.openButtonRect.centerX(), this.openButtonRect.centerY());
        RectF rectF4 = this.openButtonRect;
        canvas2.drawRoundRect(rectF4, rectF4.height() / 2.0f, this.openButtonRect.height() / 2.0f, this.openButtonBackgroundPaint);
        this.openButtonText.draw(canvas2, fDp2 + AndroidUtilities.dp(14.0f), getHeight() / 2.0f, -1, 1.0f);
        canvas2.restore();
    }

    public boolean isBlocked() {
        return this.premiumBlocked;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        StringBuilder sb = new StringBuilder();
        StaticLayout staticLayout = this.nameLayout;
        if (staticLayout != null) {
            sb.append(staticLayout.getText());
        }
        if (this.drawCheck) {
            sb.append(", ");
            sb.append(LocaleController.getString(C2573R.string.AccDescrVerified));
            sb.append("\n");
        }
        if (this.statusLayout != null) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            sb.append(this.statusLayout.getText());
        }
        accessibilityNodeInfo.setText(sb.toString());
        if (this.checkBox.isChecked()) {
            accessibilityNodeInfo.setCheckable(true);
            accessibilityNodeInfo.setChecked(this.checkBox.isChecked());
            accessibilityNodeInfo.setClassName("android.widget.CheckBox");
        }
    }

    public long getDialogId() {
        return this.dialog_id;
    }

    public void setChecked(boolean z, boolean z2) {
        CheckBox2 checkBox2 = this.checkBox;
        if (checkBox2 == null) {
            return;
        }
        checkBox2.setChecked(z, z2);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.openBot && this.onOpenButtonClick != null && this.user != null) {
            boolean zContains = this.openButtonRect.contains(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() == 0 || motionEvent.getAction() == 2) {
                this.openButtonBounce.setPressed(zContains);
            } else {
                if (motionEvent.getAction() == 1) {
                    if (this.openButtonBounce.isPressed()) {
                        this.onOpenButtonClick.run(this.user);
                    }
                    this.openButtonBounce.setPressed(false);
                    return true;
                }
                if (motionEvent.getAction() == 3) {
                    this.openButtonBounce.setPressed(false);
                    return true;
                }
            }
            if (zContains || this.openButtonBounce.isPressed()) {
                return true;
            }
        } else if (this.ad != null && this.onSponsoredOptionsClick != null) {
            boolean zContains2 = this.adBounds.contains(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() == 0 || motionEvent.getAction() == 2) {
                this.adBounce.setPressed(zContains2);
            } else {
                if (motionEvent.getAction() == 1) {
                    if (this.adBounce.isPressed()) {
                        this.onSponsoredOptionsClick.run(this, this.ad);
                    }
                    this.adBounce.setPressed(false);
                    return true;
                }
                if (motionEvent.getAction() == 3) {
                    this.adBounce.setPressed(false);
                    return true;
                }
            }
            if (zContains2 || this.adBounce.isPressed()) {
                return true;
            }
        }
        if (!(this.user == null && this.chat == null) && this.avatarStoryParams.checkOnTouchEvent(motionEvent, this)) {
            return true;
        }
        CanvasButton canvasButton = this.actionButton;
        if (canvasButton == null || !canvasButton.checkTouchEvent(motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // org.telegram.ui.ActionBar.Theme.Colorable
    public void updateColors() {
        if (this.nameLayout == null || getMeasuredWidth() <= 0) {
            return;
        }
        buildLayout();
    }
}
