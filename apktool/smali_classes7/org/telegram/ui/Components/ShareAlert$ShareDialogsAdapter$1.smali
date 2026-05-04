.class Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter$1;
.super Lorg/telegram/ui/Cells/ShareDialogCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 3122
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Cells/ShareDialogCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected repostToCustomName()Ljava/lang/String;
    .locals 1

    .line 3125
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ShareAlert;->includeStoryFromMessage:Z

    if-eqz v0, :cond_0

    .line 3126
    sget v0, Lorg/telegram/messenger/R$string;->RepostToStory:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3128
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Cells/ShareDialogCell;->repostToCustomName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
