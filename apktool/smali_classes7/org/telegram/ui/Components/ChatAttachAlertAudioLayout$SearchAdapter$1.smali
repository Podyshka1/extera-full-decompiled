.class Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter$1;
.super Lorg/telegram/ui/Cells/SharedAudioCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 746
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Cells/SharedAudioCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public needPlayMessage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 4

    .line 749
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->-$$Nest$fputplayingAudio(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Lorg/telegram/messenger/MessageObject;)V

    .line 750
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 751
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, p1, v2, v3}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;J)Z

    move-result p1

    return p1
.end method
