.class public Lorg/telegram/ui/PopupNotificationActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutTouch;
    }
.end annotation


# instance fields
.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private animationInProgress:Z

.field private animationStartTime:J

.field private audioViews:Ljava/util/ArrayList;

.field private avatarContainer:Landroid/widget/FrameLayout;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private centerButtonsView:Landroid/view/ViewGroup;

.field private centerView:Landroid/view/ViewGroup;

.field private chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field private classGuid:I

.field private countText:Landroid/widget/TextView;

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private currentMessageNum:I

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private finished:Z

.field private imageViews:Ljava/util/ArrayList;

.field private isReply:Z

.field private lastPrintString:Ljava/lang/CharSequence;

.field private lastResumedAccount:I

.field private leftButtonsView:Landroid/view/ViewGroup;

.field private leftView:Landroid/view/ViewGroup;

.field private messageContainer:Landroid/view/ViewGroup;

.field private moveStartX:F

.field private nameTextView:Landroid/widget/TextView;

.field private onAnimationEndRunnable:Ljava/lang/Runnable;

.field private onlineTextView:Landroid/widget/TextView;

.field private popupContainer:Landroid/widget/RelativeLayout;

.field private popupMessages:Ljava/util/ArrayList;

.field private rightButtonsView:Landroid/view/ViewGroup;

.field private rightView:Landroid/view/ViewGroup;

