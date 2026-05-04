.class Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showPhotoAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field start:J

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

.field final synthetic val$chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    .line 1502
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$17;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$17;->val$chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didPressedButton(IZZIIJZZJ)V
    .locals 0

    .line 1513
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$17;->val$chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object p1

    .line 1514
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1515
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1517
    iget-object p2, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1520
    :cond_0
    iget-object p2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    .line 1522
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$17;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->createPhoto(Ljava/lang/String;Z)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->appearAnimation(Landroid/view/View;)V

    .line 1523
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$17;->val$chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    return-void

    .line 1526
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic didSelectBot(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$didSelectBot(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public synthetic doOnIdle(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$doOnIdle(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic needEnterComment()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$needEnterComment(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic onCameraOpened()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$onCameraOpened(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

    return-void
.end method

.method public synthetic onWallpaperSelected(Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$onWallpaperSelected(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic openAvatarsSearch()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$openAvatarsSearch(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

    return-void
.end method

.method public selectItemOnClicking()Z
    .locals 2

    .line 1506
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$17;->start:J

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic sendAudio(Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIIJZJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p10}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$sendAudio(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIIJZJ)V

    return-void
.end method
