.class Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter$1;
.super Lorg/telegram/ui/Cells/SharedAudioCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 7996
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Cells/SharedAudioCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public needPlayMessage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 4

    .line 7999
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8003
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8004
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmergeDialogId(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v2

    invoke-virtual {v0, v1, p1, v2, v3}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;J)Z

    move-result p1

    return p1

    :cond_1
    return v1

    .line 8000
    :cond_2
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    .line 8001
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    if-eqz p1, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;)I

    move-result v3

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/MediaController;->setVoiceMessagesPlaylist(Ljava/util/ArrayList;Z)V

    return p1
.end method
