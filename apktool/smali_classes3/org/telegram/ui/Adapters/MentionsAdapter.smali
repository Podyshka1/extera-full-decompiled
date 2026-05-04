.class public Lorg/telegram/ui/Adapters/MentionsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;,
        Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;,
        Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;
    }
.end annotation


# instance fields
.field private final USE_DIVIDERS:Z

.field private allowBots:Z

.field private allowChats:Z

.field private allowStickers:Z

.field private botInfo:Landroidx/collection/LongSparseArray;

.field private botsCount:I

.field private bottomHint:Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;

.field private cancelDelayRunnable:Ljava/lang/Runnable;

.field private channelLastReqId:I

.field private channelReqId:I

.field public chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private checkAgainRunnable:Ljava/lang/Runnable;

.field private contextMedia:Z

.field private contextQueryReqid:I

.field private contextQueryRunnable:Ljava/lang/Runnable;

.field private contextUsernameReqid:I

.field private currentAccount:I

.field private delayLocalResults:Z

.field private delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

.field private dialog_id:J

.field private foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

.field private hintHashtag:Ljava/lang/String;

.field private hintHashtagDivider:Z

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private inlineMediaEnabled:Z

.field private isDarkTheme:Z

.field private isReversed:Z

.field private isSearchingMentions:Z

