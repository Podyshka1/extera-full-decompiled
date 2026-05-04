.class public Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ContainerView;,
        Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;,
        Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;,
        Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;,
        Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$DoneCallback;,
        Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;,
        Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;,
        Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell2;,
        Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;,
        Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;
    }
.end annotation


# instance fields
.field private activePage:I

.field private allowComments:Z

.field private allowCover:Z

.field private allowScreenshots:Z

.field private allowSmallChats:Z

.field private applyWhenDismiss:Z

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private canChangePeer:Z

.field private commentsPrice:I

.field private coverDrawable:Landroid/graphics/drawable/Drawable;

.field private final excludedContacts:Ljava/util/ArrayList;

.field private final excludedEveryone:Ljava/util/ArrayList;

.field private final excludedEveryoneByGroup:Ljava/util/HashMap;

.field private excludedEveryoneCount:I

.field private isEdit:Z

.field private isLive:Z

.field private isRtmpStream:Z

.field private keepOnMyPage:Z

.field private liveSettings:Z

.field private loadedContacts:Z

.field private final messageUsers:Ljava/util/ArrayList;

.field private onDismiss:Lorg/telegram/messenger/Utilities$Callback;

.field private onDone:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$DoneCallback;

.field private onDone2:Lorg/telegram/messenger/Utilities$Callback;

.field private onSelectedAlbums:Lorg/telegram/messenger/Utilities$Callback;

.field private onSelectedPeer:Lorg/telegram/messenger/Utilities$Callback;

.field private final selectedAlbums:Ljava/util/HashSet;

.field private final selectedContacts:Ljava/util/ArrayList;

.field private final selectedContactsByGroup:Ljava/util/HashMap;

.field private selectedContactsCount:I

.field public selectedPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field private selectedType:I

.field private sendAsMessageEnabled:Z

.field private shiftDp:I

.field private smallChatsParticipantsCount:Ljava/util/HashMap;

.field private startedFromSendAsMessage:Z

.field private storiesCount:I

.field private storyPeriod:I

.field private viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

.field private warnUsers:Ljava/util/ArrayList;

