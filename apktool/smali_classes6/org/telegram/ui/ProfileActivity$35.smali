.class Lorg/telegram/ui/ProfileActivity$35;
.super Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->showStatusSelect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;

.field final synthetic val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V
    .locals 0

    .line 6993
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$35;->this$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p10, p0, Lorg/telegram/ui/ProfileActivity$35;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-object p1, p0

    invoke-direct/range {p1 .. p9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    return-void
.end method


# virtual methods
.method public getDialogId()J
    .locals 2

    .line 7005
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$35;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;)V
    .locals 9

    const/4 p1, 0x2

    const/4 p3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_1

    .line 7012
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$35;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$6600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v2

    iget-wide v3, p4, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Stars/StarsController;->findUserStarGift(J)Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7013
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "statusgiftpage"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ge v3, p1, :cond_0

    .line 7014
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    add-int/2addr p2, v1

    invoke-interface {p1, v4, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7015
    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$35;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$6700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v5

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$35;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$6800(Lorg/telegram/ui/ProfileActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$35;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Stars/StarGiftSheet;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 7016
    invoke-virtual {v3, v2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Stars/StarsController$IGiftsList;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p1

    .line 7017
    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->setupWearPage()Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p1

    .line 7018
    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->show()V

    .line 7019
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$35;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    aget-object p1, p1, v0

    if-eqz p1, :cond_c

    .line 7020
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$35;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, p3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputselectAnimatedEmojiDialog(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V

    .line 7021
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$35;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dismiss()V

    return-void

    .line 7025
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputEmojiStatusCollectible;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputEmojiStatusCollectible;-><init>()V

    .line 7026
    iget-wide v3, p4, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputEmojiStatusCollectible;->collectible_id:J

    if-eqz p5, :cond_3

    .line 7028
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputEmojiStatusCollectible;->flags:I

    or-int/2addr v3, v1

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputEmojiStatusCollectible;->flags:I

    .line 7029
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    iput p5, v2, Lorg/telegram/tgnet/TLRPC$TL_inputEmojiStatusCollectible;->until:I

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 7033
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;-><init>()V

    goto :goto_0

    .line 7035
    :cond_2
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;-><init>()V

    .line 7036
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->document_id:J

    if-eqz p5, :cond_3

    .line 7038
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->flags:I

    or-int/2addr v3, v1

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->flags:I

    .line 7039
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    iput p5, v2, Lorg/telegram/tgnet/TLRPC$EmojiStatus;->until:I

    .line 7043
    :cond_3
    :goto_0
    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$35;->this$0:Lorg/telegram/ui/ProfileActivity;

    if-eqz p4, :cond_4

    iget-wide v3, p4, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, p3

    :goto_1
    invoke-static {p5, v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputemojiStatusGiftId(Lorg/telegram/ui/ProfileActivity;Ljava/lang/Long;)V

    .line 7044
    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$35;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p5

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$35;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-nez v3, :cond_5

    const-wide/16 v3, 0x0

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$35;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v3, v3

    :goto_2
    invoke-virtual {p5, v3, v4, v2, p4}, Lorg/telegram/messenger/MessagesController;->updateEmojiStatus(JLorg/telegram/tgnet/TLRPC$EmojiStatus;Lorg/telegram/tgnet/tl/TL_stars$StarGift;)V

    move p5, v0

    :goto_3
    if-ge p5, p1, :cond_a

    .line 7046
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$35;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetemojiStatusDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    aget-object v2, v2, p5

    if-eqz v2, :cond_9

    if-nez p2, :cond_6

    .line 7047
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$35;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-nez v2, :cond_6

    .line 7048
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$35;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetemojiStatusDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    aget-object v2, v2, p5

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$35;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3, p5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetPremiumCrossfadeDrawable(Lorg/telegram/ui/ProfileActivity;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_4

    :cond_6
    if-eqz p2, :cond_7

    .line 7050
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$35;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetemojiStatusDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    aget-object v2, v2, p5

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    goto :goto_4

    .line 7052
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$35;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetemojiStatusDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    aget-object v2, v2, p5

    invoke-virtual {v2, p3, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 7054
    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$35;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetemojiStatusDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    aget-object v2, v2, p5

    if-eqz p4, :cond_8

    move v3, v1

    goto :goto_5

    :cond_8
    move v3, v0

    :goto_5
    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParticles(ZZ)V

    :cond_9
    add-int/lit8 p5, p5, 0x1

    goto :goto_3

    :cond_a
    if-eqz p2, :cond_b

    .line 7058
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$35;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetanimatedStatusView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Cells/AnimatedStatusView;

    move-result-object p1

    invoke-static {p2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromCustomEmoji(Ljava/lang/Long;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/AnimatedStatusView;->animateChange(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    .line 7060
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$35;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mupdateEmojiStatusDrawableColor(Lorg/telegram/ui/ProfileActivity;)V

    .line 7061
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$35;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mupdateEmojiStatusEffectPosition(Lorg/telegram/ui/ProfileActivity;)V

    .line 7062
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$35;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    aget-object p1, p1, v0

    if-eqz p1, :cond_c

    .line 7063
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$35;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, p3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputselectAnimatedEmojiDialog(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V

    .line 7064
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$35;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dismiss()V

    :cond_c
    return-void
.end method

.method protected willApplyEmoji(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;)Z
    .locals 0

    const/4 p1, 0x1

    if-eqz p4, :cond_1

    .line 6997
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$35;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->access$6500(Lorg/telegram/ui/ProfileActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p2

    iget-wide p3, p4, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    invoke-virtual {p2, p3, p4}, Lorg/telegram/ui/Stars/StarsController;->findUserStarGift(J)Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6998
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p3, "statusgiftpage"

    const/4 p4, 0x0

    invoke-interface {p2, p3, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    const/4 p3, 0x2

    if-lt p2, p3, :cond_0

    goto :goto_0

    :cond_0
    return p4

    :cond_1
    :goto_0
    return p1
.end method
