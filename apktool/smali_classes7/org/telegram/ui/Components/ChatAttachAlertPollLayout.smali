.class public Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;
.super Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;,
        Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$TouchHelperCallback;,
        Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;,
        Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$EmptyView;
    }
.end annotation


# instance fields
.field private addAnswerRow:I

.field private allowAdding:Z

.field private allowAddingRow:I

.field private allowMarking:Z

.field private allowMarkingRow:I

.field private allowNesterScroll:Z

.field private anonymousPoll:Z

.field private anonymousRow:I

.field private answerHeaderRow:I

.field private answerSectionRow:I

.field private answerStartRow:I

.field private answers:[Ljava/lang/CharSequence;

.field private answersChecks:[Z

.field private answersCount:I

.field private currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

.field private delegate:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;

.field private destroyed:Z

.field private doneItemEnabled:Z

.field private emojiPadding:I

.field public emojiView:Lorg/telegram/ui/Components/EmojiView;

.field public emojiViewVisible:Z

.field public emojiViewWasVisible:Z

.field private emptyRow:I

.field private hintShowed:Z

.field private hintView:Lorg/telegram/ui/Components/HintView;

.field private ignoreLayout:Z

.field private isAnimatePopupClosing:Z

.field public isEmojiSearchOpened:Z

.field private isPremium:Z

.field private itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field private keyboardHeight:I

.field private keyboardHeightLand:I

.field private keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

.field private keyboardVisible:Z

.field private lastSizeChangeValue1:I

.field private lastSizeChangeValue2:Z

.field private layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final maxAnswersCount:I

.field private multipleChoise:Z

.field private multipleRow:I

.field private final openKeyboardRunnable:Ljava/lang/Runnable;

.field private paddingRow:I

.field private questionHeaderRow:I

.field private questionRow:I

.field private questionSectionRow:I

.field private questionString:Ljava/lang/CharSequence;

.field private quizOnly:I

.field private quizPoll:Z

.field private quizRow:I

.field private requestFieldFocusAtPosition:I

.field private rowCount:I

.field private settingsHeaderRow:I

.field private settingsSectionRow:I

.field private solutionInfoRow:I

.field private solutionRow:I

.field private solutionString:Ljava/lang/CharSequence;

.field private suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

.field private final todo:Z

.field private topPadding:I

.field private waitingForKeyboardOpen:Z

.field public wasEmojiSearchOpened:Z


# direct methods
.method public static synthetic $r8$lambda$4hTtZhG6UC9kGXvbPgv__J1_-5I(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->lambda$showEmojiPopup$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CpD1htGhBcPp1wk8HGtVQfUIcKk(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->lambda$onMenuItemClick$4(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HiyrnN-ZKKFROFRLN19hl6SGXzQ(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;Ljava/lang/Long;ZII)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->lambda$onMenuItemClick$1(Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;Ljava/lang/Long;ZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$MdT3qLeaZzZdtGQwwNfaPtKMvFQ(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->lambda$animateEmojiViewTranslationY$8(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NrVbdW9ZDSvz8E3uc9MyX9Ibjic(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->lambda$checkDiscard$5(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Oy74hnarlKSHTd43tUuKKiJyehc(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;Ljava/lang/Long;ZII)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->lambda$onMenuItemClick$3(Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;Ljava/lang/Long;ZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$cjSPQ6LDw6mOxpJq5ZJMgR8kt9o(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->lambda$hideEmojiPopup$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r5Iy-rSPJPuSXI7MU9ur1TFrtwQ(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->lambda$new$0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$w_JA_03YrW4QE37BLXrfH5Zmfjg(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->lambda$onMenuItemClick$2(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;Ljava/lang/Long;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetaddAnswerRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->addAnswerRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetallowAdding(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowAdding:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetallowAddingRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowAddingRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetallowMarking(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowMarking:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetallowMarkingRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowMarkingRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanonymousPoll(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->anonymousPoll:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanonymousRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->anonymousRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanswerHeaderRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanswerSectionRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanswerStartRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerStartRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanswers(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/CharSequence;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanswersChecks(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Z
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersChecks:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanswersCount(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentCell(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Cells/PollEditTextCell;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdestroyed(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->destroyed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetemptyRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emptyRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethintView(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/HintView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hintView:Lorg/telegram/ui/Components/HintView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisPremium(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isPremium:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetitemAnimator(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Landroidx/recyclerview/widget/DefaultItemAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetkeyboardVisible(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlayoutManager(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/FillLastLinearLayoutManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmaxAnswersCount(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->maxAnswersCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmultipleChoise(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->multipleChoise:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmultipleRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->multipleRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetopenKeyboardRunnable(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->openKeyboardRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpaddingRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->paddingRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetquestionHeaderRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetquestionRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetquestionSectionRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetquestionString(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionString:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetquizOnly(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizOnly:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetquizPoll(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetquizRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrequestFieldFocusAtPosition(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->requestFieldFocusAtPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrowCount(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsettingsHeaderRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->settingsHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsettingsSectionRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->settingsSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsolutionInfoRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsolutionRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsolutionString(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionString:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsuggestEmojiPanel(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/SuggestEmojiView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettodo(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->todo:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettopPadding(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->topPadding:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwaitingForKeyboardOpen(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->waitingForKeyboardOpen:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputanswersCount(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentCell(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/ui/Cells/PollEditTextCell;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisAnimatePopupClosing(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isAnimatePopupClosing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputquestionString(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionString:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrequestFieldFocusAtPosition(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->requestFieldFocusAtPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsolutionString(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionString:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddNewField(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->addNewField()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckDoneButton(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->checkDoneButton()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideEmojiPopup(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hideEmojiPopup(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCellFocusChanges(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/ui/Cells/PollEditTextCell;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->onCellFocusChanges(Lorg/telegram/ui/Cells/PollEditTextCell;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monEmojiClicked(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/ui/Cells/PollEditTextCell;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->onEmojiClicked(Lorg/telegram/ui/Cells/PollEditTextCell;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTextLeft(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->setTextLeft(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRows(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->updateRows()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 15

    move-object/from16 v2, p2

    move-object/from16 v0, p1

    move-object/from16 v7, p4

    .line 218
    invoke-direct {p0, v0, v2, v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v8, 0x1

    .line 91
    iput v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersCount:I

    .line 94
    iput-boolean v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->anonymousPoll:Z

    .line 99
    iput-boolean v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowAdding:Z

    .line 100
    iput-boolean v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowMarking:Z

    const/4 v9, -0x1

    .line 108
    iput v9, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->requestFieldFocusAtPosition:I

    .line 202
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->openKeyboardRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 1331
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isEmojiSearchOpened:Z

    .line 1332
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->wasEmojiSearchOpened:Z

    move/from16 v1, p3

    .line 220
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->todo:Z

    .line 221
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getAnswersMaxCount()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->maxAnswersCount:I

    .line 222
    new-array v3, v1, [Ljava/lang/CharSequence;

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    .line 223
    new-array v1, v1, [Z

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersChecks:[Z

    .line 225
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->updateRows()V

    .line 226
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isPremium:Z

    .line 232
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    .line 233
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    .line 235
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$2;

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 250
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    .line 251
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->iBlur3CaptureView:Landroid/view/View;

    .line 252
    iput-boolean v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->occupyNavigationBar:Z

    .line 253
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 261
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 262
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 263
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 264
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    const-wide/16 v3, 0x15e

    invoke-virtual {v1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 265
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 266
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setSections(Z)V

    .line 268
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$4;

    const/high16 v1, 0x42820000    # 65.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/content/Context;IZILandroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-virtual {v10, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->setSkipFirstItem()V

    .line 307
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$TouchHelperCallback;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$TouchHelperCallback;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    invoke-direct {v0, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 308
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v6, 0x33

    invoke-static {v9, v9, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 408
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$5;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 455
    new-instance v0, Lorg/telegram/ui/Components/HintView;

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hintView:Lorg/telegram/ui/Components/HintView;

    .line 456
    sget v4, Lorg/telegram/messenger/R$string;->PollTapToSelect:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hintView:Lorg/telegram/ui/Components/HintView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 458
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hintView:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hintView:Lorg/telegram/ui/Components/HintView;

    const/high16 v13, 0x41980000    # 19.0f

    const/4 v14, 0x0

    const/4 v8, -0x2

    const/high16 v9, -0x40000000    # -2.0f

    const/16 v10, 0x33

    const/high16 v11, 0x41980000    # 19.0f

    const/4 v12, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isPremium:Z

    if-eqz v0, :cond_0

    .line 462
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 463
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$6;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/content/Context;ILorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    .line 469
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->forbidCopy()V

    .line 470
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->forbidSetAsStatus()V

    .line 471
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SuggestEmojiView;->setHorizontalPadding(I)V

    .line 472
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    const/4 v2, -0x2

    const/16 v3, 0xa0

    invoke-static {v2, v3, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;-><init>(Landroid/view/View;Lorg/telegram/messenger/Utilities$Callback;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    .line 475
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->checkDoneButton()V

    return-void
.end method

.method private addNewField()V
    .locals 3

    .line 1010
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->resetSuggestEmojiPanel()V

    .line 1011
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1012
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersChecks:[Z

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersCount:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 1013
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersCount:I

    .line 1014
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-ne v1, v0, :cond_0

    .line 1015
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->addAnswerRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 1017
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->addAnswerRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 1018
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->updateRows()V

    .line 1019
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerStartRow:I

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->requestFieldFocusAtPosition:I

    .line 1020
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerSectionRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 1021
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emptyRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private animateEmojiViewTranslationY(FF)V
    .locals 2

    const/4 v0, 0x2

    .line 1446
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1447
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;FF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1451
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$10;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$10;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;F)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p1, 0xfa

    .line 1457
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1458
    sget-object p1, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1459
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private checkDiscard()Z
    .locals 4

    .line 946
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionString:Ljava/lang/CharSequence;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 948
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersCount:I

    if-ge v1, v2, :cond_1

    .line 949
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_4

    .line 956
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 957
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->todo:Z

    if-eqz v2, :cond_2

    sget v2, Lorg/telegram/messenger/R$string;->CancelTodoAlertTitle:I

    goto :goto_2

    :cond_2
    sget v2, Lorg/telegram/messenger/R$string;->CancelPollAlertTitle:I

    :goto_2
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 958
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->todo:Z

    if-eqz v2, :cond_3

    sget v2, Lorg/telegram/messenger/R$string;->CancelTodoAlertText:I

    goto :goto_3

    :cond_3
    sget v2, Lorg/telegram/messenger/R$string;->CancelPollAlertText:I

    :goto_3
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 959
    sget v2, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 960
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 961
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_4
    return v0
.end method

.method private checkDoneButton()V
    .locals 10

    .line 792
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    move v2, v0

    .line 793
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersChecks:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 794
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersChecks:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 800
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionString:Ljava/lang/CharSequence;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v3, 0xc8

    const/4 v4, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionString:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v3, :cond_4

    :cond_3
    :goto_1
    move v0, v1

    goto :goto_2

    .line 802
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionString:Ljava/lang/CharSequence;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionString:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v5, 0xff

    if-le v0, v5, :cond_5

    goto :goto_1

    :cond_5
    move v0, v4

    :goto_2
    move v5, v1

    move v6, v5

    move v7, v6

    .line 806
    :goto_3
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    array-length v9, v8

    if-ge v5, v9, :cond_9

    .line 807
    aget-object v8, v8, v5

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 809
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    aget-object v7, v7, v5

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    iget-boolean v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->todo:Z

    if-eqz v8, :cond_6

    move v8, v3

    goto :goto_4

    :cond_6
    const/16 v8, 0x64

    :goto_4
    if-le v7, v8, :cond_7

    move v6, v1

    move v7, v4

    goto :goto_5

    :cond_7
    add-int/lit8 v6, v6, 0x1

    move v7, v4

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 816
    :cond_9
    :goto_5
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->todo:Z

    if-eqz v3, :cond_a

    move v3, v4

    goto :goto_6

    :cond_a
    const/4 v3, 0x2

    :goto_6
    if-lt v6, v3, :cond_b

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    if-eqz v3, :cond_c

    if-ge v2, v4, :cond_c

    :cond_b
    move v0, v1

    .line 819
    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionString:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionString:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz v7, :cond_d

    goto :goto_7

    .line 822
    :cond_d
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowNesterScroll:Z

    goto :goto_8

    .line 820
    :cond_e
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowNesterScroll:Z

    .line 824
    :goto_8
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowNesterScroll:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    .line 825
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->doneItemEnabled:Z

    .line 826
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateDoneItemEnabled()V

    return-void
.end method

.method private collapseSearchEmojiView()V
    .locals 5

    .line 1127
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isEmojiSearchOpened:Z

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->closeSearch(Z)V

    .line 1129
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1130
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/high16 v3, 0x42f00000    # 120.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1131
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1132
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiPadding:I

    .line 1133
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isEmojiSearchOpened:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->wasEmojiSearchOpened:Z

    .line 1134
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isEmojiSearchOpened:Z

    .line 1135
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->animateEmojiViewTranslationY(FF)V

    :cond_0
    return-void
.end method

.method private createEmojiView()V
    .locals 13

    .line 1335
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    iget v1, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    if-eq v1, v2, :cond_0

    .line 1336
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1337
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 1339
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_1

    return-void

    .line 1342
    :cond_1
    new-instance v1, Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v11, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v1 .. v12}, Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/4 v0, 0x3

    .line 1343
    iput v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiCacheType:I

    const/4 v0, 0x0

    .line 1344
    iput-boolean v0, v1, Lorg/telegram/ui/Components/EmojiView;->shouldLightenBackground:Z

    .line 1345
    iput-boolean v0, v1, Lorg/telegram/ui/Components/EmojiView;->fixBottomTabContainerTranslation:Z

    .line 1346
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EmojiView;->setShouldDrawBackground(Z)V

    .line 1347
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EmojiView;->allowEmojisForNonPremium(Z)V

    .line 1348
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 1349
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1350
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setForseMultiwindowLayout(Z)V

    .line 1352
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$9;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setDelegate(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)V

    .line 1441
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1442
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setBottomInset(I)V

    return-void
.end method

.method private getAnswersMaxCount()I
    .locals 1

    .line 2139
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->todo:Z

    if-eqz v0, :cond_0

    .line 2140
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->todoItemsMax:I

    return v0

    .line 2142
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->pollAnswersMax:I

    return v0
.end method

.method public static getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    .line 759
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 762
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->getTrimmedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 763
    :goto_0
    const-string v0, "\n\n\n"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "\n\n"

    if-ltz v1, :cond_1

    .line 764
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/CharSequence;

    aput-object v4, v1, v2

    invoke-static {p0, v0, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 766
    :cond_1
    :goto_1
    invoke-static {p0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_2

    .line 767
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/CharSequence;

    aput-object v4, v5, v2

    invoke-static {p0, v1, v5}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method private getMessagesController()Lorg/telegram/messenger/MessagesController;
    .locals 1

    .line 2148
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    .line 2149
    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    goto :goto_0

    .line 2151
    :cond_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 2153
    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    return-object v0
.end method

.method private hideEmojiPopup(Z)V
    .locals 3

    .line 1260
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isPremium:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1263
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1264
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->scrollEmojiToTop()V

    .line 1265
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->closeSearch(Z)V

    if-eqz p1, :cond_1

    .line 1267
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->hideSearchKeyboard()V

    .line 1269
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isEmojiSearchOpened:Z

    .line 1270
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->showEmojiPopup(I)V

    :cond_2
    if-eqz p1, :cond_4

    .line 1273
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 1274
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v0, 0x2

    .line 1275
    new-array v0, v0, [F

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1276
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1280
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isAnimatePopupClosing:Z

    .line 1281
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xfa

    .line 1289
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1290
    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1291
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 1293
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hideEmojiView()V

    :cond_4
    :goto_0
    return-void
.end method

.method private synthetic lambda$animateEmojiViewTranslationY$8(FFLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 1448
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 1449
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$checkDiscard$5(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 959
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$hideEmojiPopup$7(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1277
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1278
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;I)V
    .locals 8

    .line 313
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->addAnswerRow:I

    if-ne p2, v0, :cond_0

    .line 314
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->addNewField()V

    return-void

    .line 315
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v0, :cond_14

    .line 316
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 318
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    .line 319
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    if-eqz v1, :cond_1

    .line 320
    invoke-virtual {v1}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    .line 322
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->anonymousRow:I

    const/4 v2, 0x1

    if-ne p2, v1, :cond_2

    .line 323
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->anonymousPoll:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->anonymousPoll:Z

    goto/16 :goto_6

    .line 324
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowAddingRow:I

    if-ne p2, v1, :cond_3

    .line 325
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowAdding:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowAdding:Z

    goto/16 :goto_6

    .line 326
    :cond_3
    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowMarkingRow:I

    if-ne p2, v3, :cond_6

    .line 327
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowMarking:Z

    xor-int/2addr v3, v2

    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowMarking:Z

    .line 329
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->updateRows()V

    .line 330
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowAddingRow:I

    if-ltz v4, :cond_4

    if-gez v1, :cond_4

    .line 331
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 332
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowAddingRow:I

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_0

    :cond_4
    if-ltz v1, :cond_5

    if-gez v4, :cond_5

    .line 334
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 335
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_5
    :goto_0
    move v1, v3

    goto/16 :goto_6

    .line 337
    :cond_6
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->multipleRow:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne p2, v1, :cond_9

    .line 338
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->multipleChoise:Z

    xor-int/lit8 v5, v1, 0x1

    iput-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->multipleChoise:Z

    if-nez v1, :cond_8

    .line 339
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    if-eqz v1, :cond_8

    .line 340
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionRow:I

    .line 341
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    .line 342
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->updateRows()V

    .line 343
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 344
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizRow:I

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 346
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v6, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_1

    .line 348
    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizRow:I

    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 350
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    invoke-virtual {v4, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 351
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emptyRow:I

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_8
    move v1, v5

    goto/16 :goto_6

    .line 354
    :cond_9
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizOnly:I

    if-eqz v1, :cond_a

    goto/16 :goto_8

    .line 357
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 358
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    .line 359
    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionRow:I

    .line 360
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->updateRows()V

    .line 361
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    if-eqz v6, :cond_b

    .line 362
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionRow:I

    invoke-virtual {v5, v6, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_2

    .line 364
    :cond_b
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    invoke-virtual {v6, v5, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 366
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emptyRow:I

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 367
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->multipleChoise:Z

    if-eqz v3, :cond_d

    .line 368
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->multipleChoise:Z

    .line 369
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->multipleRow:I

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 371
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_3

    .line 373
    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->multipleRow:I

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 376
    :cond_d
    :goto_3
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    if-eqz v3, :cond_10

    move v3, v4

    move v5, v3

    .line 378
    :goto_4
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersChecks:[Z

    array-length v7, v6

    if-ge v3, v7, :cond_10

    if-eqz v5, :cond_e

    .line 380
    aput-boolean v4, v6, v3

    goto :goto_5

    .line 381
    :cond_e
    aget-boolean v6, v6, v3

    if-eqz v6, :cond_f

    move v5, v2

    :cond_f
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 387
    :cond_10
    :goto_6
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hintShowed:Z

    if-eqz v3, :cond_11

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    if-nez v3, :cond_11

    .line 388
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hintView:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/HintView;->hide()V

    .line 390
    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 391
    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerStartRow:I

    :goto_7
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerStartRow:I

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersCount:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_13

    .line 392
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 393
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v5, v4, Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v5, :cond_12

    .line 394
    check-cast v4, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 395
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    invoke-virtual {v4, v5, v2}, Lorg/telegram/ui/Cells/PollEditTextCell;->setShowCheckBox(ZZ)V

    .line 396
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersChecks:[Z

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerStartRow:I

    sub-int v6, v3, v6

    aget-boolean v5, v5, v6

    invoke-virtual {v4, v5, v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->setChecked(ZZ)V

    .line 397
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    if-le v5, v6, :cond_12

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizRow:I

    if-ne p2, v5, :cond_12

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hintShowed:Z

    if-nez v5, :cond_12

    .line 398
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hintView:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/PollEditTextCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v4

    invoke-virtual {v5, v4, v2}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    .line 399
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hintShowed:Z

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 404
    :cond_13
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 405
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->checkDoneButton()V

    :cond_14
    :goto_8
    return-void
.end method

.method private synthetic lambda$onMenuItemClick$1(Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;Ljava/lang/Long;ZII)V
    .locals 7

    .line 560
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;->sendPoll(Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZIJ)V

    .line 561
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$onMenuItemClick$2(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;Ljava/lang/Long;)V
    .locals 10

    .line 558
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;Ljava/lang/Long;)V

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    return-void

    .line 564
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;

    const/4 v7, 0x0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v4, p2

    invoke-interface/range {v3 .. v9}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;->sendPoll(Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZIJ)V

    .line 565
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$onMenuItemClick$3(Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;Ljava/lang/Long;ZII)V
    .locals 7

    .line 652
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    invoke-interface/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;->sendPoll(Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZIJ)V

    .line 653
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$onMenuItemClick$4(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;Ljava/lang/Long;)V
    .locals 10

    .line 650
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;Ljava/lang/Long;)V

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    return-void

    .line 656
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;

    const/4 v7, 0x0

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v6, 0x1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v3 .. v9}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;->sendPoll(Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZIJ)V

    .line 657
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$showEmojiPopup$6(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1202
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1203
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    return-void
.end method

.method private onCellFocusChanges(Lorg/telegram/ui/Cells/PollEditTextCell;Z)V
    .locals 3

    .line 1237
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isPremium:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 1238
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isEmojiSearchOpened:Z

    if-eqz p2, :cond_0

    .line 1239
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->collapseSearchEmojiView()V

    .line 1240
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    .line 1242
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 1243
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    const/4 v1, 0x1

    .line 1244
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/PollEditTextCell;->setEmojiButtonVisibility(Z)V

    .line 1245
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    .line 1246
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->updateSuggestEmojiPanelDelegate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    if-eqz p2, :cond_2

    if-eq p2, p1, :cond_2

    .line 1248
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    if-eqz p1, :cond_1

    .line 1249
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->collapseSearchEmojiView()V

    .line 1250
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hideEmojiPopup(Z)V

    .line 1251
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->openKeyboardInternal()V

    .line 1253
    :cond_1
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->setEmojiButtonVisibility(Z)V

    .line 1254
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object p1

    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    :cond_2
    return-void
.end method

.method private onEmojiClicked(Lorg/telegram/ui/Cells/PollEditTextCell;)V
    .locals 0

    .line 1117
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 1118
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    if-eqz p1, :cond_0

    .line 1119
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->collapseSearchEmojiView()V

    .line 1120
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->openKeyboardInternal()V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 1122
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->showEmojiPopup(I)V

    return-void
.end method

.method private openKeyboardInternal()V
    .locals 3

    .line 1140
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->awaitKeyboard()V

    .line 1142
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    .line 1143
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1144
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 1146
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->showEmojiPopup(I)V

    .line 1148
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardVisible:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 1149
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->waitingForKeyboardOpen:Z

    .line 1150
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1151
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->openKeyboardRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method private resetSuggestEmojiPanel()V
    .locals 2

    .line 1034
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1035
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SuggestEmojiView;->setDelegate(Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;)V

    .line 1036
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    :cond_0
    return-void
.end method

.method private setTextLeft(Landroid/view/View;I)V
    .locals 5

    .line 971
    instance-of v0, p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 974
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 977
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionRow:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    .line 978
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->todo:Z

    if-eqz p2, :cond_1

    .line 979
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->todoTitleLengthMax:I

    goto :goto_0

    :cond_1
    const/16 p2, 0xff

    .line 983
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionString:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    sub-int v0, p2, v0

    goto :goto_6

    .line 984
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionRow:I

    if-ne p2, v0, :cond_5

    .line 986
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionString:Ljava/lang/CharSequence;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    goto :goto_2

    :cond_4
    move p2, v1

    :goto_2
    const/16 v0, 0xc8

    rsub-int p2, p2, 0xc8

    :goto_3
    move v4, v0

    move v0, p2

    move p2, v4

    goto :goto_6

    .line 987
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerStartRow:I

    if-lt p2, v0, :cond_a

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersCount:I

    add-int/2addr v2, v0

    if-ge p2, v2, :cond_a

    sub-int/2addr p2, v0

    .line 989
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->todo:Z

    if-eqz v0, :cond_6

    .line 990
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->todoItemLengthMax:I

    goto :goto_4

    :cond_6
    const/16 v0, 0x64

    .line 994
    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    aget-object p2, v2, p2

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    goto :goto_5

    :cond_7
    move p2, v1

    :goto_5
    sub-int p2, v0, p2

    goto :goto_3

    :goto_6
    int-to-float v2, v0

    int-to-float p2, p2

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v3, p2

    sub-float/2addr p2, v3

    cmpg-float p2, v2, p2

    if-gtz p2, :cond_9

    .line 999
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    const-string p2, "%d"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/PollEditTextCell;->setText2(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView2()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    if-gez v0, :cond_8

    .line 1001
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    goto :goto_7

    :cond_8
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    .line 1002
    :goto_7
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1003
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    .line 1005
    :cond_9
    const-string p2, ""

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/PollEditTextCell;->setText2(Ljava/lang/String;)V

    :cond_a
    :goto_8
    return-void
.end method

.method private showEmojiPopup(I)V
    .locals 9

    .line 1156
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isPremium:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_b

    .line 1160
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    .line 1161
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->createEmojiView()V

    .line 1163
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 1164
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewWasVisible:Z

    .line 1165
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    .line 1166
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 1168
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardHeight:I

    const/high16 v5, 0x43480000    # 200.0f

    const/high16 v6, 0x43160000    # 150.0f

    if-gtz v4, :cond_3

    .line 1169
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1170
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardHeight:I

    goto :goto_1

    .line 1172
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v7, "kbd_height"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardHeight:I

    .line 1175
    :cond_3
    :goto_1
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardHeightLand:I

    if-gtz v4, :cond_5

    .line 1176
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1177
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardHeightLand:I

    goto :goto_2

    .line 1179
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "kbd_height_land3"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardHeightLand:I

    .line 1182
    :cond_5
    :goto_2
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-le v5, v4, :cond_6

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardHeightLand:I

    goto :goto_3

    :cond_6
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardHeight:I

    .line 1184
    :goto_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 1185
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr v6, v4

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1186
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1187
    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v3, :cond_7

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v3, :cond_7

    .line 1188
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1191
    :cond_7
    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiPadding:I

    .line 1192
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    .line 1193
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 1195
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_9

    .line 1197
    sget-object v3, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->KEYBOARD:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    :cond_9
    if-nez p1, :cond_a

    .line 1199
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardVisible:Z

    if-nez p1, :cond_a

    .line 1200
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiPadding:I

    int-to-float p1, p1

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput p1, v0, v1

    const/4 p1, 0x0

    aput p1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1201
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1205
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xfa

    .line 1211
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1212
    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1213
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_a
    :goto_5
    return-void

    .line 1216
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    if-nez v3, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_d

    .line 1218
    sget-object v3, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    .line 1220
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_f

    .line 1221
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewWasVisible:Z

    .line 1222
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    .line 1223
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isEmojiSearchOpened:Z

    .line 1224
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v2, :cond_e

    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v2, :cond_f

    :cond_e
    const/16 v2, 0x8

    .line 1225
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    :cond_f
    if-nez p1, :cond_10

    .line 1229
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiPadding:I

    .line 1231
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    .line 1232
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private showQuizHint()V
    .locals 4

    .line 773
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerStartRow:I

    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerStartRow:I

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersCount:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_2

    .line 774
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 775
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, v1, Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v2, :cond_1

    .line 776
    check-cast v1, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 777
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-le v2, v3, :cond_1

    .line 778
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    .line 781
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hintView:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateRows()V
    .locals 4

    const/4 v0, -0x1

    .line 840
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionRow:I

    .line 841
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionInfoRow:I

    .line 842
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->multipleRow:I

    .line 843
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->anonymousRow:I

    .line 844
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizRow:I

    .line 845
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowAddingRow:I

    .line 846
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowMarkingRow:I

    .line 847
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->addAnswerRow:I

    .line 848
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerStartRow:I

    .line 849
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->settingsSectionRow:I

    const/4 v0, 0x0

    .line 852
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->paddingRow:I

    const/4 v0, 0x1

    add-int v1, v0, v0

    .line 854
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionHeaderRow:I

    add-int/lit8 v2, v1, 0x1

    .line 855
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionRow:I

    add-int/lit8 v3, v1, 0x2

    .line 856
    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionSectionRow:I

    add-int/lit8 v1, v1, 0x3

    .line 857
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerHeaderRow:I

    .line 858
    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersCount:I

    if-eqz v2, :cond_0

    .line 859
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerStartRow:I

    add-int/2addr v1, v2

    .line 860
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    .line 862
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-eq v2, v1, :cond_1

    .line 863
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->addAnswerRow:I

    .line 865
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerSectionRow:I

    add-int/lit8 v3, v1, 0x2

    .line 866
    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->settingsHeaderRow:I

    .line 867
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->todo:Z

    if-eqz v2, :cond_2

    add-int/lit8 v0, v1, 0x3

    .line 868
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowMarkingRow:I

    .line 869
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowMarking:Z

    if-eqz v2, :cond_7

    add-int/lit8 v1, v1, 0x4

    .line 870
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowAddingRow:I

    goto :goto_0

    .line 873
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 874
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_4

    .line 875
    :cond_3
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->anonymousRow:I

    .line 877
    :cond_4
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizOnly:I

    if-eq v1, v0, :cond_5

    .line 878
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->multipleRow:I

    :cond_5
    if-nez v1, :cond_6

    .line 881
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizRow:I

    .line 883
    :cond_6
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->settingsSectionRow:I

    .line 884
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    if-eqz v2, :cond_7

    add-int/lit8 v2, v0, 0x2

    .line 885
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionRow:I

    add-int/lit8 v0, v0, 0x3

    .line 886
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionInfoRow:I

    .line 889
    :cond_7
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emptyRow:I

    return-void
.end method

.method private updateSuggestEmojiPanelDelegate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1025
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    if-eqz v0, :cond_0

    .line 1026
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    .line 1027
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v1, Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->getDelegate()Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    move-result-object v0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 1028
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    check-cast p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->setDelegate(Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 746
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_1

    .line 747
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_0

    .line 748
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView;->invalidateViews()V

    .line 750
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz p1, :cond_1

    .line 751
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    .line 752
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 753
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public getButtonsHideOffset()I
    .locals 1

    const/high16 v0, 0x428c0000    # 70.0f

    .line 728
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getCurrentItemTop()I
    .locals 4

    .line 666
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    return v1

    .line 669
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 673
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 674
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_2

    if-eqz v1, :cond_2

    .line 675
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    if-ne v3, v2, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-ltz v0, :cond_3

    if-eqz v1, :cond_3

    .line 676
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    const/high16 v1, 0x41c80000    # 25.0f

    .line 679
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getEmojiPadding()I
    .locals 1

    .line 1328
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiPadding:I

    return v0
.end method

.method public getFirstOffset()I
    .locals 2

    .line 684
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getListTopPadding()I

    move-result v0

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getListTopPadding()I
    .locals 1

    .line 695
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->topPadding:I

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2096
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2098
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v8, 0x0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2100
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v12, v6, v11

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/4 v9, 0x0

    move/from16 v10, v20

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2101
    new-instance v21, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    or-int v23, v4, v5

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v12, v4, v11

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move/from16 v28, v31

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v21

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2103
    new-instance v24, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$EmptyView;

    aput-object v5, v4, v11

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v28, 0x0

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v24

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2105
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v4, v3, v11

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2106
    new-instance v24, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    or-int v26, v5, v6

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v4, v5, v11

    move-object/from16 v25, v3

    move-object/from16 v27, v5

    invoke-direct/range {v24 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v24

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2107
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v15, v2, [Ljava/lang/Class;

    aput-object v4, v15, v11

    const-string v3, "textView"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v16

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/4 v14, 0x0

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2109
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v4, v11

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/4 v15, 0x0

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2110
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v5, v4, v11

    const-string v6, "textView2"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    const/16 v21, 0x0

    move-object/from16 v17, v4

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2111
    new-instance v23, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v7, v2, [Ljava/lang/Class;

    aput-object v5, v7, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v27

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    move-object/from16 v24, v4

    move-object/from16 v26, v7

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v4, v23

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2113
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v15, v2, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/PollEditTextCell;

    aput-object v4, v15, v11

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v16

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v20, v31

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2114
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v4, v5, v11

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    move-object/from16 v16, v5

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2115
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v34, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    new-array v7, v2, [Ljava/lang/Class;

    aput-object v4, v7, v11

    const-string v8, "deleteImageView"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v36

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v33, v5

    move-object/from16 v35, v7

    move/from16 v40, v20

    invoke-direct/range {v32 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v5, v32

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2116
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    new-array v15, v2, [Ljava/lang/Class;

    aput-object v4, v15, v11

    const-string v5, "moveImageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2117
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v15, v5, v7

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v4, v5, v11

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menuSelector:I

    move-object/from16 v16, v5

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2118
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v7, v2, [Ljava/lang/Class;

    aput-object v4, v7, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v23

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, v5

    move/from16 v27, v22

    move-object/from16 v22, v7

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v5, v19

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2119
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v15, v2, [Ljava/lang/Class;

    aput-object v4, v15, v11

    const-string v5, "checkBox"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    move/from16 v20, v40

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2120
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v2, [Ljava/lang/Class;

    aput-object v4, v6, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    const/4 v15, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v6

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2122
    new-instance v23, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v6, v11

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v27

    const/16 v25, 0x0

    move-object/from16 v24, v4

    move-object/from16 v26, v6

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v4, v23

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2123
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v15, v2, [Ljava/lang/Class;

    aput-object v7, v15, v11

    const-string v4, "valueTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v16

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/4 v14, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2124
    new-instance v22, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v2, [Ljava/lang/Class;

    aput-object v7, v6, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    const/16 v24, 0x0

    const/16 v27, 0x0

    move-object/from16 v23, v4

    move-object/from16 v25, v6

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v4, v22

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2125
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v15, v2, [Ljava/lang/Class;

    aput-object v7, v15, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v16

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2127
    new-instance v22, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v23, v4

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v4, v22

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2129
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v15, v2, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v15, v11

    sget-object v16, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2131
    new-instance v22, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCell;

    aput-object v6, v5, v11

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v26

    const/16 v29, 0x0

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    const/16 v24, 0x0

    move-object/from16 v23, v4

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v22

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2132
    new-instance v22, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v6, v4, v11

    const-string v5, "imageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    move/from16 v30, v20

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v22

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2133
    new-instance v18, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v2, [Ljava/lang/Class;

    aput-object v6, v2, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v19, v3

    move/from16 v26, v21

    move-object/from16 v21, v2

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public hideEmojiView()V
    .locals 4

    .line 1299
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    .line 1300
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v0, :cond_0

    .line 1301
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1303
    sget-object v3, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    .line 1306
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 1308
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiPadding:I

    .line 1309
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiPadding:I

    if-eqz v0, :cond_2

    .line 1311
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    :cond_2
    return-void
.end method

.method public isAnimatePopupClosing()Z
    .locals 1

    .line 1316
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isAnimatePopupClosing:Z

    return v0
.end method

.method public isDoneItemEnabled()Z
    .locals 1

    .line 831
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->doneItemEnabled:Z

    return v0
.end method

.method public isPopupShowing()Z
    .locals 1

    .line 1320
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    return v0
.end method

.method public isPopupVisible()Z
    .locals 1

    .line 1324
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isWaitingForKeyboardOpen()Z
    .locals 1

    .line 1107
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->waitingForKeyboardOpen:Z

    return v0
.end method

.method public needsActionBar()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .line 927
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 928
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hideEmojiPopup(Z)V

    return v1

    .line 931
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->checkDiscard()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 934
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 910
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDestroy()V

    const/4 v0, 0x1

    .line 911
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->destroyed:Z

    .line 912
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isPremium:Z

    if-eqz v0, :cond_0

    .line 913
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 914
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    .line 915
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onDismissWithTouchOutside()Z
    .locals 1

    .line 939
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->checkDiscard()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 942
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDismissWithTouchOutside()Z

    move-result v0

    return v0
.end method

.method public onHidden()V
    .locals 1

    .line 922
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateDoneItemEnabled()V

    return-void
.end method

.method public onHideShowProgress(F)V
    .locals 0

    .line 504
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateDoneItemEnabled()V

    return-void
.end method

.method public onMenuItemClick(I)V
    .locals 11

    const/16 v0, 0x28

    if-ne p1, v0, :cond_15

    .line 510
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->todo:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_7

    .line 511
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionString:Ljava/lang/CharSequence;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 512
    new-array v2, v1, [Ljava/lang/CharSequence;

    aput-object p1, v2, v0

    .line 513
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 514
    aget-object v2, v2, v0

    if-eqz p1, :cond_1

    .line 516
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 517
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 518
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v7, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v6, v7

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 519
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iget v7, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v6, v7

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 524
    :cond_1
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;-><init>()V

    .line 525
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TodoList;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TodoList;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    .line 526
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowMarking:Z

    if-eqz v5, :cond_2

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowAdding:Z

    if-eqz v6, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    move v6, v0

    :goto_1
    iput-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$TodoList;->others_can_append:Z

    .line 527
    iput-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TodoList;->others_can_complete:Z

    .line 528
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TodoList;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 529
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TodoList;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    .line 530
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TodoList;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iput-object p1, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    move p1, v0

    .line 532
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    array-length v4, v2

    if-ge p1, v4, :cond_6

    .line 533
    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    .line 536
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 537
    new-array v4, v1, [Ljava/lang/CharSequence;

    aput-object v2, v4, v0

    .line 538
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 539
    aget-object v4, v4, v0

    if-eqz v2, :cond_5

    .line 541
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v0

    :goto_3
    if-ge v6, v5, :cond_5

    .line 542
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 543
    iget v8, v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v9, v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v8, v9

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-le v8, v9, :cond_4

    .line 544
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    iget v9, v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v8, v9

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 549
    :cond_5
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TodoItem;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TodoItem;-><init>()V

    .line 550
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TodoItem;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 551
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    .line 552
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TodoItem;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    .line 553
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TodoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v5, Lorg/telegram/tgnet/TLRPC$TodoItem;->id:I

    .line 554
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TodoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 556
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    .line 557
    iget v2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getDialogId()J

    move-result-wide v4

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAdditionalMessagesCount()I

    move-result p1

    add-int/2addr p1, v1

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0, v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;)V

    invoke-static {v2, v4, v5, p1, v1}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    return-void

    .line 569
    :cond_7
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->doneItemEnabled:Z

    if-nez p1, :cond_a

    move p1, v0

    .line 571
    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersChecks:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_9

    .line 572
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersChecks:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_8

    add-int/lit8 p1, p1, 0x1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    if-gtz p1, :cond_15

    .line 577
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->showQuizHint()V

    return-void

    .line 582
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionString:Ljava/lang/CharSequence;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 583
    new-array v2, v1, [Ljava/lang/CharSequence;

    aput-object p1, v2, v0

    .line 584
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 585
    aget-object v2, v2, v0

    if-eqz p1, :cond_c

    .line 587
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    :goto_6
    if-ge v4, v3, :cond_c

    .line 588
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 589
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v7, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v6, v7

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v6, v7, :cond_b

    .line 590
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iget v7, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v6, v7

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 595
    :cond_c
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;-><init>()V

    .line 596
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_poll;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_poll;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    .line 597
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->multipleChoise:Z

    iput-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$Poll;->multiple_choice:Z

    .line 598
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    iput-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    .line 599
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->anonymousPoll:Z

    xor-int/2addr v5, v1

    iput-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$Poll;->public_voters:Z

    .line 600
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 601
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    .line 602
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iput-object p1, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    .line 604
    new-instance p1, Lorg/telegram/tgnet/SerializedData;

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->maxAnswersCount:I

    invoke-direct {p1, v2}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    move v2, v0

    .line 605
    :goto_7
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    array-length v5, v4

    if-ge v2, v5, :cond_12

    .line 606
    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto/16 :goto_9

    .line 609
    :cond_d
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 610
    new-array v5, v1, [Ljava/lang/CharSequence;

    aput-object v4, v5, v0

    .line 611
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v4, v4, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-virtual {v4, v5, v1}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v4

    .line 612
    aget-object v5, v5, v0

    if-eqz v4, :cond_f

    .line 614
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v0

    :goto_8
    if-ge v7, v6, :cond_f

    .line 615
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 616
    iget v9, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v10, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v9, v10

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-le v9, v10, :cond_e

    .line 617
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v9

    iget v10, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v9, v10

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 622
    :cond_f
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_pollAnswer;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_pollAnswer;-><init>()V

    .line 623
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$PollAnswer;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 624
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    .line 625
    iget-object v5, v6, Lorg/telegram/tgnet/TLRPC$PollAnswer;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    .line 626
    new-array v4, v1, [B

    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$PollAnswer;->option:[B

    .line 627
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    .line 628
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->multipleChoise:Z

    if-nez v4, :cond_10

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    if-eqz v4, :cond_11

    :cond_10
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersChecks:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_11

    .line 630
    iget-object v4, v6, Lorg/telegram/tgnet/TLRPC$PollAnswer;->option:[B

    aget-byte v4, v4, v0

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/SerializedData;->writeByte(B)V

    :cond_11
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 633
    :cond_12
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 634
    invoke-virtual {p1}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    const-string v4, "answers"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_pollResults;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_pollResults;-><init>()V

    iput-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    .line 636
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionString:Ljava/lang/CharSequence;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 638
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PollResults;->solution:Ljava/lang/String;

    .line 639
    new-array v4, v1, [Ljava/lang/CharSequence;

    aput-object p1, v4, v0

    .line 640
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v4, v1}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 641
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 642
    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$PollResults;->solution_entities:Ljava/util/ArrayList;

    .line 644
    :cond_13
    iget-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$PollResults;->solution:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 645
    iget-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$PollResults;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$PollResults;->flags:I

    .line 648
    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    .line 649
    iget v4, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getDialogId()J

    move-result-wide v5

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAdditionalMessagesCount()I

    move-result p1

    add-int/2addr p1, v1

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0, v3, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;)V

    invoke-static {v4, v5, v6, p1, v1}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    :cond_15
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 485
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onPause()V

    .line 486
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 489
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isPremium:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 490
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hideEmojiPopup(Z)V

    .line 491
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    if-eqz v1, :cond_1

    .line 492
    invoke-virtual {v1}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    .line 494
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v1, :cond_2

    .line 495
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->setEmojiButtonVisibility(Z)V

    .line 496
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onPreMeasure(II)V
    .locals 2

    .line 701
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result p1

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v1, 0x0

    if-gt p1, v0, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isAnimatePopupClosing:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isEmojiSearchOpened:Z

    if-eqz p1, :cond_0

    goto :goto_1

    .line 705
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v0, p1, :cond_1

    int-to-float p1, p2

    const/high16 p2, 0x40600000    # 3.5f

    div-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_0

    .line 708
    :cond_1
    div-int/lit8 p2, p2, 0x5

    mul-int/lit8 p1, p2, 0x2

    :goto_0
    const/high16 p2, 0x41500000    # 13.0f

    .line 710
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p1, p2

    if-gez p1, :cond_2

    move p1, v1

    .line 714
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowNesterScroll:Z

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    goto :goto_2

    :cond_3
    :goto_1
    const/high16 p1, 0x42500000    # 52.0f

    .line 702
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 703
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    :goto_2
    const/4 p2, 0x1

    .line 716
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->ignoreLayout:Z

    .line 717
    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->topPadding:I

    if-ne p2, p1, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->listPaddingBottom:I

    if-eq p2, v0, :cond_5

    .line 718
    :cond_4
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->topPadding:I

    .line 719
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->listPaddingBottom:I

    invoke-virtual {p1, v1, v1, v1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setPaddingWithoutRequestLayout(IIII)V

    .line 720
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 721
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->paddingRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 723
    :cond_5
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->ignoreLayout:Z

    return-void
.end method

.method public onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 1

    const/4 p1, 0x1

    .line 895
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setBuildFullLayout(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    :catch_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->todo:Z

    if-eqz v0, :cond_0

    .line 898
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$string;->TodoTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 899
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizOnly:I

    if-ne v0, p1, :cond_1

    .line 900
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$string;->NewQuiz:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 902
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$string;->NewPoll:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 904
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateDoneItemEnabled()V

    .line 905
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public onSizeChanged(IZ)V
    .locals 6

    .line 1045
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isPremium:Z

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/high16 v0, 0x42480000    # 50.0f

    .line 1048
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-le p1, v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardVisible:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    .line 1050
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardHeightLand:I

    .line 1051
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "kbd_height_land3"

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardHeightLand:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1053
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardHeight:I

    .line 1054
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "kbd_height"

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardHeight:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1058
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    if-eqz v0, :cond_8

    if-eqz p2, :cond_3

    .line 1059
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardHeightLand:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardHeight:I

    .line 1060
    :goto_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isEmojiSearchOpened:Z

    const/high16 v2, 0x42f00000    # 120.0f

    if-eqz v1, :cond_4

    .line 1061
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 1063
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1064
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ne v3, v4, :cond_5

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v3, v0, :cond_5

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->wasEmojiSearchOpened:Z

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isEmojiSearchOpened:Z

    if-eq v3, v5, :cond_8

    .line 1065
    :cond_5
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1066
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr v0, v3

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1067
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1068
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiPadding:I

    .line 1069
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    .line 1070
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1071
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->wasEmojiSearchOpened:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isEmojiSearchOpened:Z

    if-eq v0, v1, :cond_7

    if-eqz v0, :cond_6

    .line 1072
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    :goto_2
    int-to-float v0, v0

    goto :goto_3

    :cond_6
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_2

    :goto_3
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->animateEmojiViewTranslationY(FF)V

    .line 1074
    :cond_7
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isEmojiSearchOpened:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->wasEmojiSearchOpened:Z

    .line 1078
    :cond_8
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->lastSizeChangeValue1:I

    if-ne v0, p1, :cond_9

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->lastSizeChangeValue2:Z

    if-ne v0, p2, :cond_9

    goto :goto_6

    .line 1081
    :cond_9
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->lastSizeChangeValue1:I

    .line 1082
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->lastSizeChangeValue2:Z

    .line 1084
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardVisible:Z

    .line 1085
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 1086
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    .line 1087
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_a

    if-lez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_4

    :cond_a
    move p1, v1

    :goto_4
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardVisible:Z

    goto :goto_5

    .line 1089
    :cond_b
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardVisible:Z

    .line 1091
    :goto_5
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardVisible:Z

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    if-eqz p1, :cond_c

    .line 1092
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->showEmojiPopup(I)V

    .line 1094
    :cond_c
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiPadding:I

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardVisible:Z

    if-nez p1, :cond_d

    if-eq p1, p2, :cond_d

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    if-nez p1, :cond_d

    .line 1095
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiPadding:I

    .line 1096
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    .line 1097
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1100
    :cond_d
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardVisible:Z

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->waitingForKeyboardOpen:Z

    if-eqz p1, :cond_e

    .line 1101
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->waitingForKeyboardOpen:Z

    .line 1102
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_e
    :goto_6
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 733
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 736
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .line 741
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;)V
    .locals 0

    .line 967
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 689
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 690
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
