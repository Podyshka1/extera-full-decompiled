.class public Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private actionButton:Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;

.field private actionButtonContainer:Landroid/widget/FrameLayout;

.field private actionButtonContainerGradient:Landroid/widget/ImageView;

.field private final allAvailableReactions:Ljava/util/List;

.field private backSpaceButtonView:Lorg/telegram/ui/Components/Reactions/BackSpaceButtonView;

.field private boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

.field private bottomDialogLayout:Landroid/widget/FrameLayout;

.field private final chatId:J

.field private final checkAfterFastDeleteRunnable:Ljava/lang/Runnable;

.field private contentLayout:Landroid/widget/LinearLayout;

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private currentReactionsCount:I

.field private editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

.field private emojiKeyboardVisible:Z

.field private enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

.field private final info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private initialPaid:Z

.field private final initialSelectedEmojis:Ljava/util/HashMap;

.field private isPaused:Z

.field private final maxReactionsCount:I

.field private paid:Z

.field private paidCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

.field private reactionsCount:I

.field private scrollView:Lorg/telegram/ui/Components/SectionsScrollView;

.field private selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

.field private selectedCustomReactions:I

.field private final selectedEmojisIds:Ljava/util/List;

.field private final selectedEmojisMap:Ljava/util/HashMap;

.field private selectedType:I

.field private slideView:Lorg/telegram/ui/Cells/SlideIntChooseView;

.field private switchLayout:Landroid/widget/LinearLayout;


