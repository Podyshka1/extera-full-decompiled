.class Lorg/telegram/ui/Adapters/DialogsAdapter$3;
.super Lorg/telegram/ui/Cells/DialogsRequestedEmptyCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroid/content/Context;)V
    .locals 0

    .line 665
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/DialogsRequestedEmptyCell;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onButtonClick()V
    .locals 1

    .line 668
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->onCreateGroupForThisClick()V

    return-void
.end method
