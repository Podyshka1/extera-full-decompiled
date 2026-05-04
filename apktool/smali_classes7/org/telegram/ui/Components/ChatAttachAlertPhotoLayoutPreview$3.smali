.class Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$3;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 166
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetgroupsView(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
