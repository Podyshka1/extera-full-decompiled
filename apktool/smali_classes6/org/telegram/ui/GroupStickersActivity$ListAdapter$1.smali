.class Lorg/telegram/ui/GroupStickersActivity$ListAdapter$1;
.super Lorg/telegram/ui/Components/URLSpanNoUnderline;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/GroupStickersActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupStickersActivity$ListAdapter;Ljava/lang/String;)V
    .locals 0

    .line 790
    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 793
    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupStickersActivity;->access$300(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    const/4 v1, 0x1

    const-string v2, "stickers"

    invoke-virtual {p1, v2, v0, v1}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    return-void
.end method
