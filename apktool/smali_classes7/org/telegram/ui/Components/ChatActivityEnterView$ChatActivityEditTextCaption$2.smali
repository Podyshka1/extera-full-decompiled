.class Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->openPhotoViewerForEdit(Ljava/util/ArrayList;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field sending:Z

.field final synthetic this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

.field final synthetic val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

.field final synthetic val$sourceFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;Lorg/telegram/messenger/MediaController$PhotoEntry;Ljava/io/File;)V
    .locals 0

    .line 5779
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->val$sourceFile:Ljava/io/File;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public canCaptureMorePhotos()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;ZIIZ)V
    .locals 36

    move-object/from16 v0, p0

    .line 5784
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/ui/ChatActivity$ReplyQuote;->outdated:Z

    if-eqz v1, :cond_0

    .line 5785
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->showQuoteMessageUpdate()V

    return-void

    .line 5788
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5789
    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    invoke-direct {v1}, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;-><init>()V

    .line 5790
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v4, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-nez v4, :cond_1

    iget-object v5, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 5791
    iput-object v5, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    goto :goto_0

    .line 5792
    :cond_1
    iget-object v5, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 5793
    iput-object v5, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    .line 5795
    :cond_2
    :goto_0
    iget-object v5, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iput-object v5, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->thumbPath:Ljava/lang/String;

    .line 5796
    iput-boolean v4, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->isVideo:Z

    .line 5797
    iget-object v2, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v4

    :goto_1
    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    .line 5798
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v5, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iput-object v5, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->entities:Ljava/util/ArrayList;

    .line 5799
    iget-object v5, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    iput-object v5, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->masks:Ljava/util/ArrayList;

    .line 5800
    iget v2, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iput v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->ttl:I

    move-object/from16 v2, p2

    .line 5801
    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    const/4 v2, 0x1

    .line 5802
    iput-boolean v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->canDeleteAfter:Z

    .line 5803
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5804
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {v5}, Lorg/telegram/messenger/MediaController$PhotoEntry;->reset()V

    .line 5805
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->sending:Z

    .line 5806
    iget-object v1, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->checkUpdateStickersOrder(Ljava/lang/CharSequence;)Z

    move-result v17

    .line 5807
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetaccountInstance(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v5

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetreplyingMessageObject(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mgetThreadMessage(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v9

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgeteditingMessageObject(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v12

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v8

    const/4 v10, 0x0

    if-nez v8, :cond_4

    move/from16 v16, v10

    goto :goto_2

    :cond_4
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v8

    move/from16 v16, v8

    :goto_2
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->quickReplyShortcut:Ljava/lang/String;

    move-object/from16 v19, v8

    goto :goto_3

    :cond_5
    move-object/from16 v19, v4

    :goto_3
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity;->getQuickReplyId()I

    move-result v10

    :cond_6
    move/from16 v20, v10

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendMonoForumPeerId()J

    move-result-wide v26

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->messageSuggestionParams:Lorg/telegram/messenger/MessageSuggestionParams;

    :cond_7
    move-object/from16 v28, v4

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move-wide v4, v5

    move-object v6, v1

    invoke-static/range {v2 .. v28}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingMedia(Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;ZZLorg/telegram/messenger/MessageObject;ZIIIZLandroidx/core/view/inputmethod/InputContentInfoCompat;Ljava/lang/String;IJZJJLorg/telegram/messenger/MessageSuggestionParams;)V

    .line 5808
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 5809
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v29

    const/16 v31, 0x1

    const-wide/16 v34, 0x0

    const/16 v30, 0x0

    move/from16 v32, p4

    move/from16 v33, p5

    invoke-interface/range {v29 .. v35}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;ZIIJ)V

    :cond_8
    return-void
.end method

.method public willHidePhotoViewer()V
    .locals 1

    .line 5815
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->sending:Z

    if-nez v0, :cond_0

    .line 5817
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->val$sourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
