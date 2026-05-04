.class Lorg/telegram/ui/ProfileActivity$ListAdapter$5;
.super Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 13632
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    invoke-direct {p0, p2, p3}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onSavedMusicClick()V
    .locals 1

    .line 13635
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$monSavedMusicClick(Lorg/telegram/ui/ProfileActivity;)V

    return-void
.end method
