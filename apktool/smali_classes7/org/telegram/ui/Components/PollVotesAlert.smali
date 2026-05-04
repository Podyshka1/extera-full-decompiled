.class public Lorg/telegram/ui/Components/PollVotesAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PollVotesAlert$VotesList;,
        Lorg/telegram/ui/Components/PollVotesAlert$Adapter;,
        Lorg/telegram/ui/Components/PollVotesAlert$Button;,
        Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;,
        Lorg/telegram/ui/Components/PollVotesAlert$UserCell;
    }
.end annotation


# static fields
.field public static final USER_CELL_PROPERTY:Landroid/util/Property;


# instance fields
.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private actionBarAnimation:Landroid/animation/AnimatorSet;

.field private actionBarShadow:Landroid/view/View;

.field private chatActivity:Lorg/telegram/ui/ChatActivity;

.field private gradientWidth:F

.field private listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loadingMore:Ljava/util/HashSet;

.field private loadingResults:Z

.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field private peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field private placeholderGradient:Landroid/graphics/LinearGradient;

.field private placeholderMatrix:Landroid/graphics/Matrix;

.field private placeholderPaint:Landroid/graphics/Paint;

.field private poll:Lorg/telegram/tgnet/TLRPC$Poll;

.field private queries:Ljava/util/ArrayList;

.field private rect:Landroid/graphics/RectF;

.field private scrollOffsetY:I

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

.field private totalTranslation:F

.field private voters:Ljava/util/ArrayList;

.field private votesPercents:Ljava/util/HashMap;


