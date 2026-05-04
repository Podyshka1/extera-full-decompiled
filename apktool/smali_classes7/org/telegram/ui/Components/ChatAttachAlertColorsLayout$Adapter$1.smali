.class Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter$1;
.super Lorg/telegram/ui/Cells/WallpaperCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;Landroid/content/Context;I)V
    .locals 0

    .line 246
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Cells/WallpaperCell;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onWallpaperClick(Ljava/lang/Object;I)V
    .locals 0

    .line 249
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->wallpaperConsumer:Landroidx/core/util/Consumer;

    if-eqz p2, :cond_0

    .line 250
    invoke-interface {p2, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
