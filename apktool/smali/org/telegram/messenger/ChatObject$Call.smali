.class public Lorg/telegram/messenger/ChatObject$Call;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ChatObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Call"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;,
        Lorg/telegram/messenger/ChatObject$Call$InvitedUser;,
        Lorg/telegram/messenger/ChatObject$Call$RecordType;
    }
.end annotation


# static fields
.field public static final RECORD_TYPE_AUDIO:I = 0x0

.field public static final RECORD_TYPE_VIDEO_LANDSCAPE:I = 0x2

.field public static final RECORD_TYPE_VIDEO_PORTAIT:I = 0x1

.field private static videoPointer:I


# instance fields
.field public activeVideos:I

.field public call:Lorg/telegram/tgnet/TLRPC$GroupCall;

.field public canStreamVideo:Z

.field public chatId:J

.field private checkQueueRunnable:Ljava/lang/Runnable;

.field public currentAccount:Lorg/telegram/messenger/AccountInstance;

.field public final currentSpeakingPeers:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray;"
        }
    .end annotation
.end field

.field public invitedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public invitedUsersMap:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public invitedUsersMessageIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lorg/telegram/messenger/ChatObject$Call$InvitedUser;",
            ">;"
        }
    .end annotation
.end field

.field public isConference:Z

.field public kickedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastGroupCallReloadTime:J

.field private lastLoadGuid:I

.field public loadedRtmpStreamParticipant:Z

.field private loadingGroupCall:Z

.field private loadingGuids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public loadingMembers:Z

.field private loadingSsrcs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private loadingUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public membersLoadEndReached:Z

.field private nextLoadOffset:Ljava/lang/String;

.field public participants:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray;"
        }
    .end annotation
.end field

.field public participantsByPresentationSources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;",
            ">;"
        }
    .end annotation
.end field

.field public participantsBySources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;",
            ">;"
        }
    .end annotation
.end field

.field public participantsByVideoSources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;",
            ">;"
        }
    .end annotation
.end field

.field public participantsReceivedTime:J

.field public recording:Z

.field public reloadingMembers:Z

.field public rtmpStreamParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

.field public selfPeer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public shadyJoinParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public shadyLeftParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final sortedParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;",
            ">;"
        }
    .end annotation
.end field

.field public speakingMembersCount:I

.field public final thumbs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private typingUpdateRunnable:Ljava/lang/Runnable;

.field private typingUpdateRunnableScheduled:Z

.field private final updateCurrentSpeakingRunnable:Ljava/lang/Runnable;

.field private updatesQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;",
            ">;"
        }
    .end annotation
.end field

.field private updatesStartWaitTime:J

.field public videoNotAvailableParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

.field private final videoParticipantsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ChatObject$VideoParticipant;",
            ">;"
        }
    .end annotation
.end field

.field public final visibleParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;",
            ">;"
        }
    .end annotation
.end field

