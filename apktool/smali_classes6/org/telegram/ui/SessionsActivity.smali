.class public Lorg/telegram/ui/SessionsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;,
        Lorg/telegram/ui/SessionsActivity$ListAdapter;,
        Lorg/telegram/ui/SessionsActivity$Delegate;
    }
.end annotation


# instance fields
.field private final VIEW_TYPE_HEADER:I

.field private final VIEW_TYPE_INFO:I

.field private final VIEW_TYPE_SCANQR:I

.field private final VIEW_TYPE_SESSION:I

.field private final VIEW_TYPE_SETTINGS:I

.field private final VIEW_TYPE_TEXT:I

.field private currentSession:Lorg/telegram/tgnet/TLRPC$TL_authorization;

.field private currentSessionRow:I

.field private currentSessionSectionRow:I

.field private currentType:I

.field private delegate:Lorg/telegram/ui/SessionsActivity$Delegate;

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private fragmentOpened:Z

.field private globalFlickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private highlightLinkDesktopDevice:Z

.field private listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loading:Z

.field private noOtherSessionsRow:I

.field private otherSessionsEndRow:I

.field private otherSessionsSectionRow:I

.field private otherSessionsStartRow:I

.field private otherSessionsTerminateDetail:I

.field private passwordSessions:Ljava/util/ArrayList;

.field private passwordSessionsDetailRow:I

.field private passwordSessionsEndRow:I

.field private passwordSessionsSectionRow:I

.field private passwordSessionsStartRow:I

.field private qrCodeDividerRow:I

.field private qrCodeRow:I

.field private repeatLoad:I

.field private rowCount:I

.field private sessions:Ljava/util/ArrayList;

.field private terminateAllSessionsDetailRow:I

.field private terminateAllSessionsRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private ttlDays:I

.field private ttlDivideRow:I

.field private ttlHeaderRow:I

.field private ttlRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private undoView:Lorg/telegram/ui/Components/UndoView;


