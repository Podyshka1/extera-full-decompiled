.class Lorg/telegram/ui/Stories/PeerStoriesView$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->createChatAttachView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 3846
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$25;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectFiles(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIIJZJ)V
    .locals 26

    move-object/from16 v0, p0

    .line 3849
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$25;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v13, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v13, :cond_2

    .line 3850
    instance-of v2, v13, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 3853
    :cond_0
    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mgetAccountInstance(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v3

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$25;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v9

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v5, p1

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move/from16 v16, p5

    move/from16 v17, p6

    move-wide/from16 v24, p11

    invoke-static/range {v3 .. v25}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocuments(Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Lorg/telegram/messenger/MessageObject;ZILandroidx/core/view/inputmethod/InputContentInfoCompat;Ljava/lang/String;IJZJ)V

    .line 3854
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$25;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const-wide/16 v2, 0x0

    cmp-long v2, p11, v2

    if-gtz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mafterMessageSend(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic didSelectPhotos(Ljava/util/ArrayList;ZIIJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate$-CC;->$default$didSelectPhotos(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;Ljava/util/ArrayList;ZIIJ)V

    return-void
.end method

.method public startDocumentSelectActivity()V
    .locals 3

    .line 3860
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3862
    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3864
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3865
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$25;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryViewer(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Stories/StoryViewer;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3867
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic startMusicSelectActivity()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate$-CC;->$default$startMusicSelectActivity(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;)V

    return-void
.end method