.field private lastData:[Ljava/lang/Object;

.field private lastForSearch:Z

.field private lastItemCount:I

.field private lastKnownLocation:Landroid/location/Location;

.field private lastPosition:I

.field private lastReqId:I

.field private lastSearchKeyboardLanguage:[Ljava/lang/String;

.field private lastSticker:Ljava/lang/String;

.field private lastText:Ljava/lang/String;

.field private lastUsernameOnly:Z

.field private locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

.field private final mContext:Landroid/content/Context;

.field private mentionsStickersActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

.field private messages:Ljava/util/ArrayList;

.field private needBotContext:Z

.field private needUsernames:Z

.field private nextQueryOffset:Ljava/lang/String;

.field private noUserName:Z

.field public parentFragment:Lorg/telegram/ui/ChatActivity;

.field private quickReplies:Ljava/util/ArrayList;

.field private quickRepliesQuery:Ljava/lang/String;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private resultLength:I

.field private resultStartPosition:I

.field private searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

.field private searchGlobalRunnable:Ljava/lang/Runnable;

.field private searchInDailogs:Z

.field private searchResultBotContext:Ljava/util/ArrayList;

.field private searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

.field private searchResultBotContextSwitchUserId:J

.field private searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

.field private searchResultCommands:Ljava/util/ArrayList;

.field private searchResultCommandsHelp:Ljava/util/ArrayList;

.field private searchResultCommandsUsers:Ljava/util/ArrayList;

.field private searchResultHashtags:Ljava/util/ArrayList;

.field private searchResultSuggestions:Ljava/util/ArrayList;

.field private searchResultUsernames:Ljava/util/ArrayList;

.field private searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

.field private searchingContextQuery:Ljava/lang/String;

.field private searchingContextUsername:Ljava/lang/String;

.field private stickers:Ljava/util/ArrayList;

.field private stickersMap:Ljava/util/HashMap;

.field private stickersToLoad:Ljava/util/ArrayList;

.field private final stories:Z

.field private threadMessageId:J

.field private topHint:Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;

.field private user:Lorg/telegram/tgnet/TLRPC$User;

.field private visibleByStickersSearch:Z


# direct methods
.method public static synthetic $r8$lambda$0Qf12c_uAdXU0UVq_SdUULqcvTk(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->lambda$searchUsernameOrHashtag$9(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$14QFSVVGrWMTBHo4aOZuZLgSbqg(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->lambda$searchForContextBotResults$5(Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CuHoV3PBS1xCs9AaLfvNuA8Fd6M(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->lambda$searchUsernameOrHashtag$8(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FSPnrIhlBt2nBNUSTfuQVXzuSxg(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->lambda$searchServerStickers$1(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YNsh_gw5_xkmtI7qycSqn88pJ5w(Lorg/telegram/ui/Adapters/MentionsAdapter;[ZLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Adapters/MentionsAdapter;->lambda$processFoundUser$2([ZLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$akqmBpZf29nBJ1t-0HuMgRtizOA(Lorg/telegram/ui/Adapters/MentionsAdapter;[ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->lambda$processFoundUser$3([ZLorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$b_0dt2fKU655d7Y43d80LHBWyMI(Lorg/telegram/ui/Adapters/MentionsAdapter;[ZLandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->lambda$processFoundUser$4([ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fs51y32suZwyzXc0ye1anMdZXa4(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->lambda$searchForContextBotResults$6(Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hE8cRECDyg169PoakAeRKrtscCg(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/CharSequence;ILjava/util/ArrayList;ZZ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->lambda$searchUsernameOrHashtag$7(Ljava/lang/CharSequence;ILjava/util/ArrayList;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$vHpjDy3gDCEEgj47S4zygrZXOgs(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->lambda$searchServerStickers$0(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xzKAlkmr-wOgiY4iO_wRH65lHbg(Lorg/telegram/ui/Adapters/MentionsAdapter;Lorg/telegram/ui/Cells/ContextLinkCell;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->lambda$onCreateViewHolder$10(Lorg/telegram/ui/Cells/ContextLinkCell;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetchannelLastReqId(Lorg/telegram/ui/Adapters/MentionsAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelLastReqId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetchannelReqId(Lorg/telegram/ui/Adapters/MentionsAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelReqId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcontextQueryRunnable(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Adapters/MentionsAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdelegate(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfoundContextBot(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisSearchingMentions(Lorg/telegram/ui/Adapters/MentionsAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isSearchingMentions:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastForSearch(Lorg/telegram/ui/Adapters/MentionsAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastForSearch:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastPosition(Lorg/telegram/ui/Adapters/MentionsAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastText(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastUsernameOnly(Lorg/telegram/ui/Adapters/MentionsAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastUsernameOnly:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmessages(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->messages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnoUserName(Lorg/telegram/ui/Adapters/MentionsAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->noUserName:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchGlobalRunnable(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchGlobalRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchResultUsernames(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchResultUsernamesMap(Lorg/telegram/ui/Adapters/MentionsAdapter;)Landroidx/collection/LongSparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchingContextQuery(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchingContextUsername(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputchannelLastReqId(Lorg/telegram/ui/Adapters/MentionsAdapter;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelLastReqId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputchannelReqId(Lorg/telegram/ui/Adapters/MentionsAdapter;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelReqId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcontextQueryRunnable(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcontextUsernameReqid(Lorg/telegram/ui/Adapters/MentionsAdapter;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastKnownLocation(Lorg/telegram/ui/Adapters/MentionsAdapter;Landroid/location/Location;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearchingContextUsername(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddChatResult(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addChatResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$maddUserResult(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Lorg/telegram/tgnet/TLRPC$User;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addUserResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monLocationUnavailable(Lorg/telegram/ui/Adapters/MentionsAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->onLocationUnavailable()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessFoundUser(Lorg/telegram/ui/Adapters/MentionsAdapter;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->processFoundUser(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msearchForContextBotResults(Lorg/telegram/ui/Adapters/MentionsAdapter;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBotResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowUsersResult(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->showUsersResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZJJLorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 4

    .line 205
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowStickers:Z

    .line 85
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowBots:Z

    .line 86
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowChats:Z

    const/4 v1, 0x0

    .line 95
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->USE_DIVIDERS:Z

    .line 97
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    .line 131
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->needUsernames:Z

    .line 132
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->needBotContext:Z

    .line 135
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    .line 142
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchInDailogs:Z

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    .line 184
    new-instance v2, Lorg/telegram/ui/Adapters/MentionsAdapter$2;

    new-instance v3, Lorg/telegram/ui/Adapters/MentionsAdapter$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Adapters/MentionsAdapter$1;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;)V

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter$2;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;)V

    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    .line 1619
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isReversed:Z

    const/4 v1, -0x1

    .line 1679
    iput v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastItemCount:I

    .line 206
    iput-object p8, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 207
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    .line 208
    iput-object p7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    .line 209
    iput-boolean p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isDarkTheme:Z

    .line 210
    iput-wide p3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    .line 211
    iput-boolean p9, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stories:Z

    .line 212
    iput-wide p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->threadMessageId:J

    .line 213
    new-instance p1, Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;-><init>(Z)V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .line 214
    new-instance p3, Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Adapters/MentionsAdapter$3;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V

    if-nez p2, :cond_0

    .line 228
    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 229
    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 231
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoad:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 232
    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method private addChatResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 2

    .line 1638
    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v0, v0

    invoke-static {p1, p2, p3, v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->addUniqueObject(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Lorg/telegram/tgnet/TLObject;J)Z

    move-result p1

    return p1
.end method

.method private addStickerToResult(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 272
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 275
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 277
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    .line 280
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    invoke-direct {v2, p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mentionsStickersActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    if-eqz p1, :cond_4

    .line 283
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->checkVisibility()V

    :cond_4
    :goto_0
    return-void
.end method

.method private addStickersToResult(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 9

    if-eqz p1, :cond_6

    .line 288
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 291
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    .line 292
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 294
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_3

    .line 297
    :cond_1
    iget v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3

    .line 300
    :cond_2
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_4

    .line 301
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 302
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v8, :cond_3

    .line 303
    iget-object p2, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 307
    :cond_4
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-nez v5, :cond_5

    .line 308
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 309
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    .line 311
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    invoke-direct {v6, v3, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_4
    return-void
.end method

.method private addUserResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Lorg/telegram/tgnet/TLRPC$User;)Z
    .locals 2

    .line 1634
    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {p1, p2, p3, v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->addUniqueObject(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Lorg/telegram/tgnet/TLObject;J)Z

    move-result p1

    return p1
.end method

.method private checkLocationPermissionsOrStart()V
    .locals 3

    .line 798
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 801
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 805
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz v0, :cond_2

    .line 806
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method private checkStickerFilesExistAndDownload()Z
    .locals 11

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 320
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x6

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 323
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    .line 324
    iget-object v3, v2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v4, 0x5a

    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 325
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    if-nez v4, :cond_1

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoSizeProgressive;

    if-eqz v4, :cond_2

    .line 326
    :cond_1
    iget v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const-string/jumbo v5, "webp"

    const/4 v6, 0x1

    invoke-virtual {v4, v3, v5, v6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v4

    .line 327
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 328
    iget-object v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-static {v3, v5}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    iget v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    iget-object v4, v2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3, v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    iget-object v7, v2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->parent:Ljava/lang/Object;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-string/jumbo v8, "webp"

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;II)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private clearStickers()V
    .locals 4

    const/4 v0, 0x0

    .line 441
    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    .line 442
    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 443
    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    .line 444
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    .line 445
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    .line 446
    iget v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    if-eqz v1, :cond_0

    .line 447
    iget v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 448
    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    .line 450
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mentionsStickersActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    if-eqz v0, :cond_1

    .line 451
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->checkVisibility()V

    :cond_1
    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 2047
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private isValidSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Z
    .locals 5

    .line 337
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 338
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 339
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v4, :cond_0

    .line 340
    iget-object p1, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private itemsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    .line 414
    instance-of v0, p1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p2, :cond_1

    return v0

    .line 420
    :cond_1
    instance-of v2, p1, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    if-eqz v2, :cond_2

    instance-of v2, p2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v3, p2

    check-cast v3, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    iget-object v3, v3, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    if-ne v2, v3, :cond_2

    return v0

    .line 423
    :cond_2
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_3

    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    move-object v4, p2

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    return v0

    .line 426
    :cond_3
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_4

    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    move-object v4, p2

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    return v0

    .line 429
    :cond_4
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_5

    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v0

    .line 432
    :cond_5
    instance-of v2, p1, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    if-eqz v2, :cond_6

    instance-of v2, p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    if-eqz v2, :cond_6

    check-cast p1, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v2, p1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->keyword:Ljava/lang/String;

    if-eqz v2, :cond_6

    check-cast p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v3, p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;->keyword:Ljava/lang/String;

    .line 433
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p1, p1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-object p2, p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    .line 434
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v0

    :cond_6
    return v1
.end method

.method private synthetic lambda$onCreateViewHolder$10(Lorg/telegram/ui/Cells/ContextLinkCell;)V
    .locals 1

    .line 1903
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ContextLinkCell;->getResult()Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextClick(Lorg/telegram/tgnet/TLRPC$BotInlineResult;)V

    return-void
.end method

.method private synthetic lambda$processFoundUser$2([ZLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    const/4 p3, 0x0

    const/4 p4, 0x1

    .line 596
    aput-boolean p4, p1, p3

    if-eqz p2, :cond_0

    .line 598
    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 599
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "inlinegeo_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 600
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->checkLocationPermissionsOrStart()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$processFoundUser$3([ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 604
    aput-boolean p3, p1, p2

    .line 605
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->onLocationUnavailable()V

    return-void
.end method

.method private synthetic lambda$processFoundUser$4([ZLandroid/content/DialogInterface;)V
    .locals 0

    const/4 p2, 0x0

    .line 608
    aget-boolean p1, p1, p2

    if-nez p1, :cond_0

    .line 609
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->onLocationUnavailable()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$searchForContextBotResults$5(Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;)V
    .locals 1

    .line 851
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x0

    .line 854
    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    .line 856
    invoke-direct {p0, v0, p4, p1, p5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBotResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 857
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz p1, :cond_2

    .line 858
    invoke-interface {p1, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    .line 860
    :cond_2
    :goto_0
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;

    if-eqz p1, :cond_10

    .line 861
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;

    if-nez p2, :cond_3

    .line 862
    iget p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->cache_time:I

    if-eqz p1, :cond_3

    .line 863
    invoke-virtual {p6, p7, p3}, Lorg/telegram/messenger/MessagesStorage;->saveBotCache(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    .line 865
    :cond_3
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->next_offset:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->nextQueryOffset:Ljava/lang/String;

    .line 866
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-nez p1, :cond_4

    .line 867
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->switch_pm:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    .line 869
    :cond_4
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->switch_webview:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    move p1, v0

    .line 870
    :goto_1
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p4, 0x1

    if-ge p1, p2, :cond_6

    .line 871
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 872
    iget-object p6, p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of p6, p6, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez p6, :cond_5

    iget-object p6, p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of p6, p6, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-nez p6, :cond_5

    const-string p6, "game"

    iget-object p7, p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    invoke-virtual {p6, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_5

    iget-object p6, p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-nez p6, :cond_5

    iget-object p6, p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of p6, p6, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;

    if-eqz p6, :cond_5

    .line 873
    iget-object p6, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    .line 876
    :cond_5
    iget-wide p6, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->query_id:J

    iput-wide p6, p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->query_id:J

    add-int/2addr p1, p4

    goto :goto_1

    .line 879
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz p1, :cond_9

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    .line 884
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 885
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 886
    const-string p1, ""

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->nextQueryOffset:Ljava/lang/String;

    :cond_8
    move p1, p4

    goto :goto_3

    .line 880
    :cond_9
    :goto_2
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    .line 881
    iget-boolean p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->gallery:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextMedia:Z

    move p1, v0

    .line 889
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    const/4 p5, 0x0

    if-eqz p2, :cond_a

    .line 890
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 891
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    .line 893
    :cond_a
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    .line 894
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 895
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 896
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    .line 897
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 898
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->quickReplies:Ljava/util/ArrayList;

    .line 899
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    .line 900
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 901
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    .line 902
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    .line 903
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    iget-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_c

    iget-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-nez p5, :cond_c

    iget-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    if-eqz p5, :cond_b

    goto :goto_4

    :cond_b
    move p5, v0

    goto :goto_5

    :cond_c
    :goto_4
    move p5, p4

    :goto_5
    invoke-interface {p2, p5}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    if-eqz p1, :cond_f

    .line 905
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-nez p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    if-eqz p1, :cond_e

    :cond_d
    move v0, p4

    .line 906
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p1, p2

    add-int/2addr p1, v0

    sub-int/2addr p1, p4

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 907
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p1, p2

    add-int/2addr p1, v0

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void

    .line 909
    :cond_f
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    :cond_10
    :goto_6
    return-void
.end method

.method private synthetic lambda$searchForContextBotResults$6(Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    .line 850
    new-instance v0, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda8;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    move-object/from16 v4, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchServerStickers$0(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    const/4 v0, 0x0

    .line 354
    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    .line 355
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;

    if-nez v1, :cond_0

    goto :goto_2

    .line 358
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delayLocalResults:Z

    .line 359
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;

    .line 360
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 361
    :goto_0
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;->stickers:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sticker_search_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addStickersToResult(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 362
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v0

    .line 363
    :goto_1
    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 364
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->checkStickerFilesExistAndDownload()Z

    .line 365
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCountInternal()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_3

    move v0, v3

    :cond_3
    invoke-interface {p2, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 366
    iput-boolean v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    :cond_4
    if-eq v1, p1, :cond_5

    .line 369
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    :cond_5
    :goto_2
    return-void
.end method

.method private synthetic lambda$searchServerStickers$1(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 353
    new-instance p3, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda10;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchUsernameOrHashtag$7(Ljava/lang/CharSequence;ILjava/util/ArrayList;ZZ)V
    .locals 0

    .line 1029
    invoke-virtual/range {p0 .. p5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchUsernameOrHashtag(Ljava/lang/CharSequence;ILjava/util/ArrayList;ZZ)V

    return-void
.end method

.method private synthetic lambda$searchUsernameOrHashtag$8(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V
    .locals 1

    const/4 v0, 0x0

    .line 1453
    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 1454
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->showUsersResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Z)V

    return-void
.end method

.method private synthetic lambda$searchUsernameOrHashtag$9(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 1595
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 1596
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    .line 1597
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 1598
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 1599
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    .line 1600
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 1601
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->quickReplies:Ljava/util/ArrayList;

    .line 1602
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 1603
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    .line 1604
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 1605
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    return-void
.end method

.method private onLocationUnavailable()V
    .locals 4

    .line 789
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz v0, :cond_0

    .line 790
    new-instance v0, Landroid/location/Location;

    const-string v1, "network"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    const-wide v1, -0x3f70c00000000000L    # -1000.0

    .line 791
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 792
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 793
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x1

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBotResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private processFoundUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 7

    const/4 v0, 0x0

    .line 567
    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    .line 568
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->stop()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 569
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v3, :cond_3

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_placeholder:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 570
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 571
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitchUserId:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_0

    .line 572
    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    .line 573
    iput-wide v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitchUserId:J

    .line 575
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_1

    .line 576
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 578
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canSendStickers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-nez p1, :cond_1

    .line 580
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 581
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {p1, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    return-void

    .line 586
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz p1, :cond_4

    .line 587
    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 588
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inlinegeo_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 589
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 590
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 591
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 592
    sget v3, Lorg/telegram/messenger/R$string;->ShareYouLocationTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 593
    sget v3, Lorg/telegram/messenger/R$string;->ShareYouLocationInline:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 594
    new-array v3, v2, [Z

    .line 595
    sget v4, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v3, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;[ZLorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 603
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;[Z)V

    invoke-virtual {v0, p1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 607
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    new-instance v4, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;[Z)V

    invoke-virtual {p1, v0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    goto :goto_0

    .line 613
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->checkLocationPermissionsOrStart()V

    goto :goto_0

    .line 617
    :cond_3
    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 618
    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    .line 619
    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    .line 621
    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-nez p1, :cond_5

    .line 622
    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->noUserName:Z

    .line 623
    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    return-void

    .line 625
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz p1, :cond_6

    .line 626
    invoke-interface {p1, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    .line 628
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p0, v2, p1, v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBotResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private searchForContextBot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 687
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    move-object v2, p0

    goto/16 :goto_2

    .line 690
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 691
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    return-void

    .line 694
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 696
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 697
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 698
    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    .line 700
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 701
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    if-eqz v0, :cond_6

    .line 702
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    invoke-virtual {v0, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 703
    iput v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    .line 705
    :cond_6
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    if-eqz v0, :cond_7

    .line 706
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    invoke-virtual {v0, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 707
    iput v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    .line 709
    :cond_7
    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 710
    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    .line 711
    iput-boolean v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    .line 712
    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    .line 713
    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    .line 714
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->stop()V

    .line 715
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->noUserName:Z

    .line 716
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v0, :cond_8

    .line 717
    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    :cond_8
    if-eqz p1, :cond_0

    .line 719
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    if-nez p2, :cond_b

    .line 724
    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    if-eqz p1, :cond_a

    .line 725
    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    invoke-virtual {p1, p2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 726
    iput v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    .line 728
    :cond_a
    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    .line 729
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz p1, :cond_0

    .line 730
    invoke-interface {p1, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    return-void

    .line 734
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v0, :cond_d

    .line 735
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_c

    .line 736
    invoke-interface {v0, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    goto :goto_1

    .line 737
    :cond_c
    const-string v0, "gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 738
    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    .line 739
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    .line 742
    :cond_d
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    .line 743
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    .line 744
    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    .line 745
    new-instance v1, Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Adapters/MentionsAdapter$4;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesStorage;)V

    iput-object v1, v2, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    const-wide/16 p1, 0x190

    .line 785
    invoke-static {v1, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_2
    return-void
.end method

.method private searchForContextBotResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v2, p3

    move-object/from16 v5, p4

    .line 831
    iget v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    const/4 v3, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    .line 832
    iget v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    invoke-virtual {v0, v6, v8}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 833
    iput v3, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    .line 835
    :cond_0
    iget-boolean v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowBots:Z

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v9, 0x0

    if-eqz v2, :cond_9

    if-nez v4, :cond_2

    goto/16 :goto_2

    .line 845
    :cond_2
    iget-boolean v0, v4, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    if-nez v0, :cond_3

    goto/16 :goto_4

    .line 848
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v4, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    const-wide v10, -0x3f70c00000000000L    # -1000.0

    if-eqz v3, :cond_4

    iget-object v3, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    cmpl-double v3, v6, v10

    if-eqz v3, :cond_4

    iget-object v3, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    iget-object v3, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    add-double/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_0

    :cond_4
    const-string v3, ""

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 849
    iget v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    .line 850
    new-instance v0, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda7;

    move/from16 v3, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;)V

    .line 914
    iget-wide v12, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v14, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitchUserId:J

    cmp-long v3, v12, v14

    if-eqz v3, :cond_5

    .line 915
    iput-object v9, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    .line 916
    iput-wide v12, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitchUserId:J

    :cond_5
    if-eqz p1, :cond_6

    .line 920
    invoke-virtual {v6, v7, v0}, Lorg/telegram/messenger/MessagesStorage;->getBotCache(Ljava/lang/String;Lorg/telegram/tgnet/RequestDelegate;)V

    return-void

    .line 922
    :cond_6
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;-><init>()V

    .line 923
    iget v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v6

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 924
    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->query:Ljava/lang/String;

    .line 925
    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->offset:Ljava/lang/String;

    .line 926
    iget-boolean v2, v4, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz v2, :cond_7

    iget-object v2, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    cmpl-double v2, v4, v10

    if-eqz v2, :cond_7

    .line 927
    iget v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->flags:I

    or-int/2addr v2, v8

    iput v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->flags:I

    .line 928
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    .line 929
    iget-object v4, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    .line 930
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    iget-object v4, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    .line 932
    :cond_7
    iget-wide v4, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 933
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1

    .line 935
    :cond_8
    iget v2, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v4, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 937
    :goto_1
    iget v2, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    return-void

    .line 842
    :cond_9
    :goto_2
    iput-object v9, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    return-void

    .line 836
    :cond_a
    :goto_3
    iget-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v0, :cond_b

    .line 837
    invoke-interface {v0, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    :cond_b
    :goto_4
    return-void
.end method

.method private searchServerStickers(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 350
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;-><init>()V

    .line 351
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;->emoticon:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 352
    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;->hash:J

    .line 353
    iget p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    return-void
.end method

.method private showUsersResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Z)V
    .locals 2

    .line 1642
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 1643
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowBots:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowChats:Z

    if-nez v0, :cond_4

    :cond_0
    if-eqz p1, :cond_4

    .line 1644
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1645
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1646
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLObject;

    .line 1647
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowChats:Z

    if-nez v1, :cond_2

    .line 1648
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1649
    :cond_2
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v1, :cond_3

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1650
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1654
    :cond_4
    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    .line 1655
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    .line 1656
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1657
    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    .line 1659
    :cond_5
    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    .line 1660
    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz p3, :cond_6

    .line 1662
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 1663
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-interface {p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    :cond_6
    return-void
.end method


# virtual methods
.method public addHashtagsFromMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1771
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->addHashtagsFromMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public clear(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1715
    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelReqId:I

    if-nez p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    if-nez p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    if-nez p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    if-eqz p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 1718
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 1719
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->hintHashtag:Ljava/lang/String;

    .line 1720
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1721
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1723
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1724
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1726
    :cond_3
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    .line 1727
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    .line 1728
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 1729
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1731
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    .line 1732
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1734
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    .line 1735
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1737
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->quickReplies:Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    .line 1738
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1740
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    if-eqz p1, :cond_8

    .line 1741
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1743
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clearRecentHashtags()V
    .locals 2

    .line 535
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clearRecentHashtags()V

    .line 536
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 537
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 538
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 539
    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    :cond_0
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 241
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    const/4 v0, 0x0

    if-eq p1, p2, :cond_2

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoad:I

    const/4 v1, 0x0

    if-ne p1, p2, :cond_1

    .line 250
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->checkAgainRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_4

    .line 251
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 252
    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->checkAgainRunnable:Ljava/lang/Runnable;

    return-void

    .line 254
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    if-ne p1, p2, :cond_4

    .line 255
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4

    .line 256
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->checkAgainRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_4

    .line 257
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 258
    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->checkAgainRunnable:Ljava/lang/Runnable;

    return-void

    .line 242
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    if-eqz p1, :cond_4

    .line 243
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    .line 244
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 245
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 246
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCountInternal()I

    move-result p2

    if-lez p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-interface {p1, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    :cond_4
    return-void
.end method

.method public doSomeStickersAction()V
    .locals 8

    .line 2032
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isStickers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2033
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mentionsStickersActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    if-nez v0, :cond_0

    .line 2034
    new-instance v1, Lorg/telegram/ui/Adapters/MentionsAdapter$9;

    iget v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    iget-wide v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    iget-wide v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->threadMessageId:J

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Adapters/MentionsAdapter$9;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;IJJ)V

    iput-object v1, v2, Lorg/telegram/ui/Adapters/MentionsAdapter;->mentionsStickersActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    .line 2040
    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->checkVisibility()V

    goto :goto_0

    :cond_0
    move-object v2, p0

    .line 2042
    :goto_0
    iget-object v0, v2, Lorg/telegram/ui/Adapters/MentionsAdapter;->mentionsStickersActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->doSomeAction()V

    return-void

    :cond_1
    move-object v2, p0

    return-void
.end method

.method public getBotCaption()Ljava/lang/String;
    .locals 2

    .line 815
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_placeholder:Ljava/lang/String;

    return-object v0

    .line 817
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 818
    sget v0, Lorg/telegram/messenger/R$string;->SearchGifsTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBotContextSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;
    .locals 4

    .line 544
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitchUserId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 547
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    return-object v0
.end method

.method public getBotWebViewSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;
    .locals 1

    .line 551
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    return-object v0
.end method

.method public getContextBotId()J
    .locals 2

    .line 555
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getContextBotName()Ljava/lang/String;
    .locals 1

    .line 563
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getContextBotUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    .line 559
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public getFoundContextBot()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public getHashtagHint()Ljava/lang/String;
    .locals 1

    .line 2076
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->hintHashtag:Ljava/lang/String;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5

    .line 1798
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->hintHashtag:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ge p1, v1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 p1, p1, -0x2

    .line 1804
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    if-ltz p1, :cond_2

    .line 1805
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    iget-object p1, p1, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    return-object p1

    :cond_2
    return-object v2

    .line 1806
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 1807
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    if-eqz v1, :cond_5

    if-nez p1, :cond_4

    return-object v1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 1813
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-eqz v1, :cond_6

    if-nez p1, :cond_4

    return-object v1

    :cond_6
    :goto_0
    if-ltz p1, :cond_8

    .line 1820
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_7

    goto :goto_1

    .line 1823
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_1
    return-object v2

    .line 1824
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    if-ltz p1, :cond_b

    .line 1825
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_a

    goto :goto_2

    .line 1828
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    :goto_2
    return-object v2

    .line 1829
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    if-ltz p1, :cond_e

    .line 1830
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_d

    goto :goto_3

    .line 1833
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_e
    :goto_3
    return-object v2

    .line 1834
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    if-ltz p1, :cond_11

    .line 1835
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_10

    goto :goto_4

    .line 1838
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_11
    :goto_4
    return-object v2

    .line 1839
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->quickReplies:Ljava/util/ArrayList;

    if-nez v0, :cond_13

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    if-eqz v3, :cond_1b

    :cond_13
    if-eqz v0, :cond_15

    if-ltz p1, :cond_14

    .line 1841
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_14

    .line 1842
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->quickReplies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1843
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->quickReplies:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 1844
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 1847
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    if-ltz p1, :cond_1b

    .line 1848
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_16

    goto :goto_6

    .line 1851
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1a

    iget v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->botsCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v2, :cond_1a

    .line 1852
    :cond_17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    .line 1853
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_18

    iget-object v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    goto :goto_5

    :cond_18
    const-string p1, ""

    :goto_5
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    aput-object p1, v1, v3

    const-string p1, "%s@%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1855
    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1858
    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1b
    :goto_6
    return-object v2
.end method

.method public getItemCount()I
    .locals 1

    .line 1683
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCountInternal()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastItemCount:I

    return v0
.end method

.method public getItemCountInternal()I
    .locals 5

    .line 1691
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-nez v0, :cond_0

    return v1

    .line 1695
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->hintHashtag:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1698
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 1699
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 1700
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 1701
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    add-int/2addr v3, v1

    add-int/2addr v0, v3

    return v0

    .line 1702
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    .line 1703
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 1704
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    .line 1705
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 1706
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    if-nez v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->quickReplies:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    goto :goto_2

    .line 1708
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    .line 1709
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    return v0

    .line 1707
    :cond_a
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->quickReplies:Ljava/util/ArrayList;

    if-nez v1, :cond_b

    move v1, v2

    goto :goto_3

    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    if-nez v3, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_4
    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemParent(I)Ljava/lang/Object;
    .locals 2

    .line 1788
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->hintHashtag:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 p1, p1, -0x2

    .line 1794
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    iget-object p1, p1, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->parent:Ljava/lang/Object;

    return-object p1

    :cond_2
    return-object v1
.end method

.method public getItemPosition(I)I
    .locals 1

    .line 1775
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->hintHashtag:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x2

    .line 1781
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    if-eqz v0, :cond_3

    :cond_2
    add-int/lit8 p1, p1, -0x1

    :cond_3
    return p1
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1748
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->hintHashtag:Ljava/lang/String;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    if-ge p1, v1, :cond_0

    const/4 p1, 0x6

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x2

    .line 1754
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    return p1

    .line 1756
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-nez v0, :cond_3

    const/4 p1, 0x3

    return p1

    .line 1758
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    if-nez p1, :cond_5

    .line 1759
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    if-eqz p1, :cond_5

    :cond_4
    return v1

    :cond_5
    const/4 p1, 0x1

    return p1

    .line 1763
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->quickReplies:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    if-ltz p1, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_7

    const/4 p1, 0x5

    return p1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public getLastItemCount()I
    .locals 1

    .line 1687
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastItemCount:I

    return v0
.end method

.method public getResultLength()I
    .locals 1

    .line 1672
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultLength:I

    return v0
.end method

.method public getResultStartPosition()I
    .locals 1

    .line 1668
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultStartPosition:I

    return v0
.end method

.method public getSearchResultBotContext()Ljava/util/ArrayList;
    .locals 1

    .line 1676
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isBannedInline()Z
    .locals 1

    .line 1881
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBotCommands()Z
    .locals 1

    .line 1869
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBotContext()Z
    .locals 1

    .line 1877
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 1890
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isGlobalHashtagHint(I)Z
    .locals 1

    .line 2084
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->hintHashtag:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isLocalHashtagHint(I)Z
    .locals 1

    .line 2080
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->hintHashtag:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isLongClickEnabled()Z
    .locals 1

    .line 1865
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

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

.method public isMediaLayout()Z
    .locals 1

    .line 1885
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextMedia:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

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

.method public isStickers()Z
    .locals 1

    .line 1873
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 9

    .line 378
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastItemCount:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastData:[Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_3

    .line 388
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCount()I

    move-result v1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    .line 390
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 391
    new-array v6, v1, [Ljava/lang/Object;

    move v7, v2

    :goto_1
    if-ge v7, v1, :cond_2

    .line 393
    invoke-virtual {p0, v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v2, v5, :cond_5

    if-ltz v2, :cond_3

    .line 396
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastData:[Ljava/lang/Object;

    array-length v8, v7

    if-ge v2, v8, :cond_3

    if-ge v2, v1, :cond_3

    aget-object v7, v7, v2

    aget-object v8, v6, v2

    invoke-direct {p0, v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->itemsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 397
    :cond_3
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    move v4, v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    sub-int v2, v0, v5

    .line 403
    invoke-virtual {p0, v5, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    sub-int v2, v1, v5

    .line 404
    invoke-virtual {p0, v5, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    if-eqz v4, :cond_6

    .line 405
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v2, :cond_6

    .line 406
    invoke-interface {v2, v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onItemCountUpdate(II)V

    .line 408
    :cond_6
    iput-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastData:[Ljava/lang/Object;

    return-void

    .line 379
    :cond_7
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v0, :cond_8

    .line 380
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCount()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onItemCountUpdate(II)V

    .line 382
    :cond_8
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 383
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastData:[Ljava/lang/Object;

    .line 384
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastData:[Ljava/lang/Object;

    array-length v1, v0

    if-ge v2, v1, :cond_9

    .line 385
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 486
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isDarkTheme:Z

    if-nez v0, :cond_0

    .line 487
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 488
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 490
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 491
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    .line 1942
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->hintHashtag:Ljava/lang/String;

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x2

    .line 1946
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 1948
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerCell;

    if-ltz p2, :cond_11

    .line 1949
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_11

    .line 1950
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    .line 1951
    iget-object v0, p2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p2, p2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->parent:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Cells/StickerCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    .line 1952
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/StickerCell;->setClearsInputField(Z)V

    return-void

    :cond_1
    const/4 v1, 0x3

    const/4 v3, 0x0

    if-ne v0, v1, :cond_4

    .line 1955
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    .line 1956
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 1958
    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-eqz v0, :cond_2

    .line 1959
    sget p2, Lorg/telegram/messenger/R$string;->GlobalAttachInlineRestricted:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1960
    :cond_2
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1961
    sget p2, Lorg/telegram/messenger/R$string;->AttachInlineRestrictedForever:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1963
    :cond_3
    sget v0, Lorg/telegram/messenger/R$string;->AttachInlineRestricted:I

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v4, p2

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p2

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v3

    const-string p2, "AttachInlineRestricted"

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 1967
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;

    .line 1968
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->quickReplies:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    if-ltz p2, :cond_11

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_11

    .line 1969
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->quickReplies:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->quickRepliesQuery:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v3}, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->set(Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Ljava/lang/String;Z)V

    return-void

    .line 1971
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    const/4 v4, 0x2

    if-eqz v1, :cond_d

    .line 1972
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_1

    :cond_7
    :goto_0
    move v0, v2

    .line 1973
    :goto_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-ne v1, v4, :cond_9

    if-eqz v0, :cond_11

    .line 1975
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/BotSwitchCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-eqz p2, :cond_8

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;->text:Ljava/lang/String;

    goto :goto_2

    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;->text:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/BotSwitchCell;->setText(Ljava/lang/String;)V

    return-void

    :cond_9
    if-eqz v0, :cond_a

    add-int/lit8 p2, p2, -0x1

    :cond_a
    if-ltz p2, :cond_11

    .line 1981
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_11

    .line 1982
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v4, p1

    check-cast v4, Lorg/telegram/ui/Cells/ContextLinkCell;

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextMedia:Z

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    if-eq p2, p1, :cond_b

    move v8, v2

    goto :goto_3

    :cond_b
    move v8, v3

    :goto_3
    if-eqz v0, :cond_c

    if-nez p2, :cond_c

    move v9, v2

    goto :goto_4

    :cond_c
    move v9, v3

    :goto_4
    const-string p1, "gif"

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Cells/ContextLinkCell;->setLink(Lorg/telegram/tgnet/TLRPC$BotInlineResult;Lorg/telegram/tgnet/TLRPC$User;ZZZZ)V

    return-void

    :cond_d
    const/4 v1, 0x6

    if-ne v0, v1, :cond_10

    .line 1986
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;

    add-int/2addr p2, v4

    if-nez p2, :cond_e

    .line 1988
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->topHint:Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;

    goto :goto_5

    .line 1989
    :cond_e
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->bottomHint:Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;

    .line 1990
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_f

    .line 1991
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_f

    .line 1992
    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1994
    :cond_f
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->hintHashtag:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;->set(ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void

    :cond_10
    const/4 v1, 0x7

    if-ne v0, v1, :cond_12

    :cond_11
    return-void

    .line 1998
    :cond_12
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/MentionCell;

    .line 1999
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    .line 2000
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLObject;

    .line 2001
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_13

    .line 2002
    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/MentionCell;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    goto/16 :goto_7

    .line 2003
    :cond_13
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_19

    .line 2004
    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/MentionCell;->setChat(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto/16 :goto_7

    .line 2006
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    if-ltz p2, :cond_15

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_15

    .line 2007
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/MentionCell;->setText(Ljava/lang/String;)V

    goto :goto_7

    .line 2008
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    if-ltz p2, :cond_16

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_16

    .line 2009
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/MentionCell;->setEmojiSuggestion(Lorg/telegram/messenger/MediaDataController$KeywordResult;)V

    goto :goto_7

    .line 2010
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    if-ltz p2, :cond_19

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_19

    .line 2011
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    if-ltz p2, :cond_17

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_6

    :cond_17
    move-object v0, v1

    .line 2012
    :goto_6
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    if-eqz v2, :cond_18

    if-ltz p2, :cond_18

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_18

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    .line 2013
    :cond_18
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/MentionCell;->setBotCommand(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$User;)V

    .line 2015
    :cond_19
    :goto_7
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/MentionCell;->setDivider(Z)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    if-eqz p2, :cond_7

    const/4 p1, 0x1

    if-eq p2, p1, :cond_6

    const/4 v0, 0x2

    if-eq p2, v0, :cond_5

    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p2, v0, :cond_3

    const/4 v0, 0x6

    if-eq p2, v0, :cond_2

    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    .line 1934
    new-instance p1, Lorg/telegram/ui/Cells/StickerCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/StickerCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_2

    .line 1922
    :cond_0
    new-instance p2, Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter$8;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Landroid/content/Context;)V

    .line 1928
    new-instance v0, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stories:Z

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    const v4, 0x3e19999a    # 0.15f

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    goto :goto_0

    :cond_1
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iget-object v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    :goto_0
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    sget v4, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    iget-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1, v1}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 1929
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 1930
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    move-object p1, p2

    goto :goto_2

    .line 1919
    :cond_2
    new-instance p1, Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stories:Z

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_2

    .line 1916
    :cond_3
    new-instance p1, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v1, v0}, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_2

    .line 1909
    :cond_4
    new-instance p2, Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41000000    # 8.0f

    .line 1910
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v0, 0x41600000    # 14.0f

    .line 1911
    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1912
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 1906
    :cond_5
    new-instance p1, Lorg/telegram/ui/Cells/BotSwitchCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/BotSwitchCell;-><init>(Landroid/content/Context;)V

    goto :goto_2

    .line 1902
    :cond_6
    new-instance p1, Lorg/telegram/ui/Cells/ContextLinkCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ContextLinkCell;-><init>(Landroid/content/Context;)V

    .line 1903
    new-instance p2, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/ContextLinkCell;->setDelegate(Lorg/telegram/ui/Cells/ContextLinkCell$ContextLinkCellDelegate;)V

    goto :goto_2

    .line 1898
    :cond_7
    new-instance p1, Lorg/telegram/ui/Cells/MentionCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/MentionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1899
    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isDarkTheme:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/MentionCell;->setIsDarkTheme(Z)V

    .line 1937
    :goto_2
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 5

    .line 456
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->stop()V

    .line 459
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 460
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 461
    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    .line 463
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 464
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    invoke-virtual {v0, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 465
    iput v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    .line 467
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    if-eqz v0, :cond_3

    .line 468
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    invoke-virtual {v0, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 469
    iput v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    .line 471
    :cond_3
    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 472
    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    .line 473
    iput-boolean v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    .line 474
    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    .line 475
    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    .line 476
    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->noUserName:Z

    .line 477
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isDarkTheme:Z

    if-nez v0, :cond_4

    .line 478
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 479
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 481
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 482
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 2021
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz p1, :cond_1

    .line 2022
    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 2023
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {p1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->start()V

    return-void

    .line 2025
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->onLocationUnavailable()V

    :cond_1
    return-void
.end method

.method public searchForContextBotForNextOffset()V
    .locals 4

    .line 824
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->nextQueryOffset:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 827
    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->nextQueryOffset:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBotResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public searchUsernameOrHashtag(Ljava/lang/CharSequence;ILjava/util/ArrayList;ZZ)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    .line 942
    const-string v0, ""

    if-nez v2, :cond_0

    move-object v7, v0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    .line 943
    :goto_0
    iget-object v3, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 945
    iget-object v4, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_1

    .line 946
    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 947
    iget-object v4, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    :cond_1
    move-object v8, v3

    .line 949
    iget-object v3, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    const/4 v9, 0x0

    if-eqz v3, :cond_2

    .line 950
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 951
    iput-object v9, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    .line 953
    :cond_2
    iget v3, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelReqId:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_3

    .line 954
    iget v3, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget v4, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelReqId:I

    invoke-virtual {v3, v4, v10}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 955
    iput v11, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelReqId:I

    .line 957
    :cond_3
    iget-object v3, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchGlobalRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_4

    .line 958
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 959
    iput-object v9, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchGlobalRunnable:Ljava/lang/Runnable;

    .line 961
    :cond_4
    iget-object v3, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->checkAgainRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_5

    .line 962
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 963
    iput-object v9, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->checkAgainRunnable:Ljava/lang/Runnable;

    .line 965
    :cond_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->maxMessageLength:I

    if-le v3, v4, :cond_7

    :cond_6
    move-object v6, v9

    goto/16 :goto_48

    .line 973
    :cond_7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    add-int/lit8 v3, p2, -0x1

    move v12, v3

    goto :goto_1

    :cond_8
    move/from16 v12, p2

    .line 976
    :goto_1
    iput-object v9, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    .line 977
    iput-boolean v5, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastUsernameOnly:Z

    .line 978
    iput-boolean v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastForSearch:Z

    .line 979
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v5, :cond_9

    .line 982
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xe

    if-gt v3, v4, :cond_9

    move v3, v10

    goto :goto_2

    :cond_9
    move v3, v11

    :goto_2
    if-eqz v3, :cond_e

    .line 986
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move/from16 v16, v10

    move v15, v11

    move-object v10, v7

    :goto_3
    if-ge v15, v4, :cond_d

    .line 988
    invoke-interface {v10, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    add-int/lit8 v14, v4, -0x1

    if-ge v15, v14, :cond_a

    add-int/lit8 v11, v15, 0x1

    .line 989
    invoke-interface {v10, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    goto :goto_4

    :cond_a
    const/4 v11, 0x0

    :goto_4
    if-ge v15, v14, :cond_b

    const v14, 0xd83c

    if-ne v9, v14, :cond_b

    const v14, 0xdffb

    if-lt v11, v14, :cond_b

    const v14, 0xdfff

    if-gt v11, v14, :cond_b

    const/4 v11, 0x0

    .line 991
    invoke-interface {v10, v11, v15}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    add-int/lit8 v14, v15, 0x2

    move/from16 v18, v11

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-interface {v10, v14, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x2

    new-array v14, v11, [Ljava/lang/CharSequence;

    aput-object v9, v14, v18

    aput-object v10, v14, v16

    invoke-static {v14}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    add-int/lit8 v4, v4, -0x2

    :goto_5
    add-int/lit8 v15, v15, -0x1

    goto :goto_6

    :cond_b
    const v11, 0xfe0f

    if-ne v9, v11, :cond_c

    const/4 v11, 0x0

    .line 995
    invoke-interface {v10, v11, v15}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    add-int/lit8 v14, v15, 0x1

    move/from16 v18, v11

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-interface {v10, v14, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x2

    new-array v14, v11, [Ljava/lang/CharSequence;

    aput-object v9, v14, v18

    aput-object v10, v14, v16

    invoke-static {v14}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_c
    :goto_6
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    goto :goto_3

    .line 1000
    :cond_d
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    move-object v9, v7

    goto :goto_7

    :cond_e
    move/from16 v16, v10

    move-object v9, v0

    :goto_7
    if-eqz v3, :cond_10

    .line 1002
    invoke-static {v9}, Lorg/telegram/messenger/Emoji;->isValidEmoji(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/messenger/Emoji;->isValidEmoji(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    move/from16 v3, v16

    goto :goto_8

    :cond_10
    const/4 v3, 0x0

    :goto_8
    if-eqz v3, :cond_13

    .line 1003
    instance-of v4, v2, Landroid/text/Spanned;

    if-eqz v4, :cond_13

    .line 1004
    move-object v3, v2

    check-cast v3, Landroid/text/Spanned;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v11, 0x0

    invoke-interface {v3, v11, v4, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v3, :cond_12

    .line 1005
    array-length v3, v3

    if-nez v3, :cond_11

    goto :goto_9

    :cond_11
    const/4 v3, 0x0

    goto :goto_a

    :cond_12
    :goto_9
    move/from16 v3, v16

    .line 1008
    :cond_13
    :goto_a
    iget-boolean v4, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowStickers:Z

    const/16 v19, 0x3

    const/4 v11, 0x5

    if-eqz v4, :cond_14

    if-eqz v3, :cond_14

    if-eqz v8, :cond_15

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->canSendStickers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_b

    :cond_14
    move/from16 v3, p2

    move-object/from16 v4, p3

    const/4 v14, 0x0

    goto/16 :goto_15

    .line 1009
    :cond_15
    :goto_b
    iget-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1010
    sget v0, Lorg/telegram/messenger/SharedConfig;->suggestStickers:I

    const/4 v4, 0x2

    if-eq v0, v4, :cond_16

    if-nez v3, :cond_17

    :cond_16
    const/4 v14, 0x0

    goto/16 :goto_14

    :cond_17
    const/4 v3, 0x0

    .line 1018
    iput-object v3, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 1019
    iput-object v3, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    .line 1021
    iget v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    if-eqz v0, :cond_18

    .line 1022
    iget v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v3, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    move/from16 v4, v16

    invoke-virtual {v0, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, 0x0

    .line 1023
    iput v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    goto :goto_c

    :cond_18
    const/4 v0, 0x0

    .line 1025
    :goto_c
    iget v3, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/messenger/MessagesController;->suggestStickersApiOnly:Z

    .line 1027
    iput-boolean v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->delayLocalResults:Z

    if-nez v3, :cond_1f

    move/from16 v18, v0

    .line 1029
    new-instance v0, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda3;

    move-object/from16 v4, p3

    move/from16 v21, v3

    move/from16 v14, v18

    move/from16 v3, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/CharSequence;ILjava/util/ArrayList;ZZ)V

    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->checkAgainRunnable:Ljava/lang/Runnable;

    .line 1030
    iget v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v14, v14, v2, v14}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    .line 1031
    iget v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v14, v2, v14}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    .line 1032
    iget v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v14}, Lorg/telegram/messenger/MediaDataController;->getRecentStickersNoCopy(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1033
    iget v2, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/MediaDataController;->getRecentStickersNoCopy(I)Ljava/util/ArrayList;

    move-result-object v2

    const/16 v5, 0x14

    .line 1035
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    const/4 v14, 0x0

    :goto_d
    if-ge v6, v5, :cond_1a

    .line 1036
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v15, v22

    check-cast v15, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1037
    iget-object v10, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    invoke-direct {v1, v15, v10}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isValidSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 1038
    const-string v10, "recent"

    invoke-direct {v1, v15, v10}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addStickerToResult(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    if-lt v14, v11, :cond_19

    goto :goto_e

    :cond_19
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 1045
    :cond_1a
    :goto_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v5, :cond_1c

    .line 1046
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1047
    iget-object v14, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    invoke-direct {v1, v10, v14}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isValidSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 1048
    const-string v14, "fav"

    invoke-direct {v1, v10, v14}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addStickerToResult(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 1052
    :cond_1c
    iget v5, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    .line 1053
    iget v5, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MediaDataController;->getAllStickers()Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 1054
    iget-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    goto :goto_10

    :cond_1d
    const/4 v5, 0x0

    :goto_10
    if-eqz v5, :cond_1e

    .line 1055
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1e

    const/4 v6, 0x0

    .line 1056
    invoke-direct {v1, v5, v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addStickersToResult(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 1058
    :cond_1e
    iget-object v5, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v5, :cond_20

    .line 1059
    new-instance v6, Lorg/telegram/ui/Adapters/MentionsAdapter$5;

    invoke-direct {v6, v1, v2, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter$5;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_11

    :cond_1f
    move-object/from16 v4, p3

    move/from16 v21, v3

    move/from16 v3, p2

    .line 1098
    :cond_20
    :goto_11
    sget v0, Lorg/telegram/messenger/SharedConfig;->suggestStickers:I

    if-eqz v0, :cond_21

    if-eqz v21, :cond_22

    .line 1099
    :cond_21
    iget-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    invoke-direct {v1, v0, v9}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchServerStickers(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    :cond_22
    iget-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 1103
    sget v0, Lorg/telegram/messenger/SharedConfig;->suggestStickers:I

    if-nez v0, :cond_23

    iget-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v11, :cond_23

    const/4 v2, 0x1

    .line 1104
    iput-boolean v2, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->delayLocalResults:Z

    .line 1105
    iget-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    const/4 v14, 0x0

    invoke-interface {v0, v14}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 1106
    iput-boolean v14, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    goto :goto_12

    .line 1108
    :cond_23
    invoke-direct {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->checkStickerFilesExistAndDownload()Z

    .line 1109
    iget-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 1110
    iget-object v2, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {v2, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    const/4 v2, 0x1

    .line 1111
    iput-boolean v2, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    .line 1113
    :goto_12
    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    :cond_24
    const/4 v14, 0x0

    goto :goto_13

    .line 1114
    :cond_25
    iget-boolean v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    if-eqz v0, :cond_24

    .line 1115
    iget-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    const/4 v14, 0x0

    invoke-interface {v0, v14}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 1116
    iput-boolean v14, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    :goto_13
    const/4 v0, 0x4

    const/4 v6, 0x0

    goto/16 :goto_1c

    .line 1011
    :goto_14
    iget-boolean v2, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    if-eqz v2, :cond_87

    const/4 v11, 0x2

    if-ne v0, v11, :cond_87

    .line 1012
    iput-boolean v14, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    .line 1013
    iget-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {v0, v14}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 1014
    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    return-void

    :goto_15
    if-nez p4, :cond_2e

    .line 1118
    iget-boolean v2, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->needBotContext:Z

    if-eqz v2, :cond_2e

    invoke-virtual {v7, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x40

    if-ne v2, v5, :cond_2e

    const/16 v2, 0x20

    .line 1119
    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1120
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v5, :cond_26

    const/4 v6, 0x1

    .line 1124
    invoke-virtual {v7, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v5, v6

    .line 1125
    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    move-object v5, v2

    const/4 v2, 0x1

    goto :goto_16

    :cond_26
    add-int/lit8 v5, v2, -0x1

    .line 1126
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x74

    if-ne v5, v6, :cond_27

    add-int/lit8 v5, v2, -0x2

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x6f

    if-ne v5, v6, :cond_27

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x62

    if-ne v2, v5, :cond_27

    const/4 v2, 0x1

    .line 1127
    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    goto :goto_16

    :cond_27
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 1130
    invoke-direct {v1, v6, v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBot(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_16
    if-eqz v5, :cond_2d

    .line 1132
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v2, :cond_2d

    const/4 v2, 0x1

    .line 1133
    :goto_17
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_2c

    .line 1134
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-lt v9, v10, :cond_28

    const/16 v10, 0x39

    if-le v9, v10, :cond_2b

    :cond_28
    const/16 v10, 0x61

    if-lt v9, v10, :cond_29

    const/16 v10, 0x7a

    if-le v9, v10, :cond_2b

    :cond_29
    const/16 v10, 0x41

    if-lt v9, v10, :cond_2a

    const/16 v10, 0x5a

    if-le v9, v10, :cond_2b

    :cond_2a
    const/16 v10, 0x5f

    if-eq v9, v10, :cond_2b

    goto :goto_18

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2c
    move-object v0, v5

    .line 1144
    :cond_2d
    :goto_18
    invoke-direct {v1, v0, v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBot(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_1b

    .line 1145
    :cond_2e
    iget-boolean v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowStickers:Z

    if-eqz v0, :cond_2f

    iget-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentEncryptedChat()Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v0

    if-nez v0, :cond_2f

    if-eqz v8, :cond_30

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->canSendStickers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_19

    :cond_2f
    const/4 v6, 0x0

    goto :goto_1a

    :cond_30
    :goto_19
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x2

    if-lt v0, v5, :cond_2f

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2f

    const/4 v6, 0x0

    .line 1147
    invoke-direct {v1, v6, v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBot(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 1150
    :goto_1a
    invoke-direct {v1, v6, v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBot(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    const/4 v0, -0x1

    .line 1152
    :goto_1c
    iget-object v2, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_31

    goto/16 :goto_47

    .line 1155
    :cond_31
    iget v2, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    .line 1157
    iget-object v5, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->hintHashtag:Ljava/lang/String;

    .line 1159
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->hintHashtag:Ljava/lang/String;

    const/4 v14, 0x0

    .line 1160
    iput-boolean v14, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->hintHashtagDivider:Z

    if-eqz p4, :cond_32

    const/4 v6, 0x1

    .line 1162
    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    iput v14, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultStartPosition:I

    .line 1164
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultLength:I

    const/4 v0, 0x0

    :goto_1d
    const/4 v12, -0x1

    :goto_1e
    const/4 v14, 0x0

    goto/16 :goto_25

    :cond_32
    :goto_1f
    if-ltz v12, :cond_40

    .line 1168
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v12, v6, :cond_33

    const/16 v10, 0x40

    const/4 v14, 0x0

    goto/16 :goto_24

    .line 1171
    :cond_33
    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v9, 0x3a

    if-eqz v12, :cond_34

    add-int/lit8 v10, v12, -0x1

    .line 1172
    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-eq v14, v15, :cond_34

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v14, 0xa

    if-eq v10, v14, :cond_34

    if-ne v6, v9, :cond_35

    :cond_34
    const/16 v10, 0x40

    goto :goto_20

    :cond_35
    const/16 v10, 0x40

    :cond_36
    const/4 v14, 0x0

    goto/16 :goto_23

    :goto_20
    if-ne v6, v10, :cond_39

    .line 1174
    iget-boolean v9, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchInDailogs:Z

    if-nez v9, :cond_37

    iget-boolean v14, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->needUsernames:Z

    if-nez v14, :cond_37

    iget-boolean v14, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->needBotContext:Z

    if-eqz v14, :cond_36

    if-nez v12, :cond_36

    :cond_37
    if-nez v9, :cond_38

    .line 1175
    iget-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v0, :cond_38

    if-eqz v12, :cond_38

    .line 1176
    iput-object v7, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    .line 1177
    iput v3, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastPosition:I

    .line 1178
    iput-object v4, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->messages:Ljava/util/ArrayList;

    .line 1179
    iget-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    const/4 v14, 0x0

    invoke-interface {v0, v14}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    return-void

    .line 1184
    :cond_38
    iput v12, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultStartPosition:I

    .line 1185
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultLength:I

    const/4 v0, 0x0

    goto :goto_1e

    :cond_39
    const/16 v14, 0x23

    if-ne v6, v14, :cond_3d

    .line 1189
    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1190
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->hintHashtag:Ljava/lang/String;

    .line 1191
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v9, 0x4

    if-lt v0, v9, :cond_3a

    iget-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->hintHashtag:Ljava/lang/String;

    const-string v9, "^[#$][\\p{L}_-]+$"

    invoke-virtual {v0, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    :cond_3a
    const/4 v0, 0x0

    .line 1192
    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->hintHashtag:Ljava/lang/String;

    .line 1194
    :cond_3b
    iget-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->loadRecentHashtags()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1196
    iput v12, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultStartPosition:I

    .line 1197
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultLength:I

    const/4 v14, 0x0

    .line 1198
    invoke-virtual {v13, v14, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_21
    const/4 v12, -0x1

    goto :goto_25

    .line 1201
    :cond_3c
    iput-object v7, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    .line 1202
    iput v3, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastPosition:I

    .line 1203
    iput-object v4, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->messages:Ljava/util/ArrayList;

    return-void

    :cond_3d
    if-nez v12, :cond_3e

    .line 1207
    iget-object v14, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->botInfo:Landroidx/collection/LongSparseArray;

    if-eqz v14, :cond_3e

    const/16 v14, 0x2f

    if-ne v6, v14, :cond_3e

    .line 1209
    iput v12, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultStartPosition:I

    .line 1210
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultLength:I

    const/4 v0, 0x2

    goto/16 :goto_1d

    :cond_3e
    if-ne v6, v9, :cond_36

    .line 1212
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_36

    .line 1213
    const-string v9, " !\"#$%&\'()*+,-./:;<=>?@[\\]^_`{|}~\n"

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_3f

    .line 1214
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    const/4 v14, 0x1

    if-le v9, v14, :cond_36

    goto :goto_22

    :cond_3f
    const/4 v14, 0x1

    .line 1216
    :goto_22
    iput v12, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultStartPosition:I

    .line 1217
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/2addr v0, v14

    iput v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultLength:I

    move/from16 v0, v19

    goto/16 :goto_1d

    .line 1222
    :goto_23
    invoke-virtual {v13, v14, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :goto_24
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_1f

    :cond_40
    const/4 v14, 0x0

    goto :goto_21

    :goto_25
    if-nez v5, :cond_42

    .line 1225
    iget-object v3, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->hintHashtag:Ljava/lang/String;

    if-eqz v3, :cond_42

    const/4 v3, 0x2

    .line 1226
    invoke-virtual {v1, v14, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :cond_41
    :goto_26
    const/4 v3, -0x1

    goto :goto_27

    :cond_42
    const/4 v3, 0x2

    if-eqz v5, :cond_43

    .line 1227
    iget-object v5, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->hintHashtag:Ljava/lang/String;

    if-nez v5, :cond_43

    .line 1228
    invoke-virtual {v1, v14, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto :goto_26

    .line 1230
    :cond_43
    iget-object v3, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->topHint:Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;

    if-eqz v3, :cond_44

    iget-object v5, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->hintHashtag:Ljava/lang/String;

    invoke-virtual {v3, v14, v5, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;->set(ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 1231
    :cond_44
    iget-object v3, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->bottomHint:Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;

    if-eqz v3, :cond_41

    iget-object v5, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->hintHashtag:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v5, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;->set(ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_26

    :goto_27
    if-ne v0, v3, :cond_45

    .line 1234
    iput-boolean v14, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextMedia:Z

    const/4 v6, 0x0

    .line 1235
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    .line 1236
    iget-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {v0, v14}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    return-void

    :cond_45
    const/4 v6, 0x0

    if-nez v0, :cond_73

    .line 1240
    iput-boolean v14, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextMedia:Z

    .line 1241
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    .line 1242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_47

    const/4 v3, 0x0

    :goto_28
    const/16 v7, 0x64

    .line 1244
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-ge v3, v7, :cond_47

    .line 1245
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v9

    cmp-long v7, v9, v5

    if-lez v7, :cond_46

    .line 1246
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_46

    .line 1247
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 1251
    :cond_47
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/16 v15, 0x20

    .line 1252
    invoke-virtual {v3, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_48

    const/4 v4, 0x1

    :goto_29
    move-wide v9, v5

    goto :goto_2a

    :cond_48
    const/4 v4, 0x0

    goto :goto_29

    .line 1253
    :goto_2a
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1254
    new-instance v7, Landroidx/collection/LongSparseArray;

    invoke-direct {v7}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 1255
    new-instance v5, Landroidx/collection/LongSparseArray;

    invoke-direct {v5}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 1256
    iget v13, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/messenger/MediaDataController;->inlineBots:Ljava/util/ArrayList;

    if-nez p4, :cond_4d

    .line 1257
    iget-boolean v14, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->needBotContext:Z

    if-eqz v14, :cond_4d

    if-nez v12, :cond_4d

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4d

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 1259
    :goto_2b
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v12, v15, :cond_4d

    .line 1260
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-wide/from16 p1, v9

    iget-wide v9, v15, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    if-nez v9, :cond_49

    move v15, v12

    goto :goto_2e

    .line 1264
    :cond_49
    invoke-static {v9}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v10

    .line 1265
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_4b

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4a

    goto :goto_2c

    :cond_4a
    move v15, v12

    goto :goto_2d

    .line 1266
    :cond_4b
    :goto_2c
    invoke-direct {v1, v6, v7, v9}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addUserResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v10

    if-eqz v10, :cond_4a

    move v15, v12

    .line 1267
    iget-wide v11, v9, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v5, v11, v12, v9}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    :goto_2d
    const/4 v10, 0x5

    if-ne v14, v10, :cond_4c

    goto :goto_2f

    :cond_4c
    :goto_2e
    add-int/lit8 v12, v15, 0x1

    move-wide/from16 v9, p1

    const/4 v11, 0x5

    goto :goto_2b

    :cond_4d
    move-wide/from16 p1, v9

    .line 1278
    :goto_2f
    iget-object v9, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v9, :cond_4e

    .line 1279
    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    .line 1280
    iget-object v9, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->getThreadId()J

    move-result-wide v11

    goto :goto_30

    .line 1281
    :cond_4e
    iget-object v9, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v9, :cond_4f

    .line 1282
    iget-wide v8, v9, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    :cond_4f
    move-wide/from16 v11, p1

    .line 1288
    :goto_30
    iget v9, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    if-eqz v8, :cond_50

    .line 1289
    iget-object v13, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v13, :cond_50

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v13, :cond_50

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v13

    if-eqz v13, :cond_51

    iget-boolean v13, v8, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v13, :cond_50

    goto :goto_31

    :cond_50
    move/from16 v22, v4

    move-wide/from16 v20, v11

    goto/16 :goto_38

    :cond_51
    :goto_31
    const/4 v13, -0x2

    move v14, v13

    .line 1290
    :goto_32
    iget-object v15, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_50

    if-ne v14, v13, :cond_54

    if-eqz v9, :cond_52

    if-nez p4, :cond_53

    :cond_52
    move/from16 v22, v4

    move-wide/from16 v20, v11

    move v13, v14

    goto/16 :goto_37

    .line 1300
    :cond_53
    iget-object v15, v9, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 1301
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 1302
    invoke-static {v9}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v17

    move/from16 v20, v14

    .line 1304
    iget-wide v13, v9, Lorg/telegram/tgnet/TLRPC$User;->id:J

    move-wide/from16 v23, v13

    move/from16 v13, v20

    move-wide/from16 v20, v11

    move-wide/from16 v11, v23

    move-object v14, v10

    move-object v10, v9

    goto/16 :goto_35

    :cond_54
    move v13, v14

    const/4 v10, -0x1

    if-ne v13, v10, :cond_57

    if-nez p5, :cond_55

    :goto_33
    move/from16 v22, v4

    move-wide/from16 v20, v11

    goto/16 :goto_37

    .line 1309
    :cond_55
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_56

    .line 1310
    invoke-direct {v1, v6, v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addChatResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Lorg/telegram/tgnet/TLRPC$Chat;)Z

    goto :goto_33

    .line 1313
    :cond_56
    iget-object v15, v8, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 1315
    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v17

    move-wide/from16 v20, v11

    .line 1317
    iget-wide v10, v8, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v10, v10

    move-wide v11, v10

    const/4 v14, 0x0

    move-object v10, v8

    goto :goto_35

    :cond_57
    move-wide/from16 v20, v11

    .line 1319
    iget-object v10, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v9, :cond_59

    .line 1320
    iget-wide v11, v10, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    iget-wide v14, v9, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v11, v11, v14

    if-nez v11, :cond_59

    :cond_58
    :goto_34
    move/from16 v22, v4

    goto/16 :goto_37

    .line 1323
    :cond_59
    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    if-eqz v10, :cond_58

    .line 1324
    invoke-static {v10}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v11

    if-nez v11, :cond_58

    iget-wide v11, v10, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v7, v11, v12}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v11

    if-ltz v11, :cond_5a

    goto :goto_34

    .line 1327
    :cond_5a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_5b

    .line 1328
    iget-boolean v11, v10, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    if-nez v11, :cond_5b

    .line 1329
    invoke-direct {v1, v6, v7, v10}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addUserResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Lorg/telegram/tgnet/TLRPC$User;)Z

    goto :goto_34

    .line 1333
    :cond_5b
    iget-object v15, v10, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 1334
    iget-object v11, v10, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 1335
    invoke-static {v10}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v17

    move-object v14, v11

    .line 1337
    iget-wide v11, v10, Lorg/telegram/tgnet/TLRPC$User;->id:J

    .line 1339
    :goto_35
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_5c

    move/from16 v22, v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5f

    goto :goto_36

    :cond_5c
    move/from16 v22, v4

    .line 1340
    :goto_36
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5d

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5f

    .line 1341
    :cond_5d
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5e

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5f

    :cond_5e
    if-eqz v22, :cond_61

    .line 1342
    invoke-static {v15, v14}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 1343
    :cond_5f
    instance-of v4, v10, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_60

    .line 1344
    move-object v4, v10

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {v1, v6, v7, v4}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addUserResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 1345
    invoke-virtual {v5, v11, v12, v10}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_37

    .line 1347
    :cond_60
    instance-of v4, v10, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_61

    .line 1348
    move-object v4, v10

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {v1, v6, v7, v4}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addChatResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 1349
    invoke-virtual {v5, v11, v12, v10}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_61
    :goto_37
    add-int/lit8 v14, v13, 0x1

    move-wide/from16 v11, v20

    move/from16 v4, v22

    const/4 v13, -0x2

    goto/16 :goto_32

    .line 1355
    :goto_38
    iget-boolean v4, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchInDailogs:Z

    if-eqz v4, :cond_6e

    .line 1356
    iget v4, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->getAllDialogs()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v11, 0x0

    .line 1358
    :goto_39
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v11, v9, :cond_6e

    .line 1363
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    cmp-long v9, v9, p1

    if-lez v9, :cond_68

    .line 1365
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    if-eqz v9, :cond_6d

    .line 1366
    invoke-static {v9}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v10

    if-nez v10, :cond_6d

    iget-wide v12, v9, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v7, v12, v13}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v10

    if-ltz v10, :cond_62

    goto/16 :goto_3a

    .line 1369
    :cond_62
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_63

    .line 1370
    iget-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    if-nez v10, :cond_63

    .line 1371
    invoke-direct {v1, v6, v7, v9}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addUserResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Lorg/telegram/tgnet/TLRPC$User;)Z

    goto/16 :goto_3a

    .line 1375
    :cond_63
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 1376
    iget-object v12, v9, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 1377
    invoke-static {v9}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v13

    .line 1379
    iget-wide v14, v9, Lorg/telegram/tgnet/TLRPC$User;->id:J

    .line 1380
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_64

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_67

    .line 1381
    :cond_64
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_65

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_67

    .line 1382
    :cond_65
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_66

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_67

    :cond_66
    if-eqz v22, :cond_6d

    .line 1383
    invoke-static {v10, v12}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6d

    .line 1384
    :cond_67
    invoke-direct {v1, v6, v7, v9}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addUserResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v10

    if-eqz v10, :cond_6d

    .line 1385
    invoke-virtual {v5, v14, v15, v9}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3a

    .line 1388
    :cond_68
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6d

    .line 1389
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v9, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    if-eqz v9, :cond_6d

    .line 1390
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v10, :cond_6d

    iget-wide v12, v9, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v12, v12

    invoke-virtual {v7, v12, v13}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v10

    if-ltz v10, :cond_69

    goto :goto_3a

    .line 1393
    :cond_69
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_6a

    .line 1394
    invoke-direct {v1, v6, v7, v9}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addChatResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Lorg/telegram/tgnet/TLRPC$Chat;)Z

    goto :goto_3a

    .line 1397
    :cond_6a
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 1398
    iget-object v12, v9, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 1401
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6b

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6c

    .line 1402
    :cond_6b
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6d

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6d

    .line 1403
    :cond_6c
    invoke-direct {v1, v6, v7, v9}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addChatResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v10

    if-eqz v10, :cond_6d

    .line 1404
    iget-wide v12, v9, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v12, v12

    invoke-virtual {v5, v12, v13, v9}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_6d
    :goto_3a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_39

    .line 1410
    :cond_6e
    new-instance v4, Lorg/telegram/ui/Adapters/MentionsAdapter$6;

    invoke-direct {v4, v1, v5, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter$6;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;)V

    invoke-static {v6, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 1443
    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    .line 1444
    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 1445
    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->quickReplies:Ljava/util/ArrayList;

    .line 1446
    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 1447
    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 1448
    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    .line 1449
    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    if-eqz v8, :cond_6f

    .line 1450
    iget-boolean v0, v8, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_70

    :cond_6f
    iget-boolean v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchInDailogs:Z

    if-eqz v0, :cond_72

    :cond_70
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_72

    .line 1451
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v10, 0x5

    if-ge v0, v10, :cond_71

    .line 1452
    new-instance v0, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v0, v1, v6, v7}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V

    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_3b

    :cond_71
    const/4 v14, 0x1

    .line 1457
    invoke-direct {v1, v6, v7, v14}, Lorg/telegram/ui/Adapters/MentionsAdapter;->showUsersResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Z)V

    .line 1460
    :goto_3b
    new-instance v0, Lorg/telegram/ui/Adapters/MentionsAdapter$7;

    move-object v4, v8

    move-object v8, v2

    move-object v2, v4

    move-wide/from16 v4, v20

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Adapters/MentionsAdapter$7;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Lorg/telegram/tgnet/TLRPC$Chat;Ljava/lang/String;JLjava/util/ArrayList;Landroidx/collection/LongSparseArray;Lorg/telegram/messenger/MessagesController;)V

    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchGlobalRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_72
    const/4 v14, 0x1

    .line 1518
    invoke-direct {v1, v6, v7, v14}, Lorg/telegram/ui/Adapters/MentionsAdapter;->showUsersResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Z)V

    return-void

    :cond_73
    move-object v8, v2

    const/4 v14, 0x1

    if-ne v0, v14, :cond_78

    .line 1521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1522
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1523
    iget-object v3, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getHashtags()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    .line 1524
    :goto_3c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_75

    .line 1525
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    if-eqz v5, :cond_74

    .line 1526
    iget-object v6, v5, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    if-eqz v6, :cond_74

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 1527
    iget-object v5, v5, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_74
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 1530
    :cond_75
    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    const/4 v6, 0x0

    .line 1531
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 1532
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 1533
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    .line 1534
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->quickReplies:Ljava/util/ArrayList;

    .line 1535
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 1536
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 1537
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    .line 1538
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    const/4 v11, 0x0

    .line 1539
    iput-boolean v11, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextMedia:Z

    .line 1540
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    .line 1541
    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 1542
    iget-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    iget-object v2, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_77

    iget-object v2, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->hintHashtag:Ljava/lang/String;

    if-eqz v2, :cond_76

    goto :goto_3d

    :cond_76
    const/4 v10, 0x0

    goto :goto_3e

    :cond_77
    :goto_3d
    move v10, v14

    :goto_3e
    invoke-interface {v0, v10}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    return-void

    :cond_78
    const/4 v11, 0x2

    if-ne v0, v11, :cond_83

    .line 1544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1545
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1546
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1547
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1548
    :goto_3f
    iget-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->botInfo:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_7b

    .line 1549
    iget-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->botInfo:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v5}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    const/4 v7, 0x0

    .line 1550
    :goto_40
    iget-object v9, v6, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->commands:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_7a

    .line 1551
    iget-object v9, v6, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->commands:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_botCommand;

    if-eqz v9, :cond_79

    .line 1552
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->command:Ljava/lang/String;

    if-eqz v10, :cond_79

    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_79

    .line 1553
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->command:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1554
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->description:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1555
    iget-wide v9, v6, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->user_id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_79
    add-int/lit8 v7, v7, 0x1

    goto :goto_40

    :cond_7a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    .line 1559
    :cond_7b
    iget-object v5, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v5, :cond_80

    iget-wide v5, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v5

    if-nez v5, :cond_80

    iget-object v5, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v5

    if-nez v5, :cond_80

    iget-object v5, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-eqz v5, :cond_80

    iget-object v5, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v5, :cond_80

    iget-object v5, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-nez v5, :cond_80

    iget-object v5, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v5, v6}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v5

    if-nez v5, :cond_80

    .line 1560
    iget v5, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/ui/Business/QuickRepliesController;->getInstance(I)Lorg/telegram/ui/Business/QuickRepliesController;

    move-result-object v5

    .line 1561
    invoke-virtual {v5}, Lorg/telegram/ui/Business/QuickRepliesController;->load()V

    .line 1562
    iput-object v4, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->quickRepliesQuery:Ljava/lang/String;

    .line 1563
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->quickReplies:Ljava/util/ArrayList;

    const/4 v6, 0x0

    .line 1564
    :goto_41
    iget-object v7, v5, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7f

    .line 1565
    iget-object v7, v5, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    .line 1566
    invoke-virtual {v7}, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->isSpecial()Z

    move-result v8

    if-eqz v8, :cond_7c

    goto :goto_42

    .line 1567
    :cond_7c
    iget-object v8, v7, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 1568
    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7d

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 1569
    :cond_7d
    iget-object v8, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->quickReplies:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7e
    :goto_42
    add-int/lit8 v6, v6, 0x1

    goto :goto_41

    :cond_7f
    const/4 v6, 0x0

    goto :goto_43

    :cond_80
    const/4 v6, 0x0

    .line 1573
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->quickRepliesQuery:Ljava/lang/String;

    .line 1574
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->quickReplies:Ljava/util/ArrayList;

    .line 1576
    :goto_43
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    .line 1577
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 1578
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 1579
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    .line 1580
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    .line 1581
    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 1582
    iput-object v2, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 1583
    iput-object v3, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    const/4 v11, 0x0

    .line 1584
    iput-boolean v11, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextMedia:Z

    .line 1585
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    .line 1586
    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 1587
    iget-object v2, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->quickReplies:Ljava/util/ArrayList;

    if-eqz v0, :cond_81

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_81

    goto :goto_44

    :cond_81
    const/4 v10, 0x0

    goto :goto_45

    :cond_82
    :goto_44
    move v10, v14

    :goto_45
    invoke-interface {v2, v10}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    return-void

    :cond_83
    move/from16 v2, v19

    if-ne v0, v2, :cond_86

    .line 1589
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCurrentKeyboardLanguage()[Ljava/lang/String;

    move-result-object v0

    .line 1590
    iget-object v2, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_84

    .line 1591
    iget v2, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MediaDataController;->fetchNewEmojiKeywords([Ljava/lang/String;)V

    .line 1593
    :cond_84
    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    .line 1594
    iget v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;)V

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->suggestAnimatedEmoji:Z

    if-eqz v0, :cond_85

    iget v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    .line 1606
    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_85

    move v7, v14

    goto :goto_46

    :cond_85
    const/4 v7, 0x0

    :goto_46
    const/4 v5, 0x0

    .line 1594
    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/MediaDataController;->getEmojiSuggestions([Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MediaDataController$KeywordResultCallback;Z)V

    return-void

    :cond_86
    const/4 v9, 0x4

    if-ne v0, v9, :cond_87

    const/4 v6, 0x0

    .line 1608
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    .line 1609
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 1610
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    .line 1611
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    .line 1612
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 1613
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->quickReplies:Ljava/util/ArrayList;

    .line 1614
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 1615
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    :cond_87
    :goto_47
    return-void

    .line 966
    :goto_48
    invoke-direct {v1, v6, v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBot(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    iget-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    const/4 v14, 0x0

    invoke-interface {v0, v14}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 968
    iput-object v6, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    .line 969
    invoke-direct {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->clearStickers()V

    return-void
.end method

.method public setAllowBots(Z)V
    .locals 0

    .line 2068
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowBots:Z

    return-void
.end method

.method public setAllowChats(Z)V
    .locals 0

    .line 2072
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowChats:Z

    return-void
.end method

.method public setAllowStickers(Z)V
    .locals 0

    .line 2064
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowStickers:Z

    return-void
.end method

.method public setBotInfo(Landroidx/collection/LongSparseArray;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->botInfo:Landroidx/collection/LongSparseArray;

    return-void
.end method

.method public setBotsCount(I)V
    .locals 0

    .line 531
    iput p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->botsCount:I

    return-void
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 6

    .line 499
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    .line 500
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 501
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_0

    .line 502
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 504
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canSendStickers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 506
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 507
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 508
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 509
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->processFoundUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 513
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 514
    iget v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastPosition:I

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->messages:Ljava/util/ArrayList;

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastUsernameOnly:Z

    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastForSearch:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchUsernameOrHashtag(Ljava/lang/CharSequence;ILjava/util/ArrayList;ZZ)V

    :cond_1
    return-void
.end method

.method public setDialogId(J)V
    .locals 0

    .line 2051
    iput-wide p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    return-void
.end method

.method public setIsReversed(Z)V
    .locals 1

    .line 1621
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isReversed:Z

    if-eq v0, p1, :cond_1

    .line 1622
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isReversed:Z

    .line 1623
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getLastItemCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 v0, 0x0

    .line 1625
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    sub-int/2addr p1, v0

    .line 1628
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method public setNeedBotContext(Z)V
    .locals 0

    .line 523
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->needBotContext:Z

    return-void
.end method

.method public setNeedUsernames(Z)V
    .locals 0

    .line 519
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->needUsernames:Z

    return-void
.end method

.method public setParentFragment(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    return-void
.end method

.method public setSearchInDailogs(Z)V
    .locals 0

    .line 2060
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchInDailogs:Z

    return-void
.end method

.method public setSearchingMentions(Z)V
    .locals 0

    .line 811
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isSearchingMentions:Z

    return-void
.end method

.method public setUserOrChat(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 2055
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 2056
    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method
