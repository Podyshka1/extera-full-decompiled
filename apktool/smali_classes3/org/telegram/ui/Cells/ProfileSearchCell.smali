.class public Lorg/telegram/ui/Cells/ProfileSearchCell;
.super Lorg/telegram/ui/Cells/BaseCell;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/ActionBar/Theme$Colorable;


# instance fields
.field actionButton:Lorg/telegram/ui/Components/CanvasButton;

.field private actionLayout:Landroid/text/StaticLayout;

.field private actionLeft:I

.field private ad:Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;

.field private adBackgroundPaint:Landroid/graphics/Paint;

.field private final adBounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final adBounds:Landroid/graphics/RectF;

.field private adText:Lorg/telegram/ui/Components/Text;

.field private allowBotOpenButton:Z

.field private allowEmojiStatus:Z

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field public avatarImage:Lorg/telegram/messenger/ImageReceiver;

.field public avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

.field private botVerificationDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private bubbleClip:Lorg/telegram/ui/Components/PhotoBubbleClip;

.field private callCellStyle:Z

.field private chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private contact:Lorg/telegram/messenger/ContactsController$Contact;

.field private countLayout:Landroid/text/StaticLayout;

.field private countLeft:I

.field private countTop:I

.field private countWidth:I

.field private currentAccount:I

.field private currentName:Ljava/lang/CharSequence;

.field private customPaints:Z

.field private dialog_id:J

.field public dontDrawAvatar:Z

.field private drawCheck:Z

.field private drawCount:Z

.field private drawNameLock:Z

.field private drawPremium:Z

