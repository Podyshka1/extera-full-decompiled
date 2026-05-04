.class Lorg/telegram/ui/ChatActivity$95;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->openEditingMessageInPhotoEditor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$entry:Lorg/telegram/messenger/MediaController$PhotoEntry;

.field final synthetic val$object:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    .locals 0

    .line 20122
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$95;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$95;->val$object:Lorg/telegram/messenger/MessageObject;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$95;->val$entry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public allowSendingSubmenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canCaptureMorePhotos()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public closeKeyboard()Z
    .locals 2

    .line 20169
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$95;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20170
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$95;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEditingMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 2

    .line 20152
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$95;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$95;->val$object:Lorg/telegram/messenger/MessageObject;

    if-ne v0, v1, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZZ)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 6

    .line 20125
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$95;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$95;->val$object:Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    const/4 v5, 0x1

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetPlaceForPhoto(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZZ)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object p1

    return-object p1
.end method

.method public onApplyCaption(Ljava/lang/CharSequence;)V
    .locals 2

    .line 20164
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$95;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;ZIIZ)V
    .locals 9

    .line 20130
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$95;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, v0, Lorg/telegram/ui/ChatActivity;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object p5, p0, Lorg/telegram/ui/ChatActivity$95;->val$object:Lorg/telegram/messenger/MessageObject;

    if-eq p1, p5, :cond_0

    return-void

    .line 20133
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$95;->val$entry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean p1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->isCropped:Z

    if-nez p1, :cond_2

    iget-boolean p1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->isPainted:Z

    if-nez p1, :cond_2

    iget-boolean p1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->isFiltered:Z

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 20136
    :cond_1
    iget-object p1, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneEditingMessage()V

    return-void

    :cond_2
    :goto_0
    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    .line 20134
    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/ChatActivity;->sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIIZJ)V

    return-void
.end method
