.class Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$1;
.super Lorg/telegram/ui/Components/StickerEmptyView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    .line 1615
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$1;->this$1:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 1618
    invoke-super {p0}, Lorg/telegram/ui/Components/StickerEmptyView;->onAttachedToWindow()V

    .line 1619
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    return-void
.end method