.field private encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field private isOnline:[Z

.field private lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private lastName:Ljava/lang/String;

.field private lastStatus:I

.field private lastUnreadCount:I

.field private lockDrawable:Landroid/graphics/drawable/Drawable;

.field private nameLayout:Landroid/text/StaticLayout;

.field private nameLeft:I

.field private nameLockLeft:I

.field private nameLockTop:I

.field private namePaint:Landroid/text/TextPaint;

.field private nameTop:I

.field private nameWidth:I

.field private onOpenButtonClick:Lorg/telegram/messenger/Utilities$Callback;

.field private onSponsoredOptionsClick:Lorg/telegram/messenger/Utilities$Callback2;

.field private openBot:Z

.field private final openButtonBackgroundPaint:Landroid/graphics/Paint;

.field private final openButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final openButtonRect:Landroid/graphics/RectF;

.field private openButtonText:Lorg/telegram/ui/Components/Text;

.field private premiumBlocked:Z

.field private final premiumBlockedT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

.field private rect:Landroid/graphics/RectF;

.field private rectangularAvatar:Z

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private savedMessages:Z

.field private showPremiumBlocked:Z

.field private final starsBlockedT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private starsPriceBlocked:J

.field private statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private statusLayout:Landroid/text/StaticLayout;

.field private statusLeft:I

.field private statusPaint:Landroid/text/TextPaint;

.field private subLabel:Ljava/lang/CharSequence;

.field private sublabelOffsetX:I

.field private sublabelOffsetY:I

.field public useSeparator:Z

.field private user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public static synthetic $r8$lambda$gUyulQ_GiqCQcaym_VtuKjcDBIg(Lorg/telegram/ui/Cells/ProfileSearchCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->lambda$buildLayout$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    .line 156
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    .line 101
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    const/high16 v0, 0x41980000    # 19.0f

    .line 119
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    .line 130
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x15e

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v1, v2, Lorg/telegram/ui/Cells/ProfileSearchCell;->premiumBlockedT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 132
    new-instance v2, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x0

    move-object v8, v7

    const-wide/16 v6, 0x15e

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    move-object v0, v2

    move-object v2, v3

    iput-object v0, v2, Lorg/telegram/ui/Cells/ProfileSearchCell;->starsBlockedT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 140
    new-instance v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;-><init>(Z)V

    iput-object v0, v2, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 142
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v2, Lorg/telegram/ui/Cells/ProfileSearchCell;->adBounds:Landroid/graphics/RectF;

    .line 145
    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v0, v2, Lorg/telegram/ui/Cells/ProfileSearchCell;->adBounce:Lorg/telegram/ui/Components/ButtonBounce;

    .line 147
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v2, Lorg/telegram/ui/Cells/ProfileSearchCell;->rect:Landroid/graphics/RectF;

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, v2, Lorg/telegram/ui/Cells/ProfileSearchCell;->allowEmojiStatus:Z

    .line 250
    new-instance v3, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v3, v2, Lorg/telegram/ui/Cells/ProfileSearchCell;->openButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    .line 251
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v2, Lorg/telegram/ui/Cells/ProfileSearchCell;->openButtonBackgroundPaint:Landroid/graphics/Paint;

    .line 252
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v2, Lorg/telegram/ui/Cells/ProfileSearchCell;->openButtonRect:Landroid/graphics/RectF;

    .line 157
    iput-object p2, v2, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 159
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, v2, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v3, 0x42380000    # 46.0f

    .line 160
    invoke-static {v3}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 161
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, v2, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 163
    new-instance v0, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v3, 0x15

    invoke-direct {v0, p1, v3, p2}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v2, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    .line 164
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    const/4 v3, -0x1

    invoke-virtual {v0, v3, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 165
    iget-object p1, v2, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 166
    iget-object p1, v2, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 167
    iget-object p1, v2, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 169
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/high16 p2, 0x41a00000    # 20.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object p1, v2, Lorg/telegram/ui/Cells/ProfileSearchCell;->botVerificationDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 170
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 172
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object p1, v2, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 173
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method private synthetic lambda$buildLayout$0()V
    .locals 2

    .line 474
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    .line 476
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getOnItemClickListener()Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    invoke-interface {v1, p0, v0}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void

    .line 478
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    return-void
.end method


# virtual methods
.method public allowBotOpenButton(ZLorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Cells/ProfileSearchCell;
    .locals 0

    .line 179
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->allowBotOpenButton:Z

    .line 180
    iput-object p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onOpenButtonClick:Lorg/telegram/messenger/Utilities$Callback;

    return-object p0
.end method

.method public buildLayout()V
    .locals 31

    move-object/from16 v0, p0

    const/4 v6, 0x0

    .line 422
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameLock:Z

    .line 423
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    .line 424
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawPremium:Z

    .line 426
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    const/high16 v7, 0x41300000    # 11.0f

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    .line 427
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameLock:Z

    .line 428
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    .line 429
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_0

    .line 430
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    .line 431
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto :goto_0

    .line 433
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    .line 434
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    :goto_0
    const/high16 v1, 0x41b00000    # 22.0f

    .line 436
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 437
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/ProfileSearchCell;->updateStatus(ZLcom/exteragram/messenger/api/dto/BadgeDTO;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto/16 :goto_5

    .line 438
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_4

    .line 439
    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v2, v2

    iput-wide v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    .line 440
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    .line 441
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->monoforum:Z

    if-eqz v1, :cond_2

    .line 442
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 444
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    .line 447
    :cond_2
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_3

    .line 448
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto :goto_1

    .line 450
    :cond_3
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 452
    :goto_1
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    sget-object v2, Lcom/exteragram/messenger/badges/BadgesController;->INSTANCE:Lcom/exteragram/messenger/badges/BadgesController;

    iget-object v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v2, v3}, Lcom/exteragram/messenger/badges/BadgesController;->getBadge(Lorg/telegram/tgnet/TLObject;)Lcom/exteragram/messenger/api/dto/BadgeDTO;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/ProfileSearchCell;->updateStatus(ZLcom/exteragram/messenger/api/dto/BadgeDTO;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto/16 :goto_5

    .line 453
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_7

    .line 454
    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    .line 455
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_5

    .line 456
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto :goto_2

    .line 458
    :cond_5
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    :goto_2
    const/high16 v1, 0x41a80000    # 21.0f

    .line 460
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    .line 461
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    .line 462
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    if-nez v1, :cond_6

    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->isPremiumUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v8

    goto :goto_3

    :cond_6
    move v1, v6

    :goto_3
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawPremium:Z

    .line 463
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    sget-object v2, Lcom/exteragram/messenger/badges/BadgesController;->INSTANCE:Lcom/exteragram/messenger/badges/BadgesController;

    iget-object v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, v3}, Lcom/exteragram/messenger/badges/BadgesController;->getBadge(Lorg/telegram/tgnet/TLObject;)Lcom/exteragram/messenger/api/dto/BadgeDTO;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/ProfileSearchCell;->updateStatus(ZLcom/exteragram/messenger/api/dto/BadgeDTO;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto :goto_5

    .line 464
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz v1, :cond_9

    const-wide/16 v1, 0x0

    .line 465
    iput-wide v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    .line 466
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_8

    .line 467
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto :goto_4

    .line 469
    :cond_8
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 471
    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    if-nez v1, :cond_9

    .line 472
    new-instance v1, Lorg/telegram/ui/Components/CanvasButton;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/CanvasButton;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    .line 473
    new-instance v2, Lorg/telegram/ui/Cells/ProfileSearchCell$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/ProfileSearchCell;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CanvasButton;->setDelegate(Ljava/lang/Runnable;)V

    .line 483
    :cond_9
    :goto_5
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_a

    .line 484
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    goto :goto_6

    .line 486
    :cond_a
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    .line 489
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->ad:Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;

    const/16 v2, 0x21

    const/4 v3, 0x0

    const/high16 v4, 0x41400000    # 12.0f

    if-eqz v1, :cond_c

    .line 490
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->adText:Lorg/telegram/ui/Components/Text;

    if-nez v1, :cond_b

    .line 491
    new-instance v1, Landroid/text/SpannableStringBuilder;

    sget v5, Lorg/telegram/messenger/R$string;->SearchAd:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v5, " i"

    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 492
    new-instance v5, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v9, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-direct {v5, v9}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const v9, 0x3f0ccccd    # 0.55f

    .line 493
    invoke-virtual {v5, v9, v9}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    const v9, 0x3f333333    # 0.7f

    .line 494
    iput v9, v5, Lorg/telegram/ui/Components/ColoredImageSpan;->spaceScaleX:F

    const/high16 v9, 0x40000000    # 2.0f

    .line 495
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v5, v9, v3}, Lorg/telegram/ui/Components/ColoredImageSpan;->translate(FF)V

    .line 496
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    sub-int/2addr v9, v8

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    invoke-virtual {v1, v5, v9, v10, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 497
    new-instance v5, Lorg/telegram/ui/Components/Text;

    invoke-direct {v5, v1, v4}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->adText:Lorg/telegram/ui/Components/Text;

    .line 499
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->adBackgroundPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_c

    .line 500
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->adBackgroundPaint:Landroid/graphics/Paint;

    .line 504
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentName:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    if-eqz v1, :cond_d

    goto :goto_7

    :cond_d
    move-object v1, v5

    .line 507
    :goto_7
    iget-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v9, :cond_10

    .line 508
    iget-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$Chat;->monoforum:Z

    if-eqz v10, :cond_f

    .line 509
    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 511
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 512
    const-string v9, " "

    invoke-virtual {v1, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 513
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    .line 514
    sget v10, Lorg/telegram/messenger/R$string;->MonoforumSpan:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 515
    new-instance v10, Lorg/telegram/ui/FilterCreateActivity$TextSpan;

    sget v11, Lorg/telegram/messenger/R$string;->MonoforumSpan:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    iget-object v13, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const v14, 0x411547ae    # 9.33f

    invoke-direct {v10, v11, v14, v12, v13}, Lorg/telegram/ui/FilterCreateActivity$TextSpan;-><init>(Ljava/lang/String;FILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    invoke-virtual {v1, v10, v9, v11, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_8

    :cond_e
    if-nez v1, :cond_11

    .line 518
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->removeRTL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_f
    if-nez v1, :cond_11

    .line 521
    iget-object v1, v9, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->removeRTL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_10
    if-nez v1, :cond_11

    .line 523
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_11

    .line 524
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->removeRTL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 526
    :cond_11
    :goto_8
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 527
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 528
    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->hidePhoneNumber:Z

    if-eqz v1, :cond_12

    .line 529
    sget v1, Lorg/telegram/messenger/R$string;->MobileHidden:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 530
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_13

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 531
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 533
    :cond_13
    sget v1, Lorg/telegram/messenger/R$string;->HiddenName:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 536
    :cond_14
    :goto_9
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->customPaints:Z

    const/high16 v9, 0x41800000    # 16.0f

    const/high16 v10, 0x41700000    # 15.0f

    if-eqz v2, :cond_18

    .line 537
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->namePaint:Landroid/text/TextPaint;

    if-nez v2, :cond_15

    .line 538
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v8}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->namePaint:Landroid/text/TextPaint;

    .line 539
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 541
    :cond_15
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->namePaint:Landroid/text/TextPaint;

    iget-boolean v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->callCellStyle:Z

    if-eqz v11, :cond_16

    move v11, v10

    goto :goto_a

    :cond_16
    move v11, v9

    :goto_a
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 542
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_17

    .line 543
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->namePaint:Landroid/text/TextPaint;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chats_secretName:I

    iget-object v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v11, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_b

    .line 545
    :cond_17
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->namePaint:Landroid/text/TextPaint;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chats_name:I

    iget-object v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v11, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 547
    :goto_b
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->namePaint:Landroid/text/TextPaint;

    :goto_c
    move-object v13, v2

    goto :goto_d

    .line 548
    :cond_18
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_19

    .line 549
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_searchNameEncryptedPaint:Landroid/text/TextPaint;

    goto :goto_c

    .line 551
    :cond_19
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_searchNamePaint:Landroid/text/TextPaint;

    goto :goto_c

    .line 555
    :goto_d
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v19, 0x41600000    # 14.0f

    if-nez v2, :cond_1a

    .line 556
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    sub-int/2addr v2, v11

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int/2addr v2, v11

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    goto :goto_e

    .line 558
    :cond_1a
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    sub-int/2addr v2, v11

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v11, v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int/2addr v2, v11

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    .line 560
    :goto_e
    iget-boolean v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameLock:Z

    const/high16 v20, 0x40c00000    # 6.0f

    if-eqz v11, :cond_1b

    .line 561
    iget v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    add-int/2addr v12, v14

    sub-int/2addr v11, v12

    iput v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    .line 563
    :cond_1b
    iget-object v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->ad:Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;

    if-eqz v11, :cond_1c

    .line 564
    iget-object v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->adText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v11

    float-to-int v11, v11

    const v12, 0x41a547ae    # 20.66f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v11, v12

    .line 565
    iget v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    sub-int/2addr v12, v11

    iput v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    .line 566
    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_1c

    .line 567
    iget v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    add-int/2addr v12, v11

    iput v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 570
    :cond_1c
    iget-object v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x41980000    # 19.0f

    if-eqz v11, :cond_1e

    .line 571
    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    sget v12, Lorg/telegram/messenger/R$string;->Invite:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    add-float v11, v11, v21

    float-to-int v11, v11

    .line 573
    new-instance v23, Landroid/text/StaticLayout;

    sget v12, Lorg/telegram/messenger/R$string;->Invite:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v24

    sget-object v25, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    sget-object v27, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/high16 v28, 0x3f800000    # 1.0f

    move/from16 v26, v11

    invoke-direct/range {v23 .. v30}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v11, v23

    iput-object v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLayout:Landroid/text/StaticLayout;

    .line 574
    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v11, :cond_1d

    .line 575
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int v11, v11, v26

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int/2addr v11, v12

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v11, v9

    iput v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLeft:I

    goto :goto_f

    .line 577
    :cond_1d
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v11, v9

    iput v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLeft:I

    .line 578
    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    add-int v9, v9, v26

    iput v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 579
    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    add-int v9, v9, v26

    iput v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    .line 581
    :goto_f
    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    const/high16 v11, 0x42000000    # 32.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int v11, v11, v26

    sub-int/2addr v9, v11

    iput v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    .line 584
    :cond_1e
    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    add-int/2addr v11, v12

    sub-int/2addr v9, v11

    iput v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    .line 585
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    add-int/2addr v9, v11

    sub-int/2addr v2, v9

    .line 587
    iget-boolean v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCount:Z

    if-eqz v9, :cond_21

    .line 588
    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    invoke-virtual {v9, v11, v12}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 589
    iget v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    invoke-virtual {v11, v9}, Lorg/telegram/messenger/MessagesController;->getDialogUnreadCount(Lorg/telegram/tgnet/TLRPC$Dialog;)I

    move-result v9

    if-eqz v9, :cond_20

    .line 591
    iput v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastUnreadCount:I

    .line 592
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v12, v8, [Ljava/lang/Object;

    aput-object v9, v12, v6

    const-string v9, "%d"

    invoke-static {v11, v9, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 593
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v12, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    float-to-double v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v12, v14

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    .line 594
    new-instance v23, Landroid/text/StaticLayout;

    sget-object v25, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    iget v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    sget-object v27, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v24, v9

    move/from16 v26, v11

    invoke-direct/range {v23 .. v30}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v9, v23

    iput-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    .line 595
    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    const/high16 v11, 0x41900000    # 18.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v9, v11

    .line 596
    iget v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    sub-int/2addr v11, v9

    iput v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    sub-int/2addr v2, v9

    .line 598
    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v11, :cond_1f

    .line 599
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    sub-int/2addr v9, v11

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int/2addr v9, v11

    iput v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    goto :goto_10

    .line 601
    :cond_1f
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    iput v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    .line 602
    iget v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    add-int/2addr v11, v9

    iput v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 603
    iget v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    add-int/2addr v11, v9

    iput v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    goto :goto_10

    .line 606
    :cond_20
    iput v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastUnreadCount:I

    .line 607
    iput-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    :goto_10
    move/from16 v26, v2

    goto :goto_11

    .line 610
    :cond_21
    iput v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastUnreadCount:I

    .line 611
    iput-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    goto :goto_10

    .line 614
    :goto_11
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->botVerificationDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 615
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_22

    .line 616
    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    iget-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->botVerificationDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getIntrinsicWidth()I

    move-result v9

    sub-int/2addr v2, v9

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    goto :goto_12

    .line 618
    :cond_22
    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    iget-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->botVerificationDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v2, v9

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 621
    :cond_23
    :goto_12
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_25

    .line 622
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_24

    goto :goto_13

    .line 625
    :cond_24
    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    iget-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getIntrinsicWidth()I

    move-result v9

    sub-int/2addr v2, v9

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    .line 629
    :cond_25
    :goto_13
    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    if-gez v2, :cond_26

    .line 630
    iput v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    .line 632
    :cond_26
    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v2, v9

    int-to-float v2, v2

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v13, v2, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 634
    invoke-virtual {v13}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_27
    move-object v12, v1

    .line 636
    new-instance v11, Landroid/text/StaticLayout;

    iget v14, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-direct/range {v11 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    .line 639
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_offlinePaint:Landroid/text/TextPaint;

    .line 640
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/high16 v11, 0x41a00000    # 20.0f

    if-eqz v2, :cond_30

    iget-object v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->subLabel:Ljava/lang/CharSequence;

    if-eqz v12, :cond_28

    goto/16 :goto_15

    .line 674
    :cond_28
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v12, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v12, :cond_2b

    .line 675
    iget v12, v2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v12, :cond_29

    .line 676
    const-string v2, "Subscribers"

    invoke-static {v2, v12}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    .line 678
    :cond_29
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 679
    sget v2, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    .line 681
    :cond_2a
    sget v2, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    .line 685
    :cond_2b
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v12, v2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v12, :cond_2c

    .line 686
    const-string v2, "Members"

    invoke-static {v2, v12}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    .line 688
    :cond_2c
    iget-boolean v12, v2, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    if-eqz v12, :cond_2d

    .line 689
    sget v2, Lorg/telegram/messenger/R$string;->MegaLocation:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    .line 690
    :cond_2d
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 691
    sget v2, Lorg/telegram/messenger/R$string;->MonoforumMessages:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    .line 692
    :cond_2e
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 693
    sget v2, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    .line 695
    :cond_2f
    sget v2, Lorg/telegram/messenger/R$string;->MegaPublic:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 699
    :goto_14
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    goto/16 :goto_17

    .line 641
    :cond_30
    :goto_15
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->subLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_31

    goto/16 :goto_16

    .line 643
    :cond_31
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_3a

    .line 644
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 645
    sget v2, Lorg/telegram/messenger/R$string;->SupportStatus:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_16

    .line 646
    :cond_32
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v12, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v12, :cond_33

    iget v13, v2, Lorg/telegram/tgnet/TLRPC$User;->bot_active_users:I

    if-eqz v13, :cond_33

    .line 647
    const-string v2, "BotUsersShort"

    invoke-static {v2, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralStringSpaced(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_16

    :cond_33
    if-eqz v12, :cond_34

    .line 649
    sget v2, Lorg/telegram/messenger/R$string;->Bot:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    .line 650
    :cond_34
    iget-wide v12, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/32 v16, 0x77628

    cmp-long v2, v12, v16

    if-nez v2, :cond_35

    .line 651
    sget v2, Lorg/telegram/messenger/R$string;->VerifyCodesNotifications:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    .line 652
    :cond_35
    invoke-static {v12, v13}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 653
    sget v2, Lorg/telegram/messenger/R$string;->ServiceNotifications:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    .line 655
    :cond_36
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isOnline:[Z

    if-nez v2, :cond_37

    .line 656
    new-array v2, v8, [Z

    iput-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isOnline:[Z

    .line 658
    :cond_37
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isOnline:[Z

    aput-boolean v6, v2, v6

    .line 659
    iget v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    iget-object v13, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v12, v13, v2}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;[Z)Ljava/lang/String;

    move-result-object v2

    .line 660
    iget-object v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isOnline:[Z

    aget-boolean v12, v12, v6

    if-eqz v12, :cond_38

    .line 661
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlinePaint:Landroid/text/TextPaint;

    .line 663
    :cond_38
    iget-object v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v12, :cond_3b

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget v14, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v16

    cmp-long v12, v12, v16

    if-eqz v12, :cond_39

    iget-object v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v12, :cond_3b

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iget v13, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v13

    if-le v12, v13, :cond_3b

    .line 664
    :cond_39
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlinePaint:Landroid/text/TextPaint;

    .line 665
    sget v2, Lorg/telegram/messenger/R$string;->Online:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    :cond_3a
    move-object v2, v5

    .line 669
    :cond_3b
    :goto_16
    iget-boolean v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    if-nez v12, :cond_3c

    iget-object v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v12}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v12

    if-eqz v12, :cond_3d

    .line 671
    :cond_3c
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    move-object v2, v5

    .line 701
    :cond_3d
    :goto_17
    iget-boolean v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->customPaints:Z

    if-eqz v12, :cond_42

    .line 702
    iget-object v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusPaint:Landroid/text/TextPaint;

    if-nez v12, :cond_3e

    .line 703
    new-instance v12, Landroid/text/TextPaint;

    invoke-direct {v12, v8}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusPaint:Landroid/text/TextPaint;

    .line 705
    :cond_3e
    iget-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusPaint:Landroid/text/TextPaint;

    iget-boolean v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->callCellStyle:Z

    if-eqz v12, :cond_3f

    const/high16 v12, 0x41500000    # 13.0f

    goto :goto_18

    :cond_3f
    move v12, v10

    :goto_18
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 706
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_offlinePaint:Landroid/text/TextPaint;

    if-ne v1, v8, :cond_40

    .line 707
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusPaint:Landroid/text/TextPaint;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    iget-object v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v8, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_19

    .line 708
    :cond_40
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlinePaint:Landroid/text/TextPaint;

    if-ne v1, v8, :cond_41

    .line 709
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusPaint:Landroid/text/TextPaint;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText3:I

    iget-object v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v8, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 711
    :cond_41
    :goto_19
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusPaint:Landroid/text/TextPaint;

    .line 714
    :cond_42
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_43

    .line 715
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v26, v4

    int-to-float v4, v4

    invoke-static {v2, v1, v4, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 716
    new-instance v23, Landroid/text/StaticLayout;

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v25, v1

    move-object/from16 v27, v15

    invoke-direct/range {v23 .. v30}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v1, v23

    move/from16 v2, v26

    iput-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    const/high16 v1, 0x41100000    # 9.0f

    .line 717
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    .line 718
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    goto :goto_1a

    :cond_43
    move/from16 v2, v26

    .line 720
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    .line 721
    iput-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    .line 725
    :goto_1a
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_44

    .line 726
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/high16 v4, 0x42640000    # 57.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    goto :goto_1c

    .line 728
    :cond_44
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->callCellStyle:Z

    if-eqz v1, :cond_45

    move/from16 v7, v19

    goto :goto_1b

    :cond_45
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->rectangularAvatar:Z

    if-eqz v1, :cond_46

    move v7, v10

    :cond_46
    :goto_1b
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v1, v4

    .line 730
    :goto_1c
    iget-object v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    int-to-float v5, v1

    iget-boolean v7, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->callCellStyle:Z

    const/high16 v8, 0x40e00000    # 7.0f

    if-eqz v7, :cond_47

    move/from16 v7, v20

    goto :goto_1d

    :cond_47
    move v7, v8

    :goto_1d
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    iget-boolean v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->callCellStyle:Z

    const/high16 v10, 0x42380000    # 46.0f

    const/high16 v11, 0x42300000    # 44.0f

    if-eqz v9, :cond_48

    move v9, v11

    goto :goto_1e

    :cond_48
    iget-boolean v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->rectangularAvatar:Z

    if-eqz v9, :cond_49

    const/high16 v9, 0x42280000    # 42.0f

    goto :goto_1e

    :cond_49
    move v9, v10

    :goto_1e
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v1, v9

    int-to-float v1, v1

    iget-boolean v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->callCellStyle:Z

    if-eqz v9, :cond_4a

    goto :goto_1f

    :cond_4a
    move/from16 v20, v8

    :goto_1f
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iget-boolean v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->callCellStyle:Z

    if-eqz v9, :cond_4b

    move v10, v11

    :cond_4b
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v4, v5, v7, v1, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 734
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_4d

    .line 735
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_4c

    .line 736
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_4c

    .line 738
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    .line 739
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    int-to-double v7, v1

    cmpg-double v7, v4, v7

    if-gez v7, :cond_4c

    .line 740
    iget v7, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    int-to-double v7, v7

    int-to-double v9, v1

    sub-double/2addr v9, v4

    add-double/2addr v7, v9

    double-to-int v1, v7

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 744
    :cond_4c
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_4f

    .line 745
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_4f

    .line 747
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    int-to-double v1, v2

    cmpg-double v5, v3, v1

    if-gez v5, :cond_4f

    .line 749
    iget v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    int-to-double v5, v5

    sub-double/2addr v1, v3

    add-double/2addr v5, v1

    double-to-int v1, v5

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    goto :goto_20

    .line 754
    :cond_4d
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_4e

    .line 755
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v1

    .line 756
    iget v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_4e

    .line 757
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    .line 758
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    int-to-double v7, v1

    cmpg-double v5, v3, v7

    if-gez v5, :cond_4e

    .line 759
    iget v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    int-to-double v7, v5

    int-to-double v9, v1

    sub-double/2addr v9, v3

    sub-double/2addr v7, v9

    double-to-int v1, v7

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 763
    :cond_4e
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_4f

    .line 764
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v1

    int-to-float v3, v2

    cmpl-float v1, v1, v3

    if-nez v1, :cond_4f

    .line 766
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    int-to-double v1, v2

    cmpg-double v5, v3, v1

    if-gez v5, :cond_4f

    .line 768
    iget v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    int-to-double v5, v5

    sub-double/2addr v1, v3

    sub-double/2addr v5, v1

    double-to-int v1, v5

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    .line 774
    :cond_4f
    :goto_20
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 775
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    .line 776
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    .line 778
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->callCellStyle:Z

    if-eqz v1, :cond_50

    .line 779
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 780
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    :cond_50
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 4

    .line 355
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    .line 356
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/BaseCell;->invalidate()V

    return-void

    .line 357
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->userIsPremiumBlockedUpadted:I

    if-ne p1, p2, :cond_5

    .line 359
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 360
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->showPremiumBlocked:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->isUserContactBlocked(J)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;

    move-result-object p2

    goto :goto_0

    .line 361
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_2

    .line 362
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->getRequirementToContact(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;

    move-result-object p2

    goto :goto_0

    .line 363
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz p1, :cond_5

    .line 364
    iget-boolean p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->showPremiumBlocked:Z

    if-eqz p3, :cond_3

    iget-object p1, p1, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    iget-object p2, p2, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->isUserContactBlocked(J)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;

    move-result-object p2

    .line 366
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->premiumBlocked:Z

    invoke-static {p2}, Lorg/telegram/messenger/DialogObject;->isPremiumBlocked(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)Z

    move-result p3

    if-ne p1, p3, :cond_4

    iget-wide v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->starsPriceBlocked:J

    invoke-static {p2}, Lorg/telegram/messenger/DialogObject;->getMessagesStarsPrice(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_5

    .line 367
    :cond_4
    invoke-static {p2}, Lorg/telegram/messenger/DialogObject;->isPremiumBlocked(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->premiumBlocked:Z

    .line 368
    invoke-static {p2}, Lorg/telegram/messenger/DialogObject;->getMessagesStarsPrice(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->starsPriceBlocked:J

    .line 369
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/BaseCell;->invalidate()V

    :cond_5
    return-void
.end method

.method public getChat()Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1

    .line 410
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method public getDialogId()J
    .locals 2

    .line 1152
    iget-wide v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    return-wide v0
.end method

.method public getUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    .line 406
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public isBlocked()Z
    .locals 1

    .line 1124
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->premiumBlocked:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 343
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 344
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 345
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 346
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->showPremiumBlocked:Z

    if-eqz v0, :cond_0

    .line 347
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userIsPremiumBlockedUpadted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 349
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->botVerificationDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 331
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 332
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 333
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 334
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->showPremiumBlocked:Z

    if-eqz v0, :cond_0

    .line 335
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userIsPremiumBlockedUpadted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 337
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    .line 338
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->botVerificationDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 944
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 948
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 950
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->customPaints:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_1

    .line 951
    const-string v2, "paintDivider"

    invoke-interface {v0, v2}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 954
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    :cond_2
    move-object v7, v0

    .line 956
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_3

    .line 957
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v1

    int-to-float v6, v0

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    move-object v2, p1

    .line 959
    sget p1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p1, v1

    int-to-float v4, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float v5, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p1, v1

    int-to-float v6, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    move-object v2, p1

    .line 963
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameLock:Z

    if-eqz p1, :cond_5

    .line 964
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    invoke-static {p1, v0, v3}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 965
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 968
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    const/high16 v0, 0x40c00000    # 6.0f

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz p1, :cond_a

    .line 970
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v6, 0x40400000    # 3.0f

    const/4 v7, 0x0

    if-eqz v5, :cond_6

    .line 971
    iget v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    int-to-float v5, v5

    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineRight(I)F

    move-result p1

    add-float/2addr v5, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v5, p1

    float-to-int p1, v5

    goto :goto_2

    .line 973
    :cond_6
    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineLeft(I)F

    move-result p1

    cmpl-float p1, p1, v3

    if-nez p1, :cond_7

    .line 974
    iget p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr p1, v5

    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->botVerificationDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr p1, v5

    goto :goto_2

    .line 976
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p1

    .line 977
    iget v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    iget v8, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    add-int/2addr v5, v8

    int-to-double v8, v5

    float-to-double v10, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-double v10, p1

    sub-double/2addr v8, v10

    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->botVerificationDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getIntrinsicWidth()I

    move-result p1

    int-to-double v10, p1

    sub-double/2addr v8, v10

    double-to-int p1, v8

    .line 980
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->botVerificationDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    int-to-float p1, p1

    iget v8, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/Layout;->getHeight()I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->botVerificationDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getIntrinsicHeight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v9, v4

    add-float/2addr v8, v9

    invoke-static {v5, p1, v8}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V

    .line 981
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->botVerificationDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 983
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 984
    iget p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    int-to-float p1, p1

    iget v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    int-to-float v5, v5

    invoke-virtual {v2, p1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 985
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, v2}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 986
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 988
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_9

    .line 989
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineLeft(I)F

    move-result p1

    cmpl-float p1, p1, v3

    if-nez p1, :cond_8

    .line 990
    iget p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr p1, v5

    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr p1, v5

    goto :goto_3

    .line 992
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p1

    .line 993
    iget v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    iget v7, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    add-int/2addr v5, v7

    int-to-double v7, v5

    float-to-double v9, p1

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    sub-double/2addr v7, v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-double v5, p1

    sub-double/2addr v7, v5

    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getIntrinsicWidth()I

    move-result p1

    int-to-double v5, p1

    sub-double/2addr v7, v5

    double-to-int p1, v7

    goto :goto_3

    .line 996
    :cond_9
    iget p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    int-to-float p1, p1

    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v7}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    add-float/2addr p1, v5

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr p1, v5

    float-to-int p1, p1

    .line 998
    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    int-to-float p1, p1

    iget v6, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/Layout;->getHeight()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getIntrinsicHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v4

    add-float/2addr v6, v7

    invoke-static {v5, p1, v6}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V

    .line 999
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1002
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->ad:Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->adText:Lorg/telegram/ui/Components/Text;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->adBackgroundPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_c

    .line 1003
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    .line 1004
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->adBackgroundPaint:Landroid/graphics/Paint;

    const v5, 0x3dcccccd    # 0.1f

    invoke-static {v12, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1005
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->adText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result p1

    float-to-int p1, p1

    const v6, 0x414a8f5c    # 12.66f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr p1, v6

    const v6, 0x418aa3d7    # 17.33f

    .line 1006
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    .line 1008
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v8, 0x41400000    # 12.0f

    if-eqz v7, :cond_b

    .line 1009
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    goto :goto_4

    .line 1011
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, p1

    .line 1014
    :goto_4
    iget-object v8, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->adBounds:Landroid/graphics/RectF;

    int-to-float v9, v7

    iget v10, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    int-to-float v11, v10

    add-int/2addr v7, p1

    int-to-float v7, v7

    add-int/2addr v10, v6

    int-to-float v10, v10

    invoke-virtual {v8, v9, v11, v7, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1015
    iget-object v7, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->adBounds:Landroid/graphics/RectF;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v7, v8, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 1017
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1018
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->adBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    .line 1019
    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->adBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v7, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->adBounds:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {v2, v0, v0, v5, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1020
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    int-to-float v0, v0

    invoke-virtual {v2, v9, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1021
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float v5, v6

    invoke-virtual {v0, v3, v3, p1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    div-float v11, v5, v4

    .line 1022
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->adBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v11, v11, p1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1023
    iget-object v8, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->adText:Lorg/telegram/ui/Components/Text;

    const p1, 0x40ca8f5c    # 6.33f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v10, p1

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v9, v2

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    .line 1024
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 1027
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    if-eqz p1, :cond_e

    .line 1028
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1029
    iget p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->sublabelOffsetX:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->callCellStyle:Z

    if-eqz v0, :cond_d

    const/high16 v0, 0x420c0000    # 35.0f

    goto :goto_5

    :cond_d
    const/high16 v0, 0x42040000    # 33.0f

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->sublabelOffsetY:I

    add-int/2addr v0, v5

    int-to-float v0, v0

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1030
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, v2}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1031
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 1034
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    const/high16 v0, 0x41b80000    # 23.0f

    const/high16 v5, 0x40800000    # 4.0f

    if-eqz p1, :cond_10

    .line 1035
    iget p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    const/high16 v6, 0x40b00000    # 5.5f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr p1, v6

    .line 1036
    iget-object v6, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->rect:Landroid/graphics/RectF;

    int-to-float v7, p1

    iget v8, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    int-to-float v8, v8

    iget v9, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    add-int/2addr p1, v9

    const/high16 v9, 0x41300000    # 11.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr p1, v9

    int-to-float p1, p1

    iget v9, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v6, v7, v8, p1, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1037
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->rect:Landroid/graphics/RectF;

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v7, 0x41380000    # 11.5f

    mul-float v8, v6, v7

    mul-float/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v9, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    const-wide/16 v11, 0x0

    invoke-virtual {v7, v9, v10, v11, v12}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v7

    if-eqz v7, :cond_f

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countGrayPaint:Landroid/graphics/Paint;

    goto :goto_6

    :cond_f
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    :goto_6
    invoke-virtual {v2, p1, v8, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1038
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1039
    iget p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    int-to-float p1, p1

    iget v6, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v2, p1, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1040
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, v2}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1041
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 1044
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLayout:Landroid/text/StaticLayout;

    const/high16 v6, 0x41800000    # 16.0f

    if-eqz p1, :cond_11

    .line 1045
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounter:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterText:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Lorg/telegram/ui/Components/CanvasButton;->setColor(II)V

    .line 1046
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v7, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLeft:I

    int-to-float v8, v7

    iget v9, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    int-to-float v9, v9

    iget-object v10, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/Layout;->getWidth()I

    move-result v10

    add-int/2addr v7, v10

    int-to-float v7, v7

    iget v10, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v10, v0

    int-to-float v0, v10

    invoke-virtual {p1, v8, v9, v7, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1047
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p1, v0, v7}, Landroid/graphics/RectF;->inset(FF)V

    .line 1048
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CanvasButton;->setRect(Landroid/graphics/RectF;)V

    .line 1049
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/CanvasButton;->setRounded(Z)V

    .line 1050
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/CanvasButton;->draw(Landroid/graphics/Canvas;)V

    .line 1052
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1053
    iget p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLeft:I

    int-to-float p1, p1

    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1054
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, v2}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1055
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 1058
    :cond_11
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dontDrawAvatar:Z

    if-eqz p1, :cond_12

    goto/16 :goto_7

    .line 1060
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_14

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->monoforum:Z

    if-eqz v0, :cond_14

    .line 1061
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->bubbleClip:Lorg/telegram/ui/Components/PhotoBubbleClip;

    if-nez p1, :cond_13

    .line 1062
    new-instance p1, Lorg/telegram/ui/Components/PhotoBubbleClip;

    invoke-direct {p1}, Lorg/telegram/ui/Components/PhotoBubbleClip;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->bubbleClip:Lorg/telegram/ui/Components/PhotoBubbleClip;

    .line 1064
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->bubbleClip:Lorg/telegram/ui/Components/PhotoBubbleClip;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    float-to-int v1, v1

    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v4

    float-to-int v5, v5

    invoke-virtual {p1, v0, v1, v5}, Lorg/telegram/ui/Components/PhotoBubbleClip;->setBounds(III)V

    .line 1065
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1066
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->bubbleClip:Lorg/telegram/ui/Components/PhotoBubbleClip;

    invoke-virtual {v2, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1067
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 1068
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1069
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7

    .line 1070
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_15

    .line 1071
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-static {v0, v1, v2, p1, v5}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    goto :goto_7

    :cond_15
    if-eqz p1, :cond_16

    .line 1073
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v0, v0

    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-static {v0, v1, v2, p1, v5}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    goto :goto_7

    .line 1075
    :cond_16
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 1076
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1079
    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->premiumBlockedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->premiumBlocked:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result p1

    cmpl-float v0, p1, v3

    const/high16 v1, 0x41600000    # 14.0f

    if-lez v0, :cond_19

    .line 1081
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 1082
    iget-object v3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    .line 1084
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1085
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v7, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    const v5, 0x413547ae    # 11.33f

    .line 1086
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v0, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1087
    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    if-nez v5, :cond_17

    .line 1088
    new-instance v6, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient2:I

    const/4 v11, -0x1

    iget-object v12, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct/range {v6 .. v12}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;-><init>(IIIIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v6, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    .line 1090
    :cond_17
    iget-object v7, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v3, v6

    float-to-int v8, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v0, v6

    float-to-int v9, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v3

    float-to-int v10, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v0

    float-to-int v11, v6

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->gradientMatrix(IIIIFF)V

    .line 1091
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    iget-object v6, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    iget-object v6, v6, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v0, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1092
    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_18

    .line 1093
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_mini_lock2:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 1094
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    const/4 v7, -0x1

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1096
    :cond_18
    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 1097
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    const/high16 v7, 0x3f600000    # 0.875f

    mul-float/2addr v6, v7

    mul-float/2addr v6, p1

    sub-float v6, v3, v6

    float-to-int v6, v6

    iget-object v8, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 1098
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v4

    mul-float/2addr v8, v7

    mul-float/2addr v8, p1

    sub-float v8, v0, v8

    float-to-int v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 1099
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v4

    mul-float/2addr v9, v7

    mul-float/2addr v9, p1

    add-float/2addr v3, v9

    float-to-int v3, v3

    iget-object v9, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 1100
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v4

    mul-float/2addr v9, v7

    mul-float/2addr v9, p1

    add-float/2addr v0, v9

    float-to-int v0, v0

    .line 1096
    invoke-virtual {v5, v6, v8, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1102
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr p1, v3

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1103
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1104
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 1107
    :cond_19
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->openBot:Z

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->openButtonText:Lorg/telegram/ui/Components/Text;

    if-eqz p1, :cond_1b

    const/high16 p1, 0x41e00000    # 28.0f

    .line 1108
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->openButtonText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v3

    add-float/2addr v0, v3

    .line 1109
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v5, 0x41700000    # 15.0f

    if-eqz v3, :cond_1a

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    goto :goto_8

    :cond_1a
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 1110
    :goto_8
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    .line 1112
    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->openButtonBackgroundPaint:Landroid/graphics/Paint;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1113
    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->openButtonRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, p1

    div-float/2addr v6, v4

    add-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, p1

    div-float/2addr v7, v4

    invoke-virtual {v5, v3, v6, v0, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1114
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1115
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->openButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v0, 0x3d75c28f    # 0.06f

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result p1

    .line 1116
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->openButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->openButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v2, p1, p1, v0, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1117
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->openButtonRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v4

    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->openButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v4

    iget-object v6, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->openButtonBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v0, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1118
    iget-object v8, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->openButtonText:Lorg/telegram/ui/Components/Text;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    add-float v10, v3, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float v11, p1, v4

    const/4 v12, -0x1

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v9, v2

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    .line 1119
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    :cond_1b
    :goto_9
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1129
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1131
    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    .line 1132
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1134
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    const-string v2, ", "

    if-eqz v1, :cond_1

    .line 1135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrVerified:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_3

    .line 1138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1139
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1143
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1144
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 1145
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 1146
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 1147
    const-string v0, "android.widget.CheckBox"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1164
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 392
    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    if-nez p3, :cond_0

    goto :goto_1

    .line 395
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p3, :cond_2

    .line 396
    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 p5, 0x42280000    # 42.0f

    if-eqz p3, :cond_1

    sub-int/2addr p4, p2

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p4, p2

    goto :goto_0

    :cond_1
    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    :goto_0
    const/high16 p2, 0x42100000    # 36.0f

    .line 397
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    .line 398
    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p4

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p3, p4, p2, p5, v0}, Landroid/view/View;->layout(IIII)V

    :cond_2
    if-eqz p1, :cond_3

    .line 401
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->buildLayout()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 384
    iget-object p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p2, :cond_0

    const/high16 v0, 0x41c00000    # 24.0f

    .line 385
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 387
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-boolean p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->callCellStyle:Z

    if-eqz p2, :cond_1

    const/high16 p2, 0x42600000    # 56.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    goto :goto_0

    :cond_1
    const/high16 p2, 0x42700000    # 60.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    add-int/2addr p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1169
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->openBot:Z

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onOpenButtonClick:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_6

    .line 1170
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->openButtonRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    .line 1171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v2, :cond_0

    goto :goto_0

    .line 1173
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 1174
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->openButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1175
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onOpenButtonClick:Lorg/telegram/messenger/Utilities$Callback;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 1177
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->openButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return v4

    .line 1179
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 1180
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->openButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return v4

    .line 1172
    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->openButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :cond_4
    if-nez v0, :cond_5

    .line 1183
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->openButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_5
    return v4

    .line 1185
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->ad:Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onSponsoredOptionsClick:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v0, :cond_d

    .line 1186
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->adBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    .line 1187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v2, :cond_7

    goto :goto_1

    .line 1189
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_9

    .line 1190
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->adBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1191
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onSponsoredOptionsClick:Lorg/telegram/messenger/Utilities$Callback2;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->ad:Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;

    invoke-interface {p1, p0, v0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1193
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->adBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return v4

    .line 1195
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_b

    .line 1196
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->adBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return v4

    .line 1188
    :cond_a
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->adBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :cond_b
    if-nez v0, :cond_c

    .line 1199
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->adBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    return v4

    .line 1202
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_f

    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->checkOnTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v4

    .line 1205
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CanvasButton;->checkTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    return v4

    .line 1208
    :cond_10
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAd(Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->ad:Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;

    return-void
.end method

.method public setAllowEmojiStatus(Z)V
    .locals 0

    .line 212
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->allowEmojiStatus:Z

    return-void
.end method

.method public setCallCellStyle()V
    .locals 1

    const/4 v0, 0x1

    .line 377
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->callCellStyle:Z

    .line 378
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->customPaints:Z

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 1156
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-nez v0, :cond_0

    return-void

    .line 1159
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method

.method public setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V
    .locals 3

    .line 215
    iput-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentName:Ljava/lang/CharSequence;

    .line 216
    instance-of p3, p1, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    .line 217
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 218
    iput-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 219
    iput-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    .line 220
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->showPremiumBlocked:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, p3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/MessagesController;->isUserContactBlocked(J)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;

    move-result-object v1

    .line 221
    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->isPremiumBlocked(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->premiumBlocked:Z

    .line 222
    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getMessagesStarsPrice(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->starsPriceBlocked:J

    .line 223
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->allowBotOpenButton:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_has_main_app:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setOpenBotButton(Z)V

    goto :goto_1

    .line 224
    :cond_2
    instance-of p3, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p3, :cond_3

    .line 225
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 226
    iput-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 227
    iput-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    .line 228
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->getRequirementToContact(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;

    move-result-object p1

    .line 229
    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->isPremiumBlocked(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)Z

    move-result p3

    iput-boolean p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->premiumBlocked:Z

    .line 230
    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getMessagesStarsPrice(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->starsPriceBlocked:J

    .line 231
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setOpenBotButton(Z)V

    goto :goto_1

    .line 232
    :cond_3
    instance-of p3, p1, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz p3, :cond_5

    .line 233
    check-cast p1, Lorg/telegram/messenger/ContactsController$Contact;

    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    .line 234
    iput-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 235
    iput-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 236
    iget-boolean p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->showPremiumBlocked:Z

    if-eqz p3, :cond_4

    iget-object p1, p1, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_4

    iget p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    iget-object p3, p3, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, p3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/MessagesController;->isUserContactBlocked(J)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;

    move-result-object v1

    .line 237
    :cond_4
    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->isPremiumBlocked(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->premiumBlocked:Z

    .line 238
    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getMessagesStarsPrice(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->starsPriceBlocked:J

    .line 239
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setOpenBotButton(Z)V

    goto :goto_1

    .line 241
    :cond_5
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setOpenBotButton(Z)V

    .line 243
    :goto_1
    iput-object p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 244
    iput-object p4, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->subLabel:Ljava/lang/CharSequence;

    .line 245
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCount:Z

    .line 246
    iput-boolean p6, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    .line 247
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->update(I)V

    return-void
.end method

.method public setOnSponsoredOptionsClick(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Lorg/telegram/ui/Cells/ProfileSearchCell;",
            "Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;",
            ">;)V"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onSponsoredOptionsClick:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method

.method public setOpenBotButton(Z)V
    .locals 4

    .line 255
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->openBot:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->openButtonText:Lorg/telegram/ui/Components/Text;

    if-nez v0, :cond_1

    .line 257
    new-instance v0, Lorg/telegram/ui/Components/Text;

    sget v1, Lorg/telegram/messenger/R$string;->BotOpen:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->openButtonText:Lorg/telegram/ui/Components/Text;

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 259
    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->openButtonText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v1

    float-to-int v1, v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 260
    :goto_0
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    if-eqz v2, :cond_4

    move v1, v0

    :cond_4
    invoke-virtual {p0, v3, v0, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 261
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->openBot:Z

    .line 262
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->openButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return-void
.end method

.method public setRectangularAvatar(Z)V
    .locals 0

    .line 826
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->rectangularAvatar:Z

    return-void
.end method

.method public setSublabelOffset(II)V
    .locals 0

    .line 414
    iput p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->sublabelOffsetX:I

    .line 415
    iput p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->sublabelOffsetY:I

    return-void
.end method

.method public showPremiumBlock(Z)Lorg/telegram/ui/Cells/ProfileSearchCell;
    .locals 0

    .line 190
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->showPremiumBlocked:Z

    return-object p0
.end method

.method public update(I)V
    .locals 14

    .line 831
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 832
    iget-object v4, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-virtual {v4, v5, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    .line 833
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 835
    iget-object v4, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v7, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 836
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 838
    iget-object v4, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v7, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 840
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 841
    iget-object v4, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v5, :cond_2

    .line 842
    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 843
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_2

    move-object v11, v5

    goto :goto_0

    :cond_2
    move-object v11, v0

    .line 847
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v4, v2}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    iget-object v12, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v13, 0x0

    const-string v8, "50_50"

    const-string v10, "50_50"

    invoke-virtual/range {v6 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;I)V

    goto :goto_2

    .line 849
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_6

    .line 850
    iget-object v4, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 851
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v5, :cond_4

    .line 852
    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 853
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_4

    move-object v10, v5

    goto :goto_1

    :cond_4
    move-object v10, v4

    .line 857
    :goto_1
    iget-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->monoforum:Z

    if-eqz v5, :cond_5

    .line 858
    iget v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v1, v0, v4, v5}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->setMonoForumAvatar(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/Components/AvatarDrawable;Lorg/telegram/messenger/ImageReceiver;)V

    goto :goto_2

    .line 860
    :cond_5
    iget v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-virtual {v4, v5, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    .line 861
    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, v2}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    iget-object v11, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v12, 0x0

    const-string v7, "50_50"

    const-string v9, "50_50"

    invoke-virtual/range {v5 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;I)V

    goto :goto_2

    .line 863
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_7

    .line 864
    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v6, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v6, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 865
    iget-object v7, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v10, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v7 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_2

    .line 867
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v4, v5, v3, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 868
    iget-object v6, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v9, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 871
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-wide v4, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v0

    .line 872
    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    move v0, v5

    goto :goto_4

    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_9

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-nez v4, :cond_a

    :cond_9
    iget-boolean v4, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->rectangularAvatar:Z

    if-eqz v4, :cond_b

    :cond_a
    move v4, v2

    goto :goto_3

    :cond_b
    move v4, v5

    :goto_3
    const/high16 v6, 0x42380000    # 46.0f

    invoke-static {v6, v5, v4, v0}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZZZ)I

    move-result v0

    :goto_4
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    if-eqz p1, :cond_1e

    .line 875
    sget v0, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_d

    :cond_c
    sget v0, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT_AVATAR:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_11

    .line 876
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_e

    if-eqz v3, :cond_10

    :cond_e
    if-nez v0, :cond_f

    if-nez v3, :cond_10

    :cond_f
    if-eqz v0, :cond_11

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v1, v6, v8

    if-nez v1, :cond_10

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v1, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eq v0, v1, :cond_11

    :cond_10
    move v0, v2

    goto :goto_5

    :cond_11
    move v0, v5

    :goto_5
    if-nez v0, :cond_13

    .line 880
    sget v1, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_13

    .line 882
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v1, :cond_12

    .line 883
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_6

    :cond_12
    move v1, v5

    .line 885
    :goto_6
    iget v4, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastStatus:I

    if-eq v1, v4, :cond_13

    move v0, v2

    :cond_13
    if-nez v0, :cond_14

    .line 889
    sget v1, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_EMOJI_STATUS:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v1, :cond_15

    iget-object v4, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_14

    goto :goto_7

    :cond_14
    move-object v6, p0

    goto :goto_b

    :cond_15
    :goto_7
    if-eqz v1, :cond_16

    .line 890
    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    :goto_8
    move v7, v4

    goto :goto_9

    :cond_16
    iget-object v4, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    goto :goto_8

    :goto_9
    sget-object v4, Lcom/exteragram/messenger/badges/BadgesController;->INSTANCE:Lcom/exteragram/messenger/badges/BadgesController;

    if-eqz v1, :cond_17

    goto :goto_a

    :cond_17
    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    :goto_a
    invoke-virtual {v4, v1}, Lcom/exteragram/messenger/badges/BadgesController;->getBadge(Lorg/telegram/tgnet/TLObject;)Lcom/exteragram/messenger/api/dto/BadgeDTO;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v10, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v11, 0x1

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Cells/ProfileSearchCell;->updateStatus(ZLcom/exteragram/messenger/api/dto/BadgeDTO;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    :goto_b
    if-nez v0, :cond_18

    .line 892
    sget v1, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_18

    iget-object v1, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v1, :cond_19

    :cond_18
    sget v1, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT_NAME:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_1c

    iget-object v1, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_1c

    .line 894
    :cond_19
    iget-object v1, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_1a

    .line 895
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    .line 896
    :cond_1a
    iget-object v1, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->monoforum:Z

    if-eqz v4, :cond_1b

    .line 897
    iget v4, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v4, v1}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getMonoForumTitle(ILorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    .line 899
    :cond_1b
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 901
    :goto_c
    iget-object v4, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    move v0, v2

    :cond_1c
    if-nez v0, :cond_1d

    .line 905
    iget-boolean v1, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCount:Z

    if-eqz v1, :cond_1d

    sget v1, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_READ_DIALOG_MESSAGE:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_1d

    .line 906
    iget p1, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v7, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    invoke-virtual {p1, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz p1, :cond_1d

    .line 907
    iget v1, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MessagesController;->getDialogUnreadCount(Lorg/telegram/tgnet/TLRPC$Dialog;)I

    move-result p1

    iget v1, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastUnreadCount:I

    if-eq p1, v1, :cond_1d

    goto :goto_d

    :cond_1d
    move v2, v0

    :goto_d
    if-nez v2, :cond_1f

    return-void

    :cond_1e
    move-object v6, p0

    .line 917
    :cond_1f
    iget-object p1, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_21

    .line 918
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz p1, :cond_20

    .line 919
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iput p1, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastStatus:I

    goto :goto_e

    .line 921
    :cond_20
    iput v5, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastStatus:I

    .line 923
    :goto_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastName:Ljava/lang/String;

    goto :goto_10

    .line 924
    :cond_21
    iget-object p1, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_23

    .line 925
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->monoforum:Z

    if-eqz v0, :cond_22

    .line 926
    iget v0, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getMonoForumTitle(ILorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    .line 927
    :cond_22
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_f
    iput-object p1, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastName:Ljava/lang/String;

    .line 929
    :cond_23
    :goto_10
    iput-object v3, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 931
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-nez p1, :cond_25

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_11

    .line 934
    :cond_24
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_12

    .line 932
    :cond_25
    :goto_11
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->buildLayout()V

    .line 936
    :goto_12
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public updateColors()V
    .locals 1

    .line 1213
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 1214
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->buildLayout()V

    :cond_0
    return-void
.end method

.method public updateStatus(ZLcom/exteragram/messenger/api/dto/BadgeDTO;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    .locals 7

    .line 785
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->center:Z

    .line 787
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->allowEmojiStatus:Z

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    if-nez v0, :cond_0

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-eqz v0, :cond_0

    .line 788
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6, p5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 789
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 790
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->allowEmojiStatus:Z

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    if-nez v0, :cond_1

    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-eqz v0, :cond_1

    .line 791
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6, p5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 792
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 793
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->allowEmojiStatus:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 794
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    new-instance v0, Lorg/telegram/ui/Components/CombinedDrawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v5, v6, v4, v4}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {p1, v0, p5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 795
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 796
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    if-nez p1, :cond_3

    .line 797
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p2}, Lcom/exteragram/messenger/api/dto/BadgeDTO;->getDocumentId()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6, p5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 798
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParticles(ZZ)V

    .line 799
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    if-eqz p3, :cond_4

    .line 800
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    if-nez p1, :cond_4

    iget p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/MessagesController;->isPremiumUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 801
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarDrawableMini:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, p5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 802
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    goto :goto_0

    .line 804
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1, v1, p5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 805
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    :goto_0
    if-eqz p2, :cond_5

    .line 807
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    if-eqz p1, :cond_6

    .line 808
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1, v4, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParticles(ZZ)V

    :cond_6
    if-eqz p3, :cond_7

    .line 812
    invoke-static {p3}, Lorg/telegram/messenger/DialogObject;->getBotVerificationIcon(Lorg/telegram/tgnet/TLObject;)J

    move-result-wide p1

    goto :goto_1

    :cond_7
    if-eqz p4, :cond_8

    .line 814
    invoke-static {p4}, Lorg/telegram/messenger/DialogObject;->getBotVerificationIcon(Lorg/telegram/tgnet/TLObject;)J

    move-result-wide p1

    goto :goto_1

    :cond_8
    move-wide p1, v2

    :goto_1
    cmp-long p3, p1, v2

    if-eqz p3, :cond_a

    .line 816
    iget-boolean p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    if-eqz p3, :cond_9

    goto :goto_2

    .line 819
    :cond_9
    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->botVerificationDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p3, p1, p2, p5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    goto :goto_3

    .line 817
    :cond_a
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->botVerificationDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1, v1, p5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 821
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->botVerificationDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    return-void
.end method

.method public useCustomPaints()Lorg/telegram/ui/Cells/ProfileSearchCell;
    .locals 1

    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->customPaints:Z

    return-object p0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->botVerificationDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
