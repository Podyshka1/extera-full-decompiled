.class abstract Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BasePhotoProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    return-void
.end method


# virtual methods
.method public getPhotoIndex(I)I
    .locals 1

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$mgetPhotoEntryAtPosition(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 354
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSelectedCount()I
    .locals 1

    .line 335
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedPhotos()Ljava/util/HashMap;
    .locals 1

    .line 345
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSelectedPhotosOrder()Ljava/util/ArrayList;
    .locals 1

    .line 340
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isPhotoChecked(I)Z
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$mgetPhotoEntryAtPosition(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 271
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

.method public setPhotoChecked(ILorg/telegram/messenger/VideoEditedInfo;)I
    .locals 8

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    const/4 v1, -0x1

    if-ltz v0, :cond_0

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;->isPhotoChecked(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 279
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$mgetPhotoEntryAtPosition(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 283
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$mcheckSendMediaEnabled(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/messenger/MediaController$PhotoEntry;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 286
    :cond_2
    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$mmaxCount(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v4

    if-le v2, v4, :cond_3

    return v1

    .line 291
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$maddToSelectedPhotos(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/messenger/MediaController$PhotoEntry;I)I

    move-result v2

    const/4 v4, 0x0

    if-ne v2, v1, :cond_4

    .line 292
    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget v5, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v5, v3

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    .line 295
    iput-object v5, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move v5, v4

    .line 297
    :goto_0
    iput-object p2, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 299
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    move v0, v4

    :goto_1
    if-ge v0, p2, :cond_7

    .line 301
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 302
    instance-of v7, v6, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v7, :cond_6

    .line 303
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p1, :cond_6

    .line 305
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_5

    iget-boolean p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    if-eqz p2, :cond_5

    .line 306
    check-cast v6, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-virtual {v6, v2, v5, v4}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(IZZ)V

    goto :goto_2

    .line 308
    :cond_5
    check-cast v6, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-virtual {v6, v1, v5, v4}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(IZZ)V

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 314
    :cond_7
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetcameraPhotoRecyclerView(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    move v0, v4

    :goto_3
    if-ge v0, p2, :cond_a

    .line 316
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetcameraPhotoRecyclerView(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 317
    instance-of v7, v6, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v7, :cond_9

    .line 318
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p1, :cond_9

    .line 320
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p2, p2, Lorg/telegram/ui/ChatActivity;

    if-eqz p2, :cond_8

    iget-boolean p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    if-eqz p1, :cond_8

    .line 321
    check-cast v6, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-virtual {v6, v2, v5, v4}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(IZZ)V

    goto :goto_4

    .line 323
    :cond_8
    check-cast v6, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-virtual {v6, v1, v5, v4}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(IZZ)V

    goto :goto_4

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 329
    :cond_a
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v5, :cond_b

    goto :goto_5

    :cond_b
    const/4 v3, 0x2

    :goto_5
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCountButton(I)V

    return v2
.end method

.method public spoilerPressed()V
    .locals 2

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onMenuItemClick(I)V

    return-void
.end method
