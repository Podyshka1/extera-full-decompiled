.class Lorg/telegram/ui/PhotoViewer$77;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->openCurrentPhotoInPaintModeForSelect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field private final thumbHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

.field final synthetic val$chatPhotoProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field final synthetic val$finalCanEdit:Z

.field final synthetic val$finalCanReplace:Z

.field final synthetic val$finalMessageObject:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MediaController$PhotoEntry;ZZ)V
    .locals 0

    .line 17533
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$77;->val$chatPhotoProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iput-object p3, p0, Lorg/telegram/ui/PhotoViewer$77;->val$finalMessageObject:Lorg/telegram/messenger/MessageObject;

    iput-object p4, p0, Lorg/telegram/ui/PhotoViewer$77;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iput-boolean p5, p0, Lorg/telegram/ui/PhotoViewer$77;->val$finalCanEdit:Z

    iput-boolean p6, p0, Lorg/telegram/ui/PhotoViewer$77;->val$finalCanReplace:Z

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    .line 17535
    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$77;->thumbHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    return-void
.end method

.method private sendMedia(Lorg/telegram/messenger/VideoEditedInfo;ZIIZZ)V
    .locals 33

    move-object/from16 v0, p0

    .line 17580
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz p5, :cond_0

    .line 17581
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->val$finalMessageObject:Lorg/telegram/messenger/MessageObject;

    :goto_0
    move-object v15, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    if-eqz v15, :cond_1

    .line 17582
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 17583
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v2, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    iput-object v2, v15, Lorg/telegram/messenger/MessageObject;->editingMessage:Ljava/lang/CharSequence;

    .line 17584
    iget-object v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iput-object v1, v15, Lorg/telegram/messenger/MessageObject;->editingMessageEntities:Ljava/util/ArrayList;

    .line 17586
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    .line 17588
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v7

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getReplyMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v9

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getThreadMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v10

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getReplyQuote()Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v12

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v13, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iget v14, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iget-boolean v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->quickReplyShortcut:Ljava/lang/String;

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->getQuickReplyId()I

    move-result v23

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->getSendMonoForumPeerId()J

    move-result-wide v28

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->getSendMessageSuggestionParams()Lorg/telegram/messenger/MessageSuggestionParams;

    move-result-object v30

    move-object/from16 v22, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    move/from16 v16, p2

    move/from16 v17, p3

    move/from16 v18, p4

    move/from16 v19, p6

    move-object/from16 v21, v1

    move/from16 v20, v4

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v30}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingVideo(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Photo;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/util/ArrayList;ILorg/telegram/messenger/MessageObject;ZIIZZLjava/lang/CharSequence;Ljava/lang/String;IJJJLorg/telegram/messenger/MessageSuggestionParams;)V

    return-void

    .line 17590
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v7

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getReplyMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v9

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getThreadMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v10

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getReplyQuote()Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v12

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v13, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iget v14, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iget-boolean v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->quickReplyShortcut:Ljava/lang/String;

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->getQuickReplyId()I

    move-result v23

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->getSendMonoForumPeerId()J

    move-result-wide v28

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->getSendMessageSuggestionParams()Lorg/telegram/messenger/MessageSuggestionParams;

    move-result-object v30

    move/from16 v20, v4

    const/4 v4, 0x0

    move-object/from16 v22, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    move/from16 v16, p2

    move/from16 v17, p3

    move/from16 v18, p4

    move/from16 v19, p6

    move-object/from16 v21, v1

    invoke-static/range {v2 .. v30}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingVideo(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Photo;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/util/ArrayList;ILorg/telegram/messenger/MessageObject;ZIIZZLjava/lang/CharSequence;Ljava/lang/String;IJJJLorg/telegram/messenger/MessageSuggestionParams;)V

    return-void

    .line 17593
    :cond_3
    iget-object v2, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 17594
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    iget-object v4, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v6

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getReplyMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getThreadMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v9

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getReplyQuote()Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v11

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v12, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iget-object v13, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    move-object/from16 v16, v15

    iget v15, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->quickReplyShortcut:Ljava/lang/String;

    iget-object v10, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->getQuickReplyId()I

    move-result v25

    iget-object v10, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->getSendMonoForumPeerId()J

    move-result-wide v30

    iget-object v10, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->getSendMessageSuggestionParams()Lorg/telegram/messenger/MessageSuggestionParams;

    move-result-object v32

    move-object/from16 v24, v5

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/16 v21, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    move-object/from16 v17, p1

    move/from16 v18, p2

    move/from16 v19, p3

    move/from16 v20, p4

    move/from16 v22, p6

    move-object/from16 v23, v1

    invoke-static/range {v2 .. v32}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhoto(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/VideoEditedInfo;ZIIIZLjava/lang/CharSequence;Ljava/lang/String;IJJJLorg/telegram/messenger/MessageSuggestionParams;)V

    return-void

    .line 17595
    :cond_4
    iget-object v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 17596
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    iget-object v4, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v6

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getReplyMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getThreadMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v9

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getReplyQuote()Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v11

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$77;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v12, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iget-object v13, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    move-object/from16 v16, v15

    iget v15, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->quickReplyShortcut:Ljava/lang/String;

    iget-object v10, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->getQuickReplyId()I

    move-result v25

    iget-object v10, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->getSendMonoForumPeerId()J

    move-result-wide v30

    iget-object v10, v0, Lorg/telegram/ui/PhotoViewer$77;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->getSendMessageSuggestionParams()Lorg/telegram/messenger/MessageSuggestionParams;

    move-result-object v32

    move-object/from16 v24, v5

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/16 v21, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    move-object/from16 v17, p1

    move/from16 v18, p2

    move/from16 v19, p3

    move/from16 v20, p4

    move/from16 v22, p6

    move-object/from16 v23, v1

    invoke-static/range {v2 .. v32}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhoto(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/VideoEditedInfo;ZIIIZLjava/lang/CharSequence;Ljava/lang/String;IJJJLorg/telegram/messenger/MessageSuggestionParams;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public canCaptureMorePhotos()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canEdit(I)Z
    .locals 0

    .line 17561
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$77;->val$chatPhotoProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/PhotoViewer$77;->val$finalCanEdit:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public canReplace(I)Z
    .locals 0

    .line 17566
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$77;->val$chatPhotoProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/PhotoViewer$77;->val$finalCanReplace:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getEditingMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 17571
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$77;->val$finalMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZZ)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 6

    .line 17539
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$77;->val$chatPhotoProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$77;->val$finalMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZZ)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
    .locals 0

    .line 17544
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$77;->thumbHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    return-object p1
.end method

.method public replaceButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .locals 7

    .line 17554
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$77;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->isCropped:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->isPainted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->isFiltered:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    iget-object p1, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    .line 17555
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/PhotoViewer$77;->sendMedia(Lorg/telegram/messenger/VideoEditedInfo;ZIIZZ)V

    return-void
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;ZIIZ)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v6, p6

    .line 17549
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/PhotoViewer$77;->sendMedia(Lorg/telegram/messenger/VideoEditedInfo;ZIIZZ)V

    return-void
.end method