# direct methods
.method public static synthetic $r8$lambda$0JR0mTSkgev4yPd3HeTvzfpYTAM(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SessionsActivity;->lambda$createView$10(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5oAMEY2cDqM7msvq-Nwq8FxB2aM(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SessionsActivity;->lambda$createView$2(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$90pTCq2z5mzzsAMa4yKKxo-jVJk(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$9Z9xyPPpLY29RzW8elz5G93g5f0(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_authorization;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/SessionsActivity;->lambda$createView$9(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_authorization;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bnyfa8dYbctZKAl2r0NDWVSCktc(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SessionsActivity;->lambda$createView$6(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CW-JNlrfW5Q85mZGWOHZFnIjnsw(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SessionsActivity;->lambda$createView$1(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H44GSlxlrgziKGpOf8TzqLtujOg(Lorg/telegram/ui/SessionsActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SessionsActivity;->lambda$loadSessions$17(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$JKDtFluckZdwcT3V3aOrI4LTmdc(Lorg/telegram/ui/SessionsActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SessionsActivity;->lambda$loadSessions$14(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$TJ6AvKwdGKJi31MU5sAM4Zod4gA(Lorg/telegram/ui/SessionsActivity;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SessionsActivity;->lambda$loadSessions$16(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TgIGkMi0XG_46mwR4is-m_iruKI(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SessionsActivity;->lambda$loadSessions$18(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$UCrIoRT6PH4ziP8uSMgWhGE67Kk(Lorg/telegram/ui/SessionsActivity;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SessionsActivity;->lambda$createView$13(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vd-MJ-l_ZpK4Rc3HkbIoujiCSZ0(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SessionsActivity;->lambda$onRequestPermissionsResultFragment$20(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$X6LvHgPHI0vb8JZNkJ4cyiwyfkE([ZLandroid/view/View;)V
    .locals 3

    .line 406
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 409
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    const/4 v0, 0x0

    .line 410
    aget-boolean v1, p0, v0

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    aput-boolean v1, p0, v0

    .line 411
    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y63mYXVh-paoJjmlVhoFw7Oa_zk(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/SessionsActivity;->lambda$createView$11(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YZ5EzawCL0JPul8AOXPbIptgk2k(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SessionsActivity;->lambda$loadSessions$15(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$frJR_UB-vqcp__3sRUh59TO4oa4(Lorg/telegram/ui/SessionsActivity;I[ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/SessionsActivity;->lambda$createView$12(I[ZLorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gR9Z7AoQxtxA1jraW4bDGfSw6WE(Lorg/telegram/ui/SessionsActivity;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SessionsActivity;->lambda$loadSessions$19(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jQQ16s7q7Gwdpx-wrWjruoy-iYA(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SessionsActivity;->lambda$createView$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oN5FtCW3FoVVyvscKuY-u3Y-L_E(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SessionsActivity;->lambda$createView$4(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vYNl71uDOUJxAW91_pP5oqyaf84(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SessionsActivity;->lambda$createView$8(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wjJEykX5XohLTGG7JU8pjtrYfYI(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SessionsActivity;->lambda$createView$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcurrentSession(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/tgnet/TLRPC$TL_authorization;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SessionsActivity;->currentSession:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentSessionRow(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentSessionSectionRow(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentType(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetglobalFlickerLoadingView(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/Components/FlickerLoadingView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SessionsActivity;->globalFlickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistAdapter(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/SessionsActivity$ListAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnoOtherSessionsRow(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->noOtherSessionsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetotherSessionsEndRow(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsEndRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetotherSessionsSectionRow(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetotherSessionsStartRow(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetotherSessionsTerminateDetail(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsTerminateDetail:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpasswordSessions(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpasswordSessionsDetailRow(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsDetailRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpasswordSessionsEndRow(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsEndRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpasswordSessionsSectionRow(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpasswordSessionsStartRow(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsStartRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetqrCodeDividerRow(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->qrCodeDividerRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetqrCodeRow(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->qrCodeRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrowCount(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsessions(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetterminateAllSessionsDetailRow(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsDetailRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetterminateAllSessionsRow(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetttlDays(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->ttlDays:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetttlDivideRow(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->ttlDivideRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetttlHeaderRow(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->ttlHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetttlRow(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->ttlRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetundoView(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/Components/UndoView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputrepeatLoad(Lorg/telegram/ui/SessionsActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/SessionsActivity;->repeatLoad:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenCameraScanActivity(Lorg/telegram/ui/SessionsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->openCameraScanActivity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRows(Lorg/telegram/ui/SessionsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->updateRows()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 136
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->repeatLoad:I

    .line 735
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->VIEW_TYPE_TEXT:I

    const/4 v0, 0x1

    .line 736
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->VIEW_TYPE_INFO:I

    const/4 v0, 0x2

    .line 737
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->VIEW_TYPE_HEADER:I

    const/4 v0, 0x4

    .line 738
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->VIEW_TYPE_SESSION:I

    const/4 v0, 0x5

    .line 739
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->VIEW_TYPE_SCANQR:I

    const/4 v0, 0x6

    .line 740
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->VIEW_TYPE_SETTINGS:I

    .line 137
    iput p1, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method private synthetic lambda$createView$1(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 1

    .line 269
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 270
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 273
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x7

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const/16 p1, 0x5a

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    const/16 p1, 0xb7

    goto :goto_0

    .line 279
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    const/16 p1, 0x16d

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 283
    :goto_0
    new-instance p2, Lorg/telegram/tgnet/tl/TL_account$setAuthorizationTTL;

    invoke-direct {p2}, Lorg/telegram/tgnet/tl/TL_account$setAuthorizationTTL;-><init>()V

    .line 284
    iput p1, p2, Lorg/telegram/tgnet/tl/TL_account$setAuthorizationTTL;->authorization_ttl_days:I

    .line 285
    iput p1, p0, Lorg/telegram/ui/SessionsActivity;->ttlDays:I

    .line 286
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    if-eqz p1, :cond_4

    .line 287
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 289
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda16;-><init>()V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$createView$10(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;)V
    .locals 0

    .line 454
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 456
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    if-nez p2, :cond_0

    .line 459
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 460
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->updateRows()V

    .line 461
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    if-eqz p1, :cond_0

    .line 462
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$11(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 452
    new-instance p3, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda20;

    invoke-direct {p3, p0, p1, p4, p2}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$12(I[ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 3

    .line 417
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    if-nez p3, :cond_0

    goto/16 :goto_1

    .line 420
    :cond_0
    new-instance p3, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p4

    const/4 v0, 0x3

    invoke-direct {p3, p4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p4, 0x0

    .line 421
    invoke-virtual {p3, p4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 422
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 424
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez v0, :cond_2

    .line 426
    iget p2, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I

    if-lt p1, p2, :cond_1

    iget p4, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsEndRow:I

    if-ge p1, p4, :cond_1

    .line 427
    iget-object p4, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    sub-int/2addr p1, p2

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    goto :goto_0

    .line 429
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    iget p4, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsStartRow:I

    sub-int/2addr p1, p4

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    .line 431
    :goto_0
    new-instance p2, Lorg/telegram/tgnet/tl/TL_account$resetAuthorization;

    invoke-direct {p2}, Lorg/telegram/tgnet/tl/TL_account$resetAuthorization;-><init>()V

    .line 432
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->hash:J

    iput-wide v0, p2, Lorg/telegram/tgnet/tl/TL_account$resetAuthorization;->hash:J

    .line 433
    iget p4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance v0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p3, p1}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V

    invoke-virtual {p4, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 449
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;

    .line 450
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$resetWebAuthorization;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$resetWebAuthorization;-><init>()V

    .line 451
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/tl/TL_account$resetWebAuthorization;->hash:J

    .line 452
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p3, p1}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 466
    aget-boolean p2, p2, p4

    if-eqz p2, :cond_3

    .line 467
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->bot_id:J

    invoke-virtual {p2, p3, p4}, Lorg/telegram/messenger/MessagesController;->blockPeer(J)V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$createView$13(Landroid/view/View;I)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 234
    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->ttlRow:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_6

    .line 235
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_a

    .line 239
    :cond_0
    iget v1, v0, Lorg/telegram/ui/SessionsActivity;->ttlDays:I

    const/4 v2, 0x7

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-gt v1, v2, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    const/16 v2, 0x5d

    if-gt v1, v2, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    const/16 v2, 0xb7

    if-gt v1, v2, :cond_3

    move v1, v7

    goto :goto_0

    :cond_3
    move v1, v6

    .line 248
    :goto_0
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v2, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 249
    sget v8, Lorg/telegram/messenger/R$string;->SessionsSelfDestruct:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 250
    const-string v8, "Weeks"

    new-array v9, v5, [Ljava/lang/Object;

    .line 251
    invoke-static {v8, v4, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Object;

    .line 252
    const-string v10, "Months"

    invoke-static {v10, v6, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x6

    new-array v11, v5, [Ljava/lang/Object;

    .line 253
    invoke-static {v10, v9, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Years"

    new-array v11, v5, [Ljava/lang/Object;

    .line 254
    invoke-static {v10, v4, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v8, v6, v9, v10}, [Ljava/lang/String;

    move-result-object v6

    .line 256
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 257
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 258
    invoke-virtual {v2, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move v9, v5

    :goto_1
    const/4 v10, 0x4

    if-ge v9, v10, :cond_5

    .line 261
    new-instance v10, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    const/high16 v11, 0x40800000    # 4.0f

    .line 262
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v10, v12, v5, v11, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 263
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 264
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 265
    aget-object v11, v6, v9

    if-ne v1, v9, :cond_4

    move v12, v4

    goto :goto_2

    :cond_4
    move v12, v5

    :goto_2
    invoke-virtual {v10, v11, v12}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 266
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 267
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-static {v11, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 268
    new-instance v11, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v11, v0, v2}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 294
    :cond_5
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 295
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 296
    :cond_6
    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsRow:I

    const/4 v6, -0x1

    if-ne v1, v2, :cond_9

    .line 297
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_7

    goto/16 :goto_a

    .line 300
    :cond_7
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 302
    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez v2, :cond_8

    .line 303
    sget v2, Lorg/telegram/messenger/R$string;->AreYouSureSessions:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 304
    sget v2, Lorg/telegram/messenger/R$string;->AreYouSureSessionsTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 305
    sget v2, Lorg/telegram/messenger/R$string;->Terminate:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 307
    :cond_8
    sget v2, Lorg/telegram/messenger/R$string;->AreYouSureWebSessions:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 308
    sget v2, Lorg/telegram/messenger/R$string;->TerminateWebSessionsTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 309
    sget v2, Lorg/telegram/messenger/R$string;->Disconnect:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 311
    :goto_3
    new-instance v4, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, v0}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/SessionsActivity;)V

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 351
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 352
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 353
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 354
    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_15

    .line 356
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 358
    :cond_9
    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I

    if-lt v1, v2, :cond_a

    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->otherSessionsEndRow:I

    if-lt v1, v2, :cond_c

    :cond_a
    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsStartRow:I

    if-lt v1, v2, :cond_b

    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsEndRow:I

    if-lt v1, v2, :cond_c

    :cond_b
    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->currentSessionRow:I

    if-ne v1, v2, :cond_15

    .line 359
    :cond_c
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_d

    goto/16 :goto_a

    .line 362
    :cond_d
    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez v2, :cond_10

    .line 365
    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->currentSessionRow:I

    if-ne v1, v2, :cond_e

    .line 366
    iget-object v1, v0, Lorg/telegram/ui/SessionsActivity;->currentSession:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    goto :goto_5

    .line 368
    :cond_e
    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I

    if-lt v1, v2, :cond_f

    iget v3, v0, Lorg/telegram/ui/SessionsActivity;->otherSessionsEndRow:I

    if-ge v1, v3, :cond_f

    .line 369
    iget-object v3, v0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    sub-int/2addr v1, v2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    :goto_4
    move v4, v5

    goto :goto_5

    .line 371
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    iget v3, v0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsStartRow:I

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    goto :goto_4

    .line 373
    :goto_5
    invoke-direct {v0, v1, v4}, Lorg/telegram/ui/SessionsActivity;->showSessionBottomSheet(Lorg/telegram/tgnet/TLRPC$TL_authorization;Z)V

    return-void

    .line 376
    :cond_10
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 377
    new-array v7, v4, [Z

    .line 379
    iget v8, v0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez v8, :cond_11

    .line 380
    sget v4, Lorg/telegram/messenger/R$string;->TerminateSessionText:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 381
    sget v4, Lorg/telegram/messenger/R$string;->AreYouSureSessionTitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 382
    sget v4, Lorg/telegram/messenger/R$string;->Terminate:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_9

    .line 384
    :cond_11
    iget-object v8, v0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    iget v9, v0, Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I

    sub-int v9, v1, v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;

    .line 386
    sget v9, Lorg/telegram/messenger/R$string;->TerminateWebSessionText:I

    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->domain:Ljava/lang/String;

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v10, v11, v5

    const-string v10, "TerminateWebSessionText"

    invoke-static {v10, v9, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 387
    sget v9, Lorg/telegram/messenger/R$string;->TerminateWebSessionTitle:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 388
    sget v9, Lorg/telegram/messenger/R$string;->Disconnect:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 390
    new-instance v10, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 392
    iget v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-wide v12, v8, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->bot_id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v11, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    .line 394
    const-string v11, ""

    if-eqz v8, :cond_12

    .line 395
    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_12
    move-object v8, v11

    .line 400
    :goto_6
    new-instance v12, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;I)V

    .line 401
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    sget v13, Lorg/telegram/messenger/R$string;->TerminateWebSessionStop:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v8, v4, v5

    const-string v8, "TerminateWebSessionStop"

    invoke-static {v8, v13, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4, v11, v5, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 403
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v8, 0x41000000    # 8.0f

    const/high16 v11, 0x41800000    # 16.0f

    if-eqz v4, :cond_13

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto :goto_7

    :cond_13
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    :goto_7
    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_14

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    goto :goto_8

    :cond_14
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    :goto_8
    invoke-virtual {v12, v4, v5, v8, v5}, Landroid/view/View;->setPadding(IIII)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v13, -0x1

    const/high16 v14, 0x42400000    # 48.0f

    const/16 v15, 0x33

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 404
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v10, v12, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    new-instance v4, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v4, v7}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda7;-><init>([Z)V

    invoke-virtual {v12, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v4, 0x10

    .line 413
    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setCustomViewOffset(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 414
    invoke-virtual {v2, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object v4, v9

    .line 416
    :goto_9
    new-instance v5, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda8;

    invoke-direct {v5, v0, v1, v7}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/SessionsActivity;I[Z)V

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 471
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 472
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 473
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 474
    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_15

    .line 476
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_15
    :goto_a
    return-void
.end method

.method private synthetic lambda$createView$2(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    .line 316
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 319
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_1

    .line 320
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget v0, Lorg/telegram/messenger/R$string;->AllSessionsTerminated:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    const/4 p1, 0x0

    .line 321
    invoke-virtual {p0, p1}, Lorg/telegram/ui/SessionsActivity;->loadSessions(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    .line 315
    new-instance v0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    const/16 v0, 0x10

    if-ge p2, v0, :cond_1

    .line 326
    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 330
    :cond_0
    iput-boolean p1, v0, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    .line 331
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 332
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/SharedConfig;->pushType:I

    sget-object v3, Lorg/telegram/messenger/SharedConfig;->pushString:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->registerForPush(ILjava/lang/String;)V

    .line 333
    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->setUserId(J)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$4(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    .line 339
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 342
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_1

    .line 343
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget v0, Lorg/telegram/messenger/R$string;->AllWebSessionsTerminated:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 345
    :cond_1
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget v0, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :goto_0
    const/4 p1, 0x0

    .line 347
    invoke-virtual {p0, p1}, Lorg/telegram/ui/SessionsActivity;->loadSessions(Z)V

    return-void
.end method

.method private synthetic lambda$createView$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 338
    new-instance v0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$6(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    .line 312
    iget p1, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez p1, :cond_0

    .line 313
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_auth_resetAuthorizations;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_auth_resetAuthorizations;-><init>()V

    .line 314
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/SessionsActivity;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 337
    :cond_0
    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$resetWebAuthorizations;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$resetWebAuthorizations;-><init>()V

    .line 338
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/SessionsActivity;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$createView$8(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V
    .locals 0

    .line 435
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 437
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    if-nez p2, :cond_0

    .line 440
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 441
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 442
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->updateRows()V

    .line 443
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    if-eqz p1, :cond_0

    .line 444
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$9(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_authorization;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 433
    new-instance p3, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda19;

    invoke-direct {p3, p0, p1, p4, p2}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadSessions$14(Z)V
    .locals 0

    .line 626
    invoke-virtual {p0, p1}, Lorg/telegram/ui/SessionsActivity;->loadSessions(Z)V

    return-void
.end method

.method private synthetic lambda$loadSessions$15(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 3

    const/4 v0, 0x0

    .line 592
    iput-boolean v0, p0, Lorg/telegram/ui/SessionsActivity;->loading:Z

    .line 593
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/SessionsActivity$ListAdapter;->getItemCount()I

    :cond_0
    if-nez p1, :cond_4

    .line 595
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 596
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 597
    check-cast p2, Lorg/telegram/tgnet/tl/TL_account$authorizations;

    .line 598
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_account$authorizations;->authorizations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_3

    .line 599
    iget-object v1, p2, Lorg/telegram/tgnet/tl/TL_account$authorizations;->authorizations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    .line 600
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 601
    iput-object v1, p0, Lorg/telegram/ui/SessionsActivity;->currentSession:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    goto :goto_1

    .line 602
    :cond_1
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->password_pending:Z

    if-eqz v2, :cond_2

    .line 603
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 605
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 608
    :cond_3
    iget p1, p2, Lorg/telegram/tgnet/tl/TL_account$authorizations;->authorization_ttl_days:I

    iput p1, p0, Lorg/telegram/ui/SessionsActivity;->ttlDays:I

    .line 609
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->updateRows()V

    .line 610
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->delegate:Lorg/telegram/ui/SessionsActivity$Delegate;

    if-eqz p1, :cond_4

    .line 611
    invoke-interface {p1}, Lorg/telegram/ui/SessionsActivity$Delegate;->sessionsLoaded()V

    .line 615
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    if-eqz p1, :cond_5

    .line 616
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 619
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->delegate:Lorg/telegram/ui/SessionsActivity$Delegate;

    if-eqz p1, :cond_6

    .line 620
    invoke-interface {p1}, Lorg/telegram/ui/SessionsActivity$Delegate;->sessionsLoaded()V

    .line 623
    :cond_6
    iget p1, p0, Lorg/telegram/ui/SessionsActivity;->repeatLoad:I

    if-lez p1, :cond_7

    add-int/lit8 p1, p1, -0x1

    .line 624
    iput p1, p0, Lorg/telegram/ui/SessionsActivity;->repeatLoad:I

    if-lez p1, :cond_7

    .line 626
    new-instance p1, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0, p3}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/SessionsActivity;Z)V

    const-wide/16 p2, 0x9c4

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_7
    return-void
.end method

.method private synthetic lambda$loadSessions$16(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 591
    new-instance v0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadSessions$17(Z)V
    .locals 0

    .line 654
    invoke-virtual {p0, p1}, Lorg/telegram/ui/SessionsActivity;->loadSessions(Z)V

    return-void
.end method

.method private synthetic lambda$loadSessions$18(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 634
    iput-boolean v0, p0, Lorg/telegram/ui/SessionsActivity;->loading:Z

    if-nez p1, :cond_0

    .line 636
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 637
    check-cast p2, Lorg/telegram/tgnet/tl/TL_account$webAuthorizations;

    .line 638
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v1, p2, Lorg/telegram/tgnet/tl/TL_account$webAuthorizations;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 639
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_account$webAuthorizations;->authorizations:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 640
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->updateRows()V

    .line 643
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    if-eqz p1, :cond_1

    .line 644
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 647
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->delegate:Lorg/telegram/ui/SessionsActivity$Delegate;

    if-eqz p1, :cond_2

    .line 648
    invoke-interface {p1}, Lorg/telegram/ui/SessionsActivity$Delegate;->sessionsLoaded()V

    .line 651
    :cond_2
    iget p1, p0, Lorg/telegram/ui/SessionsActivity;->repeatLoad:I

    if-lez p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    .line 652
    iput p1, p0, Lorg/telegram/ui/SessionsActivity;->repeatLoad:I

    if-lez p1, :cond_3

    .line 654
    new-instance p1, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0, p3}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/SessionsActivity;Z)V

    const-wide/16 p2, 0x9c4

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$loadSessions$19(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 633
    new-instance v0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onRequestPermissionsResultFragment$20(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    .line 1222
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1223
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

    .line 1224
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1226
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private openCameraScanActivity()V
    .locals 3

    .line 1103
    new-instance v0, Lorg/telegram/ui/SessionsActivity$6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SessionsActivity$6;-><init>(Lorg/telegram/ui/SessionsActivity;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v1, v2, v0}, Lorg/telegram/ui/CameraScanActivity;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;ZILorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private showSessionBottomSheet(Lorg/telegram/tgnet/TLRPC$TL_authorization;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 531
    :cond_0
    new-instance v0, Lorg/telegram/ui/SessionBottomSheet;

    new-instance v1, Lorg/telegram/ui/SessionsActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SessionsActivity$5;-><init>(Lorg/telegram/ui/SessionsActivity;)V

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/telegram/ui/SessionBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_authorization;ZLorg/telegram/ui/SessionBottomSheet$Callback;)V

    .line 548
    invoke-virtual {v0}, Lorg/telegram/ui/SessionBottomSheet;->show()V

    return-void
.end method

.method private updateRows()V
    .locals 4

    const/4 v0, 0x0

    .line 663
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    const/4 v1, -0x1

    .line 664
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionSectionRow:I

    .line 665
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionRow:I

    .line 666
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsRow:I

    .line 667
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsDetailRow:I

    .line 668
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsSectionRow:I

    .line 669
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsStartRow:I

    .line 670
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsEndRow:I

    .line 671
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsDetailRow:I

    .line 672
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsSectionRow:I

    .line 673
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I

    .line 674
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsEndRow:I

    .line 675
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsTerminateDetail:I

    .line 676
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->noOtherSessionsRow:I

    .line 677
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->qrCodeRow:I

    .line 678
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->qrCodeDividerRow:I

    .line 679
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->ttlHeaderRow:I

    .line 680
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->ttlRow:I

    .line 681
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->ttlDivideRow:I

    .line 683
    iget v2, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 684
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->qrCodeRow:I

    add-int v0, v3, v3

    .line 685
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/SessionsActivity;->qrCodeDividerRow:I

    .line 687
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/SessionsActivity;->loading:Z

    if-eqz v0, :cond_1

    if-nez v2, :cond_9

    .line 689
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionSectionRow:I

    add-int/lit8 v0, v0, 0x2

    .line 690
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionRow:I

    return-void

    .line 694
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->currentSession:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    if-eqz v0, :cond_2

    .line 695
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionSectionRow:I

    add-int/lit8 v0, v0, 0x2

    .line 696
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionRow:I

    .line 700
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 705
    :cond_3
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsRow:I

    .line 706
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsDetailRow:I

    .line 707
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->currentSession:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    if-eqz v0, :cond_4

    goto :goto_0

    .line 710
    :cond_4
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->noOtherSessionsRow:I

    goto :goto_2

    .line 708
    :cond_5
    :goto_0
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->noOtherSessionsRow:I

    goto :goto_2

    .line 701
    :cond_6
    :goto_1
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsRow:I

    add-int/lit8 v0, v0, 0x2

    .line 702
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsDetailRow:I

    .line 703
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->noOtherSessionsRow:I

    .line 713
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 714
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsSectionRow:I

    .line 715
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsStartRow:I

    .line 716
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    .line 717
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsEndRow:I

    add-int/lit8 v0, v1, 0x1

    .line 718
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsDetailRow:I

    .line 720
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 721
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsSectionRow:I

    .line 722
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I

    .line 723
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsEndRow:I

    .line 724
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    .line 725
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsTerminateDetail:I

    .line 728
    :cond_8
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->ttlDays:I

    if-lez v0, :cond_9

    .line 729
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->ttlHeaderRow:I

    add-int/lit8 v2, v0, 0x2

    .line 730
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->ttlRow:I

    add-int/lit8 v0, v0, 0x3

    .line 731
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/SessionsActivity;->ttlDivideRow:I

    :cond_9
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 9

    .line 177
    new-instance v0, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/SessionsActivity;->globalFlickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v1, 0x1

    .line 178
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 182
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->Devices:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->WebSessionsTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/SessionsActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/SessionsActivity$1;-><init>(Lorg/telegram/ui/SessionsActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 196
    new-instance v0, Lorg/telegram/ui/SessionsActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/SessionsActivity$ListAdapter;-><init>(Lorg/telegram/ui/SessionsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    .line 198
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 200
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 202
    new-instance v2, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/SessionsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 203
    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 204
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v3, 0x11

    const/4 v4, -0x1

    invoke-static {v4, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    new-instance v2, Lorg/telegram/ui/SessionsActivity$2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/SessionsActivity$2;-><init>(Lorg/telegram/ui/SessionsActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 215
    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->setSections()V

    .line 216
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAdaptiveBackground(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 217
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/SessionsActivity$3;

    const/4 v5, 0x0

    invoke-direct {v3, p0, p1, v1, v5}, Lorg/telegram/ui/SessionsActivity$3;-><init>(Lorg/telegram/ui/SessionsActivity;Landroid/content/Context;IZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 223
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 224
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 225
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 226
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 228
    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v2, 0x96

    .line 229
    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 230
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 231
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setTranslationInterpolator(Landroid/view/animation/Interpolator;)V

    .line 232
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 233
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/SessionsActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 481
    iget v1, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez v1, :cond_1

    .line 482
    new-instance v1, Lorg/telegram/ui/SessionsActivity$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SessionsActivity$4;-><init>(Lorg/telegram/ui/SessionsActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v8, 0x41000000    # 8.0f

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x53

    const/high16 v5, 0x41000000    # 8.0f

    const/4 v6, 0x0

    .line 504
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->updateRows()V

    .line 523
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 577
    sget p2, Lorg/telegram/messenger/NotificationCenter;->newSessionReceived:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 578
    invoke-virtual {p0, p1}, Lorg/telegram/ui/SessionsActivity;->loadSessions(Z)V

    :cond_0
    return-void
.end method

.method public getSessionsCount()I
    .locals 3

    .line 1237
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/SessionsActivity;->loading:Z

    if-eqz v0, :cond_0

    return v1

    .line 1240
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 47

    move-object/from16 v0, p0

    .line 1167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1169
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v11, v5, v10

    const/4 v12, 0x1

    const-class v13, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v13, v5, v12

    const/4 v6, 0x2

    const-class v14, Lorg/telegram/ui/Cells/SessionCell;

    aput-object v14, v5, v6

    const/4 v8, 0x0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v21, 0x0

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1174
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1175
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1176
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1178
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1180
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v3, v10

    sget-object v19, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/16 v17, 0x0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1182
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/SessionsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_progressCircle:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1184
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v17, v3, v4

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v11, v3, v10

    const-string v4, "textView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v19

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    const/16 v22, 0x0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    move/from16 v23, v28

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v18, v3, v5

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v11, v3, v10

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v20

    const/16 v23, 0x0

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1187
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v10

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1188
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v5, v3, v10

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v20

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/16 v18, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v13, v3, v10

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v19

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v14, v3, v10

    const-string v4, "nameTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v20

    sget v37, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v18, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move/from16 v24, v37

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v14, v3, v10

    const-string v4, "onlineTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v19

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    const/16 v20, 0x0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v14, v3, v10

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v20

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    const/16 v23, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1195
    new-instance v29, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v14, v3, v10

    const-string v4, "detailTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v33

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v31, 0x0

    const/16 v34, 0x0

    move-object/from16 v30, v2

    move-object/from16 v32, v3

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    new-instance v38, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v14, v3, v10

    const-string v4, "detailExTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v42

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v40, 0x0

    const/16 v43, 0x0

    move-object/from16 v39, v2

    move-object/from16 v41, v3

    move/from16 v46, v24

    invoke-direct/range {v38 .. v46}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v38

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1198
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/UndoView;

    aput-object v4, v3, v10

    const-string v5, "undoImageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v24

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    move-object/from16 v21, v2

    move-object/from16 v23, v3

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v4, v3, v10

    const-string v5, "undoTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v24

    move-object/from16 v21, v2

    move-object/from16 v23, v3

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1201
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v2, v12, [Ljava/lang/Class;

    aput-object v4, v2, v10

    const-string v3, "infoTextView"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v17

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    const/4 v15, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v2

    move/from16 v21, v26

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1202
    new-instance v18, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v4, v3, v10

    const-string v5, "textPaint"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v19, v2

    move-object/from16 v21, v3

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1203
    new-instance v18, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v4, v3, v10

    const-string v5, "progressPaint"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    move-object/from16 v19, v2

    move-object/from16 v21, v3

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    new-instance v18, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v4, v3, v10

    const-string v4, "leftImageView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v22

    move-object/from16 v19, v2

    move-object/from16 v21, v3

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public isSupportEdgeToEdge()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadSessions(Z)V
    .locals 3

    .line 583
    iget-boolean v0, p0, Lorg/telegram/ui/SessionsActivity;->loading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 587
    iput-boolean v0, p0, Lorg/telegram/ui/SessionsActivity;->loading:Z

    .line 589
    :cond_1
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez v0, :cond_2

    .line 590
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$getAuthorizations;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$getAuthorizations;-><init>()V

    .line 591
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SessionsActivity;Z)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    .line 630
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    return-void

    .line 632
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$getWebAuthorizations;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$getWebAuthorizations;-><init>()V

    .line 633
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/SessionsActivity;Z)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    .line 658
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    return-void
.end method

.method public onBecomeFullyHidden()V
    .locals 3

    .line 562
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 563
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 147
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 148
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->updateRows()V

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0, v0}, Lorg/telegram/ui/SessionsActivity;->loadSessions(Z)V

    .line 150
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->newSessionReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 156
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 157
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->newSessionReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onInsets(IIII)V
    .locals 0

    .line 1257
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 1258
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1259
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-eqz p1, :cond_0

    neg-int p2, p4

    int-to-float p2, p2

    .line 1260
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 554
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 555
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 556
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 2

    .line 1211
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 1215
    array-length p1, p3

    const/4 p2, 0x0

    if-lez p1, :cond_1

    aget p1, p3, p2

    if-nez p1, :cond_1

    .line 1216
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->openCameraScanActivity()V

    return-void

    .line 1218
    :cond_1
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p3, Lorg/telegram/messenger/R$string;->QRCodePermissionNoCameraWithHint:I

    .line 1219
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$string;->PermissionOpenSettings:I

    .line 1220
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/SessionsActivity;)V

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$string;->ContactsPermissionAlertNotNow:I

    .line 1229
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$raw;->permission_request_camera:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    .line 1230
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const/16 v1, 0x48

    invoke-virtual {p1, p3, v1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 1231
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 569
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 1

    .line 162
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x1

    .line 165
    iput-boolean p1, p0, Lorg/telegram/ui/SessionsActivity;->fragmentOpened:Z

    const/4 p1, 0x0

    .line 166
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 167
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 168
    instance-of v0, p2, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;

    if-eqz v0, :cond_0

    .line 169
    check-cast p2, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;

    iget-object p2, p2, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->buttonTextView:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/SessionsActivity$Delegate;)V
    .locals 0

    .line 1244
    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity;->delegate:Lorg/telegram/ui/SessionsActivity$Delegate;

    return-void
.end method

.method public setHighlightLinkDesktopDevice()Lorg/telegram/ui/SessionsActivity;
    .locals 1

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lorg/telegram/ui/SessionsActivity;->highlightLinkDesktopDevice:Z

    return-object p0
.end method
