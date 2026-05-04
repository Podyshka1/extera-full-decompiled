.class Lorg/telegram/ui/Stories/recorder/PaintView$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/PaintView;->showLocationAlert(Lorg/telegram/ui/Components/Paint/Views/LocationView;Lorg/telegram/messenger/Utilities$Callback2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/PaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    .line 2181
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$25;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didPressedButton(IZZIIJZZJ)V
    .locals 0

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

.method public synthetic selectItemOnClicking()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$selectItemOnClicking(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic sendAudio(Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIIJZJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p10}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$sendAudio(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIIJZJ)V

    return-void
.end method
