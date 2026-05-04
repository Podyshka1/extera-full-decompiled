.class Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter$2;
.super Lorg/telegram/messenger/MessageObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;ILorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 0

    .line 10088
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter$2;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 1

    .line 10091
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget v0, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    return v0
.end method