.field private setMessageObjects:[Lorg/telegram/messenger/MessageObject;

.field private startedMoving:Z

.field private statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

.field private textViews:Ljava/util/ArrayList;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$0ZtfsiHWK_MLtvB-GQtp_ZoMqlU(ILorg/telegram/messenger/MessageObject;Landroid/view/View;)V
    .locals 2

    .line 837
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    if-eqz p2, :cond_0

    .line 839
    invoke-static {p0}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object p0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/telegram/messenger/SendMessagesHelper;->sendNotificationCallback(JI[B)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$5gaHw3sWeNZ4pQxWjkqw2B1SIl4(Lorg/telegram/ui/PopupNotificationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->lambda$onTouchEventMy$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$JSvbhomm01LCd4Xny_VB_bH7l28(Lorg/telegram/ui/PopupNotificationActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PopupNotificationActivity;->lambda$getViewForMessage$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U6e_jRPoLMjbT3mRRQA-ZisOnaI(Lorg/telegram/ui/PopupNotificationActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PopupNotificationActivity;->lambda$onRequestPermissionsResult$0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VsYZeSnaYigUpXRF3xqbGqfrr9Q(Lorg/telegram/ui/PopupNotificationActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PopupNotificationActivity;->lambda$getViewForMessage$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h5vaCQOS0Y721s71pMjDPrRTnU4(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 824
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$kwBAGS9yRn8IwhZyfxNXJH8ukns(Lorg/telegram/ui/PopupNotificationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->lambda$onTouchEventMy$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$ssAOxiem_Dgar4K9BYc7qXKuSLo(Lorg/telegram/ui/PopupNotificationActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PopupNotificationActivity;->lambda$getViewForMessage$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tATYOa06YuqhJHFRUYIWoj8aDDc(Lorg/telegram/ui/PopupNotificationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->lambda$onTouchEventMy$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetavatarContainer(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchatActivityEnterView(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetclassGuid(Lorg/telegram/ui/PopupNotificationActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PopupNotificationActivity;->classGuid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentMessageNum(Lorg/telegram/ui/PopupNotificationActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/messenger/MessageObject;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmessageContainer(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonAnimationEndRunnable(Lorg/telegram/ui/PopupNotificationActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpopupContainer(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpopupMessages(Lorg/telegram/ui/PopupNotificationActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstartedMoving(Lorg/telegram/ui/PopupNotificationActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentMessageObject(Lorg/telegram/ui/PopupNotificationActivity;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputonAnimationEndRunnable(Lorg/telegram/ui/PopupNotificationActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyViewsLayoutParams(Lorg/telegram/ui/PopupNotificationActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PopupNotificationActivity;->applyViewsLayoutParams(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetNewMessage(Lorg/telegram/ui/PopupNotificationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->getNewMessage()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenCurrentMessage(Lorg/telegram/ui/PopupNotificationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->openCurrentMessage()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchToNextMessage(Lorg/telegram/ui/PopupNotificationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->switchToNextMessage()V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 86
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->textViews:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->imageViews:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->audioViews:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    const/4 v1, 0x5

    .line 109
    new-array v1, v1, [Lorg/telegram/ui/Components/StatusDrawable;

    iput-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    const/4 v1, -0x1

    .line 114
    iput v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->lastResumedAccount:I

    const/4 v1, 0x0

    .line 117
    iput-boolean v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->finished:Z

    .line 119
    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x3

    .line 120
    new-array v2, v2, [Lorg/telegram/messenger/MessageObject;

    iput-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->setMessageObjects:[Lorg/telegram/messenger/MessageObject;

    .line 121
    iput v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    .line 122
    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 123
    iput-boolean v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationInProgress:Z

    const-wide/16 v2, 0x0

    .line 124
    iput-wide v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationStartTime:J

    const/high16 v2, -0x40800000    # -1.0f

    .line 125
    iput v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->moveStartX:F

    .line 126
    iput-boolean v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    .line 127
    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    return-void
.end method

.method private applyViewsLayoutParams(I)V
    .locals 3

    .line 745
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 746
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 747
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 748
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v2, v0, :cond_0

    .line 749
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 750
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 752
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    neg-int v2, v0

    add-int/2addr v2, p1

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 754
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftButtonsView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    neg-int v2, v0

    add-int/2addr v2, p1

    int-to-float v2, v2

    .line 755
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 757
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 758
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 759
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v2, v0, :cond_3

    .line 760
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 761
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 763
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 765
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerButtonsView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    int-to-float v2, p1

    .line 766
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 768
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 769
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 770
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v2, v0, :cond_6

    .line 771
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 772
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 774
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    add-int v2, v0, p1

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 776
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightButtonsView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_8

    add-int/2addr v0, p1

    int-to-float p1, v0

    .line 777
    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 779
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private checkAndUpdateAvatar()V
    .locals 3

    .line 1379
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1382
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_2

    .line 1383
    iget v0, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1387
    :cond_1
    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1388
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v1, :cond_4

    .line 1389
    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 1390
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    return-void

    .line 1392
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_4

    .line 1393
    iget v0, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 1397
    :cond_3
    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 1398
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v1, :cond_4

    .line 1399
    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 1400
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private fixLayout()V
    .locals 2

    .line 1164
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1165
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PopupNotificationActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PopupNotificationActivity$6;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1177
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1178
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PopupNotificationActivity$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PopupNotificationActivity$7;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void
.end method

.method private getButtonsViewForMessage(IZ)Landroid/widget/LinearLayout;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 783
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    if-ltz v1, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    :cond_0
    return-object v3

    :cond_1
    const/4 v2, -0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_2

    .line 787
    iget-object v1, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    goto :goto_0

    .line 788
    :cond_2
    iget-object v6, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v1, v6, :cond_3

    move v1, v5

    .line 792
    :cond_3
    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 795
    iget-object v7, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 797
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    const-wide/32 v10, 0xbdb28

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    if-eqz v7, :cond_6

    .line 798
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    .line 799
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v5

    move v11, v10

    :goto_1
    if-ge v10, v9, :cond_7

    .line 800
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;

    .line 801
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v5

    :goto_2
    if-ge v14, v13, :cond_5

    .line 802
    iget-object v15, v12, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .line 803
    instance-of v15, v15, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;

    if-eqz v15, :cond_4

    add-int/lit8 v11, v11, 0x1

    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    move v11, v5

    .line 810
    :cond_7
    iget v8, v6, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    if-lez v11, :cond_b

    .line 812
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    .line 813
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v5

    :goto_3
    if-ge v10, v9, :cond_b

    .line 814
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;

    .line 815
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v5

    :goto_4
    if-ge v14, v13, :cond_a

    .line 816
    iget-object v15, v12, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .line 817
    instance-of v2, v15, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;

    if-eqz v2, :cond_9

    const/high16 v2, 0x42c80000    # 100.0f

    if-nez v3, :cond_8

    .line 819
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 820
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 821
    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 822
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 823
    const-string v5, "b"

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 824
    new-instance v5, Lorg/telegram/ui/PopupNotificationActivity$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lorg/telegram/ui/PopupNotificationActivity$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 827
    :cond_8
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move/from16 p1, v2

    const/high16 v2, 0x41800000    # 16.0f

    .line 828
    invoke-virtual {v5, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 829
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 830
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 831
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 832
    invoke-virtual {v5, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v2, 0x11

    .line 833
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 834
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    int-to-float v2, v11

    div-float v2, p1, v2

    const/4 v15, -0x1

    .line 835
    invoke-static {v15, v15, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 836
    new-instance v2, Lorg/telegram/ui/PopupNotificationActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, v8, v6}, Lorg/telegram/ui/PopupNotificationActivity$$ExternalSyntheticLambda5;-><init>(ILorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    add-int/lit8 v14, v14, 0x1

    const/4 v2, -0x1

    const/4 v5, 0x0

    goto :goto_4

    :cond_a
    add-int/lit8 v10, v10, 0x1

    const/4 v2, -0x1

    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_b
    if-eqz v3, :cond_f

    .line 848
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    .line 849
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v15, -0x1

    invoke-direct {v5, v15, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xc

    .line 850
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p2, :cond_e

    .line 853
    iget v6, v0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    if-ne v1, v6, :cond_c

    const/4 v1, 0x0

    .line 854
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_5

    :cond_c
    add-int/lit8 v7, v6, -0x1

    if-ne v1, v7, :cond_d

    neg-int v1, v2

    int-to-float v1, v1

    .line 856
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_5

    :cond_d
    add-int/2addr v6, v4

    if-ne v1, v6, :cond_e

    int-to-float v1, v2

    .line 858
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 861
    :cond_e
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    return-object v3
.end method

.method private getNewMessage()V
    .locals 9

    .line 1235
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1236
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->onFinish()V

    .line 1237
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 1242
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasText()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_4

    .line 1243
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    .line 1244
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 1245
    iget v5, v4, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    iget-object v6, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v6, v6, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    if-ne v5, v6, :cond_3

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    iget-object v7, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 1246
    iput v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    .line 1256
    iget-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    if-eqz v0, :cond_5

    .line 1257
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne v3, v0, :cond_2

    const/4 v0, 0x3

    .line 1258
    invoke-direct {p0, v0}, Lorg/telegram/ui/PopupNotificationActivity;->prepareLayouts(I)V

    goto :goto_1

    .line 1259
    :cond_2
    iget v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    if-ne v0, v1, :cond_5

    const/4 v0, 0x4

    .line 1260
    invoke-direct {p0, v0}, Lorg/telegram/ui/PopupNotificationActivity;->prepareLayouts(I)V

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1253
    :cond_4
    iput v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    .line 1254
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1255
    invoke-direct {p0, v2}, Lorg/telegram/ui/PopupNotificationActivity;->updateInterfaceForCurrentMessage(I)V

    .line 1263
    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->countText:Landroid/widget/TextView;

    iget v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v4, v5, v1

    const-string v1, "%d/%d"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getViewForMessage(IZ)Landroid/view/ViewGroup;
    .locals 30

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0x12d

    .line 1007
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x12c

    .line 963
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x138

    .line 898
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x137

    .line 891
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 868
    iget-object v6, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    if-ltz v1, :cond_0

    iget-object v6, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v1, v6, :cond_1

    :cond_0
    return-object v7

    :cond_1
    const/4 v6, -0x1

    const/4 v9, 0x0

    if-ne v1, v6, :cond_2

    .line 872
    iget-object v1, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v8

    goto :goto_0

    .line 873
    :cond_2
    iget-object v10, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v1, v10, :cond_3

    move v1, v9

    .line 877
    :cond_3
    :goto_0
    iget-object v10, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject;

    .line 878
    iget v11, v10, Lorg/telegram/messenger/MessageObject;->type:I

    const/high16 v12, 0x41800000    # 16.0f

    const/4 v13, 0x4

    const/16 v15, 0x11

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v17, 0x41200000    # 10.0f

    if-eq v11, v8, :cond_4

    if-ne v11, v13, :cond_c

    :cond_4
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isSecretMedia()Z

    move-result v11

    if-nez v11, :cond_c

    .line 879
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 880
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 881
    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move/from16 v19, v9

    const/16 v18, 0x2

    goto :goto_1

    .line 883
    :cond_5
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 885
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 886
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/16 v18, 0x2

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    move/from16 v19, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v3, v11, v13, v14, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 887
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 888
    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 890
    new-instance v9, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 891
    invoke-virtual {v9, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 892
    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 894
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 895
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 896
    invoke-virtual {v7, v8, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 897
    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 898
    invoke-virtual {v7, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v9, -0x2

    .line 899
    invoke-static {v6, v9, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 901
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 903
    new-instance v3, Lorg/telegram/ui/PopupNotificationActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0}, Lorg/telegram/ui/PopupNotificationActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 906
    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 907
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lorg/telegram/ui/Components/BackupImageView;

    .line 908
    invoke-virtual {v11, v8}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 910
    iget v4, v10, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v5, 0x8

    const/16 v7, 0x64

    if-ne v4, v8, :cond_a

    .line 911
    iget-object v4, v10, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v9

    invoke-static {v4, v9}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    .line 912
    iget-object v9, v10, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {v9, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v7

    if-eqz v4, :cond_8

    .line 916
    iget v9, v10, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v9, v8, :cond_6

    .line 917
    sget v9, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v9

    iget-object v12, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v9, v12}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v9

    .line 918
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_6

    move/from16 v9, v19

    goto :goto_2

    :cond_6
    move v9, v8

    .line 922
    :goto_2
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z

    move-result v12

    if-nez v12, :cond_8

    if-nez v9, :cond_9

    .line 923
    iget v9, v10, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v9

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(Lorg/telegram/messenger/MessageObject;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_4

    :cond_7
    if-eqz v7, :cond_8

    .line 928
    iget-object v4, v10, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v7, v4}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v13, "100_100_b"

    move-object/from16 v16, v10

    invoke-virtual/range {v11 .. v16}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    :goto_3
    move/from16 v4, v19

    goto :goto_5

    :cond_8
    move/from16 v4, v19

    goto :goto_6

    .line 924
    :cond_9
    :goto_4
    iget-object v9, v10, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v4, v9}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    iget-object v9, v10, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v7, v9}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v14

    const-string v15, "100_100_b"

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    const-string v13, "100_100"

    move/from16 v16, v4

    move-object/from16 v17, v10

    invoke-virtual/range {v11 .. v17}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_3

    .line 940
    :goto_5
    invoke-virtual {v11, v4}, Landroid/view/View;->setVisibility(I)V

    .line 941
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 935
    :goto_6
    invoke-virtual {v11, v5}, Landroid/view/View;->setVisibility(I)V

    .line 936
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 937
    sget v4, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    int-to-float v4, v4

    move/from16 v5, v18

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 938
    iget-object v4, v10, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    :cond_a
    const/4 v9, 0x4

    if-ne v4, v9, :cond_10

    .line 944
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 945
    iget-object v4, v10, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    .line 946
    invoke-virtual {v11, v4}, Landroid/view/View;->setVisibility(I)V

    .line 947
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 948
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 949
    iget-wide v12, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 951
    iget v9, v10, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v9, v9, Lorg/telegram/messenger/MessagesController;->mapProvider:I

    const/4 v14, 0x2

    if-ne v9, v14, :cond_b

    .line 952
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v14, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/16 v5, 0xf

    invoke-static {v3, v7, v7, v5, v4}, Lorg/telegram/messenger/WebFile;->createWithGeoPoint(Lorg/telegram/tgnet/TLRPC$GeoPoint;IIII)Lorg/telegram/messenger/WebFile;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, v10

    invoke-virtual/range {v11 .. v16}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 954
    :cond_b
    iget v3, v10, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    const/16 v28, 0xf

    const/16 v29, -0x1

    const/16 v25, 0x64

    const/16 v26, 0x64

    const/16 v27, 0x1

    move/from16 v20, v3

    move-wide/from16 v21, v4

    move-wide/from16 v23, v12

    invoke-static/range {v20 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->formapMapUrl(IDDIIZII)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 955
    invoke-virtual {v11, v3, v4, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 958
    :cond_c
    iget v4, v10, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v14, 0x2

    if-ne v4, v14, :cond_e

    .line 960
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->audioViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 961
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->audioViews:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 962
    iget-object v5, v0, Lorg/telegram/ui/PopupNotificationActivity;->audioViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 963
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/PopupAudioView;

    goto :goto_7

    .line 965
    :cond_d
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 967
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 968
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v4, v5, v9, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    const/16 v19, 0x0

    .line 969
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 970
    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 972
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v16, 0x41a00000    # 20.0f

    const/16 v17, 0x0

    const/4 v11, -0x1

    const/high16 v12, -0x40000000    # -2.0f

    const/16 v13, 0x11

    const/high16 v14, 0x41a00000    # 20.0f

    const/4 v15, 0x0

    .line 973
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 974
    new-instance v4, Lorg/telegram/ui/Components/PopupAudioView;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/PopupAudioView;-><init>(Landroid/content/Context;)V

    .line 975
    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 976
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v3, 0x3

    .line 978
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 980
    new-instance v3, Lorg/telegram/ui/PopupNotificationActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0}, Lorg/telegram/ui/PopupNotificationActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v3, v4

    .line 983
    :goto_7
    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/PopupAudioView;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 984
    iget v4, v10, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v4

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(Lorg/telegram/messenger/MessageObject;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 985
    invoke-virtual {v3}, Lorg/telegram/ui/Components/PopupAudioView;->downloadAudioIfNeed()V

    goto/16 :goto_9

    .line 988
    :cond_e
    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->textViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_f

    .line 989
    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->textViews:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 990
    iget-object v5, v0, Lorg/telegram/ui/PopupNotificationActivity;->textViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_8

    :cond_f
    const/4 v4, 0x0

    .line 992
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 994
    new-instance v5, Landroid/widget/ScrollView;

    invoke-direct {v5, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 995
    invoke-virtual {v5, v8}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 996
    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 998
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 999
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1000
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v9, -0x2

    .line 1001
    invoke-static {v6, v9, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1002
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v7, v4, v5, v9, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 1003
    new-instance v4, Lorg/telegram/ui/PopupNotificationActivity$$ExternalSyntheticLambda8;

    invoke-direct {v4, v0}, Lorg/telegram/ui/PopupNotificationActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    invoke-virtual {v7, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1005
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1006
    invoke-virtual {v4, v8, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1007
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1008
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1009
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 1010
    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v9, -0x2

    .line 1011
    invoke-static {v6, v9, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1013
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1015
    :goto_8
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1016
    sget v4, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    int-to-float v4, v4

    const/4 v14, 0x2

    invoke-virtual {v2, v14, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1017
    iget-object v4, v10, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, v3

    .line 1019
    :cond_10
    :goto_9
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_11

    .line 1020
    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_11
    const/4 v4, 0x0

    .line 1022
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_15

    .line 1025
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    .line 1026
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x33

    .line 1027
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1028
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1029
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1030
    iget v5, v0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    if-ne v1, v5, :cond_12

    const/4 v1, 0x0

    .line 1031
    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_a

    :cond_12
    add-int/lit8 v6, v5, -0x1

    if-ne v1, v6, :cond_13

    neg-int v1, v3

    int-to-float v1, v1

    .line 1033
    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_a

    :cond_13
    add-int/2addr v5, v8

    if-ne v1, v5, :cond_14

    int-to-float v1, v3

    .line 1035
    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1037
    :cond_14
    :goto_a
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1038
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_15
    return-object v2
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1198
    const-string v1, "force"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->isReply:Z

    .line 1199
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1200
    iget-boolean v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->isReply:Z

    if-eqz v1, :cond_3

    if-eqz p1, :cond_1

    .line 1201
    const-string v1, "currentAccount"

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    goto :goto_1

    :cond_1
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 1202
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->isValidAccount(I)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 1205
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/NotificationsController;->popupReplyMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_3
    move p1, v0

    :goto_2
    const/16 v1, 0x10

    if-ge p1, v1, :cond_5

    .line 1208
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1209
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 1213
    :cond_5
    :goto_3
    const-string p1, "keyguard"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    .line 1214
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p1

    if-nez p1, :cond_7

    sget-boolean p1, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-nez p1, :cond_6

    goto :goto_4

    .line 1221
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v1, 0x280800

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1225
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_5

    .line 1215
    :cond_7
    :goto_4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v1, 0x280802

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1228
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez p1, :cond_8

    .line 1229
    iput v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    .line 1231
    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->getNewMessage()V

    return-void
.end method

.method private synthetic lambda$getViewForMessage$6(Landroid/view/View;)V
    .locals 0

    .line 903
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->openCurrentMessage()V

    return-void
.end method

.method private synthetic lambda$getViewForMessage$7(Landroid/view/View;)V
    .locals 0

    .line 980
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->openCurrentMessage()V

    return-void
.end method

.method private synthetic lambda$getViewForMessage$8(Landroid/view/View;)V
    .locals 0

    .line 1003
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->openCurrentMessage()V

    return-void
.end method

.method private synthetic lambda$onRequestPermissionsResult$0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    .line 573
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 574
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 575
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 577
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$onTouchEventMy$1()V
    .locals 1

    const/4 v0, 0x0

    .line 677
    iput-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationInProgress:Z

    .line 678
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->switchToPreviousMessage()V

    .line 679
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic lambda$onTouchEventMy$2()V
    .locals 1

    const/4 v0, 0x0

    .line 686
    iput-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationInProgress:Z

    .line 687
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->switchToNextMessage()V

    .line 688
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic lambda$onTouchEventMy$3()V
    .locals 1

    const/4 v0, 0x0

    .line 695
    iput-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationInProgress:Z

    .line 696
    invoke-direct {p0, v0}, Lorg/telegram/ui/PopupNotificationActivity;->applyViewsLayoutParams(I)V

    .line 697
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    return-void
.end method

.method private openCurrentMessage()V
    .locals 4

    .line 1267
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    return-void

    .line 1270
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1271
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    .line 1272
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1273
    const-string v3, "encId"

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1274
    :cond_1
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1275
    const-string v3, "userId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 1276
    :cond_2
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1277
    const-string v3, "chatId"

    neg-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1279
    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    const-string v2, "currentAccount"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.tmessages.openchat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x8000

    .line 1281
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1282
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1283
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->onFinish()V

    .line 1284
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private prepareLayouts(I)V
    .locals 5

    .line 1067
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_3

    .line 1069
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lorg/telegram/ui/PopupNotificationActivity;->reuseView(Landroid/view/ViewGroup;)V

    .line 1070
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lorg/telegram/ui/PopupNotificationActivity;->reuseView(Landroid/view/ViewGroup;)V

    .line 1071
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lorg/telegram/ui/PopupNotificationActivity;->reuseView(Landroid/view/ViewGroup;)V

    .line 1072
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerButtonsView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lorg/telegram/ui/PopupNotificationActivity;->reuseButtonsView(Landroid/view/ViewGroup;)V

    .line 1073
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftButtonsView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lorg/telegram/ui/PopupNotificationActivity;->reuseButtonsView(Landroid/view/ViewGroup;)V

    .line 1074
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightButtonsView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lorg/telegram/ui/PopupNotificationActivity;->reuseButtonsView(Landroid/view/ViewGroup;)V

    .line 1075
    iget p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    sub-int/2addr p1, v3

    :goto_0
    iget v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v4, v0, 0x2

    if-ge p1, v4, :cond_9

    add-int/lit8 v4, v0, -0x1

    if-ne p1, v4, :cond_0

    .line 1077
    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/PopupNotificationActivity;->getViewForMessage(IZ)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    .line 1078
    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/PopupNotificationActivity;->getButtonsViewForMessage(IZ)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftButtonsView:Landroid/view/ViewGroup;

    goto :goto_1

    :cond_0
    if-ne p1, v0, :cond_1

    .line 1080
    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/PopupNotificationActivity;->getViewForMessage(IZ)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    .line 1081
    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/PopupNotificationActivity;->getButtonsViewForMessage(IZ)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerButtonsView:Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1083
    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/PopupNotificationActivity;->getViewForMessage(IZ)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    .line 1084
    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/PopupNotificationActivity;->getButtonsViewForMessage(IZ)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightButtonsView:Landroid/view/ViewGroup;

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    if-ne p1, v3, :cond_4

    .line 1088
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lorg/telegram/ui/PopupNotificationActivity;->reuseView(Landroid/view/ViewGroup;)V

    .line 1089
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightButtonsView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lorg/telegram/ui/PopupNotificationActivity;->reuseButtonsView(Landroid/view/ViewGroup;)V

    .line 1090
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    .line 1091
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    .line 1092
    iget p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    sub-int/2addr p1, v3

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/PopupNotificationActivity;->getViewForMessage(IZ)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    .line 1094
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerButtonsView:Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightButtonsView:Landroid/view/ViewGroup;

    .line 1095
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftButtonsView:Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerButtonsView:Landroid/view/ViewGroup;

    .line 1096
    iget p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    sub-int/2addr p1, v3

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/PopupNotificationActivity;->getButtonsViewForMessage(IZ)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftButtonsView:Landroid/view/ViewGroup;

    goto/16 :goto_2

    :cond_4
    const/4 v4, 0x2

    if-ne p1, v4, :cond_5

    .line 1098
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lorg/telegram/ui/PopupNotificationActivity;->reuseView(Landroid/view/ViewGroup;)V

    .line 1099
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftButtonsView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lorg/telegram/ui/PopupNotificationActivity;->reuseButtonsView(Landroid/view/ViewGroup;)V

    .line 1100
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    .line 1101
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    .line 1102
    iget p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/2addr p1, v3

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/PopupNotificationActivity;->getViewForMessage(IZ)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    .line 1104
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerButtonsView:Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftButtonsView:Landroid/view/ViewGroup;

    .line 1105
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightButtonsView:Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerButtonsView:Landroid/view/ViewGroup;

    .line 1106
    iget p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/2addr p1, v3

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/PopupNotificationActivity;->getButtonsViewForMessage(IZ)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightButtonsView:Landroid/view/ViewGroup;

    goto/16 :goto_2

    :cond_5
    if-ne p1, v1, :cond_7

    .line 1108
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_6

    .line 1109
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    .line 1110
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lorg/telegram/ui/PopupNotificationActivity;->reuseView(Landroid/view/ViewGroup;)V

    .line 1111
    iget v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/2addr v4, v3

    invoke-direct {p0, v4, v2}, Lorg/telegram/ui/PopupNotificationActivity;->getViewForMessage(IZ)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_6

    .line 1112
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1113
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1114
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1115
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 1116
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1119
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightButtonsView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_9

    .line 1120
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    .line 1121
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightButtonsView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lorg/telegram/ui/PopupNotificationActivity;->reuseButtonsView(Landroid/view/ViewGroup;)V

    .line 1122
    iget v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/2addr v0, v3

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/PopupNotificationActivity;->getButtonsViewForMessage(IZ)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightButtonsView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 1123
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2

    :cond_7
    const/4 v4, 0x4

    if-ne p1, v4, :cond_9

    .line 1127
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_8

    .line 1128
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    .line 1129
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lorg/telegram/ui/PopupNotificationActivity;->reuseView(Landroid/view/ViewGroup;)V

    .line 1130
    invoke-direct {p0, v2, v2}, Lorg/telegram/ui/PopupNotificationActivity;->getViewForMessage(IZ)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_8

    .line 1131
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1132
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1133
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1134
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 1135
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1138
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftButtonsView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_9

    .line 1139
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    .line 1140
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftButtonsView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lorg/telegram/ui/PopupNotificationActivity;->reuseButtonsView(Landroid/view/ViewGroup;)V

    .line 1141
    invoke-direct {p0, v2, v2}, Lorg/telegram/ui/PopupNotificationActivity;->getButtonsViewForMessage(IZ)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftButtonsView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 1142
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_9
    :goto_2
    move p1, v2

    :goto_3
    if-ge p1, v1, :cond_e

    .line 1147
    iget v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    sub-int/2addr v0, v3

    add-int/2addr v0, p1

    .line 1149
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_b

    if-ltz v0, :cond_a

    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_b

    :cond_a
    const/4 v0, 0x0

    goto :goto_5

    :cond_b
    const/4 v4, -0x1

    if-ne v0, v4, :cond_c

    .line 1153
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    goto :goto_4

    .line 1154
    :cond_c
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v0, v4, :cond_d

    move v0, v2

    .line 1157
    :cond_d
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 1159
    :goto_5
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->setMessageObjects:[Lorg/telegram/messenger/MessageObject;

    aput-object v0, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_e
    return-void
.end method

.method private reuseButtonsView(Landroid/view/ViewGroup;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1048
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private reuseView(Landroid/view/ViewGroup;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1055
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    .line 1056
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1058
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->textViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1060
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1062
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->audioViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private setTypingAnimation(Z)V
    .locals 6

    .line 1406
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1411
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getPrintingStringType(JJ)Ljava/lang/Integer;

    move-result-object p1

    .line 1412
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1413
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1414
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1415
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1416
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/StatusDrawable;->start()V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 1418
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/StatusDrawable;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1422
    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void

    .line 1425
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1426
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1427
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 1428
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StatusDrawable;->stop()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    return-void
.end method

.method private switchToNextMessage()V
    .locals 6

    .line 586
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 587
    iget v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    .line 588
    iget v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    goto :goto_0

    .line 590
    :cond_0
    iput v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    .line 592
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v0, 0x2

    .line 593
    invoke-direct {p0, v0}, Lorg/telegram/ui/PopupNotificationActivity;->updateInterfaceForCurrentMessage(I)V

    .line 594
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->countText:Landroid/widget/TextView;

    iget v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v3

    aput-object v5, v0, v1

    const-string v1, "%d/%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private switchToPreviousMessage()V
    .locals 6

    .line 599
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 600
    iget v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    if-lez v0, :cond_0

    sub-int/2addr v0, v1

    .line 601
    iput v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    goto :goto_0

    .line 603
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    .line 605
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 606
    invoke-direct {p0, v1}, Lorg/telegram/ui/PopupNotificationActivity;->updateInterfaceForCurrentMessage(I)V

    .line 607
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->countText:Landroid/widget/TextView;

    iget v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    aput-object v3, v4, v1

    const-string v1, "%d/%d"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private updateInterfaceForCurrentMessage(I)V
    .locals 8

    .line 1288
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v0, :cond_0

    return-void

    .line 1291
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->lastResumedAccount:I

    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    if-ltz v0, :cond_1

    .line 1293
    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 1295
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    iput v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->lastResumedAccount:I

    .line 1296
    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    :cond_2
    const/4 v0, 0x0

    .line 1298
    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1299
    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 1300
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    .line 1301
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v5, v5, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-virtual {v1, v3, v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setDialogId(JI)V

    .line 1302
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1303
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v1

    .line 1304
    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v5, v5, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_0

    .line 1305
    :cond_3
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1306
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_0

    .line 1307
    :cond_4
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1308
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    neg-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1309
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1310
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 1314
    :cond_5
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_7

    .line 1315
    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1316
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_6

    .line 1317
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1319
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1321
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1322
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_2

    .line 1323
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_9

    .line 1324
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1325
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1326
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_lock_white:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1327
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_2

    .line 1329
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1330
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1334
    :cond_9
    :goto_2
    invoke-direct {p0, p1}, Lorg/telegram/ui/PopupNotificationActivity;->prepareLayouts(I)V

    .line 1335
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->updateSubtitle()V

    .line 1336
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->checkAndUpdateAvatar()V

    .line 1337
    invoke-direct {p0, v2}, Lorg/telegram/ui/PopupNotificationActivity;->applyViewsLayoutParams(I)V

    return-void
.end method

.method private updateSubtitle()V
    .locals 9

    .line 1341
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1344
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 1347
    :cond_1
    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/16 v3, 0x3e8

    div-long v5, v1, v3

    const-wide/16 v7, 0x309

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    div-long/2addr v1, v3

    const-wide/16 v3, 0x14d

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->isLoadingContacts()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1348
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1349
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1351
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1354
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1356
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_5

    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/32 v3, 0x77628

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    .line 1357
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->VerifyCodesNotifications:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_5
    if-eqz v0, :cond_6

    .line 1358
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/32 v2, 0xbdb28

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 1359
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->ServiceNotifications:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1361
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->getPrintingString(JJZ)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1362
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    .line 1371
    :cond_7
    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->lastPrintString:Ljava/lang/CharSequence;

    .line 1372
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 1373
    invoke-direct {p0, v0}, Lorg/telegram/ui/PopupNotificationActivity;->setTypingAnimation(Z)V

    return-void

    :cond_8
    :goto_1
    const/4 v0, 0x0

    .line 1363
    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->lastPrintString:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 1364
    invoke-direct {p0, v0}, Lorg/telegram/ui/PopupNotificationActivity;->setTypingAnimation(Z)V

    .line 1365
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1367
    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 1369
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_2
    return-void
.end method


# virtual methods
.method public checkTransitionAnimation()Z
    .locals 6

    .line 612
    iget-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationInProgress:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x190

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 613
    iput-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationInProgress:Z

    .line 614
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 615
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 616
    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;

    .line 619
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationInProgress:Z

    return v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 6

    const/16 v0, 0x12c

    .line 1527
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1469
    sget v1, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    if-ne p1, v1, :cond_0

    .line 1470
    iget p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->lastResumedAccount:I

    if-ne p2, p1, :cond_18

    .line 1471
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->onFinish()V

    .line 1472
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 1474
    :cond_0
    sget v1, Lorg/telegram/messenger/NotificationCenter;->pushMessagesUpdated:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v1, :cond_8

    .line 1475
    iget-boolean p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->isReply:Z

    if-nez p1, :cond_18

    .line 1476
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    move p1, v4

    :goto_0
    const/16 p2, 0x10

    if-ge p1, p2, :cond_2

    .line 1478
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1479
    iget-object p2, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1482
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->getNewMessage()V

    .line 1483
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_18

    move p1, v4

    :goto_1
    if-ge p1, v2, :cond_18

    .line 1485
    iget p2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    sub-int/2addr p2, v3

    add-int/2addr p2, p1

    .line 1487
    iget-object p3, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p3, v3, :cond_4

    if-ltz p2, :cond_3

    iget-object p3, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lt p2, p3, :cond_4

    :cond_3
    const/4 p2, 0x0

    goto :goto_3

    :cond_4
    const/4 p3, -0x1

    if-ne p2, p3, :cond_5

    .line 1491
    iget-object p2, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v3

    goto :goto_2

    .line 1492
    :cond_5
    iget-object p3, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p2, p3, :cond_6

    move p2, v4

    .line 1495
    :cond_6
    :goto_2
    iget-object p3, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    .line 1497
    :goto_3
    iget-object p3, p0, Lorg/telegram/ui/PopupNotificationActivity;->setMessageObjects:[Lorg/telegram/messenger/MessageObject;

    aget-object p3, p3, p1

    if-eq p3, p2, :cond_7

    .line 1498
    invoke-direct {p0, v4}, Lorg/telegram/ui/PopupNotificationActivity;->updateInterfaceForCurrentMessage(I)V

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1503
    :cond_8
    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v1, :cond_11

    .line 1504
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_18

    iget p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->lastResumedAccount:I

    if-eq p2, p1, :cond_9

    goto/16 :goto_7

    .line 1507
    :cond_9
    aget-object p1, p3, v4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1508
    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int/2addr p2, p1

    if-nez p2, :cond_a

    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int/2addr p2, p1

    if-nez p2, :cond_a

    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT_NAME:I

    and-int/2addr p2, p1

    if-nez p2, :cond_a

    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT_MEMBERS:I

    and-int/2addr p2, p1

    if-eqz p2, :cond_b

    .line 1509
    :cond_a
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->updateSubtitle()V

    .line 1511
    :cond_b
    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int/2addr p2, p1

    if-nez p2, :cond_c

    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT_AVATAR:I

    and-int/2addr p2, p1

    if-eqz p2, :cond_d

    .line 1512
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->checkAndUpdateAvatar()V

    .line 1514
    :cond_d
    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_USER_PRINT:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_18

    .line 1515
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->getPrintingString(JJZ)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1516
    iget-object p2, p0, Lorg/telegram/ui/PopupNotificationActivity;->lastPrintString:Ljava/lang/CharSequence;

    if-eqz p2, :cond_e

    if-eqz p1, :cond_10

    :cond_e
    if-nez p2, :cond_f

    if-nez p1, :cond_10

    :cond_f
    if-eqz p2, :cond_18

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 1517
    :cond_10
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->updateSubtitle()V

    return-void

    .line 1520
    :cond_11
    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-ne p1, v1, :cond_13

    .line 1521
    aget-object p1, p3, v4

    check-cast p1, Ljava/lang/Integer;

    .line 1522
    iget-object p3, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    if-eqz p3, :cond_18

    .line 1523
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    :goto_4
    if-ge v4, p3, :cond_18

    .line 1525
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1526
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_12

    .line 1527
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/PopupAudioView;

    .line 1528
    invoke-virtual {v1}, Lorg/telegram/ui/Components/PopupAudioView;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 1529
    iget v5, v3, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    if-ne v5, p2, :cond_12

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v3, v5, :cond_12

    .line 1530
    invoke-virtual {v1}, Lorg/telegram/ui/Components/PopupAudioView;->updateButtonState()V

    return-void

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1536
    :cond_13
    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    if-ne p1, v1, :cond_15

    .line 1537
    aget-object p1, p3, v4

    check-cast p1, Ljava/lang/Integer;

    .line 1538
    iget-object p3, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    if-eqz p3, :cond_18

    .line 1539
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    :goto_5
    if-ge v4, p3, :cond_18

    .line 1541
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1542
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_14

    .line 1543
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/PopupAudioView;

    .line 1544
    invoke-virtual {v1}, Lorg/telegram/ui/Components/PopupAudioView;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 1545
    iget v5, v3, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    if-ne v5, p2, :cond_14

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v3, v5, :cond_14

    .line 1546
    invoke-virtual {v1}, Lorg/telegram/ui/Components/PopupAudioView;->updateProgress()V

    return-void

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1552
    :cond_15
    sget p3, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p3, :cond_17

    .line 1553
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_18

    .line 1554
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_6
    if-ge v4, p1, :cond_18

    .line 1556
    iget-object p2, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 1557
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v3, :cond_16

    const/16 p3, 0x12d

    .line 1558
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_16

    .line 1560
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1565
    :cond_17
    sget p3, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    if-ne p1, p3, :cond_18

    .line 1566
    iget p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->lastResumedAccount:I

    if-ne p2, p1, :cond_18

    .line 1567
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->updateSubtitle()V

    :cond_18
    :goto_7
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1435
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1436
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(Z)Z

    return-void

    .line 1439
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 549
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 550
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->checkDisplaySize(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 551
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->setPreferredMaxRefreshRate(Landroid/view/Window;)V

    .line 552
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->fixLayout()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p0

    .line 163
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 164
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->createDialogsResources(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 165
    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 167
    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->fillStatusBarHeight(Landroid/content/Context;Z)V

    move v2, v1

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 169
    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 170
    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 171
    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 172
    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 173
    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->pushMessagesUpdated:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 176
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 177
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->classGuid:I

    .line 179
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    new-instance v3, Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/TypingDotsDrawable;-><init>(Z)V

    aput-object v3, v2, v1

    .line 180
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    new-instance v3, Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/RecordStatusDrawable;-><init>(Z)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 181
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    new-instance v3, Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/SendingFileDrawable;-><init>(Z)V

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 182
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    new-instance v3, Lorg/telegram/ui/Components/PlayingGameDrawable;

    const/4 v6, 0x0

    invoke-direct {v3, v1, v6}, Lorg/telegram/ui/Components/PlayingGameDrawable;-><init>(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 183
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    new-instance v3, Lorg/telegram/ui/Components/RoundStatusDrawable;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/RoundStatusDrawable;-><init>(Z)V

    const/4 v8, 0x4

    aput-object v3, v2, v8

    .line 185
    new-instance v2, Lorg/telegram/ui/PopupNotificationActivity$1;

    invoke-direct {v2, v0, v0}, Lorg/telegram/ui/PopupNotificationActivity$1;-><init>(Lorg/telegram/ui/PopupNotificationActivity;Landroid/content/Context;)V

    .line 278
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/high16 v3, -0x67000000

    .line 279
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 281
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    .line 282
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    new-instance v10, Lorg/telegram/ui/PopupNotificationActivity$2;

    invoke-direct {v10, v0, v0}, Lorg/telegram/ui/PopupNotificationActivity$2;-><init>(Lorg/telegram/ui/PopupNotificationActivity;Landroid/content/Context;)V

    iput-object v10, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;

    .line 309
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 310
    iget-object v10, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;

    const/16 v16, 0x0

    const/16 v17, 0xd

    const/4 v11, -0x1

    const/16 v12, 0xf0

    const/16 v13, 0xc

    const/4 v14, 0x0

    const/16 v15, 0xc

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(IIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v3, :cond_1

    .line 313
    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onDestroy()V

    .line 315
    :cond_1
    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {v3, v0, v2, v6, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;Z)V

    iput-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/16 v2, 0x3e8

    .line 316
    invoke-virtual {v3, v2}, Landroid/view/View;->setId(I)V

    .line 317
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;

    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/16 v6, 0xc

    const/4 v10, -0x2

    invoke-static {v8, v10, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(III)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-instance v3, Lorg/telegram/ui/PopupNotificationActivity$3;

    invoke-direct {v3, v0}, Lorg/telegram/ui/PopupNotificationActivity$3;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setDelegate(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    .line 450
    new-instance v2, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutTouch;

    invoke-direct {v2, v0, v0}, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutTouch;-><init>(Lorg/telegram/ui/PopupNotificationActivity;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    .line 451
    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 453
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 454
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 455
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 456
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 457
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 458
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;

    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 459
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 460
    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 461
    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    const/high16 v3, 0x42600000    # 56.0f

    .line 464
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v5, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 465
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->countText:Landroid/widget/TextView;

    .line 466
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 467
    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->countText:Landroid/widget/TextView;

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v3, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 468
    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->countText:Landroid/widget/TextView;

    const/16 v11, 0x11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 469
    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->countText:Landroid/widget/TextView;

    const/16 v11, 0x38

    invoke-static {v11, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    const/high16 v3, 0x40800000    # 4.0f

    .line 472
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v2, v9, v1, v11, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 473
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v9, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 474
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 475
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 476
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/high16 v8, 0x42400000    # 48.0f

    .line 477
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/high16 v8, 0x42700000    # 60.0f

    .line 478
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v8, 0x33

    .line 479
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 480
    iget-object v8, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v8, 0x42280000    # 42.0f

    .line 483
    invoke-static {v8}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v9

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 484
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    iget-object v9, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 485
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 486
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 487
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/high16 v8, 0x40400000    # 3.0f

    .line 488
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 489
    iget-object v8, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    .line 492
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 493
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    const/high16 v8, 0x41900000    # 18.0f

    invoke-virtual {v2, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 494
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLines(I)V

    .line 495
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 496
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 497
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 498
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 499
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 500
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    iget-object v9, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 501
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 502
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 503
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/high16 v9, 0x42580000    # 54.0f

    .line 504
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/high16 v11, 0x41b00000    # 22.0f

    .line 505
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v11, 0x50

    .line 506
    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 507
    iget-object v12, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    .line 510
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 511
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 512
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLines(I)V

    .line 513
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 514
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 515
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 516
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 517
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 518
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 519
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 520
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 521
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 522
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 523
    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 524
    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/PopupNotificationActivity$4;

    invoke-direct {v3, v0}, Lorg/telegram/ui/PopupNotificationActivity$4;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 540
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const v3, 0x10000006

    .line 541
    const-string v4, "screen"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 542
    invoke-virtual {v2, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 544
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/PopupNotificationActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1574
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1575
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->onFinish()V

    .line 1576
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->setFeedbackView(Landroid/view/View;Z)V

    .line 1577
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1578
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1580
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1581
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method protected onFinish()V
    .locals 3

    .line 1586
    iget-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->finished:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 1589
    iput-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->finished:Z

    .line 1590
    iget-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->isReply:Z

    if-eqz v0, :cond_1

    .line 1591
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    .line 1594
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1595
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1596
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1597
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1598
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1600
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pushMessagesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1601
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1602
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_3

    .line 1603
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onDestroy()V

    .line 1605
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1606
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 557
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 558
    invoke-direct {p0, p1}, Lorg/telegram/ui/PopupNotificationActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 1456
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 1457
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1458
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_0

    .line 1459
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(Z)Z

    .line 1460
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldFocused(Z)V

    .line 1462
    :cond_0
    iget v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->lastResumedAccount:I

    if-ltz v1, :cond_1

    .line 1463
    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 563
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 565
    aget p1, p3, p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 568
    :cond_0
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 569
    sget p2, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 570
    sget p2, Lorg/telegram/messenger/R$string;->PermissionNoAudioWithHint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 571
    sget p2, Lorg/telegram/messenger/R$string;->PermissionOpenSettings:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/PopupNotificationActivity$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lorg/telegram/ui/PopupNotificationActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 580
    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 581
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1444
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1445
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->setFeedbackView(Landroid/view/View;Z)V

    .line 1446
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    .line 1447
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldFocused(Z)V

    .line 1449
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->fixLayout()V

    .line 1450
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->checkAndUpdateAvatar()V

    .line 1451
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1b58

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method

.method public onTouchEventMy(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 623
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->checkTransitionAnimation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 626
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 627
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->moveStartX:F

    goto/16 :goto_7

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_7

    .line 628
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_7

    .line 629
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 630
    iget v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->moveStartX:F

    sub-float v5, v2, v4

    float-to-int v5, v5

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_3

    .line 631
    iget-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    if-nez v0, :cond_3

    .line 632
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    if-le v0, v4, :cond_3

    .line 633
    iput-boolean v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    .line 634
    iput v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->moveStartX:F

    .line 635
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    .line 637
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 638
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 640
    :cond_2
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    move v5, v1

    .line 644
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    if-eqz v0, :cond_18

    .line 645
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    if-nez v0, :cond_4

    if-lez v5, :cond_4

    move v5, v1

    .line 648
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    if-gez v5, :cond_5

    goto :goto_1

    :cond_5
    move v1, v5

    .line 651
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_6

    .line 652
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 654
    :cond_6
    invoke-direct {p0, v1}, Lorg/telegram/ui/PopupNotificationActivity;->applyViewsLayoutParams(I)V

    goto/16 :goto_7

    :cond_7
    const/4 v4, 0x3

    if-eqz p1, :cond_8

    .line 656
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v3, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_18

    :cond_8
    const/4 v5, 0x0

    if-eqz p1, :cond_15

    .line 657
    iget-boolean v6, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    if-eqz v6, :cond_15

    .line 658
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v6, p0, Lorg/telegram/ui/PopupNotificationActivity;->moveStartX:F

    sub-float/2addr p1, v6

    float-to-int p1, p1

    .line 659
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    .line 664
    iget-object v7, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_a

    const/16 v8, 0x3e8

    .line 665
    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 666
    iget-object v7, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    const v8, 0x455ac000    # 3500.0f

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_9

    move v7, v3

    goto :goto_2

    .line 668
    :cond_9
    iget-object v7, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    const v8, -0x3aa54000    # -3500.0f

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_a

    move v7, v2

    goto :goto_2

    :cond_a
    move v7, v1

    :goto_2
    const/4 v8, 0x0

    if-eq v7, v3, :cond_b

    .line 672
    div-int/lit8 v9, v6, 0x3

    if-le p1, v9, :cond_c

    :cond_b
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    if-eqz v9, :cond_c

    int-to-float p1, v6

    .line 673
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    sub-float/2addr p1, v2

    .line 674
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    .line 675
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftButtonsView:Landroid/view/ViewGroup;

    .line 676
    new-instance v7, Lorg/telegram/ui/PopupNotificationActivity$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lorg/telegram/ui/PopupNotificationActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    iput-object v7, p0, Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;

    goto :goto_5

    :cond_c
    if-eq v7, v2, :cond_d

    neg-int v2, v6

    .line 681
    div-int/2addr v2, v4

    if-ge p1, v2, :cond_e

    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_e

    neg-int p1, v6

    int-to-float p1, p1

    .line 682
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    sub-float/2addr p1, v2

    .line 683
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    .line 684
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightButtonsView:Landroid/view/ViewGroup;

    .line 685
    new-instance v7, Lorg/telegram/ui/PopupNotificationActivity$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lorg/telegram/ui/PopupNotificationActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    iput-object v7, p0, Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;

    goto :goto_5

    .line 690
    :cond_e
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_11

    .line 691
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    neg-float v2, v2

    if-lez p1, :cond_f

    .line 692
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    goto :goto_3

    :cond_f
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    :goto_3
    if-lez p1, :cond_10

    .line 693
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftButtonsView:Landroid/view/ViewGroup;

    goto :goto_4

    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightButtonsView:Landroid/view/ViewGroup;

    .line 694
    :goto_4
    new-instance v7, Lorg/telegram/ui/PopupNotificationActivity$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lorg/telegram/ui/PopupNotificationActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    iput-object v7, p0, Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;

    move-object v12, v4

    move-object v4, p1

    move p1, v2

    move-object v2, v12

    goto :goto_5

    :cond_11
    move-object v2, v5

    move-object v4, v2

    move p1, v8

    :goto_5
    cmpl-float v7, p1, v8

    if-eqz v7, :cond_16

    int-to-float v6, v6

    div-float v6, p1, v6

    .line 701
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x43480000    # 200.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 702
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 703
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v9

    add-float/2addr v9, p1

    new-array v10, v3, [F

    aput v9, v10, v1

    const-string v9, "translationX"

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerButtonsView:Landroid/view/ViewGroup;

    if-eqz v8, :cond_12

    .line 705
    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v10

    add-float/2addr v10, p1

    new-array v11, v3, [F

    aput v10, v11, v1

    invoke-static {v8, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    if-eqz v2, :cond_13

    .line 708
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v8

    add-float/2addr v8, p1

    new-array v10, v3, [F

    aput v8, v10, v1

    invoke-static {v2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    if-eqz v4, :cond_14

    .line 711
    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v2

    add-float/2addr v2, p1

    new-array p1, v3, [F

    aput v2, p1, v1

    invoke-static {v4, v9, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    :cond_14
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 714
    invoke-virtual {p1, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    int-to-long v6, v6

    .line 715
    invoke-virtual {p1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 716
    new-instance v2, Lorg/telegram/ui/PopupNotificationActivity$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PopupNotificationActivity$5;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    invoke-virtual {p1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 725
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 726
    iput-boolean v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationInProgress:Z

    .line 727
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationStartTime:J

    goto :goto_6

    .line 730
    :cond_15
    invoke-direct {p0, v1}, Lorg/telegram/ui/PopupNotificationActivity;->applyViewsLayoutParams(I)V

    .line 732
    :cond_16
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_17

    .line 733
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 734
    iput-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    .line 736
    :cond_17
    iput-boolean v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    .line 737
    iput v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->moveStartX:F

    .line 739
    :cond_18
    :goto_7
    iget-boolean p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    return p1
.end method