.field public final visibleVideoParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/ChatObject$VideoParticipant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9KXh5NXH0YnsFU9W8pXc5a2hwRY(Lorg/telegram/messenger/ChatObject$Call;ZLorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ChatObject$Call;->lambda$loadMembers$3(ZLorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9VxiqidTIDbBT0lncxUtvJA8C9M(Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ChatObject$Call;->lambda$loadGroupCall$10(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N6KE0n8sviUVUP9Tx9AMjlu3QhU(Lorg/telegram/messenger/ChatObject$Call;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/ChatObject$Call;->checkQueue()V

    return-void
.end method

.method public static synthetic $r8$lambda$QI4Y7T5xApN2fU1VynraduWXWtM(Lorg/telegram/messenger/ChatObject$Call;ILorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/ChatObject$Call;->lambda$loadUnknownParticipants$5(ILorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VsIWc5ZgLy2AyU4A6AQSSIfI1g0(Lorg/telegram/messenger/ChatObject$Call;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/ChatObject$Call;->lambda$createRtmpStreamParticipant$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$dz0gstgY4RRtAY9i7KtDcNzEI18(Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ChatObject$Call;->lambda$setTitle$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eoOUvrZMLleqlBXm_GGIH0srX58(Lorg/telegram/messenger/ChatObject$Call;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ChatObject$Call;->lambda$loadMembers$2(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fXbmk8gYwbR3uaDY1miUEV_RhdI(Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ChatObject$Call;->lambda$toggleRecord$13(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gje5r_29mH0I_-9HpgEzL7P16cg(Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ChatObject$Call;->lambda$reloadGroupCall$9(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kOrIs0bLEl-3nxAFcdKMTARYcUs(Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ChatObject$Call;->lambda$loadGroupCall$11(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lFO11YgNXgQjEUHeV-VCw5GrLKA(Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;)I
    .locals 0

    .line 939
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->version:I

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->version:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->compare(II)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qhEXJ_bmOaKEtWOWfPkUs_M6PYs(Lorg/telegram/messenger/ChatObject$Call;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/ChatObject$Call;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$qheNEaMS9z-WZFvjziJ7cnG5YeQ(Lorg/telegram/messenger/ChatObject$Call;ILorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;Ljava/util/ArrayList;Ljava/util/HashSet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/ChatObject$Call;->lambda$loadUnknownParticipants$6(ILorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;Ljava/util/ArrayList;Ljava/util/HashSet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r_F5wKFCFEXkKmvyvm0R2YJ7jEc(Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ChatObject$Call;->lambda$reloadGroupCall$8(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zWg-zLHuYSE3MrgKycL7ydcx7E4(Lorg/telegram/messenger/ChatObject$Call;JZLorg/telegram/tgnet/TLRPC$GroupCallParticipant;Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)I
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/ChatObject$Call;->lambda$sortParticipants$12(JZLorg/telegram/tgnet/TLRPC$GroupCallParticipant;Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetupdateCurrentSpeakingRunnable(Lorg/telegram/messenger/ChatObject$Call;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/ChatObject$Call;->updateCurrentSpeakingRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleParticipants:Ljava/util/ArrayList;

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->thumbs:Ljava/util/HashMap;

    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->videoParticipantsCache:Ljava/util/HashMap;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsers:Ljava/util/ArrayList;

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsersMessageIds:Ljava/util/HashMap;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->shadyLeftParticipants:Ljava/util/ArrayList;

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->shadyJoinParticipants:Ljava/util/ArrayList;

    .line 239
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsersMap:Ljava/util/HashSet;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->kickedUsers:Ljava/util/ArrayList;

    .line 241
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsBySources:Landroid/util/SparseArray;

    .line 242
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsByVideoSources:Landroid/util/SparseArray;

    .line 243
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsByPresentationSources:Landroid/util/SparseArray;

    .line 257
    new-instance v0, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/ChatObject$Call;)V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->typingUpdateRunnable:Ljava/lang/Runnable;

    .line 264
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->loadingGuids:Ljava/util/HashSet;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesQueue:Ljava/util/ArrayList;

    .line 270
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->loadingUids:Ljava/util/HashSet;

    .line 271
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->loadingSsrcs:Ljava/util/HashSet;

    .line 279
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    .line 281
    new-instance v0, Lorg/telegram/messenger/ChatObject$Call$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ChatObject$Call$1;-><init>(Lorg/telegram/messenger/ChatObject$Call;)V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->updateCurrentSpeakingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private checkOnlineParticipants()V
    .locals 9

    .line 1569
    iget-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->typingUpdateRunnableScheduled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1570
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->typingUpdateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1571
    iput-boolean v1, p0, Lorg/telegram/messenger/ChatObject$Call;->typingUpdateRunnableScheduled:Z

    .line 1573
    :cond_0
    iput v1, p0, Lorg/telegram/messenger/ChatObject$Call;->speakingMembersCount:I

    .line 1574
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 1576
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const v3, 0x7fffffff

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v1, v2, :cond_3

    .line 1577
    iget-object v6, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 1578
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    sub-int v7, v0, v7

    const/4 v8, 0x5

    if-ge v7, v8, :cond_1

    .line 1580
    iget v8, p0, Lorg/telegram/messenger/ChatObject$Call;->speakingMembersCount:I

    add-int/2addr v8, v5

    iput v8, p0, Lorg/telegram/messenger/ChatObject$Call;->speakingMembersCount:I

    .line 1581
    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1583
    :cond_1
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->date:I

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v7, v0, -0x5

    if-gt v6, v7, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eq v4, v3, :cond_4

    .line 1588
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->typingUpdateRunnable:Ljava/lang/Runnable;

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v1, v4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1589
    iput-boolean v5, p0, Lorg/telegram/messenger/ChatObject$Call;->typingUpdateRunnableScheduled:Z

    :cond_4
    return-void
.end method

.method private checkQueue()V
    .locals 4

    const/4 v0, 0x0

    .line 982
    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->checkQueueRunnable:Ljava/lang/Runnable;

    .line 983
    iget-wide v0, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesStartWaitTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesStartWaitTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 984
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 985
    const-string v0, "QUEUE GROUP CALL UPDATES WAIT TIMEOUT - CHECK QUEUE"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 987
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/ChatObject$Call;->processUpdatesQueue()V

    .line 989
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 990
    new-instance v0, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/ChatObject$Call;)V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->checkQueueRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method private getSelfId()J
    .locals 2

    .line 455
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->selfPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_0

    .line 456
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    return-wide v0

    .line 458
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    return-wide v0
.end method

.method private isSameVideo(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    :cond_1
    return v0

    :cond_2
    const/4 v1, 0x1

    if-eqz p1, :cond_a

    if-nez p2, :cond_3

    goto :goto_2

    .line 1256
    :cond_3
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->endpoint:Ljava/lang/String;

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->endpoint:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    .line 1259
    :cond_4
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_5

    return v0

    .line 1262
    :cond_5
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_a

    .line 1263
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;

    .line 1264
    iget-object v5, p2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;

    .line 1265
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->semantics:Ljava/lang/String;

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->semantics:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    return v0

    .line 1268
    :cond_6
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v6, v7, :cond_7

    return v0

    .line 1271
    :cond_7
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v0

    :goto_1
    if-ge v7, v6, :cond_9

    .line 1272
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    return v0

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_a
    :goto_2
    return v1
.end method

.method private isValidUpdate(Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;)I
    .locals 2

    .line 909
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    add-int/lit8 v1, v0, 0x1

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->version:I

    if-eq v1, p1, :cond_2

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-ge v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createRtmpStreamParticipant$1()V
    .locals 6

    .line 384
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    iget-wide v2, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x2

    aput-object v2, v4, v3

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$loadGroupCall$10(Lorg/telegram/tgnet/TLObject;)V
    .locals 5

    .line 1019
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/ChatObject$Call;->lastGroupCallReloadTime:J

    const/4 v0, 0x0

    .line 1020
    iput-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->loadingGroupCall:Z

    if-eqz p1, :cond_1

    .line 1022
    check-cast p1, Lorg/telegram/tgnet/tl/TL_phone$groupParticipants;

    .line 1023
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_phone$groupParticipants;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1024
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_phone$groupParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1025
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_phone$groupParticipants;->count:I

    if-eq v2, p1, :cond_1

    .line 1026
    iput p1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    .line 1027
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 1028
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "new participants reload count "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1030
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    iget-wide v2, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    const/4 v0, 0x1

    aput-object v3, v4, v0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x2

    aput-object v0, v4, v2

    invoke-virtual {p1, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$loadGroupCall$11(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1018
    new-instance p2, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadMembers$2(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;)V
    .locals 10

    const/4 v0, 0x0

    .line 567
    iput-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->loadingMembers:Z

    if-eqz p1, :cond_0

    .line 569
    iput-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->reloadingMembers:Z

    :cond_0
    if-eqz p2, :cond_1

    .line 572
    check-cast p2, Lorg/telegram/tgnet/tl/TL_phone$groupParticipants;

    .line 573
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/tgnet/tl/TL_phone$groupParticipants;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 574
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/tgnet/tl/TL_phone$groupParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 575
    iget-object v4, p2, Lorg/telegram/tgnet/tl/TL_phone$groupParticipants;->participants:Ljava/util/ArrayList;

    iget-object v6, p3, Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;->offset:Ljava/lang/String;

    iget-object v7, p2, Lorg/telegram/tgnet/tl/TL_phone$groupParticipants;->next_offset:Ljava/lang/String;

    iget v8, p2, Lorg/telegram/tgnet/tl/TL_phone$groupParticipants;->version:I

    iget v9, p2, Lorg/telegram/tgnet/tl/TL_phone$groupParticipants;->count:I

    move-object v3, p0

    move v5, p1

    invoke-direct/range {v3 .. v9}, Lorg/telegram/messenger/ChatObject$Call;->onParticipantsLoad(Ljava/util/ArrayList;ZLjava/lang/String;Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$loadMembers$3(ZLorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 566
    new-instance p4, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda6;

    invoke-direct {p4, p0, p1, p3, p2}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/ChatObject$Call;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadUnknownParticipants$5(ILorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 8

    .line 701
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->loadingGuids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_6

    .line 705
    check-cast p2, Lorg/telegram/tgnet/tl/TL_phone$groupParticipants;

    .line 706
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_phone$groupParticipants;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 707
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_phone$groupParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 708
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_phone$groupParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-ge v0, p1, :cond_3

    .line 709
    iget-object v3, p2, Lorg/telegram/tgnet/tl/TL_phone$groupParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 710
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    .line 711
    iget-object v6, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz v6, :cond_1

    .line 713
    iget-object v7, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 714
    invoke-direct {p0, v6, v1}, Lorg/telegram/messenger/ChatObject$Call;->processAllSources(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V

    .line 716
    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v4, v5, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 717
    iget-object v6, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    invoke-direct {p0, v3, v2}, Lorg/telegram/messenger/ChatObject$Call;->processAllSources(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V

    .line 719
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsersMap:Ljava/util/HashSet;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 720
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 721
    iget-object v3, p0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsersMap:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 722
    iget-object v3, p0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 725
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    iget-object p2, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 726
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object p2, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result p2

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    .line 728
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->sortParticipants()V

    .line 729
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    iget-wide v3, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    aput-object v3, v4, v2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-virtual {p1, p2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    if-eqz p3, :cond_5

    .line 731
    invoke-interface {p3, p4}, Lorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;->onLoad(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 733
    :cond_5
    invoke-direct {p0}, Lorg/telegram/messenger/ChatObject$Call;->setParticiapantsVolume()V

    .line 736
    :cond_6
    :goto_1
    invoke-virtual {p5, p4}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private synthetic lambda$loadUnknownParticipants$6(ILorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;Ljava/util/ArrayList;Ljava/util/HashSet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 700
    new-instance v0, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda10;

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/ChatObject$Call;ILorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->typingUpdateRunnableScheduled:Z

    .line 259
    invoke-direct {p0}, Lorg/telegram/messenger/ChatObject$Call;->checkOnlineParticipants()V

    .line 260
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->groupCallTypingsUpdated:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$reloadGroupCall$8(Lorg/telegram/tgnet/TLObject;)V
    .locals 10

    .line 999
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    if-eqz v0, :cond_0

    .line 1000
    check-cast p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    .line 1001
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    .line 1002
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1003
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1004
    iget-object v4, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->participants:Ljava/util/ArrayList;

    iget-object v7, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->participants_next_offset:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v8, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    iget v9, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    const/4 v5, 0x1

    const-string v6, ""

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/messenger/ChatObject$Call;->onParticipantsLoad(Ljava/util/ArrayList;ZLjava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$reloadGroupCall$9(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 998
    new-instance p2, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setTitle$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 593
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 594
    iget-object p2, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$sortParticipants$12(JZLorg/telegram/tgnet/TLRPC$GroupCallParticipant;Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)I
    .locals 7

    .line 1386
    iget v0, p4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 1387
    :goto_0
    iget v4, p5, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoIndex:I

    if-lez v4, :cond_1

    move v1, v2

    :cond_1
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    sub-int/2addr v4, v0

    return v4

    :cond_2
    const/4 v0, -0x1

    if-eqz v3, :cond_3

    return v0

    :cond_3
    if-eqz v1, :cond_4

    return v2

    .line 1395
    :cond_4
    iget v1, p4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    if-eqz v1, :cond_5

    iget v3, p5, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    if-eqz v3, :cond_5

    .line 1396
    invoke-static {v3, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    :cond_5
    if-eqz v1, :cond_6

    return v0

    .line 1399
    :cond_6
    iget v1, p5, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    if-eqz v1, :cond_7

    return v2

    .line 1402
    :cond_7
    iget-object v1, p4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    cmp-long v1, v3, p1

    if-nez v1, :cond_8

    return v0

    .line 1404
    :cond_8
    iget-object v1, p5, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    cmp-long p1, v3, p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    if-eqz p3, :cond_c

    .line 1408
    iget-wide p1, p4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->raise_hand_rating:J

    const-wide/16 v3, 0x0

    cmp-long p3, p1, v3

    if-eqz p3, :cond_a

    iget-wide v5, p5, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->raise_hand_rating:J

    cmp-long p3, v5, v3

    if-eqz p3, :cond_a

    .line 1409
    invoke-static {v5, v6, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    :cond_a
    cmp-long p1, p1, v3

    if-eqz p1, :cond_b

    return v0

    .line 1412
    :cond_b
    iget-wide p1, p5, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->raise_hand_rating:J

    cmp-long p1, p1, v3

    if-eqz p1, :cond_c

    return v2

    .line 1416
    :cond_c
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->join_date_asc:Z

    if-eqz p1, :cond_d

    .line 1417
    iget p1, p4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->date:I

    iget p2, p5, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->date:I

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    .line 1419
    :cond_d
    iget p1, p5, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->date:I

    iget p2, p4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->date:I

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$toggleRecord$13(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1609
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 1610
    iget-object p2, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    return-void
.end method

.method private loadGroupCall()V
    .locals 4

    .line 1010
    iget-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->loadingGroupCall:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/ChatObject$Call;->lastGroupCallReloadTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1013
    iput-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->loadingGroupCall:Z

    .line 1014
    new-instance v1, Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;-><init>()V

    .line 1015
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 1016
    const-string v2, ""

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;->offset:Ljava/lang/String;

    .line 1017
    iput v0, v1, Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;->limit:I

    .line 1018
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/ChatObject$Call;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private loadUnknownParticipants(Ljava/util/ArrayList;ZLorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;Z",
            "Lorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 659
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->loadingUids:Ljava/util/HashSet;

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->loadingSsrcs:Ljava/util/HashSet;

    goto :goto_0

    .line 660
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_2

    .line 661
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 662
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 667
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 670
    :cond_3
    iget v0, p0, Lorg/telegram/messenger/ChatObject$Call;->lastLoadGuid:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/telegram/messenger/ChatObject$Call;->lastLoadGuid:I

    .line 671
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->loadingGuids:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 672
    invoke-virtual {v6, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 673
    new-instance v0, Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;-><init>()V

    .line 674
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 675
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_8

    .line 676
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    if-eqz p2, :cond_7

    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-lez v7, :cond_4

    .line 679
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    .line 680
    iput-wide v4, v7, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    .line 681
    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;->ids:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 683
    :cond_4
    iget-object v7, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v7}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 685
    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_4

    .line 689
    :cond_5
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    .line 690
    iput-wide v4, v7, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    goto :goto_5

    .line 686
    :cond_6
    :goto_4
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    .line 687
    iput-wide v4, v7, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    .line 692
    :goto_5
    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;->ids:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 695
    :cond_7
    iget-object v7, v0, Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;->sources:Ljava/util/ArrayList;

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 698
    :cond_8
    const-string p2, ""

    iput-object p2, v0, Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;->offset:Ljava/lang/String;

    const/16 p2, 0x64

    .line 699
    iput p2, v0, Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;->limit:I

    .line 700
    iget-object p2, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v1, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda12;

    move-object v2, p0

    move-object v5, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/ChatObject$Call;ILorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    invoke-virtual {p2, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private onParticipantsLoad(Ljava/util/ArrayList;ZLjava/lang/String;Ljava/lang/String;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsReceivedTime:J

    .line 465
    invoke-direct {p0}, Lorg/telegram/messenger/ChatObject$Call;->getSelfId()J

    move-result-wide v0

    .line 466
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 467
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 468
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    .line 470
    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    goto :goto_0

    .line 472
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 474
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 475
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsBySources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 476
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsByVideoSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 477
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsByPresentationSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 478
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->loadingGuids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 480
    :cond_1
    iput-object p4, p0, Lorg/telegram/messenger/ChatObject$Call;->nextLoadOffset:Ljava/lang/String;

    .line 481
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    const/4 v1, 0x1

    if-nez p4, :cond_2

    iget-object p4, p0, Lorg/telegram/messenger/ChatObject$Call;->nextLoadOffset:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 482
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/messenger/ChatObject$Call;->membersLoadEndReached:Z

    .line 484
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 485
    iget-object p3, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iput p5, p3, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    .line 486
    iput p6, p3, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    .line 487
    sget-boolean p3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p3, :cond_4

    .line 488
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "new participants count "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget p4, p4, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 491
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    .line 492
    iget-object p5, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p5}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p5

    sget p6, Lorg/telegram/messenger/NotificationCenter;->applyGroupCallVisibleParticipants:I

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {p5, p6, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 494
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p5

    move p6, v5

    move v3, p6

    :goto_1
    if-gt p6, p5, :cond_d

    if-ne p6, p5, :cond_5

    if-eqz p2, :cond_c

    if-eqz v0, :cond_c

    if-nez v3, :cond_c

    move-object v4, v0

    goto :goto_2

    .line 503
    :cond_5
    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 504
    iget-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz v6, :cond_6

    move v3, v1

    .line 508
    :cond_6
    :goto_2
    iget-object v6, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz v6, :cond_8

    .line 510
    iget-object v7, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 511
    invoke-direct {p0, v6, v5}, Lorg/telegram/messenger/ChatObject$Call;->processAllSources(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V

    .line 512
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz v7, :cond_7

    .line 513
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastTypingDate:I

    goto :goto_3

    .line 515
    :cond_7
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastTypingDate:I

    .line 517
    :goto_3
    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastVisibleDate:J

    cmp-long v6, p3, v6

    if-eqz v6, :cond_b

    .line 518
    iget v6, v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastTypingDate:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    goto :goto_5

    :cond_8
    if-eqz v2, :cond_b

    .line 521
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz v6, :cond_b

    .line 523
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz v7, :cond_9

    .line 524
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastTypingDate:I

    goto :goto_4

    .line 526
    :cond_9
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    iget v8, v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastTypingDate:I

    .line 528
    :goto_4
    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastVisibleDate:J

    cmp-long v7, p3, v7

    if-eqz v7, :cond_a

    .line 529
    iget v6, v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastTypingDate:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    goto :goto_5

    .line 531
    :cond_a
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    .line 535
    :cond_b
    :goto_5
    iget-object v6, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 536
    iget-object v6, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    invoke-direct {p0, v4, v1}, Lorg/telegram/messenger/ChatObject$Call;->processAllSources(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V

    :cond_c
    add-int/lit8 p6, p6, 0x1

    goto/16 :goto_1

    .line 539
    :cond_d
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    iget-object p2, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_e

    .line 540
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object p2, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result p2

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    .line 542
    :cond_e
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->sortParticipants()V

    .line 543
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    iget-wide p3, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide p4, p4, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const/4 p5, 0x3

    new-array p5, p5, [Ljava/lang/Object;

    aput-object p3, p5, v5

    aput-object p4, p5, v1

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 p4, 0x2

    aput-object p3, p5, p4

    invoke-virtual {p1, p2, p5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 544
    invoke-direct {p0}, Lorg/telegram/messenger/ChatObject$Call;->setParticiapantsVolume()V

    return-void
.end method

.method private processAllSources(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V
    .locals 10

    .line 741
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->source:I

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 743
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsBySources:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 745
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsBySources:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_d

    if-nez v1, :cond_2

    .line 749
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    goto :goto_2

    :cond_2
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    :goto_2
    if-eqz v3, :cond_c

    .line 751
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->flags:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_4

    iget v2, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->audio_source:I

    if-eqz v2, :cond_4

    if-eqz p2, :cond_3

    .line 753
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsBySources:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 755
    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsBySources:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_4
    :goto_3
    if-nez v1, :cond_5

    .line 758
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsByVideoSources:Landroid/util/SparseArray;

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsByPresentationSources:Landroid/util/SparseArray;

    .line 759
    :goto_4
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v0

    :goto_5
    if-ge v5, v4, :cond_8

    .line 760
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;

    .line 761
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v0

    :goto_6
    if-ge v8, v7, :cond_7

    .line 762
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz p2, :cond_6

    .line 764
    invoke-virtual {v2, v9, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7

    .line 766
    :cond_6
    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->remove(I)V

    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    if-eqz p2, :cond_a

    if-nez v1, :cond_9

    .line 772
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->endpoint:Ljava/lang/String;

    iput-object v2, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoEndpoint:Ljava/lang/String;

    goto :goto_8

    .line 774
    :cond_9
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->endpoint:Ljava/lang/String;

    iput-object v2, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    if-nez v1, :cond_b

    .line 778
    iput-object v2, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoEndpoint:Ljava/lang/String;

    goto :goto_8

    .line 780
    :cond_b
    iput-object v2, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    :cond_c
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_d
    return-void
.end method

.method private processUpdatesQueue()V
    .locals 9

    .line 939
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesQueue:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda14;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 940
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesQueue:Ljava/util/ArrayList;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    move v3, v0

    .line 942
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 943
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;

    .line 944
    invoke-direct {p0, v4}, Lorg/telegram/messenger/ChatObject$Call;->isValidUpdate(Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;)I

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    .line 946
    invoke-virtual {p0, v4, v6}, Lorg/telegram/messenger/ChatObject$Call;->processParticipantsUpdate(Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;Z)V

    .line 948
    iget-object v3, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v3, v6

    goto :goto_0

    :cond_0
    if-ne v5, v6, :cond_6

    .line 951
    iget-wide v4, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesStartWaitTime:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_4

    if-nez v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v7, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesStartWaitTime:J

    sub-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v7, 0x5dc

    cmp-long v0, v4, v7

    if-gtz v0, :cond_4

    .line 952
    :cond_1
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_2

    .line 953
    const-string v0, "HOLE IN GROUP CALL UPDATES QUEUE - will wait more time"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    if-eqz v3, :cond_3

    .line 956
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesStartWaitTime:J

    :cond_3
    return-void

    .line 959
    :cond_4
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_5

    .line 960
    const-string v0, "HOLE IN GROUP CALL UPDATES QUEUE - reload participants"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 962
    :cond_5
    iput-wide v1, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesStartWaitTime:J

    .line 963
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 964
    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->nextLoadOffset:Ljava/lang/String;

    .line 965
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/ChatObject$Call;->loadMembers(Z)V

    return-void

    .line 969
    :cond_6
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 973
    :cond_7
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 974
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_8

    .line 975
    const-string v0, "GROUP CALL UPDATES QUEUE PROCEED - OK"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 978
    :cond_8
    iput-wide v1, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesStartWaitTime:J

    return-void
.end method

.method private setParticiapantsVolume()V
    .locals 5

    .line 581
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getAccount()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-wide v3, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    neg-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 583
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->setParticipantsVolume()V

    :cond_0
    return-void
.end method

.method public static videoIsActive(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1320
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 1324
    :cond_1
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 1325
    invoke-virtual {v1, p1}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2

    return v3

    :cond_2
    return v0

    .line 1327
    :cond_3
    iget-object v1, p2, Lorg/telegram/messenger/ChatObject$Call;->rtmpStreamParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eq v1, p0, :cond_6

    :cond_4
    iget-object v1, p2, Lorg/telegram/messenger/ChatObject$Call;->videoNotAvailableParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eq v1, p0, :cond_6

    :cond_5
    iget-object p2, p2, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_9

    :cond_6
    if-eqz p1, :cond_8

    .line 1329
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-eqz p0, :cond_7

    return v3

    :cond_7
    return v0

    .line 1331
    :cond_8
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-eqz p0, :cond_9

    return v3

    :cond_9
    return v0
.end method


# virtual methods
.method public addInvitedUser(J)V
    .locals 4

    .line 609
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsersMap:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 612
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsersMap:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 613
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->kickedUsers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 615
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->sortParticipants()V

    .line 616
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    iget-wide v0, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x2

    aput-object v0, v2, v1

    invoke-virtual {p1, p2, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addKickedUser(J)V
    .locals 4

    .line 600
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->kickedUsers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->kickedUsers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->sortParticipants()V

    .line 605
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    iget-wide v0, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x2

    aput-object v0, v2, v1

    invoke-virtual {p1, p2, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public addSelfDummyParticipant(Z)V
    .locals 9

    .line 403
    invoke-direct {p0}, Lorg/telegram/messenger/ChatObject$Call;->getSelfId()J

    move-result-wide v0

    .line 404
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v2

    if-ltz v2, :cond_0

    goto/16 :goto_3

    .line 407
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;-><init>()V

    .line 408
    iget-object v3, p0, Lorg/telegram/messenger/ChatObject$Call;->selfPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    const/4 v3, 0x1

    .line 409
    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted:Z

    .line 410
    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    .line 411
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_start_video:Z

    iput-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video_joined:Z

    .line 412
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    .line 413
    iget-object v5, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$GroupCall;->join_muted:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v3

    :goto_1
    iput-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->can_self_unmute:Z

    .line 414
    iget-object v5, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v5}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->date:I

    .line 415
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v4, :cond_3

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->can_self_unmute:Z

    if-eqz v4, :cond_4

    .line 416
    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    :cond_4
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_5

    .line 419
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 421
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->about:Ljava/lang/String;

    goto :goto_2

    .line 424
    :cond_5
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    neg-long v7, v0

    invoke-virtual {v4, v7, v8}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 426
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->about:Ljava/lang/String;

    .line 429
    :cond_6
    :goto_2
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v0, v1, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 430
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->sortParticipants()V

    if-eqz p1, :cond_7

    .line 433
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    iget-wide v1, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    aput-object v2, v4, v3

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x2

    aput-object v1, v4, v2

    invoke-virtual {p1, v0, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public canRecordVideo()Z
    .locals 5

    .line 1551
    iget-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->canStreamVideo:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1554
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1555
    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-ne v3, p0, :cond_2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result v0

    if-ne v0, v4, :cond_2

    :cond_1
    return v2

    .line 1558
    :cond_2
    iget v0, p0, Lorg/telegram/messenger/ChatObject$Call;->activeVideos:I

    iget-object v3, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$GroupCall;->unmuted_video_limit:I

    if-ge v0, v3, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public clearVideFramesInfo()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 878
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 879
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->hasCameraFrame:I

    .line 880
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->hasPresentationFrame:I

    .line 881
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoIndex:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 883
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->sortParticipants()V

    return-void
.end method

.method public createNoVideoParticipant()V
    .locals 4

    .line 388
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->videoNotAvailableParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v0, :cond_0

    return-void

    .line 391
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;-><init>()V

    .line 392
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 393
    iget-wide v2, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const/4 v1, 0x1

    .line 394
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted:Z

    .line 395
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    .line 396
    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->paused:Z

    .line 397
    const-string v1, ""

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->endpoint:Ljava/lang/String;

    .line 399
    new-instance v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lorg/telegram/messenger/ChatObject$VideoParticipant;-><init>(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZZ)V

    iput-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->videoNotAvailableParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    return-void
.end method

.method public createRtmpStreamParticipant(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/tl/TL_phone$TL_groupCallStreamChannel;",
            ">;)V"
        }
    .end annotation

    .line 366
    iget-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->loadedRtmpStreamParticipant:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->rtmpStreamParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v0, :cond_0

    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->rtmpStreamParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;-><init>()V

    .line 370
    :goto_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 371
    iget-wide v2, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    .line 372
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    .line 373
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;-><init>()V

    .line 374
    const-string v2, "SIM"

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->semantics:Ljava/lang/String;

    .line 375
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_phone$TL_groupCallStreamChannel;

    .line 376
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_phone$TL_groupCallStreamChannel;->channel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 378
    :cond_2
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    const-string/jumbo v1, "unified"

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->endpoint:Ljava/lang/String;

    .line 380
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoEndpoint:Ljava/lang/String;

    .line 381
    new-instance p1, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1}, Lorg/telegram/messenger/ChatObject$VideoParticipant;-><init>(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZZ)V

    iput-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->rtmpStreamParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    .line 383
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->sortParticipants()V

    .line 384
    new-instance p1, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/ChatObject$Call;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getInputGroupCall()Lorg/telegram/tgnet/TLRPC$InputGroupCall;
    .locals 1

    .line 1296
    iget-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->isConference:Z

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall(Z)Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v0

    return-object v0
.end method

.method public getInputGroupCall(Z)Lorg/telegram/tgnet/TLRPC$InputGroupCall;
    .locals 3

    .line 1299
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_2

    .line 1301
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->invite_link:Ljava/lang/String;

    if-nez p1, :cond_1

    return-object v1

    .line 1304
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallSlug;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallSlug;-><init>()V

    .line 1305
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->invite_link:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 1306
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->slug:Ljava/lang/String;

    return-object p1

    .line 1309
    :cond_2
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;-><init>()V

    .line 1310
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    iput-wide v1, p1, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    .line 1311
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->access_hash:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->access_hash:J

    return-object p1
.end method

.method public isScheduled()Z
    .locals 1

    .line 450
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadMembers(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 549
    iget-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->reloadingMembers:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 552
    iput-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->membersLoadEndReached:Z

    const/4 v0, 0x0

    .line 553
    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->nextLoadOffset:Ljava/lang/String;

    .line 555
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->membersLoadEndReached:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1388

    if-le v0, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 559
    iput-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->reloadingMembers:Z

    .line 561
    :cond_3
    iput-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->loadingMembers:Z

    .line 562
    new-instance v0, Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;-><init>()V

    .line 563
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 564
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->nextLoadOffset:Ljava/lang/String;

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;->offset:Ljava/lang/String;

    .line 565
    iget-boolean v1, p0, Lorg/telegram/messenger/ChatObject$Call;->isConference:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->conferenceCallSizeLimit:I

    goto :goto_1

    :cond_5
    const/16 v1, 0x14

    :goto_1
    iput v1, v0, Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;->limit:I

    .line 566
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/ChatObject$Call;ZLorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_6
    :goto_2
    return-void
.end method

.method public migrateToChat(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 5

    .line 438
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide v0, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    .line 439
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getAccount()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-wide v3, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    neg-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 441
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/voip/VoIPService;->migrateToChat(Lorg/telegram/tgnet/TLRPC$Chat;)V

    :cond_0
    return-void
.end method

.method public processGroupCallUpdate(Lorg/telegram/tgnet/TLRPC$GroupCall;)V
    .locals 6

    .line 1285
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1286
    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->nextLoadOffset:Ljava/lang/String;

    .line 1287
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/ChatObject$Call;->loadMembers(Z)V

    .line 1289
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    invoke-static {v0, p1}, Lorg/telegram/messenger/utils/tlutils/TlUtils;->applyGroupCallUpdate(Lorg/telegram/tgnet/TLRPC$GroupCall;Lorg/telegram/tgnet/TLRPC$GroupCall;)Lorg/telegram/tgnet/TLRPC$GroupCall;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    .line 1290
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-direct {p0}, Lorg/telegram/messenger/ChatObject$Call;->getSelfId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 1291
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->record_start_date:I

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/messenger/ChatObject$Call;->recording:Z

    .line 1292
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    iget-wide v3, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v0

    aput-object v4, v5, v2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x2

    aput-object v0, v5, v2

    invoke-virtual {p1, v1, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public processGroupCallUpdate(Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;)V
    .locals 0

    .line 1281
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ChatObject$Call;->processGroupCallUpdate(Lorg/telegram/tgnet/TLRPC$GroupCall;)V

    return-void
.end method

.method public processParticipantsUpdate(Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;Z)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez p2, :cond_7

    .line 1039
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v5

    :goto_0
    if-ge v8, v7, :cond_1

    .line 1040
    iget-object v9, v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 1041
    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->versioned:Z

    if-eqz v9, :cond_0

    move v7, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v7, v5

    :goto_1
    if-eqz v7, :cond_6

    .line 1046
    iget-object v8, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    add-int/2addr v8, v6

    iget v9, v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->version:I

    if-ge v8, v9, :cond_6

    .line 1047
    iget-boolean v5, v0, Lorg/telegram/messenger/ChatObject$Call;->reloadingMembers:Z

    const-wide/16 v7, 0x5dc

    if-nez v5, :cond_3

    iget-wide v9, v0, Lorg/telegram/messenger/ChatObject$Call;->updatesStartWaitTime:J

    cmp-long v5, v9, v3

    if-eqz v5, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v0, Lorg/telegram/messenger/ChatObject$Call;->updatesStartWaitTime:J

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-gtz v5, :cond_2

    goto :goto_2

    .line 1059
    :cond_2
    iput-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->nextLoadOffset:Ljava/lang/String;

    .line 1060
    invoke-virtual {v0, v6}, Lorg/telegram/messenger/ChatObject$Call;->loadMembers(Z)V

    return-void

    .line 1048
    :cond_3
    :goto_2
    iget-wide v5, v0, Lorg/telegram/messenger/ChatObject$Call;->updatesStartWaitTime:J

    cmp-long v2, v5, v3

    if-nez v2, :cond_4

    .line 1049
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/messenger/ChatObject$Call;->updatesStartWaitTime:J

    .line 1051
    :cond_4
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_5

    .line 1052
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add TL_updateGroupCallParticipants to queue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->version:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1054
    :cond_5
    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->updatesQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    iget-object v1, v0, Lorg/telegram/messenger/ChatObject$Call;->checkQueueRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_36

    .line 1056
    new-instance v1, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/ChatObject$Call;)V

    iput-object v1, v0, Lorg/telegram/messenger/ChatObject$Call;->checkQueueRunnable:Ljava/lang/Runnable;

    invoke-static {v1, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_6
    if-eqz v7, :cond_7

    .line 1064
    iget v7, v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->version:I

    iget-object v8, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    if-ge v7, v8, :cond_7

    .line 1065
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_36

    .line 1066
    const-string v1, "ignore processParticipantsUpdate because of version"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    .line 1077
    :cond_7
    invoke-direct {v0}, Lorg/telegram/messenger/ChatObject$Call;->getSelfId()J

    move-result-wide v7

    .line 1078
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1081
    iget-object v11, v0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    .line 1082
    iget-object v11, v0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v6

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->date:I

    goto :goto_3

    :cond_8
    move v11, v5

    .line 1086
    :goto_3
    iget-object v12, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v12}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v12

    sget v13, Lorg/telegram/messenger/NotificationCenter;->applyGroupCallVisibleParticipants:I

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    new-array v15, v6, [Ljava/lang/Object;

    aput-object v14, v15, v5

    invoke-virtual {v12, v13, v15}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1087
    iget-object v12, v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move-wide/from16 v19, v3

    move v13, v5

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    :goto_4
    if-ge v13, v12, :cond_2f

    .line 1088
    iget-object v15, v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    move-wide/from16 v21, v3

    .line 1089
    iget-object v3, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    .line 1090
    sget-boolean v23, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v23, :cond_9

    move/from16 v23, v6

    .line 1091
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "process participant "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " left = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->left:Z

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " versioned "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->versioned:Z

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " flags = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " self = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " volume = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->volume:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    move/from16 v23, v6

    .line 1093
    :goto_5
    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 1094
    iget-boolean v6, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->left:Z

    const-string v5, " "

    move/from16 v25, v6

    const-string v6, "GroupCall"

    if-eqz v25, :cond_14

    if-nez v2, :cond_b

    .line 1095
    iget v15, v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->version:I

    move-wide/from16 v25, v7

    iget-object v7, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    if-ne v15, v7, :cond_c

    .line 1096
    sget-boolean v7, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v7, :cond_a

    .line 1097
    const-string/jumbo v7, "unknowd participant left, reload call"

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_a
    move/from16 v14, v23

    goto :goto_6

    :cond_b
    move-wide/from16 v25, v7

    :cond_c
    :goto_6
    if-eqz v2, :cond_12

    .line 1102
    iget-object v7, v0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7, v3, v4}, Landroidx/collection/LongSparseArray;->remove(J)V

    const/4 v7, 0x0

    .line 1103
    invoke-direct {v0, v2, v7}, Lorg/telegram/messenger/ChatObject$Call;->processAllSources(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V

    .line 1104
    iget-object v7, v0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1105
    iget-object v7, v0, Lorg/telegram/messenger/ChatObject$Call;->visibleParticipants:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1106
    iget-object v7, v0, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v4, v8}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_10

    cmp-long v7, v3, v21

    .line 1107
    const-string/jumbo v8, "left remove from speaking "

    if-lez v7, :cond_e

    .line 1108
    iget-object v7, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v7}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v7, v15}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    .line 1109
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v7, :cond_d

    const/4 v8, 0x0

    goto :goto_7

    :cond_d
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    :goto_7
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v27, v9

    goto :goto_9

    .line 1111
    :cond_e
    iget-object v7, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v7}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    move-wide/from16 v27, v9

    neg-long v9, v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    .line 1112
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v7, :cond_f

    const/4 v8, 0x0

    goto :goto_8

    :cond_f
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_8
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    :goto_9
    iget-object v5, v0, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v3, v4}, Landroidx/collection/LongSparseArray;->remove(J)V

    move/from16 v17, v23

    goto :goto_a

    :cond_10
    move-wide/from16 v27, v9

    :goto_a
    const/4 v5, 0x0

    .line 1117
    :goto_b
    iget-object v6, v0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_13

    .line 1118
    iget-object v6, v0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    .line 1119
    iget-object v6, v6, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v6

    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_11

    .line 1120
    iget-object v6, v0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_12
    move-wide/from16 v27, v9

    .line 1125
    :cond_13
    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    if-gez v5, :cond_2d

    const/4 v7, 0x0

    .line 1127
    iput v7, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    goto/16 :goto_13

    :cond_14
    move-wide/from16 v25, v7

    move-wide/from16 v27, v9

    .line 1131
    iget-object v7, v0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsersMap:Ljava/util/HashSet;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1132
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1133
    iget-object v8, v0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsersMap:Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1134
    iget-object v8, v0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsers:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_15
    if-eqz v2, :cond_22

    .line 1137
    sget-boolean v7, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v7, :cond_16

    .line 1138
    const-string/jumbo v7, "new participant, update old"

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1140
    :cond_16
    iget-boolean v7, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted:Z

    iput-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted:Z

    .line 1141
    iget-boolean v7, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted:Z

    if-eqz v7, :cond_1a

    iget-object v7, v0, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v4, v8}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1a

    .line 1142
    iget-object v7, v0, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7, v3, v4}, Landroidx/collection/LongSparseArray;->remove(J)V

    cmp-long v7, v3, v21

    .line 1143
    const-string/jumbo v9, "muted remove from speaking "

    if-lez v7, :cond_18

    .line 1144
    iget-object v7, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v7}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    .line 1145
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v7, :cond_17

    move-object v5, v8

    goto :goto_c

    :cond_17
    iget-object v5, v7, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    :goto_c
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 1147
    :cond_18
    iget-object v7, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v7}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    move-object v10, v9

    neg-long v8, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    .line 1148
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v7, :cond_19

    const/4 v5, 0x0

    goto :goto_d

    :cond_19
    iget-object v5, v7, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_d
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    move/from16 v17, v23

    .line 1152
    :cond_1a
    iget-boolean v5, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->min:Z

    if-nez v5, :cond_1b

    .line 1153
    iget v5, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->volume:I

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->volume:I

    .line 1154
    iget-boolean v5, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted_by_you:Z

    iput-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted_by_you:Z

    goto :goto_f

    .line 1156
    :cond_1b
    iget v5, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    and-int/lit16 v6, v5, 0x80

    if-eqz v6, :cond_1c

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_1c

    and-int/lit16 v5, v5, -0x81

    .line 1157
    iput v5, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    .line 1159
    :cond_1c
    iget-boolean v5, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->volume_by_admin:Z

    if-eqz v5, :cond_1d

    iget-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->volume_by_admin:Z

    if-eqz v5, :cond_1d

    .line 1160
    iget v5, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->volume:I

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->volume:I

    .line 1163
    :cond_1d
    :goto_f
    iget v5, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    .line 1164
    iget-boolean v5, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->can_self_unmute:Z

    iput-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->can_self_unmute:Z

    .line 1165
    iget-boolean v5, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video_joined:Z

    iput-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video_joined:Z

    .line 1166
    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->raise_hand_rating:J

    cmp-long v5, v5, v21

    if-nez v5, :cond_1e

    iget-wide v5, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->raise_hand_rating:J

    cmp-long v5, v5, v21

    if-eqz v5, :cond_1e

    .line 1167
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastRaiseHandDate:J

    .line 1169
    :cond_1e
    iget-wide v5, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->raise_hand_rating:J

    iput-wide v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->raise_hand_rating:J

    .line 1170
    iget v5, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->date:I

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->date:I

    .line 1171
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    iget v6, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastTypingDate:I

    .line 1172
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastVisibleDate:J

    cmp-long v6, v27, v6

    if-eqz v6, :cond_1f

    .line 1173
    iput v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    .line 1175
    :cond_1f
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->source:I

    iget v6, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->source:I

    if-ne v5, v6, :cond_20

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    iget-object v6, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    invoke-direct {v0, v5, v6}, Lorg/telegram/messenger/ChatObject$Call;->isSameVideo(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;)Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    iget-object v6, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    invoke-direct {v0, v5, v6}, Lorg/telegram/messenger/ChatObject$Call;->isSameVideo(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;)Z

    move-result v5

    if-nez v5, :cond_21

    :cond_20
    const/4 v7, 0x0

    goto :goto_10

    .line 1184
    :cond_21
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-eqz v2, :cond_2a

    iget-object v5, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-eqz v5, :cond_2a

    .line 1185
    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->paused:Z

    iput-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->paused:Z

    goto/16 :goto_12

    .line 1176
    :goto_10
    invoke-direct {v0, v2, v7}, Lorg/telegram/messenger/ChatObject$Call;->processAllSources(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V

    .line 1177
    iget-object v5, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    .line 1178
    iget-object v5, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    .line 1179
    iget v5, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->source:I

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->source:I

    move/from16 v5, v23

    .line 1180
    invoke-direct {v0, v2, v5}, Lorg/telegram/messenger/ChatObject$Call;->processAllSources(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V

    .line 1181
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    iput-object v5, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    .line 1182
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoEndpoint:Ljava/lang/String;

    iput-object v5, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoEndpoint:Ljava/lang/String;

    .line 1183
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoIndex:I

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoIndex:I

    goto/16 :goto_12

    .line 1188
    :cond_22
    iget-boolean v2, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->just_joined:Z

    if-eqz v2, :cond_26

    cmp-long v2, v3, v25

    if-eqz v2, :cond_23

    move-wide/from16 v19, v3

    .line 1192
    :cond_23
    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    const/16 v23, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    .line 1193
    iget v5, v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->version:I

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    if-ne v5, v2, :cond_25

    .line 1195
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_24

    .line 1196
    const-string/jumbo v2, "new participant, just joined, reload call"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_24
    const/4 v14, 0x1

    goto :goto_11

    .line 1199
    :cond_25
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_26

    .line 1200
    const-string/jumbo v2, "new participant, just joined"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1204
    :cond_26
    :goto_11
    iget-wide v5, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->raise_hand_rating:J

    cmp-long v2, v5, v21

    if-eqz v2, :cond_27

    .line 1205
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastRaiseHandDate:J

    :cond_27
    cmp-long v2, v3, v25

    if-eqz v2, :cond_28

    .line 1207
    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v5, 0x14

    if-lt v2, v5, :cond_28

    iget v2, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->date:I

    if-le v2, v11, :cond_28

    iget v2, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    if-nez v2, :cond_28

    iget-boolean v2, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->can_self_unmute:Z

    if-nez v2, :cond_28

    iget-boolean v2, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted:Z

    if-eqz v2, :cond_28

    iget-boolean v2, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->min:Z

    if-eqz v2, :cond_28

    iget-boolean v2, v0, Lorg/telegram/messenger/ChatObject$Call;->membersLoadEndReached:Z

    if-eqz v2, :cond_29

    .line 1208
    :cond_28
    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1210
    :cond_29
    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v3, v4, v15}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    const/4 v5, 0x1

    .line 1211
    invoke-direct {v0, v15, v5}, Lorg/telegram/messenger/ChatObject$Call;->processAllSources(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V

    :cond_2a
    :goto_12
    cmp-long v2, v3, v25

    if-nez v2, :cond_2c

    .line 1213
    iget v2, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    if-nez v2, :cond_2c

    iget-boolean v2, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->can_self_unmute:Z

    if-nez v2, :cond_2b

    iget-boolean v2, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted:Z

    if-nez v2, :cond_2c

    .line 1214
    :cond_2b
    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    :cond_2c
    const/16 v16, 0x1

    :cond_2d
    :goto_13
    cmp-long v2, v3, v25

    if-nez v2, :cond_2e

    const/16 v18, 0x1

    :cond_2e
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v3, v21

    move-wide/from16 v7, v25

    move-wide/from16 v9, v27

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v15, 0x1

    goto/16 :goto_4

    .line 1223
    :cond_2f
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->version:I

    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    if-le v1, v3, :cond_30

    .line 1224
    iput v1, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    if-nez p2, :cond_30

    .line 1226
    invoke-direct {v0}, Lorg/telegram/messenger/ChatObject$Call;->processUpdatesQueue()V

    .line 1229
    :cond_30
    iget-object v1, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 1230
    iget-object v1, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    .line 1232
    :cond_31
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_32

    .line 1233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new participants count after update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_32
    if-eqz v14, :cond_33

    .line 1236
    invoke-direct {v0}, Lorg/telegram/messenger/ChatObject$Call;->loadGroupCall()V

    :cond_33
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eqz v15, :cond_35

    if-eqz v16, :cond_34

    .line 1240
    invoke-virtual {v0}, Lorg/telegram/messenger/ChatObject$Call;->sortParticipants()V

    .line 1242
    :cond_34
    iget-object v3, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v3}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    iget-wide v5, v0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v24, 0x0

    aput-object v5, v9, v24

    const/16 v23, 0x1

    aput-object v6, v9, v23

    aput-object v7, v9, v2

    aput-object v8, v9, v1

    invoke-virtual {v3, v4, v9}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_35
    if-eqz v17, :cond_36

    .line 1245
    iget-object v3, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v3}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->groupCallSpeakingUsersUpdated:I

    iget-wide v5, v0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v24, 0x0

    aput-object v5, v1, v24

    const/16 v23, 0x1

    aput-object v6, v1, v23

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v1, v2

    invoke-virtual {v3, v4, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_36
    return-void
.end method

.method public processTypingsUpdate(Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/AccountInstance;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .line 629
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 630
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->applyGroupCallVisibleParticipants:I

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 631
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    move-object v3, v0

    move v2, v4

    move v5, v2

    :goto_0
    if-ge v2, p1, :cond_4

    .line 632
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 633
    iget-object v7, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz v7, :cond_1

    .line 635
    iget v6, v7, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastTypingDate:I

    sub-int v6, p3, v6

    const/16 v8, 0xa

    if-le v6, v8, :cond_3

    .line 636
    iget-wide v5, v7, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastVisibleDate:J

    int-to-long v8, p3

    cmp-long v5, v5, v8

    if-eqz v5, :cond_0

    .line 637
    iput p3, v7, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    .line 639
    :cond_0
    iput p3, v7, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastTypingDate:I

    move v5, v1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    .line 644
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 646
    :cond_2
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    .line 650
    invoke-direct {p0, v3, v1, v0}, Lorg/telegram/messenger/ChatObject$Call;->loadUnknownParticipants(Ljava/util/ArrayList;ZLorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;)V

    :cond_5
    if-eqz v5, :cond_6

    .line 653
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->sortParticipants()V

    .line 654
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    iget-wide v2, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v4

    aput-object v0, v2, v1

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v0, 0x2

    aput-object p3, v2, v0

    invoke-virtual {p1, p2, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public processUnknownVideoParticipants([ILorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move v2, v1

    .line 892
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 893
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsBySources:Landroid/util/SparseArray;

    aget v5, p1, v2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsByVideoSources:Landroid/util/SparseArray;

    aget v5, p1, v2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsByPresentationSources:Landroid/util/SparseArray;

    aget v5, p1, v2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    .line 897
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 899
    :cond_1
    aget v4, p1, v2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 902
    invoke-direct {p0, v3, v1, p2}, Lorg/telegram/messenger/ChatObject$Call;->loadUnknownParticipants(Ljava/util/ArrayList;ZLorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;)V

    return-void

    .line 904
    :cond_4
    invoke-interface {p2, v0}, Lorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;->onLoad(Ljava/util/ArrayList;)V

    return-void
.end method

.method public processVoiceLevelsUpdate([I[F[Z)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 790
    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    .line 792
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 793
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 794
    iget-object v7, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v7}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/NotificationCenter;->applyGroupCallVisibleParticipants:I

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    invoke-virtual {v7, v8, v11}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move v8, v12

    move v11, v8

    move v13, v11

    const/4 v9, 0x0

    .line 795
    :goto_0
    array-length v14, v1

    if-ge v8, v14, :cond_11

    .line 797
    aget v14, v1, v8

    if-nez v14, :cond_0

    .line 798
    iget-object v14, v0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    move v15, v10

    move/from16 v16, v11

    invoke-direct {v0}, Lorg/telegram/messenger/ChatObject$Call;->getSelfId()J

    move-result-wide v10

    invoke-virtual {v14, v10, v11}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    goto :goto_1

    :cond_0
    move v15, v10

    move/from16 v16, v11

    .line 800
    iget-object v10, v0, Lorg/telegram/messenger/ChatObject$Call;->participantsBySources:Landroid/util/SparseArray;

    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    :goto_1
    if-eqz v10, :cond_e

    .line 803
    aget-boolean v11, p3, v8

    iput-boolean v11, v10, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->hasVoice:Z

    const-wide/16 v17, 0x1f4

    move/from16 v19, v13

    if-nez v11, :cond_1

    .line 804
    iget-wide v12, v10, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastVoiceUpdateTime:J

    sub-long v12, v3, v12

    cmp-long v12, v12, v17

    if-lez v12, :cond_2

    .line 805
    :cond_1
    iput-boolean v11, v10, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->hasVoiceDelayed:Z

    .line 806
    iput-wide v3, v10, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastVoiceUpdateTime:J

    .line 808
    :cond_2
    iget-object v11, v10, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v11

    .line 809
    aget v13, p2, v8

    const v20, 0x3dcccccd    # 0.1f

    cmpl-float v20, v13, v20

    const-wide/16 v21, 0x0

    const-string v14, " "

    move/from16 v23, v15

    const-string v15, "GroupCall"

    if-lez v20, :cond_9

    .line 810
    aget-boolean v17, p3, v8

    if-eqz v17, :cond_4

    iget v7, v10, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastTypingDate:I

    add-int/lit8 v7, v7, 0x1

    if-ge v7, v2, :cond_4

    move-wide/from16 v24, v3

    .line 811
    iget-wide v3, v10, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastVisibleDate:J

    cmp-long v3, v24, v3

    if-eqz v3, :cond_3

    .line 812
    iput v2, v10, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    .line 814
    :cond_3
    iput v2, v10, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastTypingDate:I

    move/from16 v16, v23

    goto :goto_2

    :cond_4
    move-wide/from16 v24, v3

    .line 817
    :goto_2
    iput-wide v5, v10, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastSpeakTime:J

    .line 818
    iput v13, v10, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->amplitude:F

    .line 820
    iget-object v3, v0, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v11, v12, v4}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_8

    cmp-long v3, v11, v21

    .line 821
    const-string v4, "add to current speaking "

    if-lez v3, :cond_6

    .line 822
    iget-object v3, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v3}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 823
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    :goto_3
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v2

    goto :goto_5

    .line 825
    :cond_6
    iget-object v3, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v3}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    move v7, v2

    neg-long v1, v11

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_4

    :cond_7
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    :goto_5
    iget-object v1, v0, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v11, v12, v10}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    move/from16 v11, v16

    move/from16 v13, v23

    goto/16 :goto_b

    :cond_8
    move v7, v2

    goto/16 :goto_a

    :cond_9
    move v7, v2

    move-wide/from16 v24, v3

    .line 832
    iget-wide v1, v10, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastSpeakTime:J

    sub-long v1, v5, v1

    cmp-long v1, v1, v17

    if-ltz v1, :cond_d

    .line 833
    iget-object v1, v0, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    const/4 v4, 0x0

    invoke-virtual {v1, v11, v12, v4}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 834
    iget-object v1, v0, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v11, v12}, Landroidx/collection/LongSparseArray;->remove(J)V

    cmp-long v1, v11, v21

    .line 836
    const-string/jumbo v2, "remove from speaking "

    if-lez v1, :cond_b

    .line 837
    iget-object v1, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 838
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_a

    const/4 v4, 0x0

    goto :goto_6

    :cond_a
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    :goto_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 840
    :cond_b
    iget-object v1, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    neg-long v3, v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 841
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_c

    const/4 v4, 0x0

    goto :goto_7

    :cond_c
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    move/from16 v13, v23

    goto :goto_9

    :cond_d
    move/from16 v13, v19

    :goto_9
    const/4 v1, 0x0

    .line 847
    iput v1, v10, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->amplitude:F

    move/from16 v11, v16

    goto :goto_b

    :cond_e
    move v7, v2

    move-wide/from16 v24, v3

    move/from16 v19, v13

    move/from16 v23, v15

    .line 849
    aget v1, p1, v8

    if-eqz v1, :cond_10

    if-nez v9, :cond_f

    .line 851
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 853
    :cond_f
    aget v1, p1, v8

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_a
    move/from16 v11, v16

    move/from16 v13, v19

    :goto_b
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    move v2, v7

    move/from16 v10, v23

    move-wide/from16 v3, v24

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_11
    move/from16 v23, v10

    move/from16 v16, v11

    move/from16 v19, v13

    if-eqz v9, :cond_12

    const/4 v4, 0x0

    const/4 v14, 0x0

    .line 857
    invoke-direct {v0, v9, v14, v4}, Lorg/telegram/messenger/ChatObject$Call;->loadUnknownParticipants(Ljava/util/ArrayList;ZLorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;)V

    :cond_12
    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eqz v16, :cond_13

    .line 860
    invoke-virtual {v0}, Lorg/telegram/messenger/ChatObject$Call;->sortParticipants()V

    .line 861
    iget-object v3, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v3}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    iget-wide v5, v0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v7, v14

    aput-object v6, v7, v23

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v7, v1

    invoke-virtual {v3, v4, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_13
    if-eqz v19, :cond_15

    .line 864
    iget-object v3, v0, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-lez v3, :cond_14

    .line 865
    iget-object v3, v0, Lorg/telegram/messenger/ChatObject$Call;->updateCurrentSpeakingRunnable:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 866
    iget-object v3, v0, Lorg/telegram/messenger/ChatObject$Call;->updateCurrentSpeakingRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x226

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 868
    :cond_14
    iget-object v3, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v3}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->groupCallSpeakingUsersUpdated:I

    iget-wide v5, v0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v2, v14

    aput-object v6, v2, v23

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public reloadGroupCall()V
    .locals 3

    .line 995
    new-instance v0, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;-><init>()V

    .line 996
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    const/16 v1, 0x64

    .line 997
    iput v1, v0, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;->limit:I

    .line 998
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/ChatObject$Call;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public removeInvitedUser(J)V
    .locals 4

    .line 620
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsersMap:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 621
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 622
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->sortParticipants()V

    .line 623
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    iget-wide v0, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x2

    aput-object v0, v2, v1

    invoke-virtual {p1, p2, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public saveActiveDates()V
    .locals 5

    .line 1562
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1563
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 1564
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    int-to-long v3, v3

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastActiveDate:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCall(Lorg/telegram/messenger/AccountInstance;JLorg/telegram/tgnet/TLRPC$GroupCall;)V
    .locals 0

    .line 314
    iput-wide p2, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    .line 315
    iput-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    .line 316
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    invoke-static {p1, p4}, Lorg/telegram/messenger/utils/tlutils/TlUtils;->applyGroupCallUpdate(Lorg/telegram/tgnet/TLRPC$GroupCall;Lorg/telegram/tgnet/TLRPC$GroupCall;)Lorg/telegram/tgnet/TLRPC$GroupCall;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    .line 317
    iget p1, p4, Lorg/telegram/tgnet/TLRPC$GroupCall;->record_start_date:I

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/messenger/ChatObject$Call;->recording:Z

    .line 318
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->sortParticipants()V

    .line 319
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/ChatObject$Call;->loadMembers(Z)V

    .line 321
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->createNoVideoParticipant()V

    .line 322
    iget-boolean p1, p4, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz p1, :cond_1

    .line 323
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ChatObject$Call;->createRtmpStreamParticipant(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public setCall(Lorg/telegram/messenger/AccountInstance;JLorg/telegram/tgnet/tl/TL_phone$groupCall;)V
    .locals 5

    .line 328
    iput-wide p2, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    .line 329
    iput-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    .line 330
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object p2, p4, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    invoke-static {p1, p2}, Lorg/telegram/messenger/utils/tlutils/TlUtils;->applyGroupCallUpdate(Lorg/telegram/tgnet/TLRPC$GroupCall;Lorg/telegram/tgnet/TLRPC$GroupCall;)Lorg/telegram/tgnet/TLRPC$GroupCall;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    .line 331
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->record_start_date:I

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/messenger/ChatObject$Call;->recording:Z

    .line 333
    iget-object p1, p4, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const v0, 0x7fffffff

    :goto_1
    if-ge p2, p1, :cond_1

    .line 334
    iget-object v1, p4, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 335
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 336
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-direct {p0, v1, p3}, Lorg/telegram/messenger/ChatObject$Call;->processAllSources(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V

    .line 338
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->date:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 340
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->sortParticipants()V

    .line 341
    iget-object p1, p4, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->participants_next_offset:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->nextLoadOffset:Ljava/lang/String;

    .line 342
    invoke-virtual {p0, p3}, Lorg/telegram/messenger/ChatObject$Call;->loadMembers(Z)V

    .line 344
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->createNoVideoParticipant()V

    .line 345
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz p1, :cond_2

    .line 346
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ChatObject$Call;->createRtmpStreamParticipant(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public setSelfPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 920
    iput-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->selfPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    return-void

    .line 922
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    if-eqz v0, :cond_1

    .line 923
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->selfPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 924
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    return-void

    .line 925
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    if-eqz v0, :cond_2

    .line 926
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->selfPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 927
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    return-void

    .line 928
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    if-eqz v0, :cond_3

    .line 929
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->selfPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 930
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    return-void

    .line 932
    :cond_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->selfPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 933
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 588
    new-instance v0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallTitle;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallTitle;-><init>()V

    .line 589
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallTitle;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 590
    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallTitle;->title:Ljava/lang/String;

    .line 591
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/ChatObject$Call;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public shouldShowPanel()Z
    .locals 2

    .line 446
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    if-gtz v1, :cond_1

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->isScheduled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public sortParticipants()V
    .locals 14

    .line 1340
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1341
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1342
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1343
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    .line 1345
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->rtmpStreamParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v2, :cond_0

    .line 1346
    iget-object v3, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1349
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/ChatObject$Call;->getSelfId()J

    move-result-wide v2

    .line 1350
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    .line 1351
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    const/4 v4, 0x1

    .line 1352
    iput-boolean v4, p0, Lorg/telegram/messenger/ChatObject$Call;->canStreamVideo:Z

    const/4 v5, 0x0

    .line 1355
    iput v5, p0, Lorg/telegram/messenger/ChatObject$Call;->activeVideos:I

    move v6, v5

    move v7, v6

    .line 1356
    :goto_0
    iget-object v8, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_b

    .line 1357
    iget-object v8, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 1358
    invoke-static {v8, v5, p0}, Lorg/telegram/messenger/ChatObject$Call;->videoIsActive(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z

    move-result v9

    .line 1359
    invoke-static {v8, v4, p0}, Lorg/telegram/messenger/ChatObject$Call;->videoIsActive(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z

    move-result v10

    .line 1360
    iget-boolean v11, v8, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-nez v11, :cond_2

    if-nez v9, :cond_1

    if-eqz v10, :cond_2

    .line 1361
    :cond_1
    iget v11, p0, Lorg/telegram/messenger/ChatObject$Call;->activeVideos:I

    add-int/2addr v11, v4

    iput v11, p0, Lorg/telegram/messenger/ChatObject$Call;->activeVideos:I

    .line 1363
    :cond_2
    iget-object v11, p0, Lorg/telegram/messenger/ChatObject$Call;->kickedUsers:Ljava/util/ArrayList;

    iget-object v12, v8, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v12}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1364
    iget-object v11, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x1

    :cond_3
    if-nez v9, :cond_6

    if-eqz v10, :cond_4

    goto :goto_1

    .line 1380
    :cond_4
    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-nez v9, :cond_5

    iget-boolean v9, p0, Lorg/telegram/messenger/ChatObject$Call;->canStreamVideo:Z

    if-eqz v9, :cond_5

    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-nez v9, :cond_a

    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-nez v9, :cond_a

    .line 1381
    :cond_5
    iput v5, v8, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoIndex:I

    goto :goto_3

    .line 1369
    :cond_6
    :goto_1
    iget-boolean v7, p0, Lorg/telegram/messenger/ChatObject$Call;->canStreamVideo:Z

    if-eqz v7, :cond_8

    .line 1370
    iget v7, v8, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoIndex:I

    if-nez v7, :cond_9

    .line 1371
    iget-boolean v7, v8, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz v7, :cond_7

    const v7, 0x7fffffff

    .line 1372
    iput v7, v8, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoIndex:I

    goto :goto_2

    .line 1374
    :cond_7
    sget v7, Lorg/telegram/messenger/ChatObject$Call;->videoPointer:I

    add-int/2addr v7, v4

    sput v7, Lorg/telegram/messenger/ChatObject$Call;->videoPointer:I

    iput v7, v8, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoIndex:I

    goto :goto_2

    .line 1378
    :cond_8
    iput v5, v8, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoIndex:I

    :cond_9
    :goto_2
    move v7, v4

    :cond_a
    :goto_3
    add-int/2addr v6, v4

    goto :goto_0

    .line 1385
    :cond_b
    new-instance v6, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, v2, v3, v1}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/ChatObject$Call;JZ)V

    .line 1423
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-static {v1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1427
    :catch_0
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_4

    :cond_c
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 1428
    :goto_4
    invoke-static {v1, v5, p0}, Lorg/telegram/messenger/ChatObject$Call;->videoIsActive(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_d

    invoke-static {v1, v4, p0}, Lorg/telegram/messenger/ChatObject$Call;->videoIsActive(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1429
    :cond_d
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->unmuted_video_count:I

    iget v6, p0, Lorg/telegram/messenger/ChatObject$Call;->activeVideos:I

    if-le v2, v6, :cond_f

    .line 1430
    iput v2, p0, Lorg/telegram/messenger/ChatObject$Call;->activeVideos:I

    .line 1431
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 1432
    iget-object v6, v2, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-ne v6, p0, :cond_f

    .line 1433
    invoke-virtual {v2, v5}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result v6

    if-eq v6, v3, :cond_e

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result v2

    if-ne v2, v3, :cond_f

    .line 1434
    :cond_e
    iget v2, p0, Lorg/telegram/messenger/ChatObject$Call;->activeVideos:I

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/telegram/messenger/ChatObject$Call;->activeVideos:I

    .line 1440
    :cond_f
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v6, 0x1388

    if-le v2, v6, :cond_12

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    const-wide/16 v8, 0x0

    if-eqz v0, :cond_10

    iget-wide v0, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->raise_hand_rating:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_12

    .line 1441
    :cond_10
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v6

    :goto_5
    if-ge v1, v0, :cond_12

    .line 1442
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 1443
    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->raise_hand_rating:J

    cmp-long v10, v10, v8

    if-eqz v10, :cond_11

    goto :goto_6

    .line 1446
    :cond_11
    invoke-direct {p0, v2, v5}, Lorg/telegram/messenger/ChatObject$Call;->processAllSources(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V

    .line 1447
    iget-object v10, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 1448
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1451
    :cond_12
    invoke-direct {p0}, Lorg/telegram/messenger/ChatObject$Call;->checkOnlineParticipants()V

    .line 1453
    iget-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->canStreamVideo:Z

    if-nez v0, :cond_13

    if-eqz v7, :cond_13

    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->videoNotAvailableParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v0, :cond_13

    .line 1454
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    move v0, v5

    move v1, v0

    .line 1458
    :goto_7
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 1459
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 1460
    iget-boolean v6, p0, Lorg/telegram/messenger/ChatObject$Call;->canStreamVideo:Z

    if-eqz v6, :cond_1d

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoIndex:I

    if-eqz v6, :cond_1d

    .line 1461
    iget-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v6, :cond_17

    invoke-static {v2, v4, p0}, Lorg/telegram/messenger/ChatObject$Call;->videoIsActive(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-static {v2, v5, p0}, Lorg/telegram/messenger/ChatObject$Call;->videoIsActive(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1462
    iget-object v6, p0, Lorg/telegram/messenger/ChatObject$Call;->videoParticipantsCache:Ljava/util/HashMap;

    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoEndpoint:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-nez v6, :cond_14

    .line 1464
    new-instance v6, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    invoke-direct {v6, v2, v5, v4}, Lorg/telegram/messenger/ChatObject$VideoParticipant;-><init>(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZZ)V

    .line 1465
    iget-object v8, p0, Lorg/telegram/messenger/ChatObject$Call;->videoParticipantsCache:Ljava/util/HashMap;

    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoEndpoint:Ljava/lang/String;

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 1467
    :cond_14
    iput-object v2, v6, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 1468
    iput-boolean v5, v6, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    .line 1469
    iput-boolean v4, v6, Lorg/telegram/messenger/ChatObject$VideoParticipant;->hasSame:Z

    .line 1472
    :goto_8
    iget-object v8, p0, Lorg/telegram/messenger/ChatObject$Call;->videoParticipantsCache:Ljava/util/HashMap;

    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-nez v8, :cond_15

    .line 1474
    new-instance v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    invoke-direct {v8, v2, v4, v4}, Lorg/telegram/messenger/ChatObject$VideoParticipant;-><init>(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZZ)V

    goto :goto_9

    .line 1476
    :cond_15
    iput-object v2, v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 1477
    iput-boolean v4, v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    .line 1478
    iput-boolean v4, v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;->hasSame:Z

    .line 1480
    :goto_9
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1481
    iget v2, v6, Lorg/telegram/messenger/ChatObject$VideoParticipant;->aspectRatio:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_16

    .line 1482
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    .line 1484
    :cond_16
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1485
    iget v2, v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;->aspectRatio:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_1e

    .line 1486
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_a
    sub-int/2addr v1, v4

    goto :goto_e

    .line 1489
    :cond_17
    iget-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz v6, :cond_19

    .line 1490
    invoke-static {v2, v4, p0}, Lorg/telegram/messenger/ChatObject$Call;->videoIsActive(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1491
    iget-object v6, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    new-instance v7, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    invoke-direct {v7, v2, v4, v5}, Lorg/telegram/messenger/ChatObject$VideoParticipant;-><init>(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZZ)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1493
    :cond_18
    invoke-static {v2, v5, p0}, Lorg/telegram/messenger/ChatObject$Call;->videoIsActive(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1494
    iget-object v6, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    new-instance v7, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    invoke-direct {v7, v2, v5, v5}, Lorg/telegram/messenger/ChatObject$VideoParticipant;-><init>(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZZ)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1497
    :cond_19
    invoke-static {v2, v4, p0}, Lorg/telegram/messenger/ChatObject$Call;->videoIsActive(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z

    move-result v6

    .line 1499
    iget-object v8, p0, Lorg/telegram/messenger/ChatObject$Call;->videoParticipantsCache:Ljava/util/HashMap;

    if-eqz v6, :cond_1a

    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    goto :goto_b

    :cond_1a
    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoEndpoint:Ljava/lang/String;

    :goto_b
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-nez v8, :cond_1c

    .line 1501
    new-instance v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    invoke-direct {v8, v2, v6, v5}, Lorg/telegram/messenger/ChatObject$VideoParticipant;-><init>(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZZ)V

    .line 1502
    iget-object v9, p0, Lorg/telegram/messenger/ChatObject$Call;->videoParticipantsCache:Ljava/util/HashMap;

    if-eqz v6, :cond_1b

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    goto :goto_c

    :cond_1b
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoEndpoint:Ljava/lang/String;

    :goto_c
    invoke-virtual {v9, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 1504
    :cond_1c
    iput-object v2, v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 1505
    iput-boolean v6, v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    .line 1506
    iput-boolean v5, v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;->hasSame:Z

    .line 1508
    :goto_d
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1509
    iget v2, v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;->aspectRatio:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_1e

    .line 1510
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_a

    .line 1515
    :cond_1d
    iget-object v6, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleParticipants:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    .line 1519
    :cond_1f
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v6, v5

    :goto_f
    if-ge v6, v2, :cond_20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 1520
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v7}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v7

    .line 1521
    iget-object v9, p0, Lorg/telegram/messenger/ChatObject$Call;->kickedUsers:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1524
    :cond_20
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    .line 1525
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v2, :cond_23

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isConference()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-ne v2, p0, :cond_23

    .line 1526
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v5

    :goto_10
    if-ge v7, v6, :cond_21

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 1527
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v8}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v8

    .line 1528
    iget-object v10, v0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    iget-object v10, v10, Lorg/telegram/messenger/voip/ConferenceCall;->joiningBlockchainParticipants:Ljava/util/HashSet;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1530
    :cond_21
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->shadyLeftParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1531
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->shadyLeftParticipants:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    iget-object v7, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/voip/ConferenceCall;->getShadyLeftParticipants(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1532
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->shadyJoinParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1533
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->shadyJoinParticipants:Ljava/util/ArrayList;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    iget-object v6, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/voip/ConferenceCall;->getShadyJoiningParticipants(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1535
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_22
    :goto_11
    if-ge v5, v2, :cond_23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 1536
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v6}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v6

    .line 1537
    iget-object v8, p0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsersMap:Ljava/util/HashSet;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 1538
    iget-object v8, p0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsersMap:Ljava/util/HashSet;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1539
    iget-object v8, p0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsers:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_11

    .line 1544
    :cond_23
    sget-boolean v0, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr v0, v3

    if-ne v0, v4, :cond_24

    .line 1545
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    .line 1546
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    return-void
.end method

.method public toggleRecord(Ljava/lang/String;I)V
    .locals 6

    .line 1594
    iget-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->recording:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->recording:Z

    .line 1595
    new-instance v0, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallRecord;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallRecord;-><init>()V

    .line 1596
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallRecord;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 1597
    iget-boolean v2, p0, Lorg/telegram/messenger/ChatObject$Call;->recording:Z

    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallRecord;->start:Z

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    .line 1599
    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallRecord;->title:Ljava/lang/String;

    .line 1600
    iget p1, v0, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallRecord;->flags:I

    or-int/2addr p1, v2

    iput p1, v0, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallRecord;->flags:I

    :cond_0
    const/4 p1, 0x0

    if-eq p2, v1, :cond_1

    if-ne p2, v2, :cond_3

    .line 1603
    :cond_1
    iget v3, v0, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallRecord;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v0, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallRecord;->flags:I

    .line 1604
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallRecord;->video:Z

    if-ne p2, v1, :cond_2

    move p2, v1

    goto :goto_0

    :cond_2
    move p2, p1

    .line 1605
    :goto_0
    iput-boolean p2, v0, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallRecord;->video_portrait:Z

    .line 1607
    :cond_3
    iget-object p2, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v3, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/ChatObject$Call;)V

    invoke-virtual {p2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1613
    iget-object p2, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    iget-wide v3, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, p1

    aput-object v4, v5, v1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p1, v5, v2

    invoke-virtual {p2, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public updateVisibleParticipants()V
    .locals 7

    .line 873
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->sortParticipants()V

    .line 874
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    iget-wide v2, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x2

    aput-object v2, v5, v3

    const/4 v2, 0x3

    aput-object v4, v5, v2

    invoke-virtual {v0, v1, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method
