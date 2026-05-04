.class Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector$RecyclerViewItemRangeSelectorDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    .line 1073
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$7;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isIndexSelectable(I)Z
    .locals 1

    .line 1096
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$7;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->getItemViewType(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isSelected(I)Z
    .locals 1

    .line 1090
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$7;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->-$$Nest$mgetPhoto(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1091
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    iget p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onStartStopSelection(Z)V
    .locals 1

    .line 1101
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$7;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fputalertOnlyOnce(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)V

    .line 1102
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$7;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->hideSelector(Z)V

    return-void
.end method

.method public setSelected(Landroid/view/View;IZ)V
    .locals 0

    .line 1081
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$7;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetshouldSelect(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result p2

    if-ne p3, p2, :cond_1

    instance-of p2, p1, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-nez p2, :cond_0

    goto :goto_0

    .line 1084
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 1085
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->callDelegate()V

    :cond_1
    :goto_0
    return-void
.end method
