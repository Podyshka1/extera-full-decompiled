.class public Lorg/telegram/ui/Business/ChatbotsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# static fields
.field private static final BUTTON_DELETE:I

.field private static final PERMISSION_GIFTS:I

.field private static final PERMISSION_GIFTS_SELL:I

.field private static final PERMISSION_GIFTS_SETTINGS:I

.field private static final PERMISSION_GIFTS_TRANSFER:I

.field private static final PERMISSION_GIFTS_TRANSFER_STARS:I

.field private static final PERMISSION_GIFTS_VIEW:I

.field private static final PERMISSION_MESSAGES:I

.field private static final PERMISSION_MESSAGES_DELETE_RECEIVED:I

.field private static final PERMISSION_MESSAGES_DELETE_SENT:I

.field private static final PERMISSION_MESSAGES_MARK_AS_READ:I

.field private static final PERMISSION_MESSAGES_READ:I

.field private static final PERMISSION_MESSAGES_REPLY:I

.field private static final PERMISSION_PROFILE:I

.field private static final PERMISSION_PROFILE_BIO:I

.field private static final PERMISSION_PROFILE_NAME:I

.field private static final PERMISSION_PROFILE_PICTURE:I

.field private static final PERMISSION_PROFILE_USERNAME:I

.field private static final PERMISSION_STORIES:I

.field private static final RADIO_EXCLUDE:I

.field private static final RADIO_INCLUDE:I

.field private static ids:I


# instance fields
.field public currentBot:Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

.field public currentValue:Lorg/telegram/tgnet/tl/TL_account$connectedBots;

.field private doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

.field private editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private editTextContainer:Landroid/widget/FrameLayout;

.field private editTextDivider:Landroid/view/View;

.field private emptyView:Landroid/widget/FrameLayout;

.field private emptyViewLoading:Landroid/widget/ImageView;

.field private emptyViewText:Landroid/widget/TextView;

.field public exclude:Z

.field private expandedGiftsSection:Z

.field private expandedMessagesSection:Z

.field private expandedProfileSection:Z

.field private foundBots:Landroid/util/LongSparseArray;

.field private introText:Landroid/text/SpannableStringBuilder;

.field private lastQuery:Ljava/lang/String;

.field private listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

.field private loading:Z

.field private recipientsHelper:Lorg/telegram/ui/Business/BusinessRecipientsHelper;

.field public rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

.field private scheduledLoading:Z

.field private search:Ljava/lang/Runnable;

.field private searchHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

.field private searchId:I

.field private selectedBot:Lorg/telegram/tgnet/TLRPC$User;

.field private shakeDp:I

.field private shownGiftsPermissionsAlert:Z

.field private shownUsernamePermissionsAlert:Z

.field private valueSet:Z

.field private wasLoading:Z


