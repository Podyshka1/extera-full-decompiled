.class Lorg/telegram/ui/ProfileActivity$3;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0

    .line 819
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$3;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZZ)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 6

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return-object p1

    .line 827
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/ProfileActivity$3;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarContainer(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getScaleX()F

    move-result p3

    const p4, 0x3f75c28f    # 0.96f

    cmpl-float p3, p3, p4

    if-lez p3, :cond_1

    if-eqz p5, :cond_1

    return-object p1

    .line 832
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/ProfileActivity$3;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_2

    .line 833
    iget-object p3, p0, Lorg/telegram/ui/ProfileActivity$3;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$3;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p3, p5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 834
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz p3, :cond_3

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz p3, :cond_3

    goto :goto_0

    .line 837
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/ProfileActivity$3;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_3

    .line 838
    iget-object p3, p0, Lorg/telegram/ui/ProfileActivity$3;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$3;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p3, p5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 839
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz p3, :cond_3

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    move-object p3, p1

    :goto_0
    if-eqz p3, :cond_9

    .line 844
    iget p5, p3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v0, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne p5, v0, :cond_9

    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long p5, v0, v4

    if-nez p5, :cond_9

    iget p3, p3, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-ne p3, p2, :cond_9

    const/4 p2, 0x2

    .line 845
    new-array p2, p2, [I

    .line 846
    iget-object p3, p0, Lorg/telegram/ui/ProfileActivity$3;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarImage(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 847
    new-instance p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {p3}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    const/4 p5, 0x0

    .line 848
    aget v0, p2, p5

    iput v0, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    const/4 v0, 0x1

    .line 849
    aget p2, p2, v0

    iput p2, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 850
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$3;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarImage(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    move-result-object p2

    iput-object p2, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 851
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$3;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarImage(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    iput-object p2, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 852
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$3;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v4

    cmp-long p2, v4, v2

    if-eqz p2, :cond_4

    .line 853
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$3;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v1

    iput-wide v1, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->dialogId:J

    goto :goto_1

    .line 854
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$3;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v4

    cmp-long p2, v4, v2

    if-eqz p2, :cond_5

    .line 855
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$3;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v1

    neg-long v1, v1

    iput-wide v1, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->dialogId:J

    .line 857
    :cond_5
    :goto_1
    iget-object p2, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    move-result-object p2

    iput-object p2, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    if-nez p2, :cond_6

    return-object p1

    :cond_6
    const-wide/16 p1, -0x1

    .line 861
    iput-wide p1, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->size:J

    .line 862
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$3;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarImage(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius(Z)[I

    move-result-object p1

    iput-object p1, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:[I

    .line 863
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$3;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarContainer(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    iput p1, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    .line 864
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$3;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide p1

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$3;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long p1, p1, v1

    if-nez p1, :cond_7

    move p1, v0

    goto :goto_2

    :cond_7
    move p1, p5

    :goto_2
    iput-boolean p1, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->canEdit:Z

    .line 865
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$3;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarContainer(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    cmpl-float p1, p1, p4

    if-lez p1, :cond_8

    move p5, v0

    :cond_8
    iput-boolean p5, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->fadeIn:Z

    return-object p3

    :cond_9
    return-object p1
.end method

.method public openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 878
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$3;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetimageUpdater(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lorg/telegram/ui/Components/ImageUpdater;->openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public willHidePhotoViewer()V
    .locals 2

    .line 873
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$3;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarImage(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    return-void
.end method
