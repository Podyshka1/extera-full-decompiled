.class Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Page"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;,
        Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;,
        Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$PadView;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;

.field private final atTop:Ljava/util/ArrayList;

.field private final button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private final button2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private final buttonContainer:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;

.field private final changelog:Landroidx/collection/LongSparseArray;

.field private containsHeader:Z

.field private final contentView:Landroid/widget/FrameLayout;

.field private headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

.field private isActionBar:Z

.field private final items:Ljava/util/ArrayList;

.field private keyboardHeight:I

.field private keyboardMoving:Z

.field private lastSelectedType:I

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final oldItems:Ljava/util/ArrayList;

.field public pageType:I

.field private progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private query:Ljava/lang/String;

.field private scrolling:Z

.field private searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

.field private searchFieldAnimator:Landroid/animation/ValueAnimator;

.field private searchPosition:I

.field private searchTranslationAnimating:Z

.field private searchTranslationAnimatingTo:F

.field private sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

.field private final selectedUsers:Ljava/util/ArrayList;

.field private final selectedUsersByGroup:Ljava/util/HashMap;

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

.field private final underKeyboardView:Landroid/view/View;

.field private waitingForChatId:J

.field public wasAtBottom:Z

.field public wasAtTop:Z

.field private wasKeyboardVisible:Z


