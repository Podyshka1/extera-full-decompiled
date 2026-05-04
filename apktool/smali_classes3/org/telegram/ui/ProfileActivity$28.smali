.class Lorg/telegram/ui/ProfileActivity$28;
.super Lorg/telegram/ui/Stories/ProfileStoriesView;
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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;IJZLandroid/view/View;Lorg/telegram/ui/ProfileActivity$AvatarImageView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;)V
    .locals 0

    .line 5907
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$28;->this$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p10, p0, Lorg/telegram/ui/ProfileActivity$28;->val$context:Landroid/content/Context;

    move-object p1, p0

    invoke-direct/range {p1 .. p9}, Lorg/telegram/ui/Stories/ProfileStoriesView;-><init>(Landroid/content/Context;IJZLandroid/view/View;Lorg/telegram/ui/ProfileActivity$AvatarImageView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onLongPress()V
    .locals 2

    .line 5925
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$28;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mopenAvatar(Lorg/telegram/ui/ProfileActivity;Z)V

    return-void
.end method

.method protected onTap(Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V
    .locals 4

    .line 5910
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$28;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide v0

    .line 5911
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$28;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v2

    .line 5912
    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->hasUploadingStories(J)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->isLastUploadingFailed(J)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 5914
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$28;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$28;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$28;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$28;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$28;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 5915
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$28;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$28;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$28;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    return-void

    .line 5916
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$28;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$28;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$28;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5917
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$28;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$28;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$28;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    return-void

    .line 5919
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$28;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mopenAvatar(Lorg/telegram/ui/ProfileActivity;)V

    return-void

    .line 5913
    :cond_3
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$28;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$28;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1, p1}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;JLorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    return-void
.end method
