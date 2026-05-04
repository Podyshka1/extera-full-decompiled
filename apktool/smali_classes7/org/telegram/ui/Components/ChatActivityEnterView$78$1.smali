.class Lorg/telegram/ui/Components/ChatActivityEnterView$78$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView$78;->onGifSelectedForAddCaption(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isCaptionAbove:Z

.field final synthetic this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$78;

.field final synthetic val$entry:Lorg/telegram/messenger/MediaController$PhotoEntry;

.field final synthetic val$gif:Ljava/lang/Object;

.field final synthetic val$parent:Ljava/lang/Object;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView$78;Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    .locals 0

    .line 11725
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$1;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$78;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$1;->val$gif:Ljava/lang/Object;

    iput-object p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$1;->val$query:Ljava/lang/String;

    iput-object p5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$1;->val$parent:Ljava/lang/Object;

    iput-object p6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$1;->val$entry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowCaption()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public allowSendingSubmenu()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canCaptureMorePhotos()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canEdit(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic canLoadMoreAvatars()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider$-CC;->$default$canLoadMoreAvatars(Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    move-result v0

    return v0
.end method

.method public canMoveCaptionAbove()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canReplace(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public canScrollAway()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cancelButtonPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public closeKeyboard()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public deleteImageAtIndex(I)V
    .locals 0

    return-void
.end method

.method public synthetic forceAllInGroup()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider$-CC;->$default$forceAllInGroup(Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    move-result v0

    return v0
.end method

.method public getDeleteMessageString()Ljava/lang/String;
    .locals 1

    .line 11840
    const-string v0, ""

    return-object v0
.end method

.method public synthetic getDialogId()J
    .locals 2

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider$-CC;->$default$getDialogId(Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEditingMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhotoIndex(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZZ)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSelectedCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedPhotos()Ljava/util/HashMap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedPhotosOrder()Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTotalImageCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCaptionAbove()Z
    .locals 1

    .line 11929
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$1;->isCaptionAbove:Z

    return v0
.end method

.method public synthetic isEditingMessage()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider$-CC;->$default$isEditingMessage(Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    move-result v0

    return v0
.end method

.method public synthetic isEditingMessageResend()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider$-CC;->$default$isEditingMessageResend(Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    move-result v0

    return v0
.end method

.method public synthetic isEditingSticker()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider$-CC;->$default$isEditingSticker(Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    move-result v0

    return v0
.end method

.method public isPhotoChecked(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public loadMore()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public moveCaptionAbove(Z)V
    .locals 0

    .line 11924
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$1;->isCaptionAbove:Z

    return-void
.end method

.method public needAddMorePhotos()V
    .locals 0

    return-void
.end method

.method public onApplyCaption(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onClose()V
    .locals 0

    return-void
.end method

.method public synthetic onDeletePhoto(I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider$-CC;->$default$onDeletePhoto(Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;I)Z

    move-result p1

    return p1
.end method

.method public synthetic onEditModeChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider$-CC;->$default$onEditModeChanged(Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Z)V

    return-void
.end method

.method public onOpen()V
    .locals 1

    .line 11900
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->openKeyboard()V

    return-void
.end method

.method public synthetic onPreClose()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider$-CC;->$default$onPreClose(Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)V

    return-void
.end method

.method public synthetic onPreOpen()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider$-CC;->$default$onPreOpen(Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)V

    return-void
.end method

.method public synthetic onReleasePlayerBeforeClose(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider$-CC;->$default$onReleasePlayerBeforeClose(Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;I)V

    return-void
.end method

.method public openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public replaceButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .locals 0

    return-void
.end method

.method public scaleToFill()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;ZIIZ)V
    .locals 10

    .line 11773
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$1;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$78;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$1;->val$view:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$1;->val$gif:Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$1;->val$query:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$1;->val$parent:Ljava/lang/Object;

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$1;->val$entry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$1;->isCaptionAbove:Z

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->onGifSelected(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZIILorg/telegram/messenger/MediaController$PhotoEntry;Z)V

    return-void
.end method

.method public setPhotoChecked(ILorg/telegram/messenger/VideoEditedInfo;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setPhotoUnchecked(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic spoilerPressed()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider$-CC;->$default$spoilerPressed(Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)V

    return-void
.end method

.method public updatePhotoAtIndex(I)V
    .locals 0

    return-void
.end method

.method public willHidePhotoViewer()V
    .locals 0

    return-void
.end method

.method public willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .locals 0

    return-void
.end method
