.class Lorg/telegram/ui/FilteredSearchView$2;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FilteredSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/FilteredSearchView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/FilteredSearchView;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lorg/telegram/ui/FilteredSearchView$2;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZZ)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 8

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 188
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView$2;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object p3, p3, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 189
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    const/4 p5, 0x0

    move v0, p5

    :goto_0
    if-ge v0, p4, :cond_c

    .line 190
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    .line 191
    new-array v2, v2, [I

    .line 193
    instance-of v3, v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz v3, :cond_3

    .line 194
    move-object v3, v1

    check-cast v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    move-object v5, p2

    move v4, p5

    :goto_1
    const/4 v6, 0x6

    if-ge v4, v6, :cond_6

    .line 196
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->getMessageObject(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 200
    :cond_1
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 201
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->getImageView(I)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v5

    .line 202
    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v6

    .line 203
    invoke-virtual {v5, v2}, Landroid/view/View;->getLocationInWindow([I)V

    move-object v5, v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 206
    :cond_3
    instance-of v3, v1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v3, :cond_4

    .line 207
    move-object v3, v1

    check-cast v3, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 208
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    .line 209
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 210
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v3

    .line 211
    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    .line 212
    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    move-object v5, v4

    goto :goto_2

    .line 214
    :cond_4
    instance-of v3, v1, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v3, :cond_5

    .line 215
    move-object v3, v1

    check-cast v3, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 216
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ContextLinkCell;->getParentObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_5

    .line 217
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 218
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ContextLinkCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    .line 219
    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    goto :goto_2

    :cond_5
    move-object v5, p2

    :cond_6
    :goto_2
    if-eqz v5, :cond_b

    .line 223
    new-instance p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {p2}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 224
    aget p4, v2, p5

    iput p4, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    const/4 p4, 0x1

    .line 225
    aget v0, v2, p4

    iput v0, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 226
    iput-object p3, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 227
    invoke-virtual {p3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 228
    aget v0, v2, p4

    neg-int v0, v0

    iput v0, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->animatingImageViewYOffset:I

    .line 229
    iput-object v5, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 230
    iput-boolean p5, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->allowTakeAnimation:Z

    .line 231
    invoke-virtual {v5, p4}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius(Z)[I

    move-result-object p4

    iput-object p4, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:[I

    .line 232
    iget-object p4, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p4}, Lorg/telegram/messenger/ImageReceiver;->getBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    move-result-object p4

    iput-object p4, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    .line 233
    iget-object p4, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {p4, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 234
    iput p5, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    .line 236
    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 237
    invoke-virtual {p3}, Lorg/telegram/ui/Components/RecyclerListView;->getPinnedHeader()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 240
    instance-of p4, v1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    const/high16 v0, 0x41000000    # 8.0f

    if-eqz p4, :cond_7

    .line 241
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    goto :goto_3

    :cond_7
    move p4, p5

    .line 243
    :goto_3
    iget v2, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    sub-int/2addr p4, v2

    .line 244
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-le p4, v2, :cond_8

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p4, p1

    neg-int p1, p4

    invoke-virtual {p3, p5, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return-object p2

    .line 247
    :cond_8
    iget p1, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p4

    sub-int/2addr p1, p4

    .line 248
    instance-of p4, v1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz p4, :cond_9

    .line 249
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    sub-int/2addr p1, p4

    :cond_9
    if-ltz p1, :cond_a

    .line 252
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result p4

    add-int/2addr p1, p4

    invoke-virtual {p3, p5, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_a
    return-object p2

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_c
    return-object p2
.end method

.method public getTotalImageCount()I
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$2;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-static {v0}, Lorg/telegram/ui/FilteredSearchView;->-$$Nest$fgettotalCount(Lorg/telegram/ui/FilteredSearchView;)I

    move-result v0

    return v0
.end method

.method public loadMore()Z
    .locals 12

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$2;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-static {v0}, Lorg/telegram/ui/FilteredSearchView;->-$$Nest$fgetendReached(Lorg/telegram/ui/FilteredSearchView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView$2;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-wide v2, v1, Lorg/telegram/ui/FilteredSearchView;->currentSearchDialogId:J

    iget-wide v4, v1, Lorg/telegram/ui/FilteredSearchView;->currentSearchMinDate:J

    iget-wide v6, v1, Lorg/telegram/ui/FilteredSearchView;->currentSearchMaxDate:J

    iget-object v8, v1, Lorg/telegram/ui/FilteredSearchView;->currentSearchFilter:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget-boolean v9, v1, Lorg/telegram/ui/FilteredSearchView;->currentIncludeFolder:Z

    iget-object v10, v1, Lorg/telegram/ui/FilteredSearchView;->lastMessagesSearchString:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/ui/FilteredSearchView;->search(JJJLorg/telegram/ui/Adapters/FiltersView$MediaFilterData;ZLjava/lang/String;Z)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
