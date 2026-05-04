.class Lorg/telegram/ui/ChatActivity$80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createChatAttachView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 12803
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didPressedButton(IZZIIJZZJ)V
    .locals 36

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 12806
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_16

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v2, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-nez v3, :cond_0

    goto/16 :goto_11

    .line 12809
    :cond_0
    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getEditingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/ChatActivity;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 12810
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v2, Lorg/telegram/ui/ChatActivity;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v3, :cond_1

    move/from16 v4, p8

    .line 12811
    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    goto :goto_0

    :cond_1
    move/from16 v4, p8

    :goto_0
    const/16 v3, 0x8

    const/4 v5, 0x4

    if-eq v1, v3, :cond_4

    const/4 v6, 0x7

    if-eq v1, v6, :cond_4

    if-ne v1, v5, :cond_2

    .line 12813
    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 12881
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v2, :cond_3

    .line 12882
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissWithButtonClick(I)V

    .line 12884
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ChatActivity;->processSelectedAttach(I)V

    return-void

    .line 12814
    :cond_4
    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    if-eq v1, v3, :cond_5

    .line 12815
    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    .line 12817
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v2

    .line 12818
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotosOrder()Ljava/util/ArrayList;

    move-result-object v3

    .line 12819
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_14

    .line 12820
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v7

    int-to-float v7, v7

    const/high16 v9, 0x41200000    # 10.0f

    div-float/2addr v7, v9

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    move v9, v8

    :goto_2
    if-ge v9, v7, :cond_13

    .line 12822
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v10

    mul-int/lit8 v11, v9, 0xa

    sub-int/2addr v10, v11

    const/16 v12, 0xa

    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 12823
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move v13, v8

    :goto_3
    if-ge v13, v10, :cond_b

    add-int v14, v11, v13

    .line 12825
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v14, v15, :cond_6

    goto/16 :goto_7

    .line 12828
    :cond_6
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 12830
    new-instance v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    invoke-direct {v15}, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;-><init>()V

    .line 12831
    iget-boolean v6, v14, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-nez v6, :cond_7

    iget-object v6, v14, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 12832
    iput-object v6, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    .line 12833
    iget-boolean v6, v14, Lorg/telegram/messenger/MediaController$MediaEditState;->highQuality:Z

    if-eqz v6, :cond_8

    .line 12834
    invoke-virtual {v14}, Lorg/telegram/messenger/MediaController$PhotoEntry;->clone()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v6

    iput-object v6, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->originalPhotoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    goto :goto_4

    .line 12836
    :cond_7
    iget-object v6, v14, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 12837
    iput-object v6, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    .line 12839
    :cond_8
    :goto_4
    iget-object v6, v14, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iput-object v6, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->thumbPath:Ljava/lang/String;

    .line 12840
    iget-object v6, v14, Lorg/telegram/messenger/MediaController$MediaEditState;->coverPath:Ljava/lang/String;

    iput-object v6, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->coverPath:Ljava/lang/String;

    .line 12841
    iget-object v6, v14, Lorg/telegram/messenger/MediaController$MediaEditState;->coverPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

    iput-object v6, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->coverPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 12842
    iget-boolean v6, v14, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    iput-boolean v6, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->isVideo:Z

    .line 12843
    iget-object v6, v14, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    if-eqz v6, :cond_9

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    :goto_5
    iput-object v6, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    .line 12844
    iget-object v6, v14, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iput-object v6, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->entities:Ljava/util/ArrayList;

    .line 12845
    iget-object v6, v14, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    iput-object v6, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->masks:Ljava/util/ArrayList;

    .line 12846
    iget v6, v14, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iput v6, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->ttl:I

    .line 12847
    iget-object v6, v14, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object v6, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 12848
    iget-boolean v6, v14, Lorg/telegram/messenger/MediaController$PhotoEntry;->canDeleteAfter:Z

    iput-boolean v6, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->canDeleteAfter:Z

    .line 12849
    iget-object v6, v14, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    invoke-static {v6}, Lorg/telegram/messenger/SendMessagesHelper;->checkUpdateStickersOrder(Ljava/lang/CharSequence;)Z

    move-result v6

    iput-boolean v6, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->updateStickersOrder:Z

    .line 12850
    iget-boolean v6, v14, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    iput-boolean v6, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->hasMediaSpoilers:Z

    .line 12851
    iget-wide v5, v14, Lorg/telegram/messenger/MediaController$PhotoEntry;->starsAmount:J

    iput-wide v5, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->stars:J

    .line 12852
    iget-object v5, v14, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-nez v5, :cond_a

    iget-boolean v5, v14, Lorg/telegram/messenger/MediaController$MediaEditState;->highQuality:Z

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    goto :goto_6

    :cond_a
    move v5, v8

    :goto_6
    iput-boolean v5, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->highQuality:Z

    .line 12853
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12854
    invoke-virtual {v14}, Lorg/telegram/messenger/MediaController$PhotoEntry;->reset()V

    :goto_7
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_b
    if-nez v9, :cond_c

    .line 12858
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    iget-object v6, v6, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    iget-object v10, v10, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->entities:Ljava/util/ArrayList;

    invoke-static {v5, v6, v10}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mfillEditingMediaWithCaption(Lorg/telegram/ui/ChatActivity;Ljava/lang/CharSequence;Ljava/util/ArrayList;)V

    .line 12859
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    iget-boolean v5, v5, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->updateStickersOrder:Z

    move/from16 v19, v5

    goto :goto_8

    :cond_c
    move/from16 v19, v8

    .line 12862
    :goto_8
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->needResendWhenEdit()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 12863
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v5, Lorg/telegram/ui/ChatActivity;->messageSuggestionParams:Lorg/telegram/messenger/MessageSuggestionParams;

    if-eqz v6, :cond_d

    :goto_9
    move-object/from16 v30, v6

    goto :goto_a

    .line 12864
    :cond_d
    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;

    invoke-static {v5}, Lorg/telegram/messenger/MessageSuggestionParams;->of(Lorg/telegram/tgnet/TLRPC$SuggestedPost;)Lorg/telegram/messenger/MessageSuggestionParams;

    move-result-object v6

    goto :goto_9

    .line 12865
    :goto_a
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v10

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    move v13, v8

    iget-object v8, v6, Lorg/telegram/ui/ChatActivity;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->getThreadMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v14

    const/4 v15, 0x4

    if-eq v1, v15, :cond_f

    if-eqz p9, :cond_e

    goto :goto_b

    :cond_e
    move-object v4, v5

    move-object v5, v12

    move v12, v13

    goto :goto_c

    :cond_f
    :goto_b
    move-object v4, v5

    move-object v5, v12

    const/4 v12, 0x1

    :goto_c
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v18

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v15, v13, Lorg/telegram/ui/ChatActivity;->quickReplyShortcut:Ljava/lang/String;

    invoke-virtual {v13}, Lorg/telegram/ui/ChatActivity;->getQuickReplyId()I

    move-result v22

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v13}, Lorg/telegram/ui/ChatActivity;->getSendMonoForumPeerId()J

    move-result-wide v28

    move v13, v9

    move-object v9, v6

    move-wide/from16 v34, v10

    move v11, v7

    move-wide/from16 v6, v34

    const/4 v10, 0x0

    move/from16 v21, v11

    move-object v11, v14

    const/4 v14, 0x0

    const/16 v23, 0x4

    const/16 v20, 0x0

    move/from16 v16, p4

    move/from16 v17, p5

    move/from16 v25, p8

    move-wide/from16 v26, p10

    move-object/from16 v31, v2

    move/from16 v33, v13

    move/from16 v32, v21

    move/from16 v2, v23

    move/from16 v13, p2

    move-wide/from16 v23, p6

    move-object/from16 v21, v15

    move/from16 v15, p3

    invoke-static/range {v4 .. v30}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingMedia(Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;ZZLorg/telegram/messenger/MessageObject;ZIIIZLandroidx/core/view/inputmethod/InputContentInfoCompat;Ljava/lang/String;IJZJJLorg/telegram/messenger/MessageSuggestionParams;)V

    goto :goto_f

    :cond_10
    move-object/from16 v31, v2

    move/from16 v32, v7

    move/from16 v33, v9

    move-object v5, v12

    const/4 v2, 0x4

    .line 12867
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v6

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreplyingMessageObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->getThreadMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v9

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v11

    if-eq v1, v2, :cond_12

    if-eqz p9, :cond_11

    goto :goto_d

    :cond_11
    const/4 v12, 0x0

    goto :goto_e

    :cond_12
    :goto_d
    const/4 v12, 0x1

    :goto_e
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v14, v10, Lorg/telegram/ui/ChatActivity;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v18

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v13, v10, Lorg/telegram/ui/ChatActivity;->quickReplyShortcut:Ljava/lang/String;

    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->getQuickReplyId()I

    move-result v22

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->getSendMonoForumPeerId()J

    move-result-wide v28

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v10, v10, Lorg/telegram/ui/ChatActivity;->messageSuggestionParams:Lorg/telegram/messenger/MessageSuggestionParams;

    move-object/from16 v30, v10

    const/4 v10, 0x0

    const/16 v20, 0x0

    move/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p5

    move-wide/from16 v23, p6

    move/from16 v25, p8

    move-wide/from16 v26, p10

    move-object/from16 v21, v13

    move/from16 v13, p2

    invoke-static/range {v4 .. v30}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingMedia(Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;ZZLorg/telegram/messenger/MessageObject;ZIIIZLandroidx/core/view/inputmethod/InputContentInfoCompat;Ljava/lang/String;IJZJJLorg/telegram/messenger/MessageSuggestionParams;)V

    :goto_f
    add-int/lit8 v9, v33, 0x1

    move/from16 v4, p8

    move v5, v2

    move-object/from16 v2, v31

    move/from16 v7, v32

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_13
    move-object/from16 v31, v2

    .line 12870
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mafterMessageSend(Lorg/telegram/ui/ChatActivity;)V

    .line 12871
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_14
    move-object/from16 v31, v2

    :goto_10
    if-eqz p4, :cond_16

    .line 12874
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscheduledMessagesCount(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    .line 12875
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v13, 0x0

    invoke-static {v1, v13}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscheduledMessagesCount(Lorg/telegram/ui/ChatActivity;I)V

    .line 12877
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscheduledMessagesCount(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    invoke-virtual/range {v31 .. v31}, Ljava/util/HashMap;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscheduledMessagesCount(Lorg/telegram/ui/ChatActivity;I)V

    .line 12878
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdateScheduledInterface(Lorg/telegram/ui/ChatActivity;Z)V

    :cond_16
    :goto_11
    return-void
.end method

.method public didSelectBot(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 3

    .line 12894
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    .line 12895
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 12898
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 12899
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    :cond_1
    :goto_0
    return-void
.end method

.method public doOnIdle(Ljava/lang/Runnable;)V
    .locals 1

    .line 12914
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatActivity;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method public needEnterComment()Z
    .locals 1

    .line 12909
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->needEnterText()Z

    move-result v0

    return v0
.end method

.method public onCameraOpened()V
    .locals 1

    .line 12904
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    return-void
.end method

.method public synthetic onWallpaperSelected(Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$onWallpaperSelected(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic openAvatarsSearch()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$openAvatarsSearch(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

    return-void
.end method

.method public synthetic selectItemOnClicking()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$selectItemOnClicking(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic sendAudio(Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIIJZJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p10}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$sendAudio(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIIJZJ)V

    return-void
.end method
