.class Lorg/telegram/ui/ProfileActivity$25;
.super Lorg/telegram/ui/ActionBar/SimpleTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method public static synthetic $r8$lambda$GoUs6Ldue1mDB_RJ8USAbv4w2iI(Lorg/telegram/ui/ProfileActivity$25;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ProfileActivity$25;->lambda$performLongClick$1(Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xMgNen39mREUrSD735Emad5UcXc(Lorg/telegram/ui/ProfileActivity$25;Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ProfileActivity$25;->lambda$performLongClick$0(Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
    .locals 0

    .line 5634
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$performLongClick$0(Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 2

    .line 5687
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 5688
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnameTextView(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 5689
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->TextCopied:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TextCopied"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$performLongClick$1(Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 6

    .line 5725
    new-instance v0, Lorg/telegram/ui/ProfileActivity$25$2;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object p3, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ProfileActivity$25$2;-><init>(Lorg/telegram/ui/ProfileActivity$25;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    .line 5732
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    const/4 p1, 0x0

    .line 5733
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCalcMandatoryInsets(Z)V

    .line 5734
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setDimBehind(Z)V

    .line 5735
    iget-object p1, v1, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mdimBehindView(Lorg/telegram/ui/ProfileActivity;Z)V

    .line 5736
    iget-object p1, v1, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 5654
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawableX()I

    move-result v0

    .line 5655
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 5656
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawableX()I

    move-result p1

    if-eq v0, p1, :cond_0

    .line 5657
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ProfileActivity;->updateCollectibleHint()V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 5637
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 5638
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnameTextViewRightDrawableContentDescription(Lorg/telegram/ui/ProfileActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnameTextViewRightDrawable2ContentDescription(Lorg/telegram/ui/ProfileActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5639
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5640
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnameTextViewRightDrawable2ContentDescription(Lorg/telegram/ui/ProfileActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ", "

    if-eqz v1, :cond_2

    .line 5641
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5642
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnameTextViewRightDrawable2ContentDescription(Lorg/telegram/ui/ProfileActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5644
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnameTextViewRightDrawableContentDescription(Lorg/telegram/ui/ProfileActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 5645
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5646
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnameTextViewRightDrawableContentDescription(Lorg/telegram/ui/ProfileActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5648
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public performLongClick(FF)Z
    .locals 14

    .line 5663
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnameTextView(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 5664
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    .line 5668
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 5669
    new-instance v3, Lorg/telegram/ui/ProfileActivity$25$1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ProfileActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-direct {v3, p0, v4, v5, v6}, Lorg/telegram/ui/ProfileActivity$25$1;-><init>(Lorg/telegram/ui/ProfileActivity$25;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 5684
    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setFitItems(Z)V

    .line 5686
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    sget v5, Lorg/telegram/messenger/R$string;->Copy:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ProfileActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-static {v3, v4, v5, v2, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ProfileActivity$25$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v0}, Lorg/telegram/ui/ProfileActivity$25$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ProfileActivity$25;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5692
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, -0x2

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v8

    cmp-long v4, v8, v6

    if-eqz v4, :cond_8

    .line 5693
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 5695
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v8, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 5696
    iget-object v8, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 5700
    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->getProfileEmojiId(Lorg/telegram/tgnet/TLRPC$Chat;)J

    move-result-wide v9

    cmp-long v4, v9, v6

    if-lez v4, :cond_2

    .line 5701
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getSetFrom(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5702
    :cond_2
    sget-object v4, Lcom/exteragram/messenger/badges/BadgesController;->INSTANCE:Lcom/exteragram/messenger/badges/BadgesController;

    invoke-virtual {v4, v8}, Lcom/exteragram/messenger/badges/BadgesController;->getBadge(Lorg/telegram/tgnet/TLObject;)Lcom/exteragram/messenger/api/dto/BadgeDTO;

    move-result-object v4

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_5

    .line 5704
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getProfileEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide v8

    cmp-long v6, v8, v6

    if-lez v6, :cond_4

    .line 5705
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getSetFrom(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5706
    :cond_4
    sget-object v6, Lcom/exteragram/messenger/badges/BadgesController;->INSTANCE:Lcom/exteragram/messenger/badges/BadgesController;

    invoke-virtual {v6, v4}, Lcom/exteragram/messenger/badges/BadgesController;->getBadge(Lorg/telegram/tgnet/TLObject;)Lcom/exteragram/messenger/api/dto/BadgeDTO;

    move-result-object v4

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    .line 5709
    :goto_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_6

    .line 5710
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_6
    if-eqz v4, :cond_7

    .line 5713
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$4900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v6

    invoke-virtual {v4}, Lcom/exteragram/messenger/api/dto/BadgeDTO;->getDocumentId()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findStickerSet(IJ)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 5714
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    const-string v7, "exteraBadges"

    if-eq v6, v7, :cond_7

    .line 5715
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5718
    :cond_7
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 5719
    new-instance v4, Landroid/widget/FrameLayout;

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcontentView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$NestedFrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 5720
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuSeparator:I

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v6, 0x8

    const/4 v7, -0x1

    .line 5721
    invoke-static {v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 5723
    new-instance v8, Lorg/telegram/ui/Components/MessageContainsEmojiButton;

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$5000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v9

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcontentView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$NestedFrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    const/4 v13, 0x5

    invoke-direct/range {v8 .. v13}, Lorg/telegram/ui/Components/MessageContainsEmojiButton;-><init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;I)V

    .line 5724
    new-instance v4, Lorg/telegram/ui/ProfileActivity$25$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v12, v0}, Lorg/telegram/ui/ProfileActivity$25$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ProfileActivity$25;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v8, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5738
    invoke-static {v7, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 5742
    :cond_8
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-direct {v4, v3, v5, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    .line 5743
    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    const/16 v5, 0xdc

    .line 5744
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 5745
    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 5746
    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 5747
    sget v5, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 5748
    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/high16 v5, 0x447a0000    # 1000.0f

    .line 5749
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, -0x80000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v6, v5}, Landroid/view/View;->measure(II)V

    const/4 v5, 0x2

    .line 5750
    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 5751
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 5752
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object v5, p0

    move/from16 v0, p2

    .line 5756
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v6

    if-eq v5, v6, :cond_9

    if-eqz v5, :cond_9

    .line 5757
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v6

    add-float/2addr p1, v6

    .line 5758
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v6

    add-float/2addr v0, v6

    .line 5759
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    goto :goto_1

    .line 5761
    :cond_9
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 5762
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$5100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v5

    invoke-interface {v5}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 5764
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-float/2addr p1, v6

    .line 5765
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v6, v5

    add-float/2addr v0, v6

    .line 5768
    :cond_a
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    sub-float/2addr p1, v3

    .line 5769
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v3

    float-to-int p1, p1

    float-to-int v0, v0

    invoke-virtual {v4, v3, v2, p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 5770
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dimBehind()V

    .line 5772
    invoke-virtual {p0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    return v1

    :cond_b
    return v2
.end method

.method public setScaleX(F)V
    .locals 0

    .line 5785
    invoke-super {p0, p1}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .line 5780
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    return-void
.end method