# direct methods
.method public static synthetic $r8$lambda$0D_68wto3HB4nBmb6C01pDEfP70(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;[Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;Lorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$new$11([Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;Lorg/telegram/messenger/browser/Browser$Progress;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2rRpeoc6M7pbvWAHj82lI20kzKU(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$updateSearchFieldTop$22(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4z-bvEiq_JJuu8ZEgXWIY1kCQS4(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$updateSectionCell$23(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5_jaWJMJUCbbB02R-cgGF38FW5w(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$8G3MmHkSYXtg_Uab60nIbclyPcw(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;ZJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$new$4(ZJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$8MoLp7SCRY-4MxvaAfQYxi5eYjg(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->onButton2Click(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9mYLMDRWovk6QNXIAAtfI3AwUVs(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;JLorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$new$5(JLorg/telegram/tgnet/TLRPC$ChatFull;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FXJQpxpW8c7VpGquz2_r8-50Ydw(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->onButton1Click(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GcrkILYlbl2_1ga9MRy6l_G9n80(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$new$7(Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;)V

    return-void
.end method

.method public static synthetic $r8$lambda$If0CkHEhLwUImvQ23_aV9w5mf-c(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$onButton2Click$20(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P7W35jZjM1pdaK0_oFQElv3qR_8(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;JLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$new$8(JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SgDNV3b4aLdU-gIuQ7ouNaLMlww(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$onButton1Click$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$YwnHls6oCUexV3ERXbgFQxswr6s(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$new$9(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$aJol6h4XQf-FqDLveuN9QBAHqcY(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$updateItems$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$guI08yEAS7tIkmLlEGfG4SNJ41o(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$onButton1Click$17(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mvNiQ54FuQiSKIutj5YSUYO22eE(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$onButton1Click$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$oK6jh7TrvMjUaOX1REI7j4TK_QM(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStreamRtmpUrl;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$new$12(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStreamRtmpUrl;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pTi830J1JkMDiEr3vq2LCypwNZE(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStreamRtmpUrl;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$new$13(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStreamRtmpUrl;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pWPfqS99J0hoXgiuypQOGBnm9oY(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$onMeasure$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$phQmhSBT77uV4fy7L42kRUC1hW4(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;JLjava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$selectChat$15(JLjava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qdyAu4ldsrwjjfgtJt9aZzbjJrM(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Landroid/content/Context;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$new$14(Landroid/content/Context;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$rCDd0xLHbReyIld380sTBgxQSh0(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/MessagesStorage;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$new$6(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/MessagesStorage;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$rzKIEQSC4RvlU9PiSAWSQUOuFjA(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$sOHaZtq4shRTTR7Apit_8kcO8hw(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$new$10(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tZG4Utso5fuabxS65JdIY8k39LA(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;JLorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$new$3(JLorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wfsAlaJpDFjcDc-7oWbxfxovMZI(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$onButton1Click$16(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xxDM1Gxrt9LGATCLalG06fC6Aa4(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Lorg/telegram/tgnet/TLRPC$InputPeer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$new$2(Lorg/telegram/tgnet/TLRPC$InputPeer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbutton(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbuttonContainer(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->buttonContainer:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontentView(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->contentView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetitems(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetkeyboardHeight(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->keyboardHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchField(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsectionCell(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Lorg/telegram/ui/Cells/GraySectionCell;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputscrolling(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->scrolling:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearchTranslationAnimating(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchTranslationAnimating:Z

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Landroid/content/Context;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v2, p2

    .line 213
    iput-object v5, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    .line 214
    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 186
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    const/4 v6, -0x1

    .line 204
    iput v6, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchPosition:I

    .line 1062
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->atTop:Ljava/util/ArrayList;

    .line 1063
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->oldItems:Ljava/util/ArrayList;

    .line 1064
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    .line 1764
    iput v6, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lastSelectedType:I

    .line 216
    new-instance v0, Lorg/telegram/ui/Cells/GraySectionCell;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    .line 218
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$1;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V

    move-object v7, v5

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    .line 241
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v7, v8}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 242
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->setOnSearchTextChange(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 244
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    .line 245
    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->setOnCloseClickListener(Ljava/lang/Runnable;)V

    .line 253
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->contentView:Landroid/widget/FrameLayout;

    .line 254
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v0, v3

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v0, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    const/4 v11, 0x1

    .line 255
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/16 v0, 0x77

    .line 256
    invoke-static {v6, v6, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 259
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 260
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslateSelector(Z)V

    .line 261
    iget-object v12, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    new-instance v5, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda6;

    invoke-direct {v5, v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;Ljava/lang/Runnable;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 262
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;

    iget-object v3, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->-$$Nest$fputlistView(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 263
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 264
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$2;

    invoke-direct {v3, v1, v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$2;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 296
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 580
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v6, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$3;

    invoke-direct {v0, v1, v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$3;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V

    const-wide/16 v3, 0x15e

    .line 613
    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 614
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 615
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 616
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 617
    iget-object v3, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 619
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    const/4 v3, -0x2

    const/16 v4, 0x37

    invoke-static {v6, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v9, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    const/16 v5, 0x20

    invoke-static {v6, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v9, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    invoke-static {v6, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->buttonContainer:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;

    .line 624
    invoke-virtual {v0, v11}, Landroid/view/View;->setClickable(Z)V

    .line 625
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v4, 0x41200000    # 10.0f

    .line 626
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$1400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v9

    add-int/2addr v5, v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$1500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v5, v9, v11, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 627
    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$1600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-static {v8, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 629
    new-instance v4, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$1700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 630
    new-instance v5, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda8;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/16 v5, 0x30

    const/16 v9, 0x57

    .line 632
    invoke-static {v6, v5, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 634
    new-instance v4, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$1800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-direct {v4, v2, v10, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 635
    new-instance v5, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda9;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/16 v11, 0x30

    const/16 v12, 0x57

    const/4 v13, 0x0

    const/16 v14, 0x8

    .line 637
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->underKeyboardView:Landroid/view/View;

    .line 640
    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$1900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v15, 0x0

    const/high16 v16, -0x3c060000    # -500.0f

    const/high16 v11, 0x43fa0000    # 500.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 641
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    invoke-static {v6, v3, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getDialogId()J
    .locals 2

    .line 1619
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v1, :cond_0

    .line 1620
    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$InputPeer;)J

    move-result-wide v0

    return-wide v0

    .line 1622
    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    return-wide v0
.end method

.method private getSearchFieldTop()F
    .locals 5

    const/high16 v0, 0x43160000    # 150.0f

    .line 1547
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->resultContainerHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    .line 1548
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1549
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1550
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    .line 1551
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 221
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateTops()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 246
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->dismiss()V

    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$new$10(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;)V
    .locals 1

    .line 546
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    const/4 p1, 0x1

    .line 547
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    .line 548
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetonSelectedAlbums(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/messenger/Utilities$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 549
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetonSelectedAlbums(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/messenger/Utilities$Callback;

    move-result-object p1

    new-instance p2, Ljava/util/HashSet;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedAlbums(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$11([Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;Lorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 1

    .line 565
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputisRtmpStream(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Z)V

    const/4 p2, 0x0

    .line 566
    aget-object p1, p1, p2

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 567
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    return-void
.end method

.method private synthetic lambda$new$12(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStreamRtmpUrl;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 561
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 562
    instance-of p1, p2, Lorg/telegram/tgnet/tl/TL_phone$groupCallStreamRtmpUrl;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 563
    new-array p1, v0, [Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;

    .line 564
    new-instance v0, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$8100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v2

    move-object v4, p2

    check-cast v4, Lorg/telegram/tgnet/tl/TL_phone$groupCallStreamRtmpUrl;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetliveSettings(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    :goto_0
    move-object v5, p2

    goto :goto_1

    :cond_0
    new-instance p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda29;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;[Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;)V

    goto :goto_0

    :goto_1
    new-instance v6, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v6}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;-><init>(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_phone$getGroupCallStreamRtmpUrl;Lorg/telegram/tgnet/tl/TL_phone$groupCallStreamRtmpUrl;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p2, 0x0

    aput-object v0, p1, p2

    .line 569
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void

    :cond_1
    if-eqz p4, :cond_2

    .line 571
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object p2, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$8200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1, p4, v0}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$13(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStreamRtmpUrl;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 560
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda24;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStreamRtmpUrl;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$14(Landroid/content/Context;Landroid/view/View;IFF)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move/from16 v2, p3

    if-ltz v2, :cond_2b

    .line 297
    iget-object v3, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    goto/16 :goto_b

    .line 300
    :cond_0
    iget-object v3, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    .line 301
    iget v3, v2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ne v3, v5, :cond_1b

    .line 302
    iget-boolean v0, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->sendAs:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetcanChangePeer(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    new-instance v9, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v11

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v12

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    new-instance v14, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda15;

    invoke-direct {v14, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    .line 316
    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v15

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v15}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;-><init>(Landroid/content/Context;IZLorg/telegram/tgnet/TLRPC$InputPeer;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void

    .line 320
    :cond_1
    iget v0, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->type:I

    if-ne v0, v8, :cond_4

    .line 321
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    if-eq v0, v8, :cond_2

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$mgetCloseFriends(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 322
    :cond_2
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0, v8}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputactivePage(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V

    .line 323
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetviewPager(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    .line 325
    :cond_3
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0, v8}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V

    .line 326
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateCheckboxes(Z)V

    return-void

    :cond_4
    if-ne v0, v5, :cond_7

    .line 329
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    if-eq v0, v5, :cond_5

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedContacts(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedContactsByGroup(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 330
    :cond_5
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputactivePage(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V

    .line 331
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetviewPager(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    .line 333
    :cond_6
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V

    .line 334
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateCheckboxes(Z)V

    return-void

    :cond_7
    if-ne v0, v4, :cond_9

    .line 337
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 338
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0, v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputactivePage(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V

    .line 339
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetviewPager(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    .line 341
    :cond_8
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0, v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V

    .line 342
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateCheckboxes(Z)V

    return-void

    :cond_9
    if-ne v0, v7, :cond_b

    .line 345
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    if-ne v0, v7, :cond_a

    .line 346
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0, v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputactivePage(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V

    .line 347
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetviewPager(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    .line 349
    :cond_a
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0, v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V

    .line 350
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateCheckboxes(Z)V

    return-void

    :cond_b
    if-lez v0, :cond_c

    .line 354
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 355
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 356
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->type:I

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V

    .line 357
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->spansContainer:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->removeAllSpans(Z)V

    goto/16 :goto_5

    .line 358
    :cond_c
    iget-object v0, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    const-string v7, ""

    const/4 v9, 0x0

    if-eqz v0, :cond_12

    .line 359
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    .line 360
    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v4, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$mgetParticipantsCount(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v0

    const/16 v4, 0xc8

    if-le v0, v4, :cond_d

    .line 364
    :try_start_0
    invoke-static {v5}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->getType(I)I

    move-result v0

    invoke-virtual {v1, v0, v8}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    :catchall_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v2, Lorg/telegram/messenger/R$string;->GroupTooLarge:I

    .line 367
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->GroupTooLargeMessage:I

    .line 368
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->OK:I

    .line 369
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto/16 :goto_5

    .line 371
    :cond_d
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 372
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    .line 374
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_0
    if-ge v6, v4, :cond_e

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 375
    iget-object v5, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v9, v10, v7}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 378
    :cond_e
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSpans(Z)V

    goto/16 :goto_5

    .line 381
    :cond_f
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$7000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 382
    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$7100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 383
    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v10, :cond_10

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    if-eqz v10, :cond_10

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_10

    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget v11, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    sub-int/2addr v11, v8

    if-lt v10, v11, :cond_10

    .line 384
    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    invoke-direct {v1, v2, v3, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectChat(JLorg/telegram/tgnet/TLRPC$ChatParticipants;)V

    goto :goto_1

    .line 386
    :cond_10
    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v4, :cond_11

    .line 387
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 388
    iput-object v9, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 390
    :cond_11
    iput-wide v2, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->waitingForChatId:J

    .line 391
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v11}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$7200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    invoke-direct {v4, v10, v5, v11}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const-wide/16 v10, 0x32

    .line 392
    invoke-virtual {v4, v10, v11}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 393
    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$7300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    .line 394
    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v10

    move-wide/from16 v16, v2

    move-object v3, v4

    move-wide/from16 v4, v16

    move-object v2, v0

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda16;

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/MessagesStorage;J)V

    invoke-virtual {v10, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 436
    :goto_1
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->query:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 437
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iput-object v9, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->query:Ljava/lang/String;

    .line 439
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    goto/16 :goto_5

    .line 442
    :cond_12
    iget-object v0, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_1a

    .line 443
    iget v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    if-nez v0, :cond_13

    .line 444
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0, v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V

    .line 446
    :cond_13
    iget-object v0, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    .line 447
    new-instance v0, Ljava/util/HashSet;

    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 448
    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 449
    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 450
    :cond_14
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 451
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 452
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 453
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 454
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 457
    :cond_15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 458
    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v2, v3, v5}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_4

    .line 460
    :cond_16
    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 461
    :cond_17
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 462
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 463
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 464
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 465
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 468
    :cond_18
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->query:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 470
    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iput-object v9, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->query:Ljava/lang/String;

    .line 472
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    .line 474
    :cond_19
    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v2, v3, v5}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 476
    :goto_4
    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 477
    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 478
    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSpans(Z)V

    .line 480
    :cond_1a
    :goto_5
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateCheckboxes(Z)V

    .line 481
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    .line 482
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->scrollToBottom()V

    return-void

    :cond_1b
    const/4 v9, 0x7

    if-ne v3, v9, :cond_26

    .line 484
    instance-of v3, v0, Lorg/telegram/ui/Cells/TextCell;

    if-nez v3, :cond_1c

    goto/16 :goto_b

    .line 487
    :cond_1c
    check-cast v0, Lorg/telegram/ui/Cells/TextCell;

    .line 488
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCell;->isChecked()Z

    move-result v3

    xor-int/2addr v3, v8

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    .line 489
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCell;->isChecked()Z

    move-result v3

    iput-boolean v3, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->checked:Z

    .line 490
    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->resId:I

    const/16 v3, 0x1388

    if-nez v2, :cond_21

    .line 491
    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCell;->isChecked()Z

    move-result v0

    invoke-static {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputallowScreenshots(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Z)V

    .line 492
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    if-ne v0, v7, :cond_1d

    move v6, v8

    .line 493
    :cond_1d
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetallowScreenshots(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 494
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$7400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$raw;->ic_save_to_gallery:I

    if-eqz v6, :cond_1e

    .line 495
    sget v4, Lorg/telegram/messenger/R$string;->StoryEnabledScreenshotsShare:I

    goto :goto_6

    :cond_1e
    sget v4, Lorg/telegram/messenger/R$string;->StoryEnabledScreenshots:I

    :goto_6
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v7}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 496
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 497
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 499
    :cond_1f
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$7500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$raw;->passcode_lock_close:I

    if-eqz v6, :cond_20

    .line 500
    sget v4, Lorg/telegram/messenger/R$string;->StoryDisabledScreenshotsShare:I

    goto :goto_7

    :cond_20
    sget v4, Lorg/telegram/messenger/R$string;->StoryDisabledScreenshots:I

    :goto_7
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v7}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 501
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 502
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void

    :cond_21
    if-ne v2, v8, :cond_25

    .line 505
    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCell;->isChecked()Z

    move-result v0

    invoke-static {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputkeepOnMyPage(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Z)V

    .line 506
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    .line 507
    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetkeepOnMyPage(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 508
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$7600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/R$raw;->msg_story_keep:I

    if-eqz v2, :cond_22

    .line 509
    sget v2, Lorg/telegram/messenger/R$string;->StoryChannelEnableKeep:I

    goto :goto_8

    :cond_22
    sget v2, Lorg/telegram/messenger/R$string;->StoryEnableKeep:I

    :goto_8
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2, v7}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 510
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 511
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    goto :goto_a

    .line 513
    :cond_23
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$7700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/R$raw;->fire_on:I

    if-eqz v2, :cond_24

    .line 514
    sget v2, Lorg/telegram/messenger/R$string;->StoryChannelDisableKeep:I

    goto :goto_9

    :cond_24
    sget v2, Lorg/telegram/messenger/R$string;->StoryDisableKeep:I

    :goto_9
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2, v7}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 515
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 516
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    .line 519
    :goto_a
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    return-void

    :cond_25
    if-ne v2, v4, :cond_2b

    .line 522
    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCell;->isChecked()Z

    move-result v0

    invoke-static {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputallowComments(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Z)V

    .line 523
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    return-void

    :cond_26
    const/16 v4, 0x9

    if-ne v3, v4, :cond_2b

    .line 526
    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->id:I

    if-nez v2, :cond_27

    .line 527
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetwhenCoverClicked(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 528
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetwhenCoverClicked(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_27
    if-ne v2, v8, :cond_28

    .line 531
    invoke-direct {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->getDialogId()J

    move-result-wide v2

    .line 532
    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$7800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-static {v1, v4, v0}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v5

    .line 533
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_addfolder:I

    sget v4, Lorg/telegram/messenger/R$string;->StoriesAlbumNewAlbum:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda17;

    invoke-direct {v6, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;J)V

    invoke-virtual {v5, v0, v4, v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 544
    invoke-virtual {v5}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 545
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->getStoryAlbumsList(J)Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;

    move-result-object v6

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedAlbums(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashSet;

    move-result-object v7

    new-instance v10, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda18;

    invoke-direct {v10, v1, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Lorg/telegram/ui/Components/ItemOptions;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v10}, Lorg/telegram/ui/Components/ItemOptions;->addAlbumsItemOptions(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;Ljava/util/HashSet;ZLjava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;)V

    .line 552
    invoke-virtual {v5}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void

    :cond_28
    const/4 v0, 0x5

    if-ne v2, v0, :cond_2a

    .line 554
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$7900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v0, v2, v5, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const-wide/16 v2, 0x1f4

    .line 555
    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 557
    new-instance v2, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStreamRtmpUrl;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStreamRtmpUrl;-><init>()V

    .line 558
    iput-boolean v8, v2, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStreamRtmpUrl;->live_story:Z

    .line 559
    iget-object v3, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-nez v3, :cond_29

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;-><init>()V

    :cond_29
    iput-object v3, v2, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStreamRtmpUrl;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 560
    iget-object v3, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$8000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda19;

    invoke-direct {v4, v1, v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStreamRtmpUrl;)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    :cond_2a
    const/4 v0, 0x6

    if-ne v2, v0, :cond_2b

    .line 575
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0, v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputisRtmpStream(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Z)V

    .line 576
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    :cond_2b
    :goto_b
    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/tgnet/TLRPC$InputPeer;)V
    .locals 2

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iput-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 305
    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedAlbums(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 306
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisRtmpStream(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 307
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputisRtmpStream(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Z)V

    .line 309
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetonSelectedPeer(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/messenger/Utilities$Callback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 310
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetonSelectedPeer(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/messenger/Utilities$Callback;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 312
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetonSelectedAlbums(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/messenger/Utilities$Callback;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 313
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetonSelectedAlbums(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/messenger/Utilities$Callback;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedAlbums(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x1

    .line 315
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    return-void
.end method

.method private synthetic lambda$new$3(JLorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;)V
    .locals 8

    .line 401
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x15e

    .line 402
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissUnless(J)V

    const/4 v0, 0x0

    .line 403
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_0
    if-eqz p3, :cond_5

    .line 405
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 408
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;-><init>()V

    const/4 v1, 0x0

    .line 409
    :goto_0
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 410
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 411
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    .line 413
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v4, :cond_2

    .line 414
    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_3

    goto :goto_1

    .line 420
    :cond_2
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:J

    .line 422
    :cond_3
    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    .line 423
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 425
    :cond_4
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectChat(JLorg/telegram/tgnet/TLRPC$ChatParticipants;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private synthetic lambda$new$4(ZJ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 400
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$8400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;J)V

    const/16 p2, 0xc8

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/messenger/MessagesController;->loadChannelParticipants(Ljava/lang/Long;Lorg/telegram/messenger/Utilities$Callback;I)V

    return-void

    .line 428
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$8500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, p2, p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    return-void
.end method

.method private synthetic lambda$new$5(JLorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0

    .line 432
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectChat(JLorg/telegram/tgnet/TLRPC$ChatParticipants;)V

    return-void
.end method

.method private synthetic lambda$new$6(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/MessagesStorage;J)V
    .locals 7

    .line 395
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x1

    move-object v0, p2

    move-wide v1, p3

    .line 396
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage;->loadChatInfoInQueue(JZZZI)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 397
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget p3, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    add-int/lit8 p3, p3, -0x1

    if-ge p2, p3, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    new-instance p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda23;

    invoke-direct {p2, p0, v1, v2, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;JLorg/telegram/tgnet/TLRPC$ChatFull;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 398
    :cond_1
    :goto_0
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda22;

    invoke-direct {p1, p0, v3, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;ZJ)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$7(Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;)V
    .locals 2

    .line 536
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedAlbums(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashSet;

    move-result-object v0

    iget p1, p1, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;->album_id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 537
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    .line 538
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetonSelectedAlbums(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/messenger/Utilities$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 539
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetonSelectedAlbums(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/messenger/Utilities$Callback;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedAlbums(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$8(JLjava/lang/String;)V
    .locals 2

    .line 535
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/telegram/ui/Stories/StoriesController;->createAlbum(JLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$new$9(J)V
    .locals 4

    .line 534
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->attachedFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$8300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda25;

    invoke-direct {v3, p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;J)V

    invoke-static {v0, v2, v1, v3}, Lorg/telegram/ui/Components/AlertsCreator;->createStoriesAlbumEnterNameForCreate(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MessagesStorage$StringCallback;)V

    return-void
.end method

.method private synthetic lambda$onButton1Click$16(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;)V
    .locals 6

    .line 862
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    if-eqz p1, :cond_3

    .line 864
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$mgetContacts(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object p1

    move v0, v1

    .line 865
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 866
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v2, :cond_0

    goto :goto_2

    .line 870
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 871
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$User;->close_friend:Z

    if-eq v3, v4, :cond_2

    .line 872
    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$User;->close_friend:Z

    if-eqz v3, :cond_1

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    or-int/lit8 v3, v3, 0x4

    goto :goto_1

    :cond_1
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit8 v3, v3, -0x5

    :goto_1
    iput v3, v2, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    .line 873
    invoke-virtual {p2, v2, v1}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 877
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->closeKeyboard()V

    .line 878
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisEdit(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 879
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    new-instance p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p2, v2, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(IILjava/util/ArrayList;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V

    invoke-static {p1, p2, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$mdone(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;)V

    return-void

    .line 881
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->closeKeyboard()V

    .line 882
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetviewPager(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    return-void
.end method

.method private synthetic lambda$onButton1Click$17(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 861
    new-instance p3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda26;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onButton1Click$18()V
    .locals 1

    .line 932
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    .line 933
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6501(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V

    return-void
.end method

.method private synthetic lambda$onButton1Click$19()V
    .locals 2

    .line 948
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 949
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->closeKeyboard()V

    .line 950
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetviewPager(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    return-void
.end method

.method private synthetic lambda$onButton2Click$20(Ljava/util/ArrayList;)V
    .locals 4

    .line 966
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    const/4 v2, 0x5

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v3

    invoke-direct {v1, v2, v3, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(IILjava/util/ArrayList;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda11;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$mdone(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onMeasure$24()V
    .locals 1

    const/4 v0, 0x0

    .line 1919
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->keyboardMoving:Z

    return-void
.end method

.method private synthetic lambda$selectChat$15(JLjava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 3

    .line 771
    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p5, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    add-int/lit8 p2, p2, 0x1

    check-cast p5, Ljava/lang/Long;

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 773
    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p5, v0, v1, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 775
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSpans(Z)V

    .line 776
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    .line 777
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateCheckboxes(Z)V

    .line 778
    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 779
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->scrollToBottom()V

    return-void
.end method

.method private synthetic lambda$updateItems$21()V
    .locals 2

    .line 1178
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputactivePage(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V

    .line 1179
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetviewPager(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    return-void
.end method

.method private synthetic lambda$updateSearchFieldTop$22(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1579
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$updateSectionCell$23(Landroid/view/View;)V
    .locals 8

    .line 1740
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1741
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v3, v4, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 1743
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1744
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1745
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v4, v5, v7}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 1748
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1749
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 1750
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetmessageUsers(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1751
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->spansContainer:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->removeAllSpans(Z)V

    .line 1752
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateCheckboxes(Z)V

    .line 1753
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    return-void
.end method

.method private match(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Z
    .locals 5

    .line 1480
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1483
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v2, 0x0

    const-string v3, " "

    if-eqz v0, :cond_6

    .line 1484
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    .line 1485
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1486
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 1489
    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1490
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 1493
    :cond_2
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    if-eqz p1, :cond_c

    move v0, v2

    .line 1495
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_c

    .line 1496
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_username;

    .line 1497
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-nez v4, :cond_3

    goto :goto_1

    .line 1500
    :cond_3
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 1501
    invoke-virtual {v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v1

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return v1

    .line 1506
    :cond_6
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_c

    .line 1507
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1508
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1509
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    .line 1512
    :cond_7
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1513
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    .line 1516
    :cond_8
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    if-eqz p1, :cond_c

    move v0, v2

    .line 1518
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_c

    .line 1519
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_username;

    .line 1520
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-nez v4, :cond_9

    goto :goto_4

    .line 1523
    :cond_9
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 1524
    invoke-virtual {v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    return v1

    :cond_a
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    :goto_5
    return v1

    :cond_c
    return v2
.end method

.method private onButton1Click(Landroid/view/View;)V
    .locals 4

    .line 848
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 851
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$2600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    .line 852
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 853
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetonDone2(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/messenger/Utilities$Callback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 854
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetonDone2(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/messenger/Utilities$Callback;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 856
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->dismiss()V

    return-void

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 858
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_editCloseFriends;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_editCloseFriends;-><init>()V

    .line 859
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_editCloseFriends;->id:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 860
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 861
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$2700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    :cond_3
    const/4 p1, 0x2

    const/4 v2, 0x3

    if-nez v0, :cond_8

    .line 886
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetapplyWhenDismiss(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 888
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 889
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedContacts(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedContactsByGroup(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$mmergeUsers(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object p1

    .line 890
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$2800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(IILjava/util/ArrayList;)V

    .line 891
    iget-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 892
    iget-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedContacts(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 893
    iget-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 894
    iget-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedContactsByGroup(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 895
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    if-ne v0, p1, :cond_5

    .line 896
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$2900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetexcludedContacts(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(IILjava/util/ArrayList;)V

    goto :goto_0

    .line 897
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 898
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetexcludedEveryone(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetexcludedEveryoneByGroup(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$mmergeUsers(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object p1

    .line 899
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(IILjava/util/ArrayList;)V

    .line 900
    iget-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 901
    iget-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetexcludedEveryone(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 902
    iget-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 903
    iget-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetexcludedEveryoneByGroup(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 905
    :cond_6
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(IILjava/util/ArrayList;)V

    .line 907
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$mdone(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;)V

    return-void

    .line 909
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->dismiss()V

    return-void

    :cond_8
    const/4 v3, 0x0

    if-ne v0, p1, :cond_a

    .line 912
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisEdit(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 913
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->closeKeyboard()V

    .line 914
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-direct {v1, p1, v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(IILjava/util/ArrayList;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda11;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$mdone(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;)V

    return-void

    .line 916
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->closeKeyboard()V

    .line 917
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetviewPager(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    return-void

    :cond_a
    if-ne v0, v2, :cond_e

    .line 920
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisEdit(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 921
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$mmergeUsers(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object p1

    .line 922
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1

    .line 925
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->closeKeyboard()V

    .line 926
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v2, v1, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(IILjava/util/ArrayList;)V

    .line 927
    iget-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 928
    iget-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 929
    iget-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 930
    iget-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 931
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$mdone(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;)V

    return-void

    .line 936
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$mmergeUsers(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object p1

    .line 937
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    :goto_1
    return-void

    .line 940
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V

    .line 941
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->closeKeyboard()V

    .line 942
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetviewPager(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    return-void

    :cond_e
    const/4 p1, 0x6

    if-ne v0, p1, :cond_f

    .line 945
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-static {p1, v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$mmergeUsers(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object p1

    .line 946
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 947
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Stories/StoriesController;->updateBlockedUsers(Ljava/util/HashSet;Ljava/lang/Runnable;)V

    return-void

    .line 953
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V

    .line 954
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->closeKeyboard()V

    .line 955
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetviewPager(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    return-void
.end method

.method private onButton2Click(Landroid/view/View;)V
    .locals 4

    .line 960
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetstartedFromSendAsMessage(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result p1

    const/4 v0, 0x5

    if-eqz p1, :cond_0

    .line 961
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputactivePage(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V

    .line 962
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetviewPager(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    return-void

    .line 964
    :cond_0
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;-><init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet-IA;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    .line 965
    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$mwhenSelectedShare(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    .line 968
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetstoryPeriod(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputstoryPeriod(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V

    .line 969
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method private selectChat(JLorg/telegram/tgnet/TLRPC$ChatParticipants;)V
    .locals 14

    move-object/from16 v0, p3

    .line 744
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 745
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 746
    iget v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    if-eqz v0, :cond_4

    .line 747
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    move v6, v4

    .line 748
    :goto_2
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 749
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    .line 750
    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$2100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v9

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 751
    invoke-static {v9}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v10, :cond_3

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/32 v12, 0xbdb28

    cmp-long v10, v10, v12

    if-eqz v10, :cond_3

    const-wide/16 v10, 0x0

    cmp-long v10, v7, v10

    if-eqz v10, :cond_3

    if-eqz v3, :cond_2

    .line 752
    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-nez v9, :cond_2

    .line 753
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 755
    :cond_2
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    :goto_3
    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 761
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 762
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    const-string v4, "Cancel"

    if-eqz v0, :cond_5

    .line 763
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const-string v1, "All group members are not in your contact list."

    .line 764
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 765
    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 766
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 768
    :cond_5
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$2300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 769
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " members are not in your contact list"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " contacts"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda2;

    move-wide v6, p1

    invoke-direct {v5, p0, v6, v7, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;JLjava/util/ArrayList;)V

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 781
    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 782
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    :cond_6
    move-wide v6, p1

    .line 785
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4
    if-ge v4, v0, :cond_7

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 787
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v2, v3, v7}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_4

    .line 789
    :cond_7
    invoke-direct {p0, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSpans(Z)V

    .line 790
    invoke-virtual {p0, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    .line 791
    invoke-virtual {p0, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateCheckboxes(Z)V

    .line 792
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->scrollToBottom()V

    return-void
.end method

.method private updateHeaderTop()V
    .locals 7

    .line 1595
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->containsHeader:Z

    if-nez v0, :cond_0

    .line 1596
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1599
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1602
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    move v2, v1

    .line 1603
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 1604
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1605
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_1

    .line 1606
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v1, v4

    .line 1611
    :goto_1
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->isActionBar:Z

    if-eq v2, v1, :cond_5

    .line 1612
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->isActionBar:Z

    .line 1613
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    if-nez v1, :cond_4

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v2, v1, v4}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 1615
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v2, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private updateSearchFieldTop()V
    .locals 5

    .line 1563
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->getSearchFieldTop()F

    move-result v0

    .line 1564
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->scrolling:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->keyboardMoving:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1571
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchTranslationAnimating:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchTranslationAnimatingTo:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 1572
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchTranslationAnimating:Z

    .line 1573
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchFieldAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_3

    .line 1574
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1575
    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchFieldAnimator:Landroid/animation/ValueAnimator;

    .line 1577
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchTranslationAnimatingTo:F

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v3, v4, v2

    aput v0, v4, v1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchFieldAnimator:Landroid/animation/ValueAnimator;

    .line 1578
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1581
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchFieldAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$4;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1587
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchFieldAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1588
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchFieldAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1589
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchFieldAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 1565
    :cond_4
    :goto_1
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchTranslationAnimating:Z

    .line 1566
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchFieldAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_5

    .line 1567
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1568
    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchFieldAnimator:Landroid/animation/ValueAnimator;

    .line 1570
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private updateSectionCell(Z)V
    .locals 3

    .line 1735
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    if-nez v0, :cond_0

    return-void

    .line 1738
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$mmergeUsers(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1739
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    sget v0, Lorg/telegram/messenger/R$string;->UsersDeselectAll:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/CharSequence;ZLandroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1757
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/CharSequence;)V

    return-void

    .line 1759
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateSpans(Z)V
    .locals 12

    .line 797
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$mmergeUsers(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v0

    .line 798
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 799
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputselectedContactsCount(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 801
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputexcludedEveryoneCount(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V

    .line 804
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$2400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 805
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 806
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 809
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 810
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 811
    invoke-virtual {v6}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 812
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 816
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move v8, v4

    .line 818
    :goto_3
    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget-object v9, v9, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 819
    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget-object v9, v9, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 820
    invoke-virtual {v9}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-nez v9, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_6

    .line 829
    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    :goto_4
    move-object v8, v5

    goto :goto_5

    .line 831
    :cond_6
    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    goto :goto_4

    :goto_5
    if-nez v8, :cond_7

    goto :goto_2

    .line 836
    :cond_7
    new-instance v6, Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/Components/GroupCreateSpan;-><init>(Landroid/content/Context;Ljava/lang/Object;Lorg/telegram/messenger/ContactsController$Contact;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 837
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 838
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 842
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    return-void

    .line 843
    :cond_a
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->spansContainer:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;

    invoke-virtual {v0, v2, v3, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->updateSpans(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method


# virtual methods
.method public applyBlocklist(Z)V
    .locals 5

    .line 1034
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 1038
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1039
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController;->blocklist:Ljava/util/HashSet;

    .line 1040
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    .line 1041
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1042
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v0}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .line 1043
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1045
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1046
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1049
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 1054
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    .line 1055
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    .line 1056
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateCheckboxes(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public atBottom()Z
    .locals 2

    .line 1893
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public atTop()Z
    .locals 2

    .line 1889
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bind(I)V
    .locals 6

    .line 997
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    .line 998
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 999
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1000
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 1002
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetexcludedEveryone(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1003
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetexcludedEveryoneByGroup(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 1005
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetmessageUsers(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1007
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$mgetCloseFriends(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    move v2, v1

    .line 1008
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1009
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1012
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetexcludedContacts(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 1014
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedContacts(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1015
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedContactsByGroup(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 1017
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->applyBlocklist(Z)V

    .line 1019
    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;

    iput-boolean v1, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->reversedLayout:Z

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 1020
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSpans(Z)V

    .line 1021
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->setText(Ljava/lang/CharSequence;)V

    .line 1022
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    if-nez p1, :cond_6

    const/16 p1, 0x8

    goto :goto_2

    :cond_6
    move p1, v1

    :goto_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1023
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->scrollToBottom()V

    const/4 p1, 0x0

    .line 1024
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->query:Ljava/lang/String;

    .line 1025
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    .line 1026
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    .line 1027
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateCheckboxes(Z)V

    .line 1028
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->scrollToTop()V

    .line 1029
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    const/4 p1, -0x1

    .line 1030
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lastSelectedType:I

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 4

    .line 731
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 732
    aget-object p1, p3, p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_1

    .line 733
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p2, :cond_1

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->waitingForChatId:J

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x15e

    .line 736
    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissUnless(J)V

    const/4 p2, 0x0

    .line 737
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const-wide/16 p2, -0x1

    .line 738
    iput-wide p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->waitingForChatId:J

    .line 739
    iget-wide p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    invoke-direct {p0, p2, p3, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectChat(JLorg/telegram/tgnet/TLRPC$ChatParticipants;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getTypeOn(Landroid/view/MotionEvent;)I
    .locals 5

    .line 1866
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    const/4 v1, -0x1

    if-nez v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    .line 1869
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 1873
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 1874
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    goto :goto_1

    .line 1877
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    .line 1878
    iget v2, v0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->sendAs:Z

    if-eqz v2, :cond_3

    goto :goto_1

    .line 1881
    :cond_3
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_5

    goto :goto_0

    :cond_4
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_5

    .line 1882
    :goto_0
    iget p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->type:I

    return p1

    :cond_5
    :goto_1
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1968
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1969
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1936
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1939
    :cond_0
    check-cast p1, Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 1940
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->isDeleting()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1941
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->-$$Nest$fputcurrentDeletingSpan(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 1942
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->spansContainer:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 1943
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide v0

    .line 1944
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1945
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1946
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1947
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1948
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 1949
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1950
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1953
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 1954
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateCheckboxes(Z)V

    .line 1955
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    return-void

    .line 1957
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->-$$Nest$fgetcurrentDeletingSpan(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Lorg/telegram/ui/Components/GroupCreateSpan;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1958
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->-$$Nest$fgetcurrentDeletingSpan(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Lorg/telegram/ui/Components/GroupCreateSpan;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/GroupCreateSpan;->cancelDeleteAnimation()V

    .line 1959
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->-$$Nest$fputcurrentDeletingSpan(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 1961
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->-$$Nest$fputcurrentDeletingSpan(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 1962
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->startDeleteAnimation()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1974
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1975
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1929
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1901
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5201(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1902
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5301(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->keyboardHeight:I

    .line 1904
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1905
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->contentView:Landroid/widget/FrameLayout;

    sget p2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_0
    add-int/2addr p2, v0

    invoke-virtual {p1, v1, p2, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 1906
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->wasKeyboardVisible:Z

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result p2

    if-eq p1, p2, :cond_8

    .line 1907
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->getSearchFieldTop()F

    move-result p1

    .line 1908
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/high16 p2, 0x43160000    # 150.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->resultContainerHeight:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    .line 1909
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->scrollToTopSmoothly()V

    .line 1911
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    const/4 p2, 0x0

    if-nez p1, :cond_5

    .line 1912
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->buttonContainer:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->keyboardHeight:I

    int-to-float v0, v0

    goto :goto_1

    :cond_3
    move v0, p2

    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->setTranslationY(F)V

    .line 1913
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->underKeyboardView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->keyboardHeight:I

    int-to-float p2, p2

    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_6

    .line 1915
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->buttonContainer:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->keyboardHeight:I

    :goto_2
    int-to-float v0, v0

    goto :goto_3

    :cond_6
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->keyboardHeight:I

    neg-int v0, v0

    goto :goto_2

    :goto_3
    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->translateY(FF)V

    .line 1916
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->underKeyboardView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->keyboardHeight:I

    :goto_4
    int-to-float v0, v0

    goto :goto_5

    :cond_7
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->keyboardHeight:I

    neg-int v0, v0

    goto :goto_4

    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    const/4 p1, 0x1

    .line 1917
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->keyboardMoving:Z

    .line 1918
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->underKeyboardView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0xfa

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1920
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1922
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->wasKeyboardVisible:Z

    .line 1924
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->buttonContainer:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p1, v1, v1, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1534
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1537
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->query:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1538
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .line 1859
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    if-eqz v0, :cond_0

    .line 1860
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public scrollToTopSmoothly()V
    .locals 4

    .line 1852
    new-instance v0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    const v3, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;-><init>(Landroid/content/Context;IF)V

    const/4 v1, 0x1

    .line 1853
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    const/high16 v1, 0x42600000    # 56.0f

    .line 1854
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->setOffset(I)V

    .line 1855
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public top()F
    .locals 5

    .line 974
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    :goto_1
    const/4 v1, 0x0

    .line 975
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 976
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 977
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 978
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v3, v4

    .line 979
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpg-float v4, v3, v0

    if-gez v4, :cond_5

    .line 981
    invoke-static {v0, v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    goto :goto_4

    .line 983
    :cond_2
    iget v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    if-nez v3, :cond_3

    .line 984
    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$PadView;

    if-nez v3, :cond_5

    .line 985
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v3, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_4

    .line 987
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x21

    if-ne v3, v4, :cond_4

    .line 988
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v1

    :goto_3
    add-float/2addr v0, v1

    return v0

    .line 989
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_5

    .line 990
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v1

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_6
    return v0
.end method

.method public updateButton(Z)V
    .locals 6

    .line 1626
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_5

    .line 1627
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    .line 1628
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    .line 1629
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v3, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    .line 1630
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetliveSettings(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1631
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v2, Lorg/telegram/messenger/R$string;->StoryPrivacyButtonSave:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    .line 1632
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisEdit(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1633
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v2, Lorg/telegram/messenger/R$string;->StoryPrivacyButtonSave:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    .line 1635
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetstoriesCount(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1636
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lorg/telegram/messenger/R$string;->StoryLivePrivacyButtonPost:I

    goto :goto_0

    :cond_2
    sget v2, Lorg/telegram/messenger/R$string;->StoryPrivacyButtonPost:I

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    .line 1638
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetstoriesCount(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v2

    const-string v4, "StoryPrivacyButtonPostMultiple"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1662
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetsendAsMessageEnabled(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v3

    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_5
    if-ne v0, v2, :cond_6

    .line 1665
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    .line 1666
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    .line 1667
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v2, Lorg/telegram/messenger/R$string;->StoryPrivacyButtonSaveCloseFriends:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1668
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    .line 1669
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_6
    const/4 v4, 0x3

    if-ne v0, v4, :cond_9

    .line 1671
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-static {v0, v4, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$mmergeUsers(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputselectedContactsCount(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V

    .line 1673
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v5, Lorg/telegram/messenger/R$string;->StoryPrivacyButtonSave:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1674
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    .line 1675
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->buttonContainer:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;

    if-gtz v4, :cond_7

    move v5, v2

    goto :goto_2

    :cond_7
    move v5, v3

    :goto_2
    invoke-virtual {v0, v5, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->hide(ZZ)V

    .line 1676
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v4, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    .line 1677
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-lez v4, :cond_8

    goto :goto_3

    :cond_8
    move v2, v3

    :goto_3
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    .line 1678
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_9
    const/4 v4, 0x2

    if-ne v0, v4, :cond_b

    .line 1680
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    .line 1681
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    .line 1682
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1683
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v2, Lorg/telegram/messenger/R$string;->StoryPrivacyButtonSave:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1684
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v3, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    goto :goto_4

    .line 1686
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v2, Lorg/telegram/messenger/R$string;->StoryPrivacyButtonExcludeContacts:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1687
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    .line 1689
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_b
    const/4 v4, 0x5

    if-ne v0, v4, :cond_c

    .line 1691
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    .line 1692
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    .line 1694
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    .line 1695
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_c
    const/4 v4, 0x6

    if-ne v0, v4, :cond_f

    .line 1697
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    .line 1698
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    .line 1699
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v2, Lorg/telegram/messenger/R$string;->StoryPrivacyButtonSaveCloseFriends:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1700
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    .line 1701
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/StoriesController;->blocklistFull:Z

    if-eqz v2, :cond_d

    .line 1702
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    goto :goto_6

    .line 1704
    :cond_d
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getBlocklistCount()I

    .line 1705
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result p1

    if-ge v3, p1, :cond_e

    .line 1706
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, v3}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 1707
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, v3}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1708
    iget-object p1, v0, Lorg/telegram/ui/Stories/StoriesController;->blocklist:Ljava/util/HashSet;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1721
    :cond_e
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_f
    const/4 v4, 0x4

    if-ne v0, v4, :cond_10

    .line 1723
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetexcludedEveryone(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetexcludedEveryoneByGroup(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$mmergeUsers(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputexcludedEveryoneCount(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V

    .line 1725
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v5, Lorg/telegram/messenger/R$string;->StoryPrivacyButtonSave:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1726
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    .line 1727
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->buttonContainer:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;

    invoke-virtual {v0, v3, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->hide(ZZ)V

    .line 1728
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v4, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    .line 1729
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    .line 1730
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method public updateCheckboxes(Z)V
    .locals 9

    .line 1767
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-ne v0, v1, :cond_0

    .line 1768
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetexcludedEveryone(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1769
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetexcludedEveryoneByGroup(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1770
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetexcludedEveryone(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1771
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetexcludedEveryoneByGroup(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1773
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetexcludedContacts(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1774
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetexcludedContacts(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    .line 1776
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedContacts(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1777
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedContactsByGroup(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1778
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedContacts(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1779
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedContactsByGroup(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 1781
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetmessageUsers(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1782
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetmessageUsers(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1785
    :cond_3
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1786
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 1789
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lastSelectedType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 1790
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V

    goto :goto_2

    .line 1787
    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lastSelectedType:I

    .line 1788
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V

    .line 1794
    :cond_7
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$mmergeUsers(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 1796
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_d

    .line 1797
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    if-eqz v3, :cond_c

    .line 1799
    iget v5, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->type:I

    if-lez v5, :cond_9

    .line 1800
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v5

    iget v6, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->type:I

    if-ne v5, v6, :cond_8

    goto :goto_4

    :cond_8
    move v4, v1

    :goto_4
    iput-boolean v4, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->checked:Z

    .line 1801
    iput-boolean v1, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->halfChecked:Z

    goto :goto_6

    .line 1802
    :cond_9
    iget-object v5, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_b

    .line 1803
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->checked:Z

    if-nez v5, :cond_a

    .line 1804
    iget-object v5, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_5

    :cond_a
    move v4, v1

    :goto_5
    iput-boolean v4, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->halfChecked:Z

    goto :goto_6

    .line 1805
    :cond_b
    iget-object v4, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_c

    .line 1806
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->checked:Z

    .line 1807
    iput-boolean v1, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->halfChecked:Z

    :cond_c
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    move v0, v1

    .line 1812
    :goto_7
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_14

    .line 1813
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1814
    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;

    if-eqz v3, :cond_13

    .line 1815
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_13

    .line 1816
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_13

    .line 1819
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    .line 1820
    check-cast v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;

    .line 1821
    iget-boolean v5, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->checked:Z

    if-nez v5, :cond_f

    iget-boolean v5, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->halfChecked:Z

    if-eqz v5, :cond_e

    goto :goto_8

    :cond_e
    move v5, v1

    goto :goto_9

    :cond_f
    :goto_8
    move v5, v4

    :goto_9
    invoke-virtual {v2, v5, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setChecked(ZZ)V

    .line 1822
    iget-object v5, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_11

    .line 1823
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$mgetParticipantsCount(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v3

    const/16 v5, 0xc8

    if-le v3, v5, :cond_10

    const v6, 0x3e99999a    # 0.3f

    :cond_10
    invoke-virtual {v2, v6, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setCheckboxAlpha(FZ)V

    goto :goto_a

    .line 1825
    :cond_11
    iget-boolean v5, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->halfChecked:Z

    if-eqz v5, :cond_12

    iget-boolean v3, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->checked:Z

    if-nez v3, :cond_12

    const/high16 v6, 0x3f000000    # 0.5f

    :cond_12
    invoke-virtual {v2, v6, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setCheckboxAlpha(FZ)V

    :cond_13
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1830
    :cond_14
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSectionCell(Z)V

    return-void
.end method

.method public updateItems(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1067
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(ZZ)V

    return-void
.end method

.method public updateItems(ZZ)V
    .locals 25

    move-object/from16 v0, p0

    .line 1070
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1071
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->oldItems:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1073
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1076
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v1, :cond_3f

    .line 1078
    iput-boolean v10, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->containsHeader:Z

    .line 1079
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1080
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController;->sendAs:Ljava/util/ArrayList;

    const/16 v13, 0x18

    .line 1082
    invoke-static {v13}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asPad(I)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v13

    .line 1083
    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1084
    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetliveSettings(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v14

    const/high16 v16, 0x43160000    # 150.0f

    const v5, 0x7fffffff

    const/high16 v17, 0x42900000    # 72.0f

    const/16 v18, 0x0

    const/high16 v19, 0x42480000    # 50.0f

    if-eqz v14, :cond_0

    .line 1085
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    sget v14, Lorg/telegram/messenger/R$string;->LiveStorySettingsHeader:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asHeader3(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    iget v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v1, v14

    iput v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    move/from16 v21, v12

    const/high16 v20, 0x42600000    # 56.0f

    const/high16 v22, 0x41400000    # 12.0f

    goto/16 :goto_5

    .line 1087
    :cond_0
    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetcanChangePeer(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v14

    if-eqz v14, :cond_1

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisEdit(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v14

    if-nez v14, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v9, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v21, v12

    const/high16 v20, 0x42600000    # 56.0f

    const/high16 v22, 0x41400000    # 12.0f

    goto/16 :goto_6

    .line 1088
    :cond_2
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    .line 1089
    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisEdit(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1090
    sget v14, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertEditTitle:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_1
    const/high16 v20, 0x42600000    # 56.0f

    goto :goto_3

    .line 1091
    :cond_3
    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v14

    if-eqz v14, :cond_4

    sget v14, Lorg/telegram/messenger/R$string;->StoryLivePrivacyAlertTitle:I

    goto :goto_2

    :cond_4
    sget v14, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertTitle:I

    :goto_2
    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 1092
    :goto_3
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1093
    sget v8, Lorg/telegram/messenger/R$string;->StoryLivePrivacyAlertSubtitleProfile:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v21, v12

    const/high16 v22, 0x41400000    # 12.0f

    goto :goto_4

    .line 1094
    :cond_5
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetstoryPeriod(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v8

    if-eq v8, v5, :cond_6

    .line 1095
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetstoryPeriod(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v8

    div-int/lit16 v8, v8, 0xe10

    move/from16 v21, v12

    new-array v12, v10, [Ljava/lang/Object;

    const/high16 v22, 0x41400000    # 12.0f

    const-string v15, "StoryPrivacyAlertSubtitle"

    invoke-static {v15, v8, v12}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_6
    move/from16 v21, v12

    const/high16 v22, 0x41400000    # 12.0f

    .line 1096
    sget v8, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertSubtitleProfile:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1088
    :goto_4
    invoke-static {v14, v8}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asHeader2(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    iget v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v1, v8

    iput v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    :goto_5
    move v8, v9

    move v1, v10

    goto/16 :goto_d

    .line 1100
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v8

    if-eqz v8, :cond_7

    sget v8, Lorg/telegram/messenger/R$string;->StoryLivePrivacyPublishAs:I

    goto :goto_7

    :cond_7
    sget v8, Lorg/telegram/messenger/R$string;->StoryPrivacyPublishAs:I

    :goto_7
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asHeaderCell(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    iget v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v1, v8

    iput v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    .line 1102
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v8, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/high16 v12, 0x42780000    # 62.0f

    if-eqz v8, :cond_b

    instance-of v14, v8, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    if-eqz v14, :cond_8

    goto/16 :goto_8

    .line 1106
    :cond_8
    instance-of v14, v8, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    if-eqz v14, :cond_9

    .line 1107
    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v8, v8, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v14, v8, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 1108
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {v1, v10, v10}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asUser(Lorg/telegram/tgnet/TLRPC$User;ZZ)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSendAs()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    iget v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v1, v8

    iput v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    goto/16 :goto_9

    .line 1110
    :cond_9
    instance-of v12, v8, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v12, :cond_a

    .line 1111
    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v8, v8, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/high16 v12, 0x42d00000    # 104.0f

    iget-wide v14, v8, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 1112
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {v1, v10}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSendAs()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    .line 1115
    iget v8, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v8, v12

    iput v8, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    move v8, v10

    goto :goto_a

    :cond_a
    const/high16 v12, 0x42d00000    # 104.0f

    .line 1116
    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    if-eqz v8, :cond_c

    .line 1117
    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v8, v8, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v14, v8, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 1118
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {v1, v10}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSendAs()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    iget v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v1, v8

    iput v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    move v1, v10

    move v8, v1

    goto :goto_a

    .line 1103
    :cond_b
    :goto_8
    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 1104
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {v1, v10, v10}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asUser(Lorg/telegram/tgnet/TLRPC$User;ZZ)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSendAs()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    iget v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v1, v8

    iput v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    :cond_c
    :goto_9
    move v8, v9

    move v1, v10

    .line 1122
    :goto_a
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    if-eqz v8, :cond_d

    move v14, v9

    goto :goto_b

    :cond_d
    move v14, v7

    .line 1123
    :goto_b
    iput v14, v12, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->resId:I

    .line 1124
    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1125
    iget v12, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v12, v14

    iput v12, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    if-eqz v8, :cond_f

    .line 1127
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v14

    if-eqz v14, :cond_e

    sget v14, Lorg/telegram/messenger/R$string;->StoryLivePrivacyWhoCanView:I

    goto :goto_c

    :cond_e
    sget v14, Lorg/telegram/messenger/R$string;->StoryPrivacyWhoCanView:I

    :goto_c
    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asHeaderCell(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    iget v12, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    const/high16 v14, 0x42200000    # 40.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v12, v14

    iput v12, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    :cond_f
    :goto_d
    if-eqz v8, :cond_1f

    .line 1131
    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetliveSettings(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v14

    if-nez v14, :cond_1f

    .line 1132
    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    iget-object v15, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v15}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v15

    if-ne v15, v6, :cond_10

    move v15, v9

    :goto_e
    const/high16 v23, 0x42a00000    # 80.0f

    goto :goto_f

    :cond_10
    move v15, v10

    goto :goto_e

    :goto_f
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v12}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetexcludedEveryoneCount(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v12

    invoke-static {v6, v15, v12}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asType(IZI)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1133
    iget v14, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    .line 1134
    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetexcludedEveryoneCount(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v14

    if-ne v14, v9, :cond_13

    .line 1135
    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetexcludedEveryone(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ne v14, v9, :cond_11

    .line 1136
    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v14

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    iget-object v15, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v15}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetexcludedEveryone(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v14

    iput-object v14, v12, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_11

    .line 1138
    :cond_11
    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetexcludedEveryoneByGroup(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_10
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 1139
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v6, v9, :cond_12

    .line 1140
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v6, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    iput-object v6, v12, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_11

    :cond_12
    const/4 v6, 0x4

    goto :goto_10

    .line 1146
    :cond_13
    :goto_11
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v12}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v12

    if-ne v12, v7, :cond_14

    move v12, v9

    goto :goto_12

    :cond_14
    move v12, v10

    :goto_12
    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetexcludedContacts(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-static {v7, v12, v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asType(IZI)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    iget v6, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v6, v14

    iput v6, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    .line 1148
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetexcludedContacts(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v9, :cond_15

    .line 1149
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetexcludedContacts(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v6, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    iput-object v6, v12, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 1151
    :cond_15
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$mgetCloseFriends(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1152
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v14

    if-ne v14, v9, :cond_16

    move v14, v9

    goto :goto_13

    :cond_16
    move v14, v10

    :goto_13
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-static {v9, v14, v15}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asType(IZI)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    iget v12, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    add-int/2addr v12, v15

    iput v12, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    .line 1154
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v12, v9, :cond_17

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v12, :cond_17

    .line 1155
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$User;

    iput-object v6, v14, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 1157
    :cond_17
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v12}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v12

    if-ne v12, v4, :cond_18

    move v12, v9

    goto :goto_14

    :cond_18
    move v12, v10

    :goto_14
    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedContactsCount(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v14

    invoke-static {v4, v12, v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asType(IZI)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1158
    iget v6, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v6, v14

    iput v6, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    .line 1159
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedContactsCount(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v6

    if-ne v6, v9, :cond_1b

    .line 1160
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedContacts(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v9, :cond_19

    .line 1161
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedContacts(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v6, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    iput-object v6, v12, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_15

    .line 1163
    :cond_19
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedContactsByGroup(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 1164
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v15, v9, :cond_1a

    .line 1165
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v6, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    iput-object v6, v12, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 1171
    :cond_1b
    :goto_15
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/StoriesController;->getBlocklistCount()I

    move-result v6

    .line 1172
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    if-gtz v6, :cond_1d

    .line 1174
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v6

    if-eqz v6, :cond_1c

    sget v6, Lorg/telegram/messenger/R$string;->StoryLiveBlockListEmpty:I

    goto :goto_16

    :cond_1c
    sget v6, Lorg/telegram/messenger/R$string;->StoryBlockListEmpty:I

    :goto_16
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_18

    .line 1175
    :cond_1d
    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v14

    if-eqz v14, :cond_1e

    const-string v14, "StoryLiveBlockList"

    goto :goto_17

    :cond_1e
    const-string v14, "StoryBlockList"

    :goto_17
    new-array v15, v10, [Ljava/lang/Object;

    invoke-static {v14, v6, v15}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_18
    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v15, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda1;

    invoke-direct {v15, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    .line 1181
    invoke-static {v11}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    .line 1172
    invoke-static {v6, v14, v10, v15, v11}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1183
    iget v6, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v6, v11

    iput v6, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    goto :goto_19

    :cond_1f
    const/high16 v23, 0x42a00000    # 80.0f

    .line 1186
    :goto_19
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisEdit(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v6

    const-string v11, ""

    if-nez v6, :cond_26

    .line 1187
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v6

    if-eqz v6, :cond_21

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetliveSettings(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 1188
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisRtmpStream(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 1189
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    sget v12, Lorg/telegram/messenger/R$string;->LiveStoryRTMPSettings:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12, v11}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    iget v6, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v6, v12

    iput v6, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    .line 1191
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    sget v12, Lorg/telegram/messenger/R$string;->LiveStoryRTMPDisable:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12, v11}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    iget v6, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v6, v12

    iput v6, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    .line 1193
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    iget v6, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v6, v12

    iput v6, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    goto :goto_1a

    .line 1196
    :cond_20
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    sget v12, Lorg/telegram/messenger/R$string;->LiveStoryRTMPEnable:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12, v11}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1197
    iget v6, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v6, v12

    iput v6, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    .line 1198
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    sget v12, Lorg/telegram/messenger/R$string;->LiveStoryRTMPEnableInfo:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    iget v6, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    const/high16 v12, 0x41f00000    # 30.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v6, v12

    iput v6, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    .line 1202
    :cond_21
    :goto_1a
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 1203
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    sget v12, Lorg/telegram/messenger/R$string;->StoryLiveAllowComments:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetallowComments(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v14

    invoke-static {v12, v7, v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asCheck(Ljava/lang/CharSequence;IZ)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    iget v6, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v6, v12

    iput v6, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    .line 1206
    :cond_22
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetliveSettings(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v6

    if-nez v6, :cond_23

    .line 1207
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    sget v12, Lorg/telegram/messenger/R$string;->StoryAllowScreenshots:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetallowScreenshots(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v14

    invoke-static {v12, v10, v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asCheck(Ljava/lang/CharSequence;IZ)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1208
    iget v6, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v6, v12

    iput v6, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    .line 1210
    :cond_23
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v6

    if-nez v6, :cond_26

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetliveSettings(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 1211
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    if-eqz v8, :cond_24

    sget v12, Lorg/telegram/messenger/R$string;->StoryKeep:I

    goto :goto_1b

    :cond_24
    if-eqz v1, :cond_25

    sget v12, Lorg/telegram/messenger/R$string;->StoryKeepChannel:I

    goto :goto_1b

    :cond_25
    sget v12, Lorg/telegram/messenger/R$string;->StoryKeepGroup:I

    :goto_1b
    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetkeepOnMyPage(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v14

    invoke-static {v12, v9, v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asCheck(Ljava/lang/CharSequence;IZ)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1212
    iget v6, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v6, v12

    iput v6, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    .line 1216
    :cond_26
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v6

    if-nez v6, :cond_2d

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetliveSettings(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v6

    if-nez v6, :cond_2d

    .line 1217
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisEdit(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v6

    if-nez v6, :cond_2e

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetallowCover(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v6

    if-eqz v6, :cond_2e

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetwhenCoverClicked(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/lang/Runnable;

    move-result-object v6

    if-eqz v6, :cond_2e

    .line 1219
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v6

    if-eqz v6, :cond_29

    if-eqz v8, :cond_27

    .line 1220
    sget v6, Lorg/telegram/messenger/R$string;->StoryLiveKeepInfo:I

    goto :goto_1c

    :cond_27
    if-eqz v1, :cond_28

    sget v6, Lorg/telegram/messenger/R$string;->StoryLiveKeepChannelInfo:I

    goto :goto_1c

    :cond_28
    sget v6, Lorg/telegram/messenger/R$string;->StoryLiveKeepGroupInfo:I

    :goto_1c
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1f

    :cond_29
    if-eqz v8, :cond_2a

    .line 1222
    const-string v6, "StoryKeepInfo"

    goto :goto_1d

    :cond_2a
    if-eqz v1, :cond_2b

    const-string v6, "StoryKeepChannelInfo"

    goto :goto_1d

    :cond_2b
    const-string v6, "StoryKeepGroupInfo"

    :goto_1d
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v12}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetstoryPeriod(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v12

    if-ne v12, v5, :cond_2c

    const v12, 0x15180

    goto :goto_1e

    :cond_2c
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v12}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetstoryPeriod(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v12

    :goto_1e
    div-int/lit16 v12, v12, 0xe10

    new-array v14, v10, [Ljava/lang/Object;

    invoke-static {v6, v12, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1224
    :goto_1f
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    iget v6, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v6, v12

    iput v6, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    goto :goto_20

    .line 1228
    :cond_2d
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    iget v6, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v6, v12

    iput v6, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    .line 1231
    :cond_2e
    :goto_20
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetkeepOnMyPage(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v6

    if-eqz v6, :cond_34

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v6

    if-nez v6, :cond_34

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetliveSettings(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v6

    if-nez v6, :cond_34

    .line 1232
    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->getDialogId()J

    move-result-wide v14

    .line 1233
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Lorg/telegram/ui/Stories/StoriesController;->getStoryAlbumsList(J)Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;

    .line 1235
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1236
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v12}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedAlbums(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashSet;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashSet;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2f

    .line 1237
    sget v12, Lorg/telegram/messenger/R$string;->StoriesAlbumNameAllStories:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 1238
    :cond_2f
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v12}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedAlbums(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashSet;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v12

    if-ge v12, v4, :cond_32

    .line 1239
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v12}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedAlbums(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashSet;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_21
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_33

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1240
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v4

    .line 1241
    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/Stories/StoriesController;->getStoryAlbumsList(J)Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->findById(I)Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;

    move-result-object v2

    if-nez v2, :cond_30

    :goto_22
    const/4 v2, 0x6

    const/4 v4, 0x3

    goto :goto_21

    .line 1245
    :cond_30
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_31

    .line 1246
    const-string v4, ", "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    :cond_31
    iget-object v2, v2, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;->title:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 1251
    :cond_32
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedAlbums(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v4, v10, [Ljava/lang/Object;

    const-string v12, "StoriesAlbumCount"

    invoke-static {v12, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    :cond_33
    :goto_23
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/messenger/R$string;->StoriesAlbum:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4, v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    iget v2, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    .line 1257
    :cond_34
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisEdit(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v2

    if-nez v2, :cond_3c

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetallowCover(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetwhenCoverClicked(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/lang/Runnable;

    move-result-object v2

    if-nez v2, :cond_3c

    :cond_35
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v2

    if-nez v2, :cond_3c

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetliveSettings(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 1259
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v2

    if-eqz v2, :cond_38

    if-eqz v8, :cond_36

    .line 1260
    sget v1, Lorg/telegram/messenger/R$string;->StoryLiveKeepInfo:I

    goto :goto_24

    :cond_36
    if-eqz v1, :cond_37

    sget v1, Lorg/telegram/messenger/R$string;->StoryLiveKeepChannelInfo:I

    goto :goto_24

    :cond_37
    sget v1, Lorg/telegram/messenger/R$string;->StoryLiveKeepGroupInfo:I

    :goto_24
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_27

    :cond_38
    if-eqz v8, :cond_39

    .line 1262
    const-string v1, "StoryKeepInfo"

    goto :goto_25

    :cond_39
    if-eqz v1, :cond_3a

    const-string v1, "StoryKeepChannelInfo"

    goto :goto_25

    :cond_3a
    const-string v1, "StoryKeepGroupInfo"

    :goto_25
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetstoryPeriod(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v2

    if-ne v2, v5, :cond_3b

    const v2, 0x15180

    goto :goto_26

    :cond_3b
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetstoryPeriod(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v2

    :goto_26
    div-int/lit16 v2, v2, 0xe10

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1264
    :goto_27
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1265
    iget v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    .line 1268
    :cond_3c
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetkeepOnMyPage(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetallowCover(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetwhenCoverClicked(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 1269
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->StoryEditCover:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetcoverDrawable(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v10, v2, v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asButton(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1270
    iget v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    .line 1271
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->StoryEditCoverInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    iget v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    .line 1275
    :cond_3d
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetliveSettings(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1276
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->LiveStoryRTMPSettings:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v11}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1277
    iget v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    .line 1278
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1279
    iget v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    const/high16 v2, 0x42500000    # 52.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    .line 1282
    :cond_3e
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v1

    if-eqz v1, :cond_45

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetallowComments(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1283
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->LiveStoryPricePerComment:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asHeaderCell(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1284
    iget v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    .line 1285
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSlider(I)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1286
    iget v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    const/high16 v2, 0x42960000    # 75.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    .line 1287
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->LiveStoryPricePerCommentInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1288
    iget v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v13, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    goto/16 :goto_29

    :cond_3f
    const/high16 v16, 0x43160000    # 150.0f

    const/high16 v20, 0x42600000    # 56.0f

    const/high16 v2, 0x42000000    # 32.0f

    if-ne v1, v9, :cond_40

    .line 1291
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    sget v4, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertCloseFriendsTitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1292
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->setCloseImageVisible(Z)V

    .line 1293
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v10}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 1294
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asPad()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1295
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asHeader()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1296
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v4

    .line 1297
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchPosition:I

    .line 1298
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSearchField()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1299
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    .line 1300
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSection()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1301
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1302
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    sget v4, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertCloseFriendsSubtitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    .line 1303
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSectionCell(Z)V

    .line 1304
    iput-boolean v9, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->containsHeader:Z

    :goto_28
    move v4, v1

    goto/16 :goto_2a

    :cond_40
    if-ne v1, v7, :cond_41

    .line 1306
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    sget v4, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertExcludedContactsTitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1307
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->setCloseImageVisible(Z)V

    .line 1308
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v10}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 1309
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asPad()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1310
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asHeader()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v4

    .line 1312
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchPosition:I

    .line 1313
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSearchField()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1314
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    .line 1315
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSection()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1316
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1317
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    sget v4, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertExcludedContactsSubtitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    .line 1318
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSectionCell(Z)V

    .line 1319
    iput-boolean v9, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->containsHeader:Z

    goto :goto_28

    :cond_41
    const/4 v4, 0x3

    if-ne v1, v4, :cond_42

    .line 1321
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    sget v4, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertSelectContactsTitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1322
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->setCloseImageVisible(Z)V

    .line 1323
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v10}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 1324
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asPad()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1325
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asHeader()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1326
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v4

    .line 1327
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchPosition:I

    .line 1328
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSearchField()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1329
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    .line 1330
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSection()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1331
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1332
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    sget v4, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertSelectContactsSubtitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    .line 1333
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSectionCell(Z)V

    .line 1334
    iput-boolean v9, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->containsHeader:Z

    goto/16 :goto_28

    :cond_42
    if-ne v1, v3, :cond_43

    .line 1336
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    sget v4, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertAsMessageTitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1337
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetstartedFromSendAsMessage(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->setCloseImageVisible(Z)V

    .line 1338
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v10}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 1339
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asPad()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asHeader()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1341
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v4

    .line 1342
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchPosition:I

    .line 1343
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSearchField()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1344
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    .line 1345
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSection()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1347
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    sget v4, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertAsMessageSubtitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    .line 1348
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSectionCell(Z)V

    .line 1349
    iput-boolean v9, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->containsHeader:Z

    goto/16 :goto_28

    :cond_43
    const/4 v4, 0x6

    if-ne v1, v4, :cond_44

    .line 1351
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    sget v4, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertBlocklistTitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1352
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->setCloseImageVisible(Z)V

    .line 1353
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v10}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 1354
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asPad()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1355
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asHeader()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1356
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v4

    .line 1357
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchPosition:I

    .line 1358
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSearchField()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1359
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    .line 1360
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSection()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1361
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1362
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    sget v4, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertBlocklistSubtitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    .line 1363
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSectionCell(Z)V

    .line 1364
    iput-boolean v9, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->containsHeader:Z

    goto/16 :goto_28

    :cond_44
    const/4 v4, 0x4

    if-ne v1, v4, :cond_45

    .line 1366
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    sget v4, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertExcludeFromEveryoneTitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1367
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->setCloseImageVisible(Z)V

    .line 1368
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v10}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 1369
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asPad()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1370
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asHeader()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1371
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v4

    .line 1372
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchPosition:I

    .line 1373
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSearchField()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    .line 1375
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSection()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1376
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v4, v1, v2

    .line 1377
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    sget v2, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertExcludeFromEveryoneSubtitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    .line 1378
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSectionCell(Z)V

    .line 1379
    iput-boolean v9, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->containsHeader:Z

    goto :goto_2a

    :cond_45
    :goto_29
    const/4 v4, 0x0

    .line 1382
    :goto_2a
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->query:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1383
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    if-eqz v2, :cond_65

    .line 1385
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->query:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1387
    iget v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    if-ne v5, v3, :cond_46

    .line 1388
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$mgetChats(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_2e

    .line 1390
    :cond_46
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    if-eq v5, v9, :cond_48

    if-ne v5, v7, :cond_47

    goto :goto_2b

    :cond_47
    move v5, v10

    goto :goto_2c

    :cond_48
    :goto_2b
    move v5, v9

    :goto_2c
    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetallowSmallChats(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v6

    if-eqz v6, :cond_4a

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    const/4 v8, 0x3

    if-eq v6, v8, :cond_49

    const/4 v8, 0x6

    if-ne v6, v8, :cond_4a

    :cond_49
    move v6, v9

    goto :goto_2d

    :cond_4a
    move v6, v10

    :goto_2d
    invoke-static {v3, v5, v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$mgetUsers(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;ZZ)Ljava/util/ArrayList;

    move-result-object v3

    .line 1392
    :goto_2e
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-static {v5, v6, v8}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$mmergeUsers(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v5

    if-eqz v1, :cond_56

    if-nez p1, :cond_4e

    .line 1395
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->atTop:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v10

    .line 1396
    :goto_2f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_4e

    .line 1397
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLObject;

    .line 1399
    instance-of v11, v8, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v11, :cond_4b

    .line 1400
    move-object v11, v8

    check-cast v11, Lorg/telegram/tgnet/TLRPC$User;

    .line 1401
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-wide v13, v11, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_30

    .line 1402
    :cond_4b
    instance-of v11, v8, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v11, :cond_4c

    .line 1403
    move-object v11, v8

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1404
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    iget-wide v13, v11, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_30

    :cond_4c
    move v11, v10

    :goto_30
    if-eqz v11, :cond_4d

    .line 1407
    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->atTop:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4d
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    :cond_4e
    move v6, v10

    move v8, v6

    .line 1411
    :goto_31
    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->atTop:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_57

    .line 1412
    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->atTop:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLObject;

    .line 1413
    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v12, :cond_52

    .line 1414
    check-cast v11, Lorg/telegram/tgnet/TLRPC$User;

    .line 1415
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-wide v13, v11, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4f

    .line 1416
    iget-wide v13, v11, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4f

    move v13, v9

    goto :goto_32

    :cond_4f
    move v13, v10

    .line 1417
    :goto_32
    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {v11, v12, v13}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asUser(Lorg/telegram/tgnet/TLRPC$User;ZZ)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v11

    iget v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    if-eq v12, v7, :cond_51

    const/4 v13, 0x4

    if-ne v12, v13, :cond_50

    goto :goto_33

    :cond_50
    move v12, v10

    goto :goto_34

    :cond_51
    :goto_33
    move v12, v9

    :goto_34
    invoke-virtual {v11, v12}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->red(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1418
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    :goto_35
    int-to-float v11, v11

    add-float/2addr v4, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_38

    .line 1420
    :cond_52
    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v12, :cond_55

    .line 1421
    check-cast v11, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1422
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    iget-wide v14, v11, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    invoke-static {v11, v13}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v11

    iget v13, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    if-eq v13, v7, :cond_54

    const/4 v14, 0x4

    if-ne v13, v14, :cond_53

    goto :goto_36

    :cond_53
    move v13, v10

    goto :goto_37

    :cond_54
    :goto_36
    move v13, v9

    :goto_37
    invoke-virtual {v11, v13}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->red(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1423
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    goto :goto_35

    :cond_55
    :goto_38
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_31

    :cond_56
    move v8, v10

    :cond_57
    move v6, v10

    .line 1428
    :goto_39
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_61

    .line 1429
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLObject;

    if-eqz v1, :cond_58

    .line 1430
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->atTop:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5d

    :cond_58
    invoke-direct {v0, v11, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->match(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_59

    goto :goto_3d

    .line 1433
    :cond_59
    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v12, :cond_5e

    .line 1434
    check-cast v11, Lorg/telegram/tgnet/TLRPC$User;

    .line 1435
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-wide v13, v11, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5a

    .line 1436
    iget-wide v13, v11, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5a

    move v13, v9

    goto :goto_3a

    :cond_5a
    move v13, v10

    .line 1437
    :goto_3a
    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {v11, v12, v13}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asUser(Lorg/telegram/tgnet/TLRPC$User;ZZ)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v11

    iget v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    if-eq v12, v7, :cond_5c

    const/4 v13, 0x4

    if-ne v12, v13, :cond_5b

    goto :goto_3b

    :cond_5b
    move v12, v10

    goto :goto_3c

    :cond_5c
    :goto_3b
    move v12, v9

    :goto_3c
    invoke-virtual {v11, v12}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->red(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1438
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v4, v11

    add-int/lit8 v8, v8, 0x1

    :cond_5d
    :goto_3d
    const/4 v14, 0x4

    goto :goto_40

    .line 1440
    :cond_5e
    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v12, :cond_5d

    .line 1441
    check-cast v11, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1442
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    iget-wide v14, v11, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    invoke-static {v11, v13}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v11

    iget v13, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    const/4 v14, 0x4

    if-eq v13, v7, :cond_60

    if-ne v13, v14, :cond_5f

    goto :goto_3e

    :cond_5f
    move v13, v10

    goto :goto_3f

    :cond_60
    :goto_3e
    move v13, v9

    :goto_3f
    invoke-virtual {v11, v13}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->red(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1443
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v4, v11

    add-int/lit8 v8, v8, 0x1

    :goto_40
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_39

    :cond_61
    if-nez v1, :cond_65

    if-nez v8, :cond_62

    .line 1449
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asNoUsers()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1450
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v4, v1

    .line 1453
    :cond_62
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_64

    .line 1454
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v2

    if-eqz v2, :cond_63

    iget v10, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->keyboardHeight:I

    :cond_63
    add-int/2addr v1, v10

    :goto_41
    int-to-float v1, v1

    goto :goto_42

    .line 1456
    :cond_64
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    sub-int/2addr v1, v2

    const/high16 v2, 0x42280000    # 42.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_41

    :goto_42
    sub-float/2addr v1, v4

    const/16 v24, 0x0

    cmpl-float v2, v1, v24

    if-lez v2, :cond_65

    .line 1459
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    float-to-int v1, v1

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asPadding(I)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1464
    :cond_65
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 1465
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_66
    if-eqz p2, :cond_68

    .line 1468
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;

    if-eqz v1, :cond_68

    if-eqz p1, :cond_67

    .line 1469
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v1

    if-eqz v1, :cond_67

    .line 1470
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->oldItems:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_43

    .line 1472
    :cond_67
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1476
    :cond_68
    :goto_43
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateTops()V
    .locals 0

    .line 1542
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSearchFieldTop()V

    .line 1543
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateHeaderTop()V

    return-void
.end method