# direct methods
.method public static synthetic $r8$lambda$0MYD7HkNmp0LxLXpzRE6BGP0sgE(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$initSelectAnimatedEmojiDialog$11(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1YP_Iu-OWIUWYMB49qb7O-M4Vl4(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$onResume$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$5Hqwp_yk7p_iH-SmTZO81Oh_Xpo(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$toggleStarsEnabled$18(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    return-void
.end method

.method public static synthetic $r8$lambda$78_YXBPKlzr1MFRiokbGyVuDXTM(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/ui/Components/AnimatedEmojiSpan;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$initSelectAnimatedEmojiDialog$10(Lorg/telegram/ui/Components/AnimatedEmojiSpan;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DMiMKd2qOLIZkRWap8gJX5eKFDY(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->showKeyboard()V

    return-void
.end method

.method public static synthetic $r8$lambda$FUJ-7x_Wtt39p1JE7QE6wBjZu60(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$createView$7(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HXeb9TjvPlQ1Ky5SCKNd0ptIXaE()V
    .locals 5

    .line 637
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HzDaTqsDWy2R8Th_juYZhJlyCS4(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$checkChangesBeforeExit$15(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kfqn4UNQOkLDGnv2UCnbDvtNJBk(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$showKeyboard$16(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LdHm8GQqLT5_1p9Es9OSUpoQvTI(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$PkAIRgP6l6g_7ves6HlTnVT7naY(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$createView$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$a0zaSRgJWR6V3zGsfVnkepRwVwQ(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$createView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eiGYjhwGzL0vdCngEXATwafe0Gw(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$onFragmentCreate$1(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fdE6XdD-93Xcrv2OFMGD1vc0Nxk(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$createView$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$g0tdanQjcENkrNyzFz8iNwFRISg(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$checkChangesBeforeExit$14(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gCOIXAqf4f35kgfIMVQTjPLOMVI(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$closeKeyboard$17(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gb9IRekFsCQHOH8794zM0V4HULg(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$createView$8(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oVyv19ncIKkGIQduBEMjPfX5XoY(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$createView$4(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sZJ1tvbSgp7m_iXj0lBhldyMbLU(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$createView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ve-UnHeXHS0dzLoM5Jl15w5hSqU(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$createView$9(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetactionButtonContainer(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbottomDialogLayout(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteditText(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemojiKeyboardVisible(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->emojiKeyboardVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmaxReactionsCount(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->maxReactionsCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollView(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Lorg/telegram/ui/Components/SectionsScrollView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->scrollView:Lorg/telegram/ui/Components/SectionsScrollView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectAnimatedEmojiDialog(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedEmojisIds(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisIds:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedEmojisMap(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetswitchLayout(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$manimateChangesInNextRows(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->animateChangesInNextRows(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckChangesBeforeExit(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Z)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkChangesBeforeExit(Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckMaxCustomReactions(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkMaxCustomReactions(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeleteSelectedEmojis(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->deleteSelectedEmojis()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misClearFocusNotWorking(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->isClearFocusNotWorking()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateScrollViewMarginBottom(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->updateScrollViewMarginBottom(I)V

    return-void
.end method

.method public constructor <init>(JLorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 93
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisIds:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->initialSelectedEmojis:Ljava/util/HashMap;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->allAvailableReactions:Ljava/util/List;

    .line 99
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->boostsChannelLevelMax:I

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->maxReactionsCount:I

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->emojiKeyboardVisible:Z

    const/4 v0, -0x1

    .line 107
    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedType:I

    .line 109
    new-instance v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkAfterFastDeleteRunnable:Ljava/lang/Runnable;

    .line 113
    iput-wide p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->chatId:J

    .line 114
    iput-object p3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inBubbleMode:Z

    return p0
.end method

.method private animateChangesInNextRows(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V
    .locals 3

    .line 590
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 591
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 592
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 594
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 595
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result p1

    .line 596
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v0, p1, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 597
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 598
    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->setAnimateChanges()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkChangesBeforeExit(Z)Z
    .locals 4

    .line 763
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->initialSelectedEmojis:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 764
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz v2, :cond_0

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    iget v3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedCustomReactions:I

    if-ge v2, v3, :cond_0

    const/4 v0, 0x0

    .line 767
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->initialPaid:Z

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paid:Z

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 771
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 772
    const-string v0, "UnsavedChanges"

    sget v2, Lorg/telegram/messenger/R$string;->UnsavedChanges:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 773
    const-string v0, "ReactionApplyChangesDialog"

    sget v2, Lorg/telegram/messenger/R$string;->ReactionApplyChangesDialog:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 774
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 775
    const-string v0, "ApplyTheme"

    sget v2, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 778
    sget v0, Lorg/telegram/messenger/R$string;->Discard:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 779
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_2
    return v1
.end method

.method private checkMaxCustomReactions(Z)V
    .locals 3

    .line 785
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-nez v0, :cond_0

    return-void

    .line 788
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedType:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 789
    iput v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedType:I

    .line 791
    :cond_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->grabReactions(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedCustomReactions:I

    .line 792
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    if-ge v2, v0, :cond_3

    if-eqz p1, :cond_2

    .line 794
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ReactionReachLvlForReactionShort"

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 795
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    .line 796
    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 797
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 799
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButton:Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedCustomReactions:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;->setLvlRequiredState(I)V

    return-void

    .line 801
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButton:Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;->removeLvlRequiredState()V

    return-void
.end method

.method private closeKeyboard()Z
    .locals 6

    .line 857
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->emojiKeyboardVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 858
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->emojiKeyboardVisible:Z

    .line 859
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->isClearFocusNotWorking()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 861
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 863
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 865
    :goto_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->updateScrollViewMarginBottom(I)V

    .line 866
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/16 v4, 0x200

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v1

    invoke-virtual {v0, v3, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 867
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 868
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x15e

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$10;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    .line 870
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 879
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return v2

    :cond_1
    return v1
.end method

.method private deleteSelectedEmojis()Z
    .locals 8

    .line 604
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->getEditTextSelectionEnd()I

    move-result v0

    .line 605
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->getEditTextSelectionStart()I

    move-result v1

    .line 606
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->hasSelection()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 608
    const-class v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v2, v1, v0, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 609
    array-length v1, v0

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 610
    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    iget-wide v6, v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisIds:Ljava/util/List;

    iget-wide v6, v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 612
    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-wide v6, v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->unselect(Ljava/lang/Long;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 614
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v2, 0x43

    invoke-direct {v1, v4, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 615
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkMaxCustomReactions(Z)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v4
.end method

.method private grabReactions(Z)Ljava/util/List;
    .locals 10

    .line 806
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 807
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 808
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 809
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto :goto_0

    .line 812
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->allAvailableReactions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    .line 813
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->activate_animation:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 814
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;-><init>()V

    .line 815
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->reaction:Ljava/lang/String;

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    .line 816
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 823
    :cond_2
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;-><init>()V

    .line 824
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    .line 825
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    return-object v1

    :cond_4
    return-object v0
.end method

.method private initSelectAnimatedEmojiDialog()V
    .locals 13

    .line 468
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    if-eqz v0, :cond_0

    move-object v3, p0

    goto/16 :goto_1

    .line 471
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    .line 472
    new-instance v2, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    const/16 v11, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, p0

    move-object v3, p0

    invoke-direct/range {v2 .. v12}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    iput-object v2, v3, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v0, 0x0

    .line 537
    invoke-virtual {v2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setAnimationsEnabled(Z)V

    .line 538
    iget-object v1, v3, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 539
    iget-object v1, v3, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 540
    iget-object v1, v3, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    iget-object v2, v3, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v4, -0x2

    const/16 v5, 0x50

    const/4 v6, -0x1

    invoke-static {v6, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    new-instance v1, Lorg/telegram/ui/Components/Reactions/BackSpaceButtonView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/telegram/ui/Components/Reactions/BackSpaceButtonView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v3, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->backSpaceButtonView:Lorg/telegram/ui/Components/Reactions/BackSpaceButtonView;

    .line 543
    new-instance v2, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Reactions/BackSpaceButtonView;->setOnBackspace(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 583
    iget-object v1, v3, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    iget-object v2, v3, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->backSpaceButtonView:Lorg/telegram/ui/Components/Reactions/BackSpaceButtonView;

    const/high16 v9, 0x41000000    # 8.0f

    const/high16 v10, 0x41000000    # 8.0f

    const/4 v4, -0x1

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x55

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    iget-object v1, v3, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 585
    iget-object v4, v3, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v4, v2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setMultiSelected(Ljava/lang/Long;Z)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private isClearFocusNotWorking()Z
    .locals 2

    .line 886
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$checkChangesBeforeExit$14(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 776
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButton:Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method private synthetic lambda$checkChangesBeforeExit$15(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 778
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$closeKeyboard$17(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 869
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    neg-float p1, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;)V
    .locals 2

    .line 233
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paidCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->toggleStarsEnabled()V

    .line 236
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paid:Z

    :goto_1
    invoke-direct {p0, p1, v1, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->setCheckedEnableReactionCell(IZZ)V

    return-void
.end method

.method private synthetic lambda$createView$3()V
    .locals 2

    .line 291
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://t.me/stickers"

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createView$4(Ljava/lang/Integer;)V
    .locals 0

    .line 307
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->reactionsCount:I

    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;)V
    .locals 0

    .line 321
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->toggleStarsEnabled()V

    return-void
.end method

.method private synthetic lambda$createView$6()V
    .locals 2

    .line 329
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->ChannelEnablePaidReactionsInfoLink:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createView$7(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "BOOSTS_REQUIRED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-wide v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->chatId:J

    neg-long v0, v0

    iget p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedCustomReactions:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    invoke-static {v0, v1, p1, v2}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->showLimitReachedDialogForReactions(JILorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void

    .line 374
    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    .line 375
    const-string v0, "REACTIONS_TOO_MANY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    iget p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->maxReactionsCount:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ReactionMaxCountError"

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 378
    :cond_1
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$createView$8(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 363
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButton:Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 367
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "CHAT_NOT_MODIFIED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 370
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    .line 381
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-nez p1, :cond_2

    const-wide/16 v1, 0xc8

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$createView$9(Landroid/view/View;)V
    .locals 9

    .line 347
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButton:Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 351
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz p1, :cond_1

    iget v0, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedCustomReactions:I

    if-ge v0, v1, :cond_1

    .line 352
    iget-wide v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->chatId:J

    neg-long v2, v2

    invoke-static {v2, v3, v1, p1}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->showLimitReachedDialogForReactions(JILorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void

    .line 357
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paidCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_media_allowed:Z

    if-eqz v0, :cond_2

    .line 358
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    move-object v6, p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    .line 361
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButton:Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 362
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->chatId:J

    iget v3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedType:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->grabReactions(Z)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->reactionsCount:I

    iput v5, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->currentReactionsCount:I

    new-instance v7, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda17;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    new-instance v8, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda18;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/MessagesController;->setCustomChatReactions(JILjava/util/List;ILjava/lang/Boolean;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$initSelectAnimatedEmojiDialog$10(Lorg/telegram/ui/Components/AnimatedEmojiSpan;I)V
    .locals 3

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 567
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 568
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    sub-int v0, p1, v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 573
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 574
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$initSelectAnimatedEmojiDialog$11(Ljava/lang/Boolean;)V
    .locals 9

    .line 544
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->deleteSelectedEmojis()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 547
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->getEditTextSelectionEnd()I

    move-result v0

    .line 548
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 549
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-class v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 550
    array-length v3, v2

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v2, v5

    .line 551
    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, v0, :cond_3

    .line 553
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    iget-wide v2, v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisIds:Ljava/util/List;

    iget-wide v2, v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 555
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-wide v2, v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->unselect(Ljava/lang/Long;)Z

    .line 556
    iget-wide v1, v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    const-wide/16 v7, -0x1

    cmp-long v1, v1, v7

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paidCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_1

    .line 557
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 558
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->maxReactionsCount:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->setMaxLength(I)V

    .line 560
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 561
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    new-instance v0, Landroid/view/KeyEvent;

    const/16 v1, 0x43

    invoke-direct {v0, v4, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 562
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkAfterFastDeleteRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 563
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkAfterFastDeleteRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x15e

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 565
    :cond_2
    new-instance p1, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda19;

    invoke-direct {p1, p0, v6, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/ui/Components/AnimatedEmojiSpan;I)V

    invoke-virtual {v6, p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->setRemoved(Ljava/lang/Runnable;)V

    .line 576
    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->animateChangesInNextRows(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    .line 577
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkMaxCustomReactions(Z)V

    return-void

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkMaxCustomReactions(Z)V

    return-void
.end method

.method private synthetic lambda$onFragmentCreate$1(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 1

    .line 134
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    .line 135
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->initialSelectedEmojis:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 137
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkMaxCustomReactions(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onResume$13()V
    .locals 1

    .line 738
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private synthetic lambda$showKeyboard$16(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 844
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    neg-float p1, p1

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$toggleStarsEnabled$18(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V
    .locals 5

    .line 916
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 917
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 918
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    if-ne v4, p1, :cond_1

    .line 920
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->getEditTextSelectionEnd()I

    move-result p1

    .line 921
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 922
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 923
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    sub-int v0, v1, v0

    .line 925
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    if-gt v1, p1, :cond_0

    sub-int/2addr p1, v0

    :cond_0
    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setCheckedEnableReactionCell(IZZ)V
    .locals 8

    .line 642
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedType:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paid:Z

    if-ne v0, p2, :cond_0

    goto/16 :goto_5

    .line 645
    :cond_0
    iput-boolean p2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paid:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v1

    .line 648
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    if-eqz v2, :cond_3

    .line 649
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    goto :goto_2

    :cond_3
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    :goto_2
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    if-eqz p3, :cond_5

    if-eqz v2, :cond_4

    .line 652
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColorAnimated(ZI)V

    goto :goto_3

    .line 654
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColorAnimatedReverse(I)V

    goto :goto_3

    .line 657
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    .line 660
    :goto_3
    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedType:I

    const-wide/16 v2, 0x15e

    const/4 v4, 0x0

    if-eq p1, v1, :cond_8

    if-eqz p1, :cond_8

    if-eqz p2, :cond_6

    goto :goto_4

    :cond_6
    if-eqz p3, :cond_7

    .line 695
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->closeKeyboard()Z

    .line 696
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 697
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 698
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$7;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 703
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 704
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$8;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$8;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 710
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 712
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 713
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 663
    :cond_8
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 664
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p3, :cond_b

    .line 666
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 667
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 668
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v4, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$6;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$6;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 673
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 674
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 675
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 676
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->clearSelectedDocuments()V

    .line 677
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 680
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->allAvailableReactions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v0

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    .line 681
    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisIds:Ljava/util/List;

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->addReactionToEditText(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;Ljava/util/HashMap;Ljava/util/List;Landroid/text/Editable;Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/graphics/Paint$FontMetricsInt;)V

    add-int/2addr p2, v1

    .line 683
    iget p3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->maxReactionsCount:I

    if-lt p2, p3, :cond_9

    .line 687
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 688
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->addReactionsSpan()V

    .line 689
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->notifyDataSetChanged()V

    .line 690
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkMaxCustomReactions(Z)V

    :cond_b
    :goto_5
    return-void
.end method

.method private showKeyboard()V
    .locals 5

    .line 836
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->emojiKeyboardVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 837
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->emojiKeyboardVisible:Z

    .line 838
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 839
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->updateScrollViewMarginBottom(I)V

    .line 840
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 841
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 842
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 843
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$9;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    .line 845
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 852
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private updateScrollViewMarginBottom(I)V
    .locals 1

    .line 890
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->scrollView:Lorg/telegram/ui/Components/SectionsScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 891
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 892
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->scrollView:Lorg/telegram/ui/Components/SectionsScrollView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public canBeginSlide()Z
    .locals 1

    const/4 v0, 0x1

    .line 623
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkChangesBeforeExit(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 626
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->canBeginSlide()Z

    move-result v0

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 150
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->Reactions:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 152
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 154
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$1;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 165
    new-instance v2, Lorg/telegram/ui/Components/SectionsScrollView$SectionsLinearLayout;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/SectionsScrollView$SectionsLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->contentLayout:Landroid/widget/LinearLayout;

    .line 166
    new-instance v2, Lorg/telegram/ui/Components/SectionsScrollView;

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->contentLayout:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v1, v4, v5}, Lorg/telegram/ui/Components/SectionsScrollView;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->scrollView:Lorg/telegram/ui/Components/SectionsScrollView;

    .line 167
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 168
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->scrollView:Lorg/telegram/ui/Components/SectionsScrollView;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setAdaptiveBackground(Lorg/telegram/ui/Components/SectionsScrollView;)V

    .line 170
    new-instance v2, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Landroid/content/Context;)V

    .line 223
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 225
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->scrollView:Lorg/telegram/ui/Components/SectionsScrollView;

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 227
    new-instance v4, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/16 v5, 0x38

    .line 228
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setHeight(I)V

    .line 229
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    goto :goto_0

    :cond_0
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    :goto_0
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    .line 230
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTypeface(Landroid/graphics/Typeface;)V

    .line 231
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundCheckText:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlue:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueChecked:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumb:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumbChecked:I

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Cells/TextCheckCell;->setColors(IIIII)V

    .line 232
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v5, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->contentLayout:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    new-instance v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v8, 0xc

    invoke-direct {v4, v1, v8, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 241
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    .line 242
    invoke-virtual {v4, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTopPadding(I)V

    const/16 v9, 0x10

    .line 243
    invoke-virtual {v4, v9}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBottomPadding(I)V

    .line 244
    sget v10, Lorg/telegram/messenger/R$string;->ReactionAddEmojiFromAnyPack:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->contentLayout:Landroid/widget/LinearLayout;

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    new-instance v4, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 248
    sget v10, Lorg/telegram/messenger/R$string;->AvailableReactions:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 249
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v10, 0x41700000    # 15.0f

    .line 250
    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/HeaderCell;->setTextSize(F)V

    const/16 v10, 0xe

    .line 251
    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/HeaderCell;->setTopMargin(I)V

    .line 253
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    .line 254
    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 256
    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->contentLayout:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    const/high16 v12, -0x40000000    # -2.0f

    invoke-static {v6, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    new-instance v4, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$3;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    iget v11, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->maxReactionsCount:I

    invoke-direct {v4, v0, v1, v10, v11}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$3;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    .line 277
    new-instance v10, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda2;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->setOnFocused(Ljava/lang/Runnable;)V

    .line 279
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    new-instance v4, Landroid/animation/LayoutTransition;

    invoke-direct {v4}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v10, 0xc8

    .line 282
    invoke-virtual {v4, v10, v11}, Landroid/animation/LayoutTransition;->setDuration(J)V

    const/4 v10, 0x4

    .line 283
    invoke-virtual {v4, v10}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 284
    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 286
    new-instance v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v1, v8, v11}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 287
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    .line 288
    sget v11, Lorg/telegram/messenger/R$string;->ReactionCreateOwnPack:I

    .line 289
    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v13, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda3;

    invoke-direct {v13, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    .line 292
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v14

    const/4 v15, 0x0

    .line 288
    invoke-static {v11, v12, v15, v13, v14}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v11, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    new-instance v4, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v1, v11}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 297
    sget v11, Lorg/telegram/messenger/R$string;->MaximumReactionsHeader:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v11, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    new-instance v4, Lorg/telegram/ui/Cells/SlideIntChooseView;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v1, v11}, Lorg/telegram/ui/Cells/SlideIntChooseView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->slideView:Lorg/telegram/ui/Cells/SlideIntChooseView;

    .line 301
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    instance-of v11, v4, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v11, :cond_1

    iget v11, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v12, 0x100000

    and-int/2addr v11, v12

    if-eqz v11, :cond_2

    goto :goto_1

    :cond_1
    iget v11, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit16 v11, v11, 0x2000

    if-eqz v11, :cond_2

    .line 302
    :goto_1
    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->reactions_limit:I

    iput v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->reactionsCount:I

    iput v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->currentReactionsCount:I

    goto :goto_2

    .line 304
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->reactionsUniqMax:I

    iput v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->reactionsCount:I

    iput v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->currentReactionsCount:I

    .line 306
    :goto_2
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->slideView:Lorg/telegram/ui/Cells/SlideIntChooseView;

    iget v11, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->reactionsCount:I

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget v12, v12, Lorg/telegram/messenger/MessagesController;->reactionsUniqMax:I

    const-string v13, "MaximumReactionsValue"

    invoke-static {v15, v13, v3, v12}, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->make(ILjava/lang/String;II)Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda4;

    invoke-direct {v13, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {v4, v11, v12, v13}, Lorg/telegram/ui/Cells/SlideIntChooseView;->set(ILorg/telegram/ui/Cells/SlideIntChooseView$Options;Lorg/telegram/messenger/Utilities$Callback;)V

    .line 309
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->slideView:Lorg/telegram/ui/Cells/SlideIntChooseView;

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    new-instance v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v1, v8, v11}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 311
    invoke-virtual {v4, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTopPadding(I)V

    .line 312
    invoke-virtual {v4, v9}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBottomPadding(I)V

    .line 313
    sget v9, Lorg/telegram/messenger/R$string;->MaximumReactionsInfo:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_media_allowed:Z

    const/16 v11, 0x46

    if-eqz v9, :cond_3

    .line 317
    new-instance v4, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paidCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 318
    sget v9, Lorg/telegram/messenger/R$string;->ChannelEnablePaidReactions:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v15, v15}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 319
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paidCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v4, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paidCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v9, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda5;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    new-instance v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v1, v8, v9}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 325
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    .line 326
    invoke-virtual {v4, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTopPadding(I)V

    .line 327
    invoke-virtual {v4, v11}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBottomPadding(I)V

    .line 328
    sget v5, Lorg/telegram/messenger/R$string;->ChannelEnablePaidReactionsInfo:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda6;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-static {v5, v8}, Lorg/telegram/messenger/AndroidUtilities;->withLearnMore(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 333
    :cond_3
    invoke-virtual {v4, v11}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBottomPadding(I)V

    .line 336
    :goto_3
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainer:Landroid/widget/FrameLayout;

    .line 338
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainerGradient:Landroid/widget/ImageView;

    .line 339
    sget v5, Lorg/telegram/messenger/R$drawable;->gradient_bottom:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 340
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainerGradient:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 341
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainerGradient:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v9, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 342
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainer:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainerGradient:Landroid/widget/ImageView;

    const/16 v9, 0x77

    invoke-static {v6, v6, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    new-instance v4, Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButton:Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;

    .line 345
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;->setDefaultState()V

    .line 346
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButton:Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;

    new-instance v5, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda7;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->scrollView:Lorg/telegram/ui/Components/SectionsScrollView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 386
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainer:Landroid/widget/FrameLayout;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v16, -0x1

    const/high16 v17, 0x42940000    # 74.0f

    const/16 v18, 0x50

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainer:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButton:Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;

    const/high16 v21, 0x41500000    # 13.0f

    const/high16 v22, 0x41500000    # 13.0f

    const/high16 v17, 0x42400000    # 48.0f

    const/high16 v19, 0x41500000    # 13.0f

    const/high16 v20, 0x41500000    # 13.0f

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 390
    new-instance v4, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$4;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$4;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    .line 402
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 403
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    const/16 v4, 0x50

    invoke-static {v6, v7, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsAll;

    const/4 v6, 0x2

    if-eqz v5, :cond_6

    .line 407
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 408
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->allAvailableReactions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v15

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    .line 409
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisIds:Ljava/util/List;

    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->addReactionToEditText(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;Ljava/util/HashMap;Ljava/util/List;Landroid/text/Editable;Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/graphics/Paint$FontMetricsInt;)V

    add-int/2addr v4, v3

    .line 411
    iget v5, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->maxReactionsCount:I

    if-lt v4, v5, :cond_4

    .line 415
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 416
    iget-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paid:Z

    invoke-direct {v0, v15, v1, v15}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->setCheckedEnableReactionCell(IZZ)V

    goto/16 :goto_7

    .line 417
    :cond_6
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;

    if-eqz v5, :cond_c

    .line 418
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;

    .line 419
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 420
    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v15

    move v7, v5

    :goto_4
    if-ge v7, v4, :cond_b

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v13, v7, 0x1

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 421
    instance-of v7, v8, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v7, :cond_9

    .line 422
    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    .line 423
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-nez v7, :cond_8

    :cond_7
    move v7, v13

    goto :goto_4

    .line 427
    :cond_8
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisIds:Ljava/util/List;

    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->addReactionToEditText(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;Ljava/util/HashMap;Ljava/util/List;Landroid/text/Editable;Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/graphics/Paint$FontMetricsInt;)V

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 429
    :cond_9
    instance-of v7, v8, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v7, :cond_a

    .line 430
    move-object v7, v8

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisIds:Ljava/util/List;

    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->addReactionToEditText(Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;Ljava/util/HashMap;Ljava/util/List;Landroid/text/Editable;Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_5

    .line 433
    :cond_a
    :goto_6
    iget v7, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->maxReactionsCount:I

    if-lt v5, v7, :cond_7

    .line 437
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 438
    iget-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paid:Z

    invoke-direct {v0, v3, v1, v15}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->setCheckedEnableReactionCell(IZZ)V

    goto :goto_7

    .line 439
    :cond_c
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsNone;

    if-eqz v5, :cond_d

    if-eqz v1, :cond_d

    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_media_allowed:Z

    if-eqz v5, :cond_d

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_reactions_available:Z

    if-eqz v1, :cond_d

    .line 440
    iget-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paid:Z

    invoke-direct {v0, v6, v1, v15}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->setCheckedEnableReactionCell(IZZ)V

    goto :goto_7

    .line 441
    :cond_d
    instance-of v1, v4, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsNone;

    if-eqz v1, :cond_10

    .line 442
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 443
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->allAvailableReactions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v15

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    .line 444
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisIds:Ljava/util/List;

    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->addReactionToEditText(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;Ljava/util/HashMap;Ljava/util/List;Landroid/text/Editable;Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/graphics/Paint$FontMetricsInt;)V

    add-int/2addr v4, v3

    .line 446
    iget v5, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->maxReactionsCount:I

    if-lt v4, v5, :cond_e

    .line 450
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 451
    iget-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paid:Z

    invoke-direct {v0, v6, v1, v15}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->setCheckedEnableReactionCell(IZZ)V

    .line 454
    :cond_10
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v4, Lorg/telegram/messenger/R$string;->EnableReactions:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedType:I

    if-ne v5, v6, :cond_12

    iget-boolean v5, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paid:Z

    if-eqz v5, :cond_11

    goto :goto_8

    :cond_11
    move v3, v15

    :cond_12
    :goto_8
    invoke-virtual {v1, v4, v3, v15}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 455
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->addReactionsSpan()V

    .line 457
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_media_allowed:Z

    if-eqz v3, :cond_13

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_reactions_available:Z

    if-eqz v1, :cond_13

    .line 458
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->toggleStarsEnabled()V

    .line 460
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->initialSelectedEmojis:Ljava/util/HashMap;

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 461
    iget-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paid:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->initialPaid:Z

    .line 463
    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v2
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 897
    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogDeleted:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 898
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 899
    iget-wide v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->chatId:J

    neg-long v0, v0

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    .line 900
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-ne p1, p0, :cond_0

    .line 901
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 903
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    :cond_1
    return-void
.end method

.method public onBackPressed(Z)Z
    .locals 2

    .line 752
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->emojiKeyboardVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 753
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->closeKeyboard()Z

    :cond_0
    return v1

    .line 756
    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkChangesBeforeExit(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 759
    :cond_2
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed(Z)Z

    move-result p1

    return p1
.end method

.method public onFragmentCreate()Z
    .locals 6

    .line 119
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 121
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->chatId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(J)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0, v3, v1}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto :goto_0

    :cond_0
    return v2

    .line 129
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v0, :cond_2

    return v2

    .line 133
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->chatId:J

    neg-long v3, v3

    new-instance v5, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda13;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/messenger/ChannelBoostsController;->getBoostsStats(JLcom/google/android/exoplayer2/util/Consumer;)V

    .line 140
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->reactionsDidLoad:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->allAvailableReactions:Ljava/util/List;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->getEnabledReactionsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/16 v4, 0x200

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 143
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 144
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 11

    .line 720
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 721
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkAfterFastDeleteRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 722
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->reactionsCount:I

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->currentReactionsCount:I

    if-eq v0, v1, :cond_0

    .line 723
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->chatId:J

    iget v5, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedType:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->grabReactions(Z)Ljava/util/List;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->reactionsCount:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/MessagesController;->setCustomChatReactions(JILjava/util/List;ILjava/lang/Boolean;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;)V

    .line 725
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 726
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reactionsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v0, 0x1

    .line 745
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->isPaused:Z

    .line 746
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 747
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 731
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 732
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->isPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 733
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->isPaused:Z

    .line 734
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 735
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 736
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->emojiKeyboardVisible:Z

    if-eqz v1, :cond_0

    .line 737
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->removeReactionsSpan(Z)V

    .line 738
    new-instance v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    const-wide/16 v1, 0xfa

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 2

    .line 631
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    if-eqz p1, :cond_0

    .line 632
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 633
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 636
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->initSelectAnimatedEmojiDialog()V

    .line 637
    new-instance p1, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda0;-><init>()V

    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public toggleStarsEnabled()V
    .locals 8

    const-wide/16 v0, -0x1

    .line 912
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 910
    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paidCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 911
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paidCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 912
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisIds:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 913
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v0, :cond_0

    .line 915
    new-instance v1, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->setRemoved(Ljava/lang/Runnable;)V

    .line 931
    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->animateChangesInNextRows(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    .line 932
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setMultiSelected(Ljava/lang/Long;Z)V

    .line 933
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkMaxCustomReactions(Z)V

    .line 934
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->maxReactionsCount:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->setMaxLength(I)V

    .line 935
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedType:I

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paid:Z

    invoke-direct {p0, v0, v1, v5}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->setCheckedEnableReactionCell(IZZ)V

    goto :goto_1

    .line 937
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paidCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 939
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    iget v6, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->maxReactionsCount:I

    add-int/2addr v6, v5

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->setMaxLength(I)V

    .line 940
    new-instance v3, Landroid/text/SpannableString;

    const-string v6, "b"

    invoke-direct {v3, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 941
    new-instance v6, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$11;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v0, v1, v7}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$11;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;JLandroid/graphics/Paint$FontMetricsInt;)V

    .line 962
    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getCacheTypeForEnterView()I

    move-result v0

    iput v0, v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    .line 963
    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->setAdded()V

    .line 964
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisIds:Ljava/util/List;

    invoke-interface {v0, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 965
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/16 v1, 0x21

    invoke-virtual {v3, v6, v4, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 967
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, v4, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 968
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setMultiSelected(Ljava/lang/Long;Z)V

    .line 969
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkMaxCustomReactions(Z)V

    .line 970
    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->animateChangesInNextRows(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 972
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 974
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedType:I

    invoke-direct {p0, v0, v5, v5}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->setCheckedEnableReactionCell(IZZ)V

    .line 976
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/EditTextEffects;->updateAnimatedEmoji(Z)V

    return-void
.end method