# direct methods
.method public static synthetic $r8$lambda$2hNydy3ezgpZQqVNj3yz4ixFSeE(Lorg/telegram/ui/Components/PollVotesAlert;[Ljava/lang/Integer;ILorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/PollVotesAlert;->lambda$new$1([Ljava/lang/Integer;ILorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ARK5jgciKsOMwFO1HS4TvjGBjxU(Lorg/telegram/ui/Components/PollVotesAlert;Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/PollVotesAlert;->lambda$new$3(Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FQIb_wws-2uU5VAs1x2U4THvRXQ(Lorg/telegram/ui/Components/PollVotesAlert$Button;Lorg/telegram/ui/Components/PollVotesAlert$Button;)I
    .locals 2

    .line 1044
    invoke-static {p0}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->-$$Nest$fgetdecimal(Lorg/telegram/ui/Components/PollVotesAlert$Button;)F

    move-result v0

    invoke-static {p1}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->-$$Nest$fgetdecimal(Lorg/telegram/ui/Components/PollVotesAlert$Button;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1046
    :cond_0
    invoke-static {p0}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->-$$Nest$fgetdecimal(Lorg/telegram/ui/Components/PollVotesAlert$Button;)F

    move-result p0

    invoke-static {p1}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->-$$Nest$fgetdecimal(Lorg/telegram/ui/Components/PollVotesAlert$Button;)F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$G6nqOhmU8HpVDSZZ0b8fh0-j0WQ(Lorg/telegram/ui/Components/PollVotesAlert;Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PollVotesAlert;->lambda$new$2(Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UswOuijxR1K-nid7qzR6OAGBp-M(Lorg/telegram/ui/Components/PollVotesAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PollVotesAlert;->updatePlaceholder()V

    return-void
.end method

.method public static synthetic $r8$lambda$nRi2j-lqdlkg-Yh-svUNKknMNKg(Lorg/telegram/ui/Components/PollVotesAlert;Lorg/telegram/ui/ChatActivity;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PollVotesAlert;->lambda$new$4(Lorg/telegram/ui/ChatActivity;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$q7j4OSpTxAX4wWWba4eBr5LgB8k(Lorg/telegram/ui/Components/PollVotesAlert;[Ljava/lang/Integer;ILorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/PollVotesAlert;->lambda$new$0([Ljava/lang/Integer;ILorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetactionBar(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetactionBarShadow(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarShadow:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchatActivity(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/ChatActivity;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->chatActivity:Lorg/telegram/ui/ChatActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgradientWidth(Lorg/telegram/ui/Components/PollVotesAlert;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->gradientWidth:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/PollVotesAlert$Adapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetloadingResults(Lorg/telegram/ui/Components/PollVotesAlert;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->loadingResults:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmessageObject(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/messenger/MessageObject;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->messageObject:Lorg/telegram/messenger/MessageObject;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplaceholderGradient(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/LinearGradient;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderGradient:Landroid/graphics/LinearGradient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplaceholderMatrix(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/Matrix;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplaceholderPaint(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpoll(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/tgnet/TLRPC$Poll;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetqueries(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrect(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/RectF;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollOffsetY(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->scrollOffsetY:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetshadowDrawable(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitleTextView(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettotalTranslation(Lorg/telegram/ui/Components/PollVotesAlert;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->totalTranslation:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetvoters(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvotesPercents(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->votesPercents:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputactionBarAnimation(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtotalTranslation(Lorg/telegram/ui/Components/PollVotesAlert;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->totalTranslation:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLayout(Lorg/telegram/ui/Components/PollVotesAlert;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PollVotesAlert;->updateLayout(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 266
    new-instance v0, Lorg/telegram/ui/Components/PollVotesAlert$1;

    const-string v1, "placeholderAlpha"

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/PollVotesAlert$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/PollVotesAlert;->USER_CELL_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v0, p2

    .line 533
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v7, 0x1

    invoke-direct {v1, v2, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 97
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v1, Lorg/telegram/ui/Components/PollVotesAlert;->loadingMore:Ljava/util/HashSet;

    .line 98
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lorg/telegram/ui/Components/PollVotesAlert;->votesPercents:Ljava/util/HashMap;

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    .line 109
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v1, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderPaint:Landroid/graphics/Paint;

    .line 114
    iput-boolean v7, v1, Lorg/telegram/ui/Components/PollVotesAlert;->loadingResults:Z

    .line 115
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v1, Lorg/telegram/ui/Components/PollVotesAlert;->rect:Landroid/graphics/RectF;

    .line 534
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 535
    iput-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 536
    iput-object v4, v1, Lorg/telegram/ui/Components/PollVotesAlert;->chatActivity:Lorg/telegram/ui/ChatActivity;

    .line 537
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object v8, v2

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 538
    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iput-object v2, v1, Lorg/telegram/ui/Components/PollVotesAlert;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    .line 539
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    .line 540
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 542
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 543
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 544
    new-array v2, v10, [Ljava/lang/Integer;

    const/4 v11, 0x0

    move v3, v11

    :goto_0
    if-ge v3, v10, :cond_5

    .line 547
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;

    .line 548
    iget v0, v6, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    if-nez v0, :cond_0

    move/from16 v16, v7

    goto/16 :goto_5

    .line 551
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;-><init>()V

    .line 552
    iget v12, v6, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    const/16 v14, 0xf

    if-gt v12, v14, :cond_1

    goto :goto_1

    :cond_1
    const/16 v12, 0xa

    :goto_1
    move v15, v11

    :goto_2
    if-ge v15, v12, :cond_2

    .line 554
    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->votes:Ljava/util/ArrayList;

    move/from16 v16, v7

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messagePeerVoteInputOption;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messagePeerVoteInputOption;-><init>()V

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move/from16 v7, v16

    goto :goto_2

    :cond_2
    move/from16 v16, v7

    .line 556
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    if-ge v12, v7, :cond_3

    const-string v12, "empty"

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    iput-object v12, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->next_offset:Ljava/lang/String;

    .line 557
    iput v7, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->count:I

    .line 558
    new-instance v7, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->option:[B

    invoke-direct {v7, v0, v12}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;-><init>(Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;[B)V

    .line 559
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;-><init>()V

    .line 562
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 563
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->id:I

    .line 564
    iget v0, v6, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    if-gt v0, v14, :cond_4

    move v13, v14

    goto :goto_4

    :cond_4
    const/16 v13, 0xa

    :goto_4
    iput v13, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->limit:I

    .line 565
    iget v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->flags:I

    .line 566
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->option:[B

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->option:[B

    .line 568
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v12

    new-instance v0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda1;

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;[Ljava/lang/Integer;ILorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;)V

    invoke-virtual {v12, v7, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    .line 633
    iget-object v6, v1, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v3, v3, 0x1

    move/from16 v7, v16

    goto/16 :goto_0

    :cond_5
    move/from16 v16, v7

    .line 635
    invoke-direct {v1}, Lorg/telegram/ui/Components/PollVotesAlert;->updateButtons()V

    .line 637
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Components/PollVotesAlert$2;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/PollVotesAlert$2;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 661
    invoke-direct {v1}, Lorg/telegram/ui/Components/PollVotesAlert;->updatePlaceholder()V

    .line 663
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 664
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 666
    new-instance v0, Lorg/telegram/ui/Components/PollVotesAlert$3;

    invoke-direct {v0, v1, v9}, Lorg/telegram/ui/Components/PollVotesAlert$3;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 789
    invoke-virtual {v0, v11}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 790
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {v0, v2, v11, v2, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 792
    new-instance v0, Lorg/telegram/ui/Components/PollVotesAlert$4;

    invoke-direct {v0, v1, v9}, Lorg/telegram/ui/Components/PollVotesAlert$4;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 822
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v5, 0x96

    .line 823
    invoke-virtual {v0, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    const-wide/16 v5, 0x15e

    .line 824
    invoke-virtual {v0, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    const-wide/16 v5, 0x0

    .line 825
    invoke-virtual {v0, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 826
    invoke-virtual {v0, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    .line 827
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 828
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const v5, 0x3f8ccccd    # 1.1f

    invoke-direct {v2, v5}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 829
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setTranslationInterpolator(Landroid/view/animation/Interpolator;)V

    .line 830
    iget-object v2, v1, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 831
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 832
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/PollVotesAlert$5;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    move/from16 v6, v16

    invoke-direct {v2, v1, v5, v6, v11}, Lorg/telegram/ui/Components/PollVotesAlert$5;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 838
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 839
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 840
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setSectionsType(I)V

    .line 841
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v1, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v5, 0x33

    const/4 v6, -0x1

    invoke-static {v6, v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-direct {v2, v1, v9}, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 843
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 844
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, v4}, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Lorg/telegram/ui/ChatActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 913
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/PollVotesAlert$6;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/PollVotesAlert$6;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 938
    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    const/high16 v2, 0x41900000    # 18.0f

    const/4 v4, 0x1

    .line 939
    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 940
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 941
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    const/high16 v2, 0x41a80000    # 21.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v7, 0x41600000    # 14.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v4, v5, v7, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 942
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 943
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    new-instance v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v6, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 944
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v0, :cond_7

    .line 946
    iget-object v4, v1, Lorg/telegram/ui/Components/PollVotesAlert;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_6

    iget-boolean v5, v4, Lorg/telegram/messenger/MessageObject;->translated:Z

    if-eqz v5, :cond_6

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v4, :cond_6

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    if-eqz v4, :cond_6

    iget-object v4, v4, Lorg/telegram/messenger/TranslateController$PollText;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v4, :cond_6

    move-object v0, v4

    .line 950
    :cond_6
    iget-object v4, v1, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-static {v4}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 951
    new-instance v4, Landroid/text/SpannableStringBuilder;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 952
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {v5, v7, v4}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/text/Spannable;)V

    .line 953
    iget-object v5, v1, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    invoke-static {v4, v5, v11}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v4

    .line 954
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    iget-object v5, v1, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;)Landroid/text/Spannable;

    .line 955
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 958
    :cond_7
    new-instance v0, Lorg/telegram/ui/Components/PollVotesAlert$7;

    invoke-direct {v0, v1, v9}, Lorg/telegram/ui/Components/PollVotesAlert$7;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 965
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 966
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 967
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 968
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 969
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 970
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    .line 971
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 972
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 973
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->PollResults:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 974
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v0, :cond_8

    .line 975
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PollResults;->total_voters:I

    new-array v4, v11, [Ljava/lang/Object;

    const-string v5, "Answer"

    invoke-static {v5, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 977
    :cond_8
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PollResults;->total_voters:I

    new-array v4, v11, [Ljava/lang/Object;

    const-string v5, "Vote"

    invoke-static {v5, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 979
    :goto_6
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v1, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v4, -0x40000000    # -2.0f

    invoke-static {v6, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 980
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/Components/PollVotesAlert$8;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/PollVotesAlert$8;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 989
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarShadow:Landroid/view/View;

    .line 990
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 991
    iget-object v0, v1, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarShadow:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 992
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v1, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarShadow:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v6, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 84
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 84
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 84
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 84
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 84
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 84
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 84
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 84
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 84
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 84
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 84
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/PollVotesAlert;I)I
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PollVotesAlert;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isFullscreen:Z

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 84
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 84
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 84
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 84
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 84
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 84
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method private synthetic lambda$new$0([Ljava/lang/Integer;ILorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;)V
    .locals 6

    .line 569
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    aget-object p1, p1, p2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz p3, :cond_e

    .line 571
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;

    .line 572
    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->users:Ljava/util/ArrayList;

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 573
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 574
    new-instance p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    iget-object p2, p6, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->option:[B

    invoke-direct {p1, p3, p2}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;-><init>(Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;[B)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 578
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p1

    move p2, p4

    move p3, p2

    :goto_0
    const/4 p6, 0x1

    if-ge p2, p1, :cond_5

    .line 579
    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    .line 580
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, p4

    :goto_1
    if-ge v2, v1, :cond_4

    .line 581
    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    .line 582
    iget-object v4, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    iget-object v5, v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 583
    iget-object v1, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->next_offset:Ljava/lang/String;

    iput-object v1, v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->next_offset:Ljava/lang/String;

    .line 584
    iget v1, v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    iget v2, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    if-ne v1, v2, :cond_1

    iget-object v1, v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    :cond_1
    move p3, p6

    .line 587
    :cond_2
    iget p6, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    iput p6, v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    .line 588
    iget-object p6, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->users:Ljava/util/ArrayList;

    iput-object p6, v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->users:Ljava/util/ArrayList;

    .line 589
    iget-object p6, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    iput-object p6, v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 594
    :cond_5
    iput-boolean p4, p0, Lorg/telegram/ui/Components/PollVotesAlert;->loadingResults:Z

    .line 595
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_d

    .line 596
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    if-nez p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->startAnimationRunnable:Ljava/lang/Runnable;

    if-nez p2, :cond_b

    if-eqz p3, :cond_6

    goto :goto_5

    .line 602
    :cond_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 603
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move p3, p4

    :goto_3
    if-ge p3, p1, :cond_9

    .line 605
    iget-object p5, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p5, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 606
    instance-of v0, p5, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;

    if-nez v0, :cond_7

    goto :goto_4

    .line 609
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p5}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_4

    .line 613
    :cond_8
    check-cast p5, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;

    .line 614
    invoke-static {p5, p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->-$$Nest$fputanimators(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;Ljava/util/ArrayList;)V

    .line 615
    invoke-virtual {p5, p6}, Landroid/view/View;->setEnabled(Z)V

    .line 616
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    .line 617
    invoke-static {p5, v0}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->-$$Nest$fputanimators(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;Ljava/util/ArrayList;)V

    :goto_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 619
    :cond_9
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 620
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 621
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 p2, 0xb4

    .line 622
    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 623
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 625
    :cond_a
    iput-boolean p4, p0, Lorg/telegram/ui/Components/PollVotesAlert;->loadingResults:Z

    return-void

    :cond_b
    :goto_5
    if-eqz p3, :cond_c

    .line 598
    invoke-direct {p0}, Lorg/telegram/ui/Components/PollVotesAlert;->updateButtons()V

    .line 600
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    :cond_d
    return-void

    .line 630
    :cond_e
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1([Ljava/lang/Integer;ILorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    .line 568
    new-instance v0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda4;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;[Ljava/lang/Integer;ILorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;)V
    .locals 2

    .line 877
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 880
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->loadingMore:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    .line 882
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;

    .line 883
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 884
    iget-object p3, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 885
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->next_offset:Ljava/lang/String;

    iput-object p2, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->next_offset:Ljava/lang/String;

    const/4 p1, 0x0

    .line 886
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/PollVotesAlert;->animateSectionUpdates(Landroid/view/View;)V

    .line 887
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->update(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 876
    new-instance p4, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda6;

    invoke-direct {p4, p0, p1, p3, p2}, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$4(Lorg/telegram/ui/ChatActivity;Landroid/view/View;I)V
    .locals 5

    if-eqz p1, :cond_b

    .line 845
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 848
    :cond_0
    instance-of v0, p2, Lorg/telegram/ui/Cells/TextCell;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 849
    iget-object p2, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result p2

    sub-int/2addr p2, v2

    .line 850
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result p3

    sub-int/2addr p3, v2

    if-lez p3, :cond_b

    if-gez p2, :cond_1

    goto/16 :goto_2

    .line 854
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    .line 855
    invoke-virtual {p2}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->getCount()I

    move-result v0

    if-ne p3, v0, :cond_b

    iget-object p3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->loadingMore:Ljava/util/HashSet;

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto/16 :goto_2

    .line 858
    :cond_2
    iget-boolean p3, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsed:Z

    const/16 v0, 0x32

    if-eqz p3, :cond_4

    iget p3, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsedCount:I

    iget-object v3, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p3, v3, :cond_4

    .line 859
    iget p1, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsedCount:I

    add-int/2addr p1, v0

    iget-object p3, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsedCount:I

    .line 860
    iget-object p3, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p1, p3, :cond_3

    .line 861
    iput-boolean v1, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsed:Z

    :cond_3
    const/4 p1, 0x0

    .line 863
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/PollVotesAlert;->animateSectionUpdates(Landroid/view/View;)V

    .line 864
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->update(Z)V

    return-void

    .line 867
    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->loadingMore:Ljava/util/HashSet;

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 868
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;-><init>()V

    .line 869
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 870
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iput v1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->id:I

    .line 871
    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->limit:I

    .line 872
    iget v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->flags:I

    .line 873
    iget-object v1, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->option:[B

    or-int/lit8 v0, v0, 0x3

    .line 874
    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->flags:I

    .line 875
    iget-object v0, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->next_offset:Ljava/lang/String;

    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->offset:Ljava/lang/String;

    .line 876
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/ui/ChatActivity;)V

    invoke-virtual {v0, p3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 890
    :cond_5
    instance-of p3, p2, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;

    if-eqz p3, :cond_b

    .line 891
    check-cast p2, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;

    .line 892
    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->-$$Nest$fgetcurrentUser(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    if-nez p3, :cond_6

    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p3

    if-nez p3, :cond_6

    goto :goto_2

    .line 895
    :cond_6
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 896
    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->-$$Nest$fgetcurrentUser(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 897
    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->-$$Nest$fgetcurrentUser(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string v0, "user_id"

    invoke-virtual {p3, v0, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 899
    :cond_7
    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-string v0, "chat_id"

    invoke-virtual {p3, v0, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 901
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 902
    new-instance v0, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v0, p3}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    .line 903
    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->-$$Nest$fgetcurrentUser(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 904
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 905
    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->-$$Nest$fgetcurrentUser(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long p2, v3, p2

    if-nez p2, :cond_8

    move v1, v2

    :cond_8
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(I)V

    goto :goto_1

    .line 907
    :cond_9
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 908
    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long p2, v3, p2

    if-nez p2, :cond_a

    move v1, v2

    :cond_a
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(I)V

    .line 910
    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_b
    :goto_2
    return-void
.end method

.method public static showForPoll(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 519
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 522
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/PollVotesAlert;-><init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    .line 523
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_1
    :goto_0
    return-void
.end method

.method private updateButtons()V
    .locals 17

    move-object/from16 v0, p0

    .line 1007
    iget-object v1, v0, Lorg/telegram/ui/Components/PollVotesAlert;->votesPercents:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1011
    iget-object v1, v0, Lorg/telegram/ui/Components/PollVotesAlert;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 1012
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1015
    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v6, v3, :cond_4

    .line 1016
    iget-object v11, v0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    .line 1017
    new-instance v12, Lorg/telegram/ui/Components/PollVotesAlert$Button;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lorg/telegram/ui/Components/PollVotesAlert$Button;-><init>(Lorg/telegram/ui/Components/PollVotesAlert-IA;)V

    .line 1018
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    iget-object v13, v0, Lorg/telegram/ui/Components/PollVotesAlert;->votesPercents:Ljava/util/HashMap;

    invoke-virtual {v13, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    iget-object v13, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    .line 1021
    iget-object v13, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_3

    .line 1022
    iget-object v15, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;

    .line 1023
    iget-object v5, v11, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    const/16 v16, 0x1

    iget-object v10, v15, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->option:[B

    invoke-static {v5, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1024
    iget v5, v15, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    invoke-static {v12, v5}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->-$$Nest$fputvotesCount(Lorg/telegram/ui/Components/PollVotesAlert$Button;I)V

    .line 1025
    iget v5, v15, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    int-to-float v5, v5

    iget-object v10, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$PollResults;->total_voters:I

    int-to-float v10, v10

    div-float/2addr v5, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v5, v10

    invoke-static {v12, v5}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->-$$Nest$fputdecimal(Lorg/telegram/ui/Components/PollVotesAlert$Button;F)V

    .line 1026
    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->-$$Nest$fgetdecimal(Lorg/telegram/ui/Components/PollVotesAlert$Button;)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v12, v5}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->-$$Nest$fputpercent(Lorg/telegram/ui/Components/PollVotesAlert$Button;I)V

    .line 1027
    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->-$$Nest$fgetdecimal(Lorg/telegram/ui/Components/PollVotesAlert$Button;)F

    move-result v5

    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->-$$Nest$fgetpercent(Lorg/telegram/ui/Components/PollVotesAlert$Button;)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v5, v10

    invoke-static {v12, v5}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->-$$Nest$fputdecimal(Lorg/telegram/ui/Components/PollVotesAlert$Button;F)V

    if-nez v8, :cond_0

    .line 1030
    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->-$$Nest$fgetpercent(Lorg/telegram/ui/Components/PollVotesAlert$Button;)I

    move-result v8

    goto :goto_2

    .line 1031
    :cond_0
    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->-$$Nest$fgetpercent(Lorg/telegram/ui/Components/PollVotesAlert$Button;)I

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->-$$Nest$fgetpercent(Lorg/telegram/ui/Components/PollVotesAlert$Button;)I

    move-result v5

    if-eq v8, v5, :cond_1

    move/from16 v7, v16

    .line 1034
    :cond_1
    :goto_2
    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->-$$Nest$fgetpercent(Lorg/telegram/ui/Components/PollVotesAlert$Button;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 1035
    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->-$$Nest$fgetpercent(Lorg/telegram/ui/Components/PollVotesAlert$Button;)I

    move-result v5

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_3

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_4
    const/16 v16, 0x1

    if-eqz v7, :cond_5

    if-eqz v4, :cond_5

    .line 1043
    new-instance v1, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1051
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v1, :cond_5

    .line 1052
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/PollVotesAlert$Button;

    invoke-static {v3}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->-$$Nest$fgetpercent(Lorg/telegram/ui/Components/PollVotesAlert$Button;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->-$$Nest$fputpercent(Lorg/telegram/ui/Components/PollVotesAlert$Button;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method private updateLayout(Z)V
    .locals 10

    .line 1072
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-gtz p1, :cond_0

    .line 1073
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->scrollOffsetY:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 1074
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    .line 1077
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1078
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 1079
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    const/high16 v2, 0x40e00000    # 7.0f

    .line 1080
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 1081
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-lt p1, v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    const/high16 v1, 0x41400000    # 12.0f

    .line 1084
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x1

    if-gt p1, v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 1085
    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    :cond_3
    if-nez v1, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1086
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    :cond_5
    move-object v5, v4

    :goto_2
    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1087
    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_6

    .line 1088
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1089
    iput-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    .line 1091
    :cond_6
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xb4

    .line 1092
    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1093
    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v1, :cond_7

    move v8, v7

    goto :goto_3

    :cond_7
    move v8, v6

    .line 1094
    :goto_3
    new-array v9, v2, [F

    aput v8, v9, v0

    invoke-static {v4, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v8, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarShadow:Landroid/view/View;

    if-eqz v1, :cond_8

    move v6, v7

    .line 1095
    :cond_8
    new-array v1, v2, [F

    aput v6, v1, v0

    invoke-static {v8, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v4, v5, v0

    aput-object v1, v5, v2

    .line 1093
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1096
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/PollVotesAlert$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PollVotesAlert$9;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1107
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1109
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1110
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 1111
    iget v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->scrollOffsetY:I

    if-eq v1, p1, :cond_a

    .line 1112
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->scrollOffsetY:I

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 1113
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_a
    return-void
.end method

.method private updatePlaceholder()V
    .locals 11

    .line 1118
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    return-void

    .line 1121
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 1122
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 1123
    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v0

    .line 1124
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1125
    new-instance v3, Landroid/graphics/LinearGradient;

    const/high16 v2, 0x43fa0000    # 500.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v6, v2

    iput v6, p0, Lorg/telegram/ui/Components/PollVotesAlert;->gradientWidth:F

    filled-new-array {v1, v0, v1}, [I

    move-result-object v8

    const/4 v0, 0x3

    new-array v9, v0, [F

    fill-array-data v9, :array_0

    sget-object v10, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderGradient:Landroid/graphics/LinearGradient;

    .line 1126
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1127
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderMatrix:Landroid/graphics/Matrix;

    .line 1128
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e3851ec    # 0.18f
        0x3eb851ec    # 0.36f
    .end array-data
.end method


# virtual methods
.method public animateSectionUpdates(Landroid/view/View;)V
    .locals 11

    const/4 v0, -0x2

    move v1, v0

    .line 1378
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_9

    if-ne v1, v0, :cond_0

    move-object v2, p1

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1379
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getPinnedHeader()Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1380
    :goto_1
    instance-of v3, v2, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    if-eqz v3, :cond_8

    sget v3, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    if-eqz v3, :cond_8

    .line 1381
    move-object v4, v2

    check-cast v4, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    .line 1382
    sget v3, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    .line 1383
    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    if-ge v6, v3, :cond_8

    .line 1384
    iget-object v7, p0, Lorg/telegram/ui/Components/PollVotesAlert;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$PollAnswer;

    .line 1385
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$PollAnswer;->option:[B

    iget-object v9, v2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1386
    iget-object v8, p0, Lorg/telegram/ui/Components/PollVotesAlert;->votesPercents:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/PollVotesAlert$Button;

    if-nez v8, :cond_2

    goto :goto_8

    .line 1390
    :cond_2
    iget-object v3, v7, Lorg/telegram/tgnet/TLRPC$PollAnswer;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 1391
    iget-object v6, p0, Lorg/telegram/ui/Components/PollVotesAlert;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_4

    iget-boolean v8, v6, Lorg/telegram/messenger/MessageObject;->translated:Z

    if-eqz v8, :cond_4

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v6, :cond_4

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    if-eqz v6, :cond_4

    .line 1392
    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/Components/PollVotesAlert;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    iget-object v6, v6, Lorg/telegram/messenger/TranslateController$PollText;->answers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 1393
    iget-object v6, p0, Lorg/telegram/ui/Components/PollVotesAlert;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    iget-object v6, v6, Lorg/telegram/messenger/TranslateController$PollText;->answers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$PollAnswer;

    .line 1394
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$PollAnswer;->option:[B

    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$PollAnswer;->option:[B

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1395
    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$PollAnswer;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-nez v3, :cond_5

    .line 1401
    const-string v5, ""

    goto :goto_5

    :cond_5
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    :goto_5
    if-nez v3, :cond_6

    const/4 v3, 0x0

    :goto_6
    move-object v6, v3

    goto :goto_7

    :cond_6
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    goto :goto_6

    :goto_7
    iget-object v3, v2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/PollVotesAlert;->calcPercent([B)I

    move-result v7

    iget v8, v2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->getCollapsed()I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->setText(Ljava/lang/CharSequence;Ljava/util/ArrayList;IIIZ)V

    .line 1402
    sget v3, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {v4, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_9

    :cond_7
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_8
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1408
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->relayoutPinnedHeader()V

    .line 1409
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public calcPercent([B)I
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move v1, v0

    move v2, v1

    move v3, v2

    .line 1362
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1363
    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    if-eqz v4, :cond_1

    .line 1365
    iget v5, v4, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    add-int/2addr v2, v5

    .line 1366
    iget-object v5, v4, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    invoke-static {v5, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1367
    iget v4, v4, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-gtz v2, :cond_3

    return v0

    :cond_3
    int-to-float p1, v3

    int-to-float v0, v2

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    .line 1374
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dismissInternal()V
    .locals 5

    .line 1064
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1065
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1067
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 34

    move-object/from16 v0, p0

    .line 1414
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1416
    new-instance v9, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda0;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;)V

    .line 1418
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/16 v16, 0x0

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1419
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lorg/telegram/ui/Components/PollVotesAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/graphics/drawable/Drawable;

    const/16 v19, 0x0

    aput-object v2, v4, v19

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    const/4 v13, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v4

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1420
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v21, v2

    move/from16 v27, v18

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1421
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/16 v16, 0x0

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    const/4 v13, 0x0

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1422
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    move-object/from16 v21, v2

    move/from16 v27, v17

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1423
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1424
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBTITLECOLOR:I

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    move-object/from16 v21, v2

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1425
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1427
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1429
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarShadow:Landroid/view/View;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    move-object/from16 v21, v2

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1431
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v3, [Ljava/lang/Class;

    const-class v11, Landroid/view/View;

    aput-object v11, v5, v19

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v6, v3

    move-object v3, v4

    const/4 v4, 0x0

    move v10, v6

    const/4 v6, 0x0

    move v12, v10

    move/from16 v10, v18

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1432
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    aput-object v11, v5, v19

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1434
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    aput-object v4, v3, v19

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v24

    sget v33, Lorg/telegram/ui/ActionBar/Theme;->key_graySectionText:I

    const/16 v27, 0x0

    move-object/from16 v21, v2

    move-object/from16 v23, v3

    move/from16 v28, v33

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1435
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v4, v3, v19

    const-string v6, "middleTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v29

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v30, 0x0

    move-object/from16 v26, v2

    move-object/from16 v28, v3

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1436
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v4, v3, v19

    const-string v6, "righTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v29

    move-object/from16 v26, v2

    move-object/from16 v28, v3

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1437
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    or-int v22, v3, v6

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v4, v3, v19

    const/16 v26, 0x0

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v21, v2

    move-object/from16 v23, v3

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1439
    new-instance v23, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;

    aput-object v4, v3, v19

    const-string v4, "nameTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v27

    const/16 v29, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    move-object/from16 v24, v2

    move-object/from16 v26, v3

    move/from16 v31, v17

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v23

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1441
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v11, v3, v19

    sget-object v24, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/16 v26, 0x0

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/16 v22, 0x0

    const/16 v25, 0x0

    move-object/from16 v21, v2

    move-object/from16 v23, v3

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1443
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextCell;

    aput-object v4, v3, v19

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v24

    const/16 v27, 0x0

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    move-object/from16 v21, v2

    move-object/from16 v23, v3

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1444
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v4, v3, v19

    const-string v4, "imageView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v24

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    move-object/from16 v21, v2

    move-object/from16 v23, v3

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
