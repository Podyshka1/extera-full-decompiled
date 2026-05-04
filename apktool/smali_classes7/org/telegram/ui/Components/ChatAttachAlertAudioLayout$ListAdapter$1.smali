.class Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter$1;
.super Lorg/telegram/ui/Cells/SharedAudioCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Cells/SharedAudioCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public needPlayMessage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 4

    .line 583
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->-$$Nest$fputplayingAudio(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Lorg/telegram/messenger/MessageObject;)V

    .line 584
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 585
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, p1, v2, v3}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;J)Z

    move-result p1

    return p1
.end method