.field private whenCoverClicked:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$8Cpua6kyzNCcRtneTjr8g0MLnbE(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/messenger/MessagesStorage;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->lambda$new$1(Lorg/telegram/messenger/MessagesStorage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e3bbDBvodcFRakBqslpoVJPZ-vA(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 2368
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 2371
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$ryY0CAPwZuhGCSE0RCXuSED951o(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->lambda$done$2(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xgbUnmtkXWy3z9ELTorUtJl5Ujg(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/HashMap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->lambda$new$0(Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zzb6aiHvxhSXXSbTPKrYLHlWclE(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 2375
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    :cond_0
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetactivePage(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->activePage:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetallowComments(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowComments:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetallowCover(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowCover:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetallowScreenshots(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowScreenshots:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetallowSmallChats(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowSmallChats:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetapplyWhenDismiss(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->applyWhenDismiss:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbackgroundPaint(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcanChangePeer(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->canChangePeer:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcommentsPrice(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->commentsPrice:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcoverDrawable(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->coverDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexcludedContacts(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedContacts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexcludedEveryone(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryone:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexcludedEveryoneByGroup(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneByGroup:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexcludedEveryoneCount(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisEdit(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->isEdit:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisLive(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->isLive:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisRtmpStream(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->isRtmpStream:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetkeepOnMyPage(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->keepOnMyPage:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetliveSettings(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->liveSettings:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmessageUsers(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->messageUsers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonDone2(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/messenger/Utilities$Callback;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->onDone2:Lorg/telegram/messenger/Utilities$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonSelectedAlbums(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/messenger/Utilities$Callback;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->onSelectedAlbums:Lorg/telegram/messenger/Utilities$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonSelectedPeer(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/messenger/Utilities$Callback;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->onSelectedPeer:Lorg/telegram/messenger/Utilities$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedAlbums(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedAlbums:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedContacts(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContacts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedContactsByGroup(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsByGroup:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedContactsCount(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendAsMessageEnabled(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->sendAsMessageEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstartedFromSendAsMessage(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->startedFromSendAsMessage:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstoriesCount(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->storiesCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstoryPeriod(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->storyPeriod:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetviewPager(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwhenCoverClicked(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->whenCoverClicked:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputactivePage(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->activePage:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputallowComments(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowComments:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputallowScreenshots(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowScreenshots:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcommentsPrice(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->commentsPrice:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputexcludedEveryoneCount(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisRtmpStream(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->isRtmpStream:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputkeepOnMyPage(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->keepOnMyPage:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectedContactsCount(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstoryPeriod(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->storyPeriod:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdone(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->done(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetChats(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->getChats()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetCloseFriends(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->getCloseFriends()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetContacts(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->getContacts()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetParticipantsCount(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/tgnet/TLRPC$Chat;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->getParticipantsCount(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetUsers(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;ZZ)Ljava/util/ArrayList;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->getUsers(ZZ)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmergeUsers(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->mergeUsers(Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mwhenSelectedShare(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->whenSelectedShare(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    const/4 v0, 0x1

    .line 2283
    invoke-direct {p0, p2, v0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 139
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryone:Ljava/util/ArrayList;

    .line 140
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneByGroup:Ljava/util/HashMap;

    const/4 p3, 0x0

    .line 141
    iput p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneCount:I

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedContacts:Ljava/util/ArrayList;

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContacts:Ljava/util/ArrayList;

    .line 145
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsByGroup:Ljava/util/HashMap;

    .line 146
    iput p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsCount:I

    .line 148
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedAlbums:Ljava/util/HashSet;

    .line 150
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowComments:Z

    .line 151
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowScreenshots:Z

    .line 152
    iput-boolean p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->keepOnMyPage:Z

    .line 153
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowCover:Z

    .line 154
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->canChangePeer:Z

    .line 155
    iput-boolean p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->isRtmpStream:Z

    .line 156
    iput p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->commentsPrice:I

    .line 157
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->storiesCount:I

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->messageUsers:Ljava/util/ArrayList;

    .line 176
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->activePage:I

    const/4 v1, 0x4

    .line 177
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedType:I

    .line 179
    iput-boolean p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->sendAsMessageEnabled:Z

    .line 181
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->smallChatsParticipantsCount:Ljava/util/HashMap;

    const/4 v1, -0x6

    .line 2155
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->shiftDp:I

    const v1, 0x15180

    .line 2156
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->storyPeriod:I

    .line 2158
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->backgroundPaint:Landroid/graphics/Paint;

    .line 2517
    iput-boolean p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->applyWhenDismiss:Z

    .line 2518
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowSmallChats:Z

    .line 2519
    iput-boolean p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->isEdit:Z

    .line 2284
    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->init(Landroid/content/Context;)V

    .line 2285
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$4;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$4;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Landroid/content/Context;I)V

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V

    return-void
.end method

.method synthetic constructor <init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;-><init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    const/4 v0, 0x1

    .line 2161
    invoke-direct {p0, p1, v0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 139
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryone:Ljava/util/ArrayList;

    .line 140
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneByGroup:Ljava/util/HashMap;

    const/4 p3, 0x0

    .line 141
    iput p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneCount:I

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedContacts:Ljava/util/ArrayList;

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContacts:Ljava/util/ArrayList;

    .line 145
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsByGroup:Ljava/util/HashMap;

    .line 146
    iput p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsCount:I

    .line 148
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedAlbums:Ljava/util/HashSet;

    .line 150
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowComments:Z

    .line 151
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowScreenshots:Z

    .line 152
    iput-boolean p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->keepOnMyPage:Z

    .line 153
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowCover:Z

    .line 154
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->canChangePeer:Z

    .line 155
    iput-boolean p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->isRtmpStream:Z

    .line 156
    iput p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->commentsPrice:I

    .line 157
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->storiesCount:I

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->messageUsers:Ljava/util/ArrayList;

    .line 176
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->activePage:I

    const/4 v1, 0x4

    .line 177
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedType:I

    .line 179
    iput-boolean p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->sendAsMessageEnabled:Z

    .line 181
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->smallChatsParticipantsCount:Ljava/util/HashMap;

    const/4 v1, -0x6

    .line 2155
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->shiftDp:I

    const v1, 0x15180

    .line 2156
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->storyPeriod:I

    .line 2158
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->backgroundPaint:Landroid/graphics/Paint;

    .line 2517
    iput-boolean p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->applyWhenDismiss:Z

    .line 2518
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowSmallChats:Z

    .line 2519
    iput-boolean p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->isEdit:Z

    .line 2162
    iput p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->storyPeriod:I

    .line 2163
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->pullSaved()V

    .line 2164
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->init(Landroid/content/Context;)V

    .line 2165
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V

    .line 2187
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    .line 2188
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 2201
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Stories/StoriesController;->loadBlocklist(Z)V

    .line 2202
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->loadSendAs()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    .line 119
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5201(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardHeight:I

    return p0
.end method

.method static synthetic access$5301(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardHeight:I

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    .line 119
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    .line 119
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    .line 119
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    .line 119
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    .line 119
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    .line 119
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    .line 119
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$6501(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V
    .locals 0

    .line 119
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    .line 119
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    .line 119
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    .line 119
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    .line 119
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method private done(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 2317
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->done(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private done(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;Z)V
    .locals 11

    .line 2321
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2322
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->warnUsers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    .line 2323
    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    move v5, v4

    .line 2324
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->warnUsers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 2325
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->warnUsers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2326
    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object v7

    .line 2327
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v8, :cond_0

    goto :goto_1

    .line 2330
    :cond_0
    check-cast v7, Lorg/telegram/tgnet/TLRPC$User;

    .line 2331
    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    if-eqz v8, :cond_1

    move-object v7, v8

    .line 2335
    :cond_1
    iget-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v8, :cond_2

    invoke-virtual {p1, v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->containsUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2336
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2340
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_6

    if-nez p3, :cond_6

    .line 2341
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    move v6, v4

    :goto_2
    const/4 v7, 0x2

    .line 2342
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-ge v6, v7, :cond_5

    if-lez v6, :cond_4

    .line 2344
    const-string v7, ", "

    invoke-virtual {v3, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2346
    :cond_4
    new-instance v7, Landroid/text/SpannableString;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2347
    new-instance v8, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v9

    const/16 v10, 0x21

    invoke-virtual {v7, v8, v4, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2348
    invoke-virtual {v3, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2350
    :cond_5
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v4, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v4, Lorg/telegram/messenger/R$string;->StoryRestrictions:I

    .line 2351
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$string;->StoryRestrictionsInfo:I

    .line 2352
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "%s"

    invoke-static {v6, v4, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->Proceed:I

    .line 2353
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 2356
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 2357
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 2360
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object v2

    .line 2361
    aget-object v2, v2, v4

    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v3, :cond_7

    check-cast v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->-$$Nest$fgetbutton(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object v2

    goto :goto_3

    :cond_7
    move-object v2, v5

    :goto_3
    if-eqz p2, :cond_8

    if-eqz v2, :cond_8

    const/4 v3, 0x1

    .line 2363
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 2365
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->onDone:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$DoneCallback;

    if-eqz v3, :cond_a

    .line 2366
    iget-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowComments:Z

    move-object v6, v3

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowScreenshots:Z

    move v7, v4

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->keepOnMyPage:Z

    move-object v8, v5

    iget-boolean v5, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->isRtmpStream:Z

    move-object v9, v6

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move v10, v7

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->commentsPrice:I

    if-eqz p2, :cond_9

    new-instance v8, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v8, v2, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Ljava/lang/Runnable;)V

    :cond_9
    move-object v0, v9

    .line 2373
    new-instance v9, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v9, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    move-object v1, p1

    move v2, v10

    .line 2366
    invoke-interface/range {v0 .. v9}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$DoneCallback;->done(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;ZZZZLorg/telegram/tgnet/TLRPC$InputPeer;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void

    :cond_a
    if-eqz p2, :cond_b

    .line 2379
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_b
    return-void
.end method

.method private getChats()Ljava/util/ArrayList;
    .locals 9

    .line 2982
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2983
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 2984
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getAllDialogs()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    .line 2985
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 2986
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 2987
    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MessagesController;->canAddToForward(Lorg/telegram/tgnet/TLRPC$Dialog;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 2990
    :cond_0
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2991
    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2992
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v5, :cond_2

    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/32 v7, 0xbdb28

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2993
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2995
    :cond_1
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2996
    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2997
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2998
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getCloseFriends()Ljava/util/ArrayList;
    .locals 4

    .line 2903
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->getContacts()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 2904
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2905
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLObject;

    .line 2906
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v3, :cond_0

    goto :goto_1

    .line 2909
    :cond_0
    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 2910
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->close_friend:Z

    if-nez v2, :cond_1

    .line 2911
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getContacts()Ljava/util/ArrayList;
    .locals 9

    .line 2882
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2883
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2884
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2885
    :cond_0
    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZJ)V

    .line 2887
    :cond_1
    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    if-eqz v1, :cond_3

    .line 2889
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 2890
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v4, :cond_2

    .line 2892
    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2893
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v5, :cond_2

    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/32 v7, 0xbdb28

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    .line 2894
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getParticipantsCount(Lorg/telegram/tgnet/TLRPC$Chat;)I
    .locals 3

    .line 2969
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2970
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-lez v0, :cond_0

    return v0

    .line 2972
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->smallChatsParticipantsCount:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 2973
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 2975
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 2978
    :cond_1
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    return p1
.end method

.method private getUsers(ZZ)Ljava/util/ArrayList;
    .locals 11

    .line 2919
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 2920
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2921
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2922
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getAllDialogs()Ljava/util/ArrayList;

    move-result-object v3

    .line 2923
    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 2924
    invoke-virtual {v4}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2925
    :cond_0
    iget-boolean v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->loadedContacts:Z

    if-nez v6, :cond_1

    .line 2926
    iget v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v5, v7, v8}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZJ)V

    :cond_1
    const/4 v6, 0x1

    .line 2928
    iput-boolean v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->loadedContacts:Z

    .line 2930
    :cond_2
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/32 v7, 0xbdb28

    if-ge v5, v6, :cond_7

    .line 2931
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 2932
    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v9, v10}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2933
    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 2934
    iget-boolean v9, v6, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v9, :cond_6

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v7, v9, v7

    if-eqz v7, :cond_6

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    if-nez v7, :cond_6

    if-eqz p1, :cond_3

    if-eqz v4, :cond_6

    .line 2935
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_1

    .line 2938
    :cond_3
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2939
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_6

    .line 2941
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2942
    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 2943
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_1

    .line 2948
    :cond_5
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2949
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_7
    if-eqz v4, :cond_9

    .line 2954
    invoke-virtual {v4}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 2955
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 2956
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 2957
    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 2958
    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v3, :cond_8

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_8

    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 2959
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2960
    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_9
    return-object v2
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 2208
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$2;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    .line 2215
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2216
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesBlocklistUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2217
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesSendAsUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2219
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->backgroundPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2220
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    .line 2222
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ContainerView;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ContainerView;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 2224
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    .line 2270
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 2271
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    const/4 v1, -0x1

    const/16 v2, 0x77

    invoke-static {v1, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$done$2(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p3, 0x1

    .line 2354
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->done(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/util/HashMap;)V
    .locals 1

    .line 2194
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->smallChatsParticipantsCount:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->smallChatsParticipantsCount:Ljava/util/HashMap;

    .line 2197
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->smallChatsParticipantsCount:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/messenger/MessagesStorage;)V
    .locals 1

    .line 2189
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getSmallGroupsParticipantsCount()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2190
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2193
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/HashMap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private mergeUsers(Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;
    .locals 1

    .line 160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 165
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    .line 166
    invoke-virtual {v0, p2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private pullSaved()V
    .locals 14

    .line 4446
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "story_prv_contacts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4447
    const-string v1, ","

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 4448
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4449
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move v4, v3

    .line 4450
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 4452
    :try_start_0
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContacts:Ljava/util/ArrayList;

    aget-object v6, v0, v4

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4457
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "story_prv_grpcontacts"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4458
    const-string v4, ";"

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    .line 4459
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4460
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsByGroup:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    move v6, v3

    .line 4461
    :goto_1
    array-length v7, v0

    if-ge v6, v7, :cond_3

    .line 4462
    aget-object v7, v0, v6

    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 4463
    array-length v8, v7

    if-gtz v8, :cond_1

    goto :goto_3

    .line 4468
    :cond_1
    :try_start_1
    aget-object v8, v7, v3

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4472
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v11, v5

    .line 4473
    :goto_2
    array-length v12, v7

    if-ge v11, v12, :cond_2

    .line 4474
    aget-object v12, v7, v11

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 4476
    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsByGroup:Ljava/util/HashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :catch_1
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4480
    :cond_3
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v6, "story_prv_everyoneexcept"

    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4482
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4483
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryone:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v3

    .line 4484
    :goto_4
    array-length v7, v0

    if-ge v6, v7, :cond_4

    .line 4486
    :try_start_2
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryone:Ljava/util/ArrayList;

    aget-object v8, v0, v6

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 4491
    :cond_4
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v6, "story_prv_grpeveryoneexcept"

    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 4493
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4494
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneByGroup:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    move v4, v3

    .line 4495
    :goto_5
    array-length v6, v0

    if-ge v4, v6, :cond_7

    .line 4496
    aget-object v6, v0, v4

    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 4497
    array-length v7, v6

    if-gtz v7, :cond_5

    goto :goto_7

    .line 4502
    :cond_5
    :try_start_3
    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 4506
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v10, v5

    .line 4507
    :goto_6
    array-length v11, v6

    if-ge v10, v11, :cond_6

    .line 4508
    aget-object v11, v6, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 4510
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneByGroup:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :catch_3
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 4514
    :cond_7
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "story_prv_excluded"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 4516
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4517
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedContacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v1, v3

    .line 4518
    :goto_8
    array-length v2, v0

    if-ge v1, v2, :cond_8

    .line 4520
    :try_start_4
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedContacts:Ljava/util/ArrayList;

    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4525
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContacts:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsByGroup:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->mergeUsers(Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsCount:I

    .line 4526
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryone:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneByGroup:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->mergeUsers(Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneCount:I

    .line 4528
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "story_noforwards"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v5

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowScreenshots:Z

    .line 4529
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "story_keep"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->keepOnMyPage:Z

    return-void
.end method

.method private save()V
    .locals 7

    .line 4539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4540
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsByGroup:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ";"

    const-string v4, ","

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4541
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 4542
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4544
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4546
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4547
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneByGroup:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 4548
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 4549
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4551
    :cond_2
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4553
    :cond_3
    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryone:Ljava/util/ArrayList;

    .line 4554
    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "story_prv_everyoneexcept"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "story_prv_grpeveryoneexcept"

    .line 4555
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContacts:Ljava/util/ArrayList;

    .line 4556
    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "story_prv_contacts"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "story_prv_grpcontacts"

    .line 4557
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedContacts:Ljava/util/ArrayList;

    .line 4558
    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "story_prv_excluded"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowScreenshots:Z

    xor-int/lit8 v1, v1, 0x1

    .line 4559
    const-string v2, "story_noforwards"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "story_keep"

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->keepOnMyPage:Z

    .line 4560
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4562
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private whenSelectedShare(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 0

    .line 2530
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->onDone2:Lorg/telegram/messenger/Utilities$Callback;

    return-object p0
.end method


# virtual methods
.method public allowCover(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 4

    .line 2542
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowCover:Z

    .line 2543
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    if-eqz p1, :cond_1

    .line 2544
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 2545
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 2546
    aget-object v2, p1, v1

    .line 2547
    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v3, :cond_0

    .line 2548
    check-cast v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method protected canDismissWithSwipe()Z
    .locals 2

    .line 2485
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 2486
    instance-of v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v1, :cond_0

    .line 2487
    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->wasAtTop:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected canSwipeToBack(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public closeKeyboard()V
    .locals 4

    .line 2307
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 2308
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 2309
    aget-object v2, v0, v1

    .line 2310
    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->-$$Nest$fgetsearchField(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2311
    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->-$$Nest$fgetsearchField(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->-$$Nest$fgeteditText(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    .line 4409
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    if-nez p2, :cond_0

    goto :goto_3

    .line 4412
    :cond_0
    sget p3, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p3, :cond_2

    .line 4413
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    .line 4414
    aget-object p2, p1, v0

    instance-of p3, p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz p3, :cond_1

    .line 4415
    check-cast p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    .line 4417
    :cond_1
    aget-object p1, p1, v1

    instance-of p2, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz p2, :cond_7

    .line 4418
    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    return-void

    .line 4420
    :cond_2
    sget p3, Lorg/telegram/messenger/NotificationCenter;->storiesBlocklistUpdate:I

    if-ne p1, p3, :cond_5

    .line 4421
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    .line 4422
    :goto_0
    array-length p2, p1

    if-ge v0, p2, :cond_7

    .line 4423
    aget-object p2, p1, v0

    instance-of p3, p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz p3, :cond_4

    .line 4424
    check-cast p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    .line 4425
    iget p3, p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    const/4 v2, 0x6

    if-ne p3, v2, :cond_3

    .line 4426
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->applyBlocklist(Z)V

    goto :goto_1

    :cond_3
    if-nez p3, :cond_4

    .line 4428
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4432
    :cond_5
    sget p3, Lorg/telegram/messenger/NotificationCenter;->storiesSendAsUpdate:I

    if-ne p1, p3, :cond_7

    .line 4433
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    .line 4434
    :goto_2
    array-length p2, p1

    if-ge v0, p2, :cond_7

    .line 4435
    aget-object p2, p1, v0

    instance-of p3, p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz p3, :cond_6

    .line 4436
    check-cast p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    .line 4437
    iget p3, p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    if-nez p3, :cond_6

    .line 4438
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    return-void
.end method

.method public dismiss()V
    .locals 6

    .line 2385
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->onDismiss:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v0, :cond_3

    .line 2387
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedType:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2388
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContacts:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsByGroup:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->mergeUsers(Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v0

    .line 2389
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedType:I

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v3, v4, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(IILjava/util/ArrayList;)V

    .line 2390
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2391
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2392
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2393
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsByGroup:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2395
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryone:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneByGroup:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->mergeUsers(Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v0

    .line 2396
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedType:I

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v3, v4, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(IILjava/util/ArrayList;)V

    .line 2397
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2398
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryone:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2399
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2400
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneByGroup:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2402
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedContacts:Ljava/util/ArrayList;

    invoke-direct {v1, v0, v3, v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(IILjava/util/ArrayList;)V

    goto :goto_0

    .line 2404
    :cond_2
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-direct {v1, v0, v3, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(IILjava/util/ArrayList;)V

    .line 2406
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->onDismiss:Lorg/telegram/messenger/Utilities$Callback;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 2407
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->onDismiss:Lorg/telegram/messenger/Utilities$Callback;

    .line 2409
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    .line 2410
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->save()V

    .line 2411
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public dismissInternal()V
    .locals 2

    .line 2276
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2277
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesBlocklistUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2278
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesSendAsUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2279
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    return-void
.end method

.method public enableSharing(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 4

    .line 2568
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->sendAsMessageEnabled:Z

    .line 2569
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    if-eqz p1, :cond_1

    .line 2570
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 2571
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 2572
    aget-object v2, p1, v1

    .line 2573
    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v3, :cond_0

    .line 2574
    check-cast v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public getStoriesController()Lorg/telegram/ui/Stories/StoriesController;
    .locals 1

    .line 4812
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 4813
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    return-object v0
.end method

.method public isEdit(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 4

    .line 2585
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->isEdit:Z

    .line 2586
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    if-eqz p1, :cond_1

    .line 2587
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 2588
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 2589
    aget-object v2, p1, v1

    .line 2590
    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v3, :cond_0

    .line 2591
    check-cast v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    .line 2592
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public onBackPressed()V
    .locals 2

    .line 2475
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 2476
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->closeKeyboard()V

    .line 2477
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    return-void

    .line 2480
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onBackPressed()V

    return-void
.end method

.method public set(ZZZI)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 0

    .line 2617
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowComments:Z

    .line 2618
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowScreenshots:Z

    .line 2619
    iput-boolean p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->keepOnMyPage:Z

    .line 2620
    iput p4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->commentsPrice:I

    .line 2622
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    .line 2623
    aget-object p2, p1, p2

    instance-of p3, p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz p3, :cond_0

    .line 2624
    move-object p3, p2

    check-cast p3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    check-cast p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    iget p2, p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->bind(I)V

    :cond_0
    const/4 p2, 0x1

    .line 2626
    aget-object p1, p1, p2

    instance-of p2, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz p2, :cond_1

    .line 2627
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->bind(I)V

    :cond_1
    return-object p0
.end method

.method public setCanChangePeer(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 0

    .line 4566
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->canChangePeer:Z

    return-object p0
.end method

.method public setCount(I)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 4

    .line 2555
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->storiesCount:I

    .line 2556
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    if-eqz p1, :cond_1

    .line 2557
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 2558
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 2559
    aget-object v2, p1, v1

    .line 2560
    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v3, :cond_0

    .line 2561
    check-cast v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public setCover(Landroid/graphics/Bitmap;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4590
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->coverDrawable:Landroid/graphics/drawable/Drawable;

    .line 4591
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    if-eqz p1, :cond_2

    .line 4592
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 4593
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 4594
    aget-object v2, p1, v1

    .line 4595
    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v3, :cond_1

    .line 4596
    check-cast v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    .line 4597
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public setCover(Landroid/graphics/Bitmap;Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4574
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->coverDrawable:Landroid/graphics/drawable/Drawable;

    .line 4575
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->whenCoverClicked:Ljava/lang/Runnable;

    .line 4576
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    if-eqz p1, :cond_2

    .line 4577
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    .line 4578
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 4579
    aget-object v1, p1, v0

    .line 4580
    instance-of v2, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v2, :cond_1

    .line 4581
    check-cast v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    .line 4582
    invoke-virtual {v1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public setLive(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 2

    .line 2633
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->isLive:Z

    .line 2635
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 2636
    aget-object v0, p1, v0

    instance-of v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v1, :cond_0

    .line 2637
    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->bind(I)V

    :cond_0
    const/4 v0, 0x1

    .line 2639
    aget-object p1, p1, v0

    instance-of v0, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v0, :cond_1

    .line 2640
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->bind(I)V

    :cond_1
    return-object p0
.end method

.method public setLiveSettings(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 2

    .line 2646
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->liveSettings:Z

    .line 2648
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 2649
    aget-object v0, p1, v0

    instance-of v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v1, :cond_0

    .line 2650
    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->bind(I)V

    :cond_0
    const/4 v0, 0x1

    .line 2652
    aget-object p1, p1, v0

    instance-of v0, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v0, :cond_1

    .line 2653
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->bind(I)V

    :cond_1
    return-object p0
.end method

.method public setPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 2

    .line 2604
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2605
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedAlbums:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 2606
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 2607
    aget-object v0, p1, v0

    instance-of v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v1, :cond_0

    .line 2608
    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->bind(I)V

    :cond_0
    const/4 v0, 0x1

    .line 2610
    aget-object p1, p1, v0

    instance-of v0, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v0, :cond_1

    .line 2611
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->bind(I)V

    :cond_1
    return-object p0
.end method

.method public setValue(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 3

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 2662
    :cond_0
    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->type:I

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2664
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2665
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedContacts:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 2667
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2668
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContacts:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2669
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsByGroup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2670
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsByGroup:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2671
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContacts:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsByGroup:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->mergeUsers(Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsCount:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 2673
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryone:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2674
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryone:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2675
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneByGroup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2676
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneByGroup:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2677
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryone:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneByGroup:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->mergeUsers(Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneCount:I

    .line 2679
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->isShare()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 2680
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->startedFromSendAsMessage:Z

    const/4 v0, 0x5

    .line 2681
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->activePage:I

    .line 2682
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->messageUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2683
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->messageUsers:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->sendToUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2684
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->setPosition(I)V

    .line 2686
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 2687
    aget-object v0, p1, v0

    instance-of v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v2, :cond_5

    .line 2688
    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->bind(I)V

    .line 2690
    :cond_5
    aget-object p1, p1, v1

    instance-of v0, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v0, :cond_6

    .line 2691
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->bind(I)V

    :cond_6
    :goto_1
    return-object p0
.end method

.method public setWarnUsers(Ljava/util/ArrayList;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 0

    .line 2599
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->warnUsers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public whenDismiss(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 0

    .line 2521
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->onDismiss:Lorg/telegram/messenger/Utilities$Callback;

    return-object p0
.end method

.method public whenSelectedAlbums(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 0

    .line 2538
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->onSelectedAlbums:Lorg/telegram/messenger/Utilities$Callback;

    return-object p0
.end method

.method public whenSelectedPeer(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 0

    .line 2534
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->onSelectedPeer:Lorg/telegram/messenger/Utilities$Callback;

    return-object p0
.end method

.method public whenSelectedRules(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$DoneCallback;Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 0

    .line 2525
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->onDone:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$DoneCallback;

    .line 2526
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->applyWhenDismiss:Z

    return-object p0
.end method
