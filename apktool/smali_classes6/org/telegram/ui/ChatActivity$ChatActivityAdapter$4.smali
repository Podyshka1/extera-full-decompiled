.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;
.super Lorg/telegram/ui/Cells/BotAskCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 37078
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Cells/BotAskCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public getSideMenuWidth()I
    .locals 1

    .line 37081
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuWidth(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    return v0
.end method
