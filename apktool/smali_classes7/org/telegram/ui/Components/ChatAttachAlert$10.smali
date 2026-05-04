.class Lorg/telegram/ui/Components/ChatAttachAlert$10;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

.field final synthetic val$entry:Lorg/telegram/messenger/MediaController$PhotoEntry;


# direct methods
.method public static synthetic $r8$lambda$STQ3qrwo2k8RQSLLrQ1j6MQssdA(Lorg/telegram/ui/Components/ChatAttachAlert$10;Lorg/telegram/messenger/MediaController$PhotoEntry;ZIZLjava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatAttachAlert$10;->lambda$sendButtonPressed$0(Lorg/telegram/messenger/MediaController$PhotoEntry;ZIZLjava/lang/Long;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    .locals 0

    .line 2328
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$10;->val$entry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    return-void
.end method

.method private synthetic lambda$sendButtonPressed$0(Lorg/telegram/messenger/MediaController$PhotoEntry;ZIZLjava/lang/Long;)V
    .locals 12

    .line 2341
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2342
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2343
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2344
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2345
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;->isCaptionAbove()Z

    move-result v8

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move v3, p2

    move v4, p3

    move/from16 v9, p4

    invoke-interface/range {v0 .. v11}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIIJZZJ)V

    return-void
.end method


# virtual methods
.method public allowCaption()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;ZIIZ)V
    .locals 8

    .line 2335
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 p5, 0x1

    iput-boolean p5, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->sent:Z

    .line 2336
    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    if-nez v0, :cond_0

    return-void

    .line 2339
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$10;->val$entry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iput-object p2, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 2340
    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;->getDialogId()J

    move-result-wide v0

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAdditionalMessagesCount()I

    move-result p2

    add-int/2addr p2, p5

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$10;->val$entry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$10$$ExternalSyntheticLambda0;

    move-object v3, p0

    move v5, p3

    move v6, p4

    move v7, p6

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$10$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$10;Lorg/telegram/messenger/MediaController$PhotoEntry;ZIZ)V

    invoke-static {p1, v0, v1, p2, v2}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    return-void
.end method