# direct methods
.method public static synthetic $r8$lambda$4F4Ucfg7a3W_o4htdK_8i7KEUF0(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$onClick$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$61Xz8QbzUhD5IyY5WtZF83c0gH8(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$fillItems$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7z9b8avSzDLBUgpMyCCGcLO4k6M(Lorg/telegram/ui/Business/ChatbotsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$fillItems$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$Bp8q2TaD6WA1JnIiMRVUHdxR-t4(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$fillItems$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DR1sGPHFzfH2gngwIgaYna_Gdoc(Lorg/telegram/ui/Business/ChatbotsActivity;Lorg/telegram/tgnet/tl/TL_account$connectedBots;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$setValue$22(Lorg/telegram/tgnet/tl/TL_account$connectedBots;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ERS3d1xMaghaMAulfOJ_t4h7VaI(Lorg/telegram/ui/Business/ChatbotsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$FlQrlXeDM-nY8xeXe6KTGDvf8KM(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$onClick$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IHJXmzECItjNMDn2MPPDj9zsAR4(Lorg/telegram/ui/Business/ChatbotsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$createView$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$J71TggOhopOLywwRv1GGy5O9P-E(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$onClick$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OMoKxvpWAo-unodom2_u-1v3mik(Lorg/telegram/ui/Business/ChatbotsActivity;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$checkAlert$4(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PCaKJ_anWEy0lZhATnKaUE5JM44(Lorg/telegram/ui/Business/ChatbotsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$onClick$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$X8FXkuH17ghfhqsceB5KXWUlspY(Lorg/telegram/ui/Business/ChatbotsActivity;[ILjava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$processDone$21([ILjava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XwZOnG9AdjA8Ru4xF8CGHgvfV_s(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$fillItems$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zywy_J8UrBoYpU-FWJ7UUkK3GKg(Lorg/telegram/ui/Business/ChatbotsActivity;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Business/ChatbotsActivity;->onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$_COSUsmo9Z861gF1uyglwUKEuss(Lorg/telegram/ui/Business/ChatbotsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$fillItems$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$aavqAsygGCh25D_0sGHM844pudE(Lorg/telegram/ui/Business/ChatbotsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$onBackPressed$23(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$b7DyDu-HumMUpY6ZX2aPgue3mtI(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$onClick$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bTDeJBGrUzbdELEbPdfXkpjxFcE(Lorg/telegram/ui/Business/ChatbotsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;[ILjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$processDone$20(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;[ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dihP8ViCtn0kf6UzAbPuC9QSvY4(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$fillItems$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eln3t24hycCXk_Zdv_qNYrKWjhU(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$createView$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$f1DNvVGd5Ayq338aXd97nK8A-T4(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$onClick$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$haDkB_5a_WScDaRmXk1QSSLMFOA(Lorg/telegram/ui/Business/ChatbotsActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$processDone$19(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mLwUC_BqZISurEzkRq10ooizZEM(Lorg/telegram/ui/Business/ChatbotsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$createView$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$pujsdkdi91PZqoe2X0T-0Bjqbnc(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/ChatbotsActivity;->clear(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rmgVrPODn_wabKn0mxlOf6YyrRA(Lorg/telegram/ui/Business/ChatbotsActivity;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/ChatbotsActivity;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xCUSQx1sOYhSD58rlgdgMZUlwl8(Lorg/telegram/ui/Business/ChatbotsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$onBackPressed$24(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xGf3HWsi2C_VqW1FyakbVlIuKAo(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$onClick$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yQFWsQnnJaNLfDusc-dJ9n0DmfU(Lorg/telegram/ui/Business/ChatbotsActivity;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$checkAlert$5(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lorg/telegram/ui/Business/ChatbotsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mprocessDone(Lorg/telegram/ui/Business/ChatbotsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->processDone()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleSearch(Lorg/telegram/ui/Business/ChatbotsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->scheduleSearch()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSearchLoading(Lorg/telegram/ui/Business/ChatbotsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->updateSearchLoading()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    rsub-int/lit8 v0, v0, 0x0

    .line 283
    sput v0, Lorg/telegram/ui/Business/ChatbotsActivity;->RADIO_EXCLUDE:I

    add-int/lit8 v1, v0, -0x1

    .line 284
    sput v1, Lorg/telegram/ui/Business/ChatbotsActivity;->RADIO_INCLUDE:I

    add-int/lit8 v1, v0, -0x2

    .line 285
    sput v1, Lorg/telegram/ui/Business/ChatbotsActivity;->BUTTON_DELETE:I

    add-int/lit8 v1, v0, -0x3

    .line 287
    sput v1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES:I

    add-int/lit8 v1, v0, -0x4

    .line 288
    sput v1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES_READ:I

    add-int/lit8 v1, v0, -0x5

    .line 289
    sput v1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES_REPLY:I

    add-int/lit8 v1, v0, -0x6

    .line 290
    sput v1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES_MARK_AS_READ:I

    add-int/lit8 v1, v0, -0x7

    .line 291
    sput v1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES_DELETE_SENT:I

    add-int/lit8 v1, v0, -0x8

    .line 292
    sput v1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES_DELETE_RECEIVED:I

    add-int/lit8 v1, v0, -0x9

    .line 294
    sput v1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE:I

    add-int/lit8 v1, v0, -0xa

    .line 295
    sput v1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE_NAME:I

    add-int/lit8 v1, v0, -0xb

    .line 296
    sput v1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE_BIO:I

    add-int/lit8 v1, v0, -0xc

    .line 297
    sput v1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE_PICTURE:I

    add-int/lit8 v1, v0, -0xd

    .line 298
    sput v1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE_USERNAME:I

    add-int/lit8 v1, v0, -0xe

    .line 300
    sput v1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS:I

    add-int/lit8 v1, v0, -0xf

    .line 301
    sput v1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_VIEW:I

    add-int/lit8 v1, v0, -0x10

    .line 302
    sput v1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_SELL:I

    add-int/lit8 v1, v0, -0x11

    .line 303
    sput v1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_SETTINGS:I

    add-int/lit8 v1, v0, -0x12

    .line 304
    sput v1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_TRANSFER:I

    add-int/lit8 v1, v0, -0x13

    .line 305
    sput v1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_TRANSFER_STARS:I

    add-int/lit8 v0, v0, -0x14

    .line 307
    sput v0, Lorg/telegram/ui/Business/ChatbotsActivity;->ids:I

    sput v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_STORIES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 255
    iput v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchId:I

    .line 256
    new-instance v1, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    iput-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->search:Ljava/lang/Runnable;

    .line 274
    invoke-static {}, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->makeDefault()Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    const/4 v1, 0x0

    .line 279
    iput-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 280
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->foundBots:Landroid/util/LongSparseArray;

    const/4 v1, -0x4

    .line 346
    iput v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->shakeDp:I

    const/4 v1, 0x1

    .line 348
    iput-boolean v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedMessagesSection:Z

    .line 349
    iput-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedProfileSection:Z

    .line 350
    iput-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedGiftsSection:Z

    return-void
.end method

.method private checkAlert(IZLjava/lang/Runnable;)V
    .locals 5

    .line 310
    iget-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->shownUsernamePermissionsAlert:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE_USERNAME:I

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 311
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p2, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsWarning:I

    .line 312
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsUsernamesWarningText:I

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 313
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {p2, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 314
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Allow:I

    .line 315
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p3}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 319
    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->makeRed(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 320
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 323
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->shownGiftsPermissionsAlert:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    sget p2, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_SELL:I

    if-eq p1, p2, :cond_1

    sget p2, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_SETTINGS:I

    if-eq p1, p2, :cond_1

    sget p2, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_TRANSFER:I

    if-eq p1, p2, :cond_1

    sget p2, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_TRANSFER_STARS:I

    if-ne p1, p2, :cond_2

    .line 331
    :cond_1
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p2, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsWarning:I

    .line 332
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsGiftsWarningText:I

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 333
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {p2, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 334
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Allow:I

    .line 335
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p3}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 339
    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->makeRed(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 340
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 343
    :cond_2
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private checkDone(Z)V
    .locals 4

    .line 793
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    return-void

    .line 794
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->hasChanges()Z

    move-result v0

    .line 795
    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    .line 797
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 799
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_2
    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 800
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_6

    move v3, v2

    goto :goto_3

    :cond_6
    move v3, v1

    :goto_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 801
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_7

    move v1, v2

    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private clear(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    .line 666
    iput-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 667
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 668
    invoke-direct {p0, v0}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void
.end method

.method private fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 9

    .line 353
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->introText:Landroid/text/SpannableStringBuilder;

    const-string v1, "RestrictedEmoji"

    const-string v2, "\ud83e\udd16"

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;->asTopView(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 356
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asAddChat(Ljava/lang/Long;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setCloseIcon(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 358
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSectionStart()V

    .line 360
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->editTextContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->foundBots:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    move v0, v1

    move v3, v0

    .line 362
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 363
    iget-object v4, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLObject;

    .line 364
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v5, :cond_1

    goto :goto_1

    .line 365
    :cond_1
    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 366
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v5, :cond_2

    goto :goto_1

    .line 367
    :cond_2
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Components/UItem;->asAddChat(Ljava/lang/Long;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->foundBots:Landroid/util/LongSparseArray;

    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v3, v5, v6, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move v3, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 371
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 372
    iget-object v4, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLObject;

    .line 373
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v5, :cond_4

    goto :goto_3

    .line 374
    :cond_4
    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 375
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v5, :cond_5

    goto :goto_3

    .line 376
    :cond_5
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Components/UItem;->asAddChat(Ljava/lang/Long;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->foundBots:Landroid/util/LongSparseArray;

    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v3, v5, v6, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move v3, v2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 380
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->foundBots:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->isSearchInProgress()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->scheduledLoading:Z

    if-eqz v0, :cond_8

    .line 381
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyView:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v2

    .line 384
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->editTextDivider:Landroid/view/View;

    if-eqz v3, :cond_9

    move v3, v1

    goto :goto_4

    :cond_9
    const/16 v3, 0x8

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 385
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSectionEnd()V

    .line 387
    :goto_5
    sget p2, Lorg/telegram/messenger/R$string;->BusinessBotLinkInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object p2, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p2, :cond_10

    .line 389
    sget p2, Lorg/telegram/messenger/R$string;->BusinessBotChats:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    sget p2, Lorg/telegram/ui/Business/ChatbotsActivity;->RADIO_EXCLUDE:I

    sget v0, Lorg/telegram/messenger/R$string;->BusinessChatsAllPrivateExcept:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRadio(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->exclude:Z

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    sget p2, Lorg/telegram/ui/Business/ChatbotsActivity;->RADIO_INCLUDE:I

    sget v0, Lorg/telegram/messenger/R$string;->BusinessChatsOnlySelected:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRadio(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->exclude:Z

    xor-int/2addr v0, v2

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 392
    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->recipientsHelper:Lorg/telegram/ui/Business/BusinessRecipientsHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->fillItems(Ljava/util/ArrayList;)V

    .line 394
    sget v0, Lorg/telegram/messenger/R$string;->BusinessBotChatsInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    sget v0, Lorg/telegram/messenger/R$string;->BusinessBotPermissions:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES:I

    sget v3, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsMessagesSection:I

    .line 397
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    iget-object v5, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v6, v5, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->reply:Z

    add-int/2addr v6, v2

    iget-boolean v7, v5, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->read_messages:Z

    add-int/2addr v6, v7

    iget-boolean v7, v5, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_sent_messages:Z

    add-int/2addr v6, v7

    iget-boolean v5, v5, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_received_messages:Z

    add-int/2addr v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 397
    invoke-static {v0, v3, v4}, Lorg/telegram/ui/Components/UItem;->asExpandableSwitch(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->reply:Z

    if-eqz v4, :cond_a

    iget-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->read_messages:Z

    if-eqz v4, :cond_a

    iget-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_received_messages:Z

    if-eqz v4, :cond_a

    iget-boolean v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_sent_messages:Z

    if-eqz v3, :cond_a

    move v3, v2

    goto :goto_6

    :cond_a
    move v3, v1

    .line 400
    :goto_6
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-boolean v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedMessagesSection:Z

    xor-int/2addr v3, v2

    .line 401
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda18;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    .line 402
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setClickCallback(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 396
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    iget-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedMessagesSection:Z

    if-eqz v0, :cond_b

    .line 413
    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES_READ:I

    sget v3, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsMessagesRead:I

    .line 414
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 415
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 416
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setEnabled(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 417
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 413
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES_REPLY:I

    sget v3, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsMessagesReply:I

    .line 420
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->reply:Z

    .line 421
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 422
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 419
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES_MARK_AS_READ:I

    sget v3, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsMessagesMarkAsRead:I

    .line 425
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->read_messages:Z

    .line 426
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 427
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 424
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES_DELETE_SENT:I

    sget v3, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsMessagesDeleteSent:I

    .line 430
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_sent_messages:Z

    .line 431
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 432
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 429
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES_DELETE_RECEIVED:I

    sget v3, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsMessagesDeleteReceived:I

    .line 435
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_received_messages:Z

    .line 436
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 437
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 434
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_b
    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE:I

    sget v3, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsProfileSection:I

    .line 441
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    iget-object v6, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v7, v6, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_name:Z

    iget-boolean v8, v6, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_bio:Z

    add-int/2addr v7, v8

    iget-boolean v8, v6, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_profile_photo:Z

    add-int/2addr v7, v8

    iget-boolean v6, v6, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_username:Z

    add-int/2addr v7, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/4"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 441
    invoke-static {v0, v3, v4}, Lorg/telegram/ui/Components/UItem;->asExpandableSwitch(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_name:Z

    if-eqz v4, :cond_c

    iget-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_bio:Z

    if-eqz v4, :cond_c

    iget-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_profile_photo:Z

    if-eqz v4, :cond_c

    iget-boolean v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_username:Z

    if-eqz v3, :cond_c

    move v3, v2

    goto :goto_7

    :cond_c
    move v3, v1

    .line 444
    :goto_7
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-boolean v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedProfileSection:Z

    xor-int/2addr v3, v2

    .line 445
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    .line 446
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setClickCallback(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 440
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    iget-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedProfileSection:Z

    if-eqz v0, :cond_d

    .line 461
    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE_NAME:I

    sget v3, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsProfileName:I

    .line 462
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_name:Z

    .line 463
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 464
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 461
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE_BIO:I

    sget v3, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsProfileBio:I

    .line 467
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_bio:Z

    .line 468
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 469
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 466
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE_PICTURE:I

    sget v3, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsProfilePicture:I

    .line 472
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_profile_photo:Z

    .line 473
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 474
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 471
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE_USERNAME:I

    sget v3, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsProfileUsername:I

    .line 477
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_username:Z

    .line 478
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 479
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 476
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_d
    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS:I

    sget v3, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsGiftsSection:I

    .line 483
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 484
    iget-object v6, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v7, v6, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->view_gifts:Z

    iget-boolean v8, v6, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->sell_gifts:Z

    add-int/2addr v7, v8

    iget-boolean v8, v6, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->change_gift_settings:Z

    add-int/2addr v7, v8

    iget-boolean v8, v6, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_and_upgrade_gifts:Z

    add-int/2addr v7, v8

    iget-boolean v6, v6, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_stars:Z

    add-int/2addr v7, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 483
    invoke-static {v0, v3, v4}, Lorg/telegram/ui/Components/UItem;->asExpandableSwitch(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->view_gifts:Z

    if-eqz v4, :cond_e

    iget-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->sell_gifts:Z

    if-eqz v4, :cond_e

    iget-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->change_gift_settings:Z

    if-eqz v4, :cond_e

    iget-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_and_upgrade_gifts:Z

    if-eqz v4, :cond_e

    iget-boolean v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_stars:Z

    if-eqz v3, :cond_e

    move v1, v2

    .line 486
    :cond_e
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedGiftsSection:Z

    xor-int/2addr v1, v2

    .line 487
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    .line 488
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setClickCallback(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 482
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    iget-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedGiftsSection:Z

    if-eqz v0, :cond_f

    .line 503
    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_VIEW:I

    sget v1, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsGiftsView:I

    .line 504
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->view_gifts:Z

    .line 505
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 506
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 503
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_SELL:I

    sget v1, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsGiftsSell:I

    .line 509
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->sell_gifts:Z

    .line 510
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 511
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 508
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_SETTINGS:I

    sget v1, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsGiftsSettings:I

    .line 514
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->change_gift_settings:Z

    .line 515
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 516
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 513
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_TRANSFER:I

    sget v1, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsGiftsTransfer:I

    .line 519
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_and_upgrade_gifts:Z

    .line 520
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 521
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 518
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_TRANSFER_STARS:I

    sget v1, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsGiftsTransferStars:I

    .line 524
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_stars:Z

    .line 525
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 526
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 523
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_f
    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_STORIES:I

    sget v1, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsStories:I

    .line 530
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;->asExpandableSwitch(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->manage_stories:Z

    .line 531
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    .line 532
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setClickCallback(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 529
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x4

    .line 538
    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x5

    .line 539
    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x6

    .line 540
    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x7

    .line 541
    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method private synthetic lambda$checkAlert$4(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p2, 0x1

    .line 316
    iput-boolean p2, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->shownUsernamePermissionsAlert:Z

    .line 317
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$checkAlert$5(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p2, 0x1

    .line 336
    iput-boolean p2, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->shownGiftsPermissionsAlert:Z

    .line 337
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$createView$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    const/4 p3, 0x0

    if-ne p2, p1, :cond_1

    .line 127
    iput-boolean p3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->scheduledLoading:Z

    .line 128
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->search:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 129
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 130
    iput-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->lastQuery:Ljava/lang/String;

    .line 131
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clear()V

    .line 132
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->search:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 136
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->updateSearchLoading()V

    return p2

    :cond_1
    return p3
.end method

.method private synthetic lambda$createView$1()V
    .locals 2

    .line 196
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->BusinessBotsInfoLink:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createView$2()V
    .locals 2

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 218
    invoke-direct {p0, v1}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$fillItems$10(Landroid/view/View;)V
    .locals 2

    .line 489
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->view_gifts:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->sell_gifts:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->change_gift_settings:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_and_upgrade_gifts:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_stars:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 490
    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_stars:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_and_upgrade_gifts:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->change_gift_settings:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->sell_gifts:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->view_gifts:Z

    .line 491
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 492
    invoke-direct {p0, v1}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void

    .line 494
    :cond_0
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_SELL:I

    new-instance v0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-direct {p0, p1, v1, v0}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkAlert(IZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$fillItems$11(Landroid/view/View;)V
    .locals 2

    .line 533
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->manage_stories:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->manage_stories:Z

    .line 534
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 535
    invoke-direct {p0, v1}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$fillItems$6(Landroid/view/View;)V
    .locals 2

    .line 403
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->reply:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->read_messages:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_received_messages:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_sent_messages:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 404
    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_sent_messages:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_received_messages:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->read_messages:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->reply:Z

    goto :goto_0

    .line 406
    :cond_0
    iput-boolean v1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_sent_messages:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_received_messages:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->read_messages:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->reply:Z

    .line 408
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 409
    invoke-direct {p0, v1}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$fillItems$7()V
    .locals 2

    .line 453
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_username:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_profile_photo:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_bio:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_name:Z

    .line 454
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 455
    invoke-direct {p0, v1}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$fillItems$8(Landroid/view/View;)V
    .locals 2

    .line 447
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_name:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_bio:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_profile_photo:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_username:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 448
    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_username:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_profile_photo:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_bio:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_name:Z

    .line 449
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 450
    invoke-direct {p0, v1}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void

    .line 452
    :cond_0
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE_USERNAME:I

    new-instance v0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-direct {p0, p1, v1, v0}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkAlert(IZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$fillItems$9()V
    .locals 2

    .line 495
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_stars:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_and_upgrade_gifts:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->change_gift_settings:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->sell_gifts:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->view_gifts:Z

    .line 496
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 497
    invoke-direct {p0, v1}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 15

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->lastQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->scheduledLoading:Z

    .line 261
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->lastQuery:Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clear()V

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    .line 266
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iput-object v2, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->lastQuery:Ljava/lang/String;

    iget v12, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchId:I

    add-int/lit8 v0, v12, 0x1

    iput v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchId:I

    const-wide/16 v13, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v1 .. v14}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZIIJ)V

    return-void
.end method

.method private synthetic lambda$onBackPressed$23(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 783
    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->processDone()V

    return-void
.end method

.method private synthetic lambda$onBackPressed$24(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 784
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$onClick$12(Landroid/view/View;)V
    .locals 3

    .line 618
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_username:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_username:Z

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 619
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 620
    invoke-direct {p0, v2}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$13(Landroid/view/View;)V
    .locals 3

    .line 628
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->view_gifts:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->view_gifts:Z

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 629
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 630
    invoke-direct {p0, v2}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$14(Landroid/view/View;)V
    .locals 3

    .line 634
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->sell_gifts:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->sell_gifts:Z

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 635
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 636
    invoke-direct {p0, v2}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$15(Landroid/view/View;)V
    .locals 3

    .line 640
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->change_gift_settings:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->change_gift_settings:Z

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 641
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 642
    invoke-direct {p0, v2}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$16(Landroid/view/View;)V
    .locals 3

    .line 646
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_and_upgrade_gifts:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_and_upgrade_gifts:Z

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 647
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 648
    invoke-direct {p0, v2}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$17(Landroid/view/View;)V
    .locals 3

    .line 652
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_stars:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_stars:Z

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 653
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 654
    invoke-direct {p0, v2}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$18()V
    .locals 3

    .line 658
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->manage_stories:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->manage_stories:Z

    .line 659
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 660
    invoke-direct {p0, v2}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$processDone$19(Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    .line 725
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void
.end method

.method private synthetic lambda$processDone$20(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;[ILjava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 717
    iget-object p2, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/CrossfadeDrawable;->animateToProgress(F)V

    .line 718
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->showError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void

    .line 719
    :cond_0
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_boolFalse;

    if-eqz p1, :cond_1

    .line 720
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CrossfadeDrawable;->animateToProgress(F)V

    .line 721
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 723
    :cond_1
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz p1, :cond_2

    .line 724
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_2
    const/4 p1, 0x0

    .line 728
    aget p2, p3, p1

    const/4 v0, 0x1

    add-int/2addr p2, v0

    aput p2, p3, p1

    .line 729
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p2, p1, :cond_3

    .line 730
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Business/BusinessChatbotController;->getInstance(I)Lorg/telegram/ui/Business/BusinessChatbotController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Business/BusinessChatbotController;->invalidate(Z)V

    .line 731
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->clearFullUsers()V

    .line 732
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$processDone$21([ILjava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 715
    new-instance v0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda23;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v3, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;[ILjava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setValue$22(Lorg/telegram/tgnet/tl/TL_account$connectedBots;)V
    .locals 3

    .line 745
    iput-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->currentValue:Lorg/telegram/tgnet/tl/TL_account$connectedBots;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 746
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$connectedBots;->connected_bots:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->currentValue:Lorg/telegram/tgnet/tl/TL_account$connectedBots;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$connectedBots;->connected_bots:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->currentBot:Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

    if-nez p1, :cond_2

    move-object p1, v0

    goto :goto_2

    .line 747
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->currentBot:Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

    iget-wide v1, v1, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->bot_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 748
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->currentBot:Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    invoke-static {p1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->clone(Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;)Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    move-result-object p1

    goto :goto_3

    :cond_3
    invoke-static {}, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->makeDefault()Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    .line 749
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->currentBot:Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->recipients:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    iget-boolean v2, v2, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->exclude_selected:Z

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    iput-boolean v2, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->exclude:Z

    .line 750
    iget-object v2, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->recipientsHelper:Lorg/telegram/ui/Business/BusinessRecipientsHelper;

    if-eqz v2, :cond_6

    if-nez p1, :cond_5

    goto :goto_5

    .line 751
    :cond_5
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->recipients:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    :goto_5
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->setValue(Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;)V

    .line 753
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_7

    .line 754
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 756
    :cond_7
    invoke-direct {p0, v1}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    .line 757
    iput-boolean v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->valueSet:Z

    return-void
.end method

.method private onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 2

    .line 546
    iget-object p3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->recipientsHelper:Lorg/telegram/ui/Business/BusinessRecipientsHelper;

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->onClick(Lorg/telegram/ui/Components/UItem;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto/16 :goto_0

    .line 549
    :cond_0
    iget p3, p1, Lorg/telegram/ui/Components/UItem;->id:I

    sget p4, Lorg/telegram/ui/Business/ChatbotsActivity;->RADIO_EXCLUDE:I

    const/4 p5, 0x1

    if-ne p3, p4, :cond_1

    .line 550
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->recipientsHelper:Lorg/telegram/ui/Business/BusinessRecipientsHelper;

    iput-boolean p5, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->exclude:Z

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->setExclude(Z)V

    .line 551
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 552
    invoke-direct {p0, p5}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void

    .line 553
    :cond_1
    sget p4, Lorg/telegram/ui/Business/ChatbotsActivity;->RADIO_INCLUDE:I

    if-ne p3, p4, :cond_2

    .line 554
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->recipientsHelper:Lorg/telegram/ui/Business/BusinessRecipientsHelper;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->exclude:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->setExclude(Z)V

    .line 555
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 556
    invoke-direct {p0, p5}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void

    .line 557
    :cond_2
    sget p4, Lorg/telegram/ui/Business/ChatbotsActivity;->BUTTON_DELETE:I

    const/4 v0, 0x0

    if-ne p3, p4, :cond_3

    .line 558
    iput-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 559
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 560
    invoke-direct {p0, p5}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void

    .line 561
    :cond_3
    iget p4, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v1, 0xd

    if-ne p4, v1, :cond_6

    .line 562
    iget-object p2, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->foundBots:Landroid/util/LongSparseArray;

    iget-wide p3, p1, Lorg/telegram/ui/Components/UItem;->dialogId:J

    invoke-virtual {p2, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    if-nez p1, :cond_4

    goto/16 :goto_0

    .line 564
    :cond_4
    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_business:Z

    if-nez p2, :cond_5

    .line 565
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 566
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p2, Lorg/telegram/messenger/R$string;->BusinessBotNotSupportedTitle:I

    .line 567
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->BusinessBotNotSupportedMessage:I

    .line 568
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    .line 569
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 570
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 565
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 574
    :cond_5
    iput-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 575
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 576
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 577
    invoke-direct {p0, p5}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void

    .line 578
    :cond_6
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES:I

    if-ne p3, p1, :cond_7

    .line 579
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell2;

    iget-boolean p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedMessagesSection:Z

    xor-int/2addr p1, p5

    iput-boolean p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedMessagesSection:Z

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 580
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    .line 582
    :cond_7
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES_READ:I

    if-ne p3, p1, :cond_8

    .line 583
    iget p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->shakeDp:I

    neg-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->shakeDp:I

    int-to-float p1, p1

    invoke-static {p2, p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    .line 584
    :cond_8
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES_REPLY:I

    if-ne p3, p1, :cond_9

    .line 585
    check-cast p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->reply:Z

    xor-int/2addr p3, p5

    iput-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->reply:Z

    invoke-virtual {p2, p3, p5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 586
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 587
    invoke-direct {p0, p5}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void

    .line 588
    :cond_9
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES_MARK_AS_READ:I

    if-ne p3, p1, :cond_a

    .line 589
    check-cast p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->read_messages:Z

    xor-int/2addr p3, p5

    iput-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->read_messages:Z

    invoke-virtual {p2, p3, p5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 590
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 591
    invoke-direct {p0, p5}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void

    .line 592
    :cond_a
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES_DELETE_SENT:I

    if-ne p3, p1, :cond_b

    .line 593
    check-cast p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_sent_messages:Z

    xor-int/2addr p3, p5

    iput-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_sent_messages:Z

    invoke-virtual {p2, p3, p5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 594
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 595
    invoke-direct {p0, p5}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void

    .line 596
    :cond_b
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES_DELETE_RECEIVED:I

    if-ne p3, p1, :cond_c

    .line 597
    check-cast p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_received_messages:Z

    xor-int/2addr p3, p5

    iput-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_received_messages:Z

    invoke-virtual {p2, p3, p5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 598
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 599
    invoke-direct {p0, p5}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void

    .line 600
    :cond_c
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE:I

    if-ne p3, p1, :cond_d

    .line 601
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell2;

    iget-boolean p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedProfileSection:Z

    xor-int/2addr p1, p5

    iput-boolean p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedProfileSection:Z

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 602
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    .line 604
    :cond_d
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE_NAME:I

    if-ne p3, p1, :cond_e

    .line 605
    check-cast p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_name:Z

    xor-int/2addr p3, p5

    iput-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_name:Z

    invoke-virtual {p2, p3, p5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 606
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 607
    invoke-direct {p0, p5}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void

    .line 608
    :cond_e
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE_BIO:I

    if-ne p3, p1, :cond_f

    .line 609
    check-cast p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_bio:Z

    xor-int/2addr p3, p5

    iput-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_bio:Z

    invoke-virtual {p2, p3, p5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 610
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 611
    invoke-direct {p0, p5}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void

    .line 612
    :cond_f
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE_PICTURE:I

    if-ne p3, p1, :cond_10

    .line 613
    check-cast p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_profile_photo:Z

    xor-int/2addr p3, p5

    iput-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_profile_photo:Z

    invoke-virtual {p2, p3, p5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 614
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 615
    invoke-direct {p0, p5}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void

    .line 616
    :cond_10
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE_USERNAME:I

    if-ne p3, p1, :cond_11

    .line 617
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_username:Z

    xor-int/2addr p1, p5

    new-instance p4, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda9;

    invoke-direct {p4, p0, p2}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V

    invoke-direct {p0, p3, p1, p4}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkAlert(IZLjava/lang/Runnable;)V

    return-void

    .line 622
    :cond_11
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS:I

    if-ne p3, p1, :cond_12

    .line 623
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell2;

    iget-boolean p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedGiftsSection:Z

    xor-int/2addr p1, p5

    iput-boolean p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedGiftsSection:Z

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 624
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    .line 626
    :cond_12
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_VIEW:I

    if-ne p3, p1, :cond_13

    .line 627
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->view_gifts:Z

    xor-int/2addr p1, p5

    new-instance p4, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda10;

    invoke-direct {p4, p0, p2}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V

    invoke-direct {p0, p3, p1, p4}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkAlert(IZLjava/lang/Runnable;)V

    return-void

    .line 632
    :cond_13
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_SELL:I

    if-ne p3, p1, :cond_14

    .line 633
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->sell_gifts:Z

    xor-int/2addr p1, p5

    new-instance p4, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda11;

    invoke-direct {p4, p0, p2}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V

    invoke-direct {p0, p3, p1, p4}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkAlert(IZLjava/lang/Runnable;)V

    return-void

    .line 638
    :cond_14
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_SETTINGS:I

    if-ne p3, p1, :cond_15

    .line 639
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->change_gift_settings:Z

    xor-int/2addr p1, p5

    new-instance p4, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda12;

    invoke-direct {p4, p0, p2}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V

    invoke-direct {p0, p3, p1, p4}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkAlert(IZLjava/lang/Runnable;)V

    return-void

    .line 644
    :cond_15
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_TRANSFER:I

    if-ne p3, p1, :cond_16

    .line 645
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_and_upgrade_gifts:Z

    xor-int/2addr p1, p5

    new-instance p4, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda13;

    invoke-direct {p4, p0, p2}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V

    invoke-direct {p0, p3, p1, p4}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkAlert(IZLjava/lang/Runnable;)V

    return-void

    .line 650
    :cond_16
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_TRANSFER_STARS:I

    if-ne p3, p1, :cond_17

    .line 651
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_stars:Z

    xor-int/2addr p1, p5

    new-instance p4, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda14;

    invoke-direct {p4, p0, p2}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V

    invoke-direct {p0, p3, p1, p4}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkAlert(IZLjava/lang/Runnable;)V

    return-void

    .line 656
    :cond_17
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_STORIES:I

    if-ne p3, p1, :cond_18

    .line 657
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->manage_stories:Z

    xor-int/2addr p1, p5

    new-instance p2, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda15;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-direct {p0, p3, p1, p2}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkAlert(IZLjava/lang/Runnable;)V

    :cond_18
    :goto_0
    return-void
.end method

.method private processDone()V
    .locals 6

    .line 672
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CrossfadeDrawable;->getProgress()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto/16 :goto_1

    .line 674
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->hasChanges()Z

    move-result v0

    if-nez v0, :cond_1

    .line 675
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 679
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->recipientsHelper:Lorg/telegram/ui/Business/BusinessRecipientsHelper;

    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->validate(Lorg/telegram/ui/Components/UniversalRecyclerView;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 683
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 685
    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->currentBot:Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_3

    iget-wide v3, v1, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->bot_id:J

    iget-wide v1, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_4

    .line 686
    :cond_3
    new-instance v1, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;-><init>()V

    const/4 v2, 0x1

    .line 687
    iput-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;->deleted:Z

    .line 688
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->currentBot:Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

    iget-wide v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->bot_id:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 689
    new-instance v2, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;->recipients:Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;

    .line 690
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 694
    new-instance v1, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;-><init>()V

    .line 695
    iput-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;->deleted:Z

    .line 696
    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iput-object v3, v1, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    .line 697
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 698
    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->recipientsHelper:Lorg/telegram/ui/Business/BusinessRecipientsHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->getBotInputValue()Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;->recipients:Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;

    .line 699
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->currentBot:Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

    if-eqz v1, :cond_5

    .line 702
    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v3, v1, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->bot_id:J

    .line 703
    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->recipientsHelper:Lorg/telegram/ui/Business/BusinessRecipientsHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->getBotValue()Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->recipients:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    .line 704
    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->currentBot:Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iput-object v3, v1, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    .line 708
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 709
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 713
    :cond_6
    filled-new-array {v2}, [I

    move-result-object v1

    .line 714
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 715
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLObject;

    new-instance v5, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda16;

    invoke-direct {v5, p0, v1, v0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;[ILjava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    return-void
.end method

.method private scheduleSearch()V
    .locals 4

    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->scheduledLoading:Z

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->search:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->lastQuery:Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clear()V

    goto :goto_0

    .line 248
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->scheduledLoading:Z

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->search:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 251
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 252
    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->updateSearchLoading()V

    return-void
.end method

.method private setValue()V
    .locals 2

    .line 742
    iget-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->loading:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->valueSet:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 743
    iput-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->loading:Z

    .line 744
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Business/BusinessChatbotController;->getInstance(I)Lorg/telegram/ui/Business/BusinessChatbotController;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Business/BusinessChatbotController;->load(Lorg/telegram/messenger/Utilities$Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSearchLoading()V
    .locals 8

    .line 233
    iget-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->wasLoading:Z

    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->isSearchInProgress()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->scheduledLoading:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->foundBots:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-eq v0, v1, :cond_8

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->isSearchInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->scheduledLoading:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->foundBots:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :cond_3
    :goto_2
    iput-boolean v2, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->wasLoading:Z

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyViewText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    move v4, v3

    goto :goto_3

    :cond_4
    move v4, v1

    :goto_3
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v4, 0x41000000    # 8.0f

    if-eqz v2, :cond_5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    goto :goto_4

    :cond_5
    move v5, v3

    :goto_4
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v5, 0x140

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyViewLoading:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v2, :cond_6

    goto :goto_5

    :cond_6
    move v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v3, v1

    :goto_6
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_8
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 82
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 83
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 84
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->BusinessBots:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/Business/ChatbotsActivity$1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Business/ChatbotsActivity$1;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 98
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 99
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 100
    new-instance v4, Lorg/telegram/ui/Components/CrossfadeDrawable;

    new-instance v6, Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-direct {v6, v5}, Lorg/telegram/ui/Components/CircularProgressDrawable;-><init>(I)V

    invoke-direct {v4, v2, v6}, Lorg/telegram/ui/Components/CrossfadeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    .line 101
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v6, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x0

    .line 102
    invoke-direct {v0, v2}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    .line 104
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 105
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 107
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 108
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 109
    new-instance v5, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v6, 0x41880000    # 17.0f

    .line 110
    invoke-virtual {v5, v3, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 111
    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 112
    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 113
    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 115
    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 116
    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 117
    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 118
    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_0

    const/4 v8, 0x5

    goto :goto_0

    :cond_0
    const/4 v8, 0x3

    :goto_0
    or-int/lit8 v8, v8, 0x30

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 119
    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v8, 0x2c000

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setInputType(I)V

    .line 120
    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v8, 0x6

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 121
    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v8, Lorg/telegram/messenger/R$string;->BusinessBotLink:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 123
    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v6, 0x41980000    # 19.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 124
    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 125
    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v6, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 141
    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v6, Lorg/telegram/ui/Business/ChatbotsActivity$2;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Business/ChatbotsActivity$2;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 157
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editTextContainer:Landroid/widget/FrameLayout;

    .line 158
    iget-object v6, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v13, 0x41a80000    # 21.0f

    const/high16 v14, 0x41700000    # 15.0f

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/16 v10, 0x30

    const/high16 v11, 0x41a80000    # 21.0f

    const/high16 v12, 0x41700000    # 15.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editTextContainer:Landroid/widget/FrameLayout;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 160
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editTextDivider:Landroid/view/View;

    .line 161
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 162
    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editTextContainer:Landroid/widget/FrameLayout;

    iget-object v8, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editTextDivider:Landroid/view/View;

    const/high16 v9, 0x3f800000    # 1.0f

    sget v10, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float v12, v9, v10

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v10, 0x15

    if-eqz v9, :cond_1

    move v11, v2

    goto :goto_1

    :cond_1
    move v11, v10

    :goto_1
    int-to-float v14, v11

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    move v10, v2

    :goto_2
    int-to-float v9, v10

    const/16 v17, 0x0

    const/4 v11, -0x1

    const/16 v13, 0x57

    const/4 v15, 0x0

    move/from16 v16, v9

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    new-instance v5, Lorg/telegram/ui/Business/ChatbotsActivity$3;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Business/ChatbotsActivity$3;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyView:Landroid/widget/FrameLayout;

    .line 170
    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 172
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyViewText:Landroid/widget/TextView;

    .line 173
    sget v6, Lorg/telegram/messenger/R$string;->BusinessBotNotFound:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyViewText:Landroid/widget/TextView;

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 175
    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyViewText:Landroid/widget/TextView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyView:Landroid/widget/FrameLayout;

    iget-object v8, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyViewText:Landroid/widget/TextView;

    const/4 v9, -0x2

    const/16 v10, 0x11

    invoke-static {v9, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v5, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyViewLoading:Landroid/widget/ImageView;

    .line 179
    new-instance v1, Lorg/telegram/ui/Business/ChatbotsActivity$4;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-direct {v1, v0, v5}, Lorg/telegram/ui/Business/ChatbotsActivity$4;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;I)V

    .line 189
    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyViewLoading:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 190
    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyViewLoading:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    iget-object v1, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyView:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyViewLoading:Landroid/widget/ImageView;

    invoke-static {v9, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iget-object v1, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyViewLoading:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 193
    iget-object v1, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyViewLoading:Landroid/widget/ImageView;

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 195
    sget v1, Lorg/telegram/messenger/R$string;->BusinessBotsInfo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-static {v1, v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->introText:Landroid/text/SpannableStringBuilder;

    .line 198
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, ">"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 200
    new-instance v5, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v6, Lorg/telegram/messenger/R$drawable;->arrow_newchat:I

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    .line 201
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/ColoredImageSpan;->setColorKey(I)V

    .line 202
    iget-object v6, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->introText:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v8, v1, 0x1

    const/16 v9, 0x21

    invoke-virtual {v6, v5, v1, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 205
    :cond_3
    new-instance v1, Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-direct {v1, v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;-><init>(Z)V

    iput-object v1, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .line 206
    new-instance v3, Lorg/telegram/ui/Business/ChatbotsActivity$5;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Business/ChatbotsActivity$5;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V

    .line 216
    new-instance v1, Lorg/telegram/ui/Business/BusinessRecipientsHelper;

    new-instance v3, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-direct {v1, v0, v3}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    iput-object v1, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->recipientsHelper:Lorg/telegram/ui/Business/BusinessRecipientsHelper;

    .line 220
    iget-object v3, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->currentBot:Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

    if-nez v3, :cond_4

    move-object v3, v7

    goto :goto_3

    :cond_4
    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->recipients:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    :goto_3
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->setValue(Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;)V

    .line 222
    new-instance v1, Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v3, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    new-instance v5, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-direct {v1, v0, v3, v5, v7}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;)V

    iput-object v1, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    .line 223
    invoke-virtual {v1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->setSections()V

    .line 224
    iget-object v1, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v1, v1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    .line 225
    iget-object v1, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAdaptiveBackground(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 228
    iput-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v4
.end method

.method public hasChanges()Z
    .locals 9

    .line 762
    iget-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->valueSet:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 763
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->currentBot:Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

    if-eqz v4, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    if-eq v3, v5, :cond_3

    return v2

    :cond_3
    const-wide/16 v5, 0x0

    if-nez v0, :cond_4

    move-wide v7, v5

    goto :goto_2

    .line 764
    :cond_4
    iget-wide v7, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    :goto_2
    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    iget-wide v5, v4, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->bot_id:J

    :goto_3
    cmp-long v3, v7, v5

    if-eqz v3, :cond_6

    return v2

    :cond_6
    if-eqz v0, :cond_8

    .line 766
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-object v3, v4, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    invoke-virtual {v0, v3}, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    .line 769
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->recipientsHelper:Lorg/telegram/ui/Business/BusinessRecipientsHelper;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->hasChanges()Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    :cond_8
    return v1
.end method

.method public isSupportEdgeToEdge()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed(Z)Z
    .locals 2

    .line 778
    invoke-virtual {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->hasChanges()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 780
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 781
    sget v0, Lorg/telegram/messenger/R$string;->UnsavedChanges:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 782
    sget v0, Lorg/telegram/messenger/R$string;->BusinessBotUnsavedChanges:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 783
    sget v0, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 784
    sget v0, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 785
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 789
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed(Z)Z

    move-result p1

    return p1
.end method

.method public onFragmentCreate()Z
    .locals 1

    .line 807
    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->setValue()V

    .line 808
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onInsets(IIII)V
    .locals 0

    .line 818
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 819
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    return-void
.end method
