.class public Lorg/telegram/ui/DataSettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/DataSettingsActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private autoplayGifsRow:I

.field private autoplayHeaderRow:I

.field private autoplaySectionRow:I

.field private autoplayVideoRow:I

.field private callsSection2Row:I

.field private callsSectionRow:I

.field private clearDraftsRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private clearDraftsSectionRow:I

.field private dataUsageRow:I

.field private enableAllStreamInfoRow:I

.field private enableAllStreamRow:I

.field private enableCacheStreamRow:I

.field private enableMkvRow:I

.field private enableStreamRow:I

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private mediaDownloadSection2Row:I

.field private mediaDownloadSectionRow:I

.field private mobileRow:I

.field private proxyRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private proxySection2Row:I

.field private proxySectionRow:I

.field private quickRepliesRow:I

.field private resetDownloadRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private roamingRow:I

.field private rowCount:I

.field private saveToGalleryChannelsRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private saveToGalleryDividerRow:I

.field private saveToGalleryGroupsRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private saveToGalleryPeerRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private saveToGallerySectionRow:I

.field private storageDirs:Ljava/util/ArrayList;

.field private storageNumRow:I

.field private storageUsageLoading:Z

.field private storageUsageRow:I

.field private storageUsageSize:J

.field private streamSectionRow:I

.field private updateStorageUsageAnimated:Z

.field private updateVoipUseLessData:Z

.field private usageSection2Row:I

.field private usageSectionRow:I

.field private useLessDataForCallsRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private wifiRow:I


# direct methods
.method public static synthetic $r8$lambda$03rLYlvgdEqRi5D1HI18A1J61t0(Lorg/telegram/ui/DataSettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/DataSettingsActivity;->lambda$setStorageDirectory$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$0JK9jfmDJYxCEZJR990aEGZujT8(Lorg/telegram/ui/DataSettingsActivity;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/DataSettingsActivity;->lambda$createView$5(Ljava/lang/String;ZLorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2_W6TtE4ZAsNjffj8HunhLqzmJc(Lorg/telegram/ui/DataSettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/DataSettingsActivity;->lambda$loadCacheSize$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$4D1__uhmZD5pmXvdOapTq6x9_iA(Lorg/telegram/ui/DataSettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/DataSettingsActivity;->lambda$createView$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$CYgPMvPn5XAkCVxEioDkxfe5tQQ(Lorg/telegram/ui/DataSettingsActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DataSettingsActivity;->lambda$createView$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D-62bYnUqrYleSjAHqQss0u6Jlk(Lorg/telegram/ui/DataSettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DataSettingsActivity;->lambda$createView$8(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$G_kCCV1z0VKdV6iTwgbiYya0YGA(Lorg/telegram/ui/DataSettingsActivity;Ljava/lang/Runnable;JLjava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/DataSettingsActivity;->lambda$loadCacheSize$1(Ljava/lang/Runnable;JLjava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SIMov302ZiLVcraBftYsS9KcDHw(Lorg/telegram/ui/DataSettingsActivity;Landroid/content/SharedPreferences;ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/DataSettingsActivity;->lambda$createView$3(Landroid/content/SharedPreferences;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TRZjucAfvelBgeltLr8gcVSkTGY(Lorg/telegram/ui/DataSettingsActivity;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/DataSettingsActivity;->lambda$createView$4(Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$k5igjFDbAeImcVEoUlD3wkvDdx4(Lorg/telegram/ui/DataSettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DataSettingsActivity;->lambda$createView$2(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vexlVgA5-JNCPkebBSOgpXrJ36w(Lorg/telegram/ui/DataSettingsActivity;Landroid/content/Context;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/DataSettingsActivity;->lambda$createView$9(Landroid/content/Context;Landroid/view/View;IFF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetautoplayGifsRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->autoplayGifsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetautoplayHeaderRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->autoplayHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetautoplaySectionRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->autoplaySectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetautoplayVideoRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->autoplayVideoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcallsSection2Row(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->callsSection2Row:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcallsSectionRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->callsSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetclearDraftsRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->clearDraftsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetclearDraftsSectionRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->clearDraftsSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdataUsageRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->dataUsageRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetenableAllStreamInfoRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->enableAllStreamInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetenableAllStreamRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->enableAllStreamRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetenableCacheStreamRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->enableCacheStreamRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetenableMkvRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->enableMkvRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetenableStreamRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->enableStreamRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmediaDownloadSection2Row(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->mediaDownloadSection2Row:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmediaDownloadSectionRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->mediaDownloadSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmobileRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->mobileRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetproxyRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->proxyRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetproxySection2Row(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->proxySection2Row:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetproxySectionRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->proxySectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetquickRepliesRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->quickRepliesRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetresetDownloadRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->resetDownloadRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetroamingRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->roamingRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrowCount(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsaveToGalleryChannelsRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryChannelsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsaveToGalleryDividerRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryDividerRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsaveToGalleryGroupsRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryGroupsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsaveToGalleryPeerRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryPeerRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsaveToGallerySectionRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGallerySectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstorageDirs(Lorg/telegram/ui/DataSettingsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstorageNumRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->storageNumRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstorageUsageLoading(Lorg/telegram/ui/DataSettingsActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageLoading:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstorageUsageRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstorageUsageSize(Lorg/telegram/ui/DataSettingsActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageSize:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetstreamSectionRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->streamSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetupdateStorageUsageAnimated(Lorg/telegram/ui/DataSettingsActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/DataSettingsActivity;->updateStorageUsageAnimated:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetupdateVoipUseLessData(Lorg/telegram/ui/DataSettingsActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/DataSettingsActivity;->updateVoipUseLessData:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetusageSection2Row(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->usageSection2Row:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetusageSectionRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->usageSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetuseLessDataForCallsRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->useLessDataForCallsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwifiRow(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->wifiRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputupdateStorageUsageAnimated(Lorg/telegram/ui/DataSettingsActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/DataSettingsActivity;->updateStorageUsageAnimated:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputupdateVoipUseLessData(Lorg/telegram/ui/DataSettingsActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/DataSettingsActivity;->updateVoipUseLessData:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->resetDownloadRow:I

    .line 90
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->autoplayHeaderRow:I

    .line 91
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->autoplayGifsRow:I

    .line 92
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->autoplayVideoRow:I

    .line 93
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->autoplaySectionRow:I

    .line 97
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->quickRepliesRow:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method private synthetic lambda$createView$2(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 5

    .line 391
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    if-nez v0, :cond_0

    .line 394
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/DownloadController;->mobilePreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 395
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/DownloadController;->mediumPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 396
    const-string v4, "mobilePreset"

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 398
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/DownloadController;->wifiPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 399
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/DownloadController;->highPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 400
    const-string v4, "wifiPreset"

    goto :goto_1

    .line 402
    :cond_1
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/DownloadController;->roamingPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 403
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/DownloadController;->lowPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 404
    const-string v4, "roamingPreset"

    .line 406
    :goto_1
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DownloadController$Preset;->set(Lorg/telegram/messenger/DownloadController$Preset;)V

    .line 407
    invoke-virtual {v3}, Lorg/telegram/messenger/DownloadController$Preset;->isEnabled()Z

    move-result v3

    iput-boolean v3, v2, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    .line 408
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    iput v1, v3, Lorg/telegram/messenger/DownloadController;->currentMobilePreset:I

    const-string v3, "currentMobilePreset"

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 409
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    iput v1, v3, Lorg/telegram/messenger/DownloadController;->currentWifiPreset:I

    const-string v3, "currentWifiPreset"

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 410
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    iput v1, v3, Lorg/telegram/messenger/DownloadController;->currentRoamingPreset:I

    const-string v3, "currentRoamingPreset"

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 411
    invoke-virtual {v2}, Lorg/telegram/messenger/DownloadController$Preset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 413
    :cond_2
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 414
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/DownloadController;->checkAutodownloadSettings()V

    move p1, p2

    :goto_2
    if-ge p1, v1, :cond_3

    .line 416
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/DownloadController;->savePresetToServer(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 418
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/DataSettingsActivity;->mobileRow:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 419
    invoke-direct {p0, p2}, Lorg/telegram/ui/DataSettingsActivity;->updateRows(Z)V

    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/content/SharedPreferences;ILandroid/content/DialogInterface;I)V
    .locals 3

    const/4 p3, 0x1

    const/4 v0, -0x1

    if-eqz p4, :cond_2

    const/4 v1, 0x3

    if-eq p4, p3, :cond_3

    const/4 v2, 0x2

    if-eq p4, v2, :cond_1

    if-eq p4, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, p3

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    if-eq v1, v0, :cond_4

    .line 469
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p4, "VoipDataSaving"

    invoke-interface {p1, p4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 470
    iput-boolean p3, p0, Lorg/telegram/ui/DataSettingsActivity;->updateVoipUseLessData:Z

    .line 472
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    if-eqz p1, :cond_5

    .line 473
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$createView$4(Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 535
    invoke-direct {p0, p1}, Lorg/telegram/ui/DataSettingsActivity;->setStorageDirectory(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$createView$5(Ljava/lang/String;ZLorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 1

    .line 529
    sget-object p4, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {p4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    if-nez p2, :cond_0

    .line 531
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 532
    sget p4, Lorg/telegram/messenger/R$string;->DecreaseSpeed:I

    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 533
    sget p4, Lorg/telegram/messenger/R$string;->SdCardAlert:I

    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 534
    sget p4, Lorg/telegram/messenger/R$string;->Proceed:I

    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    new-instance v0, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p3}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/DataSettingsActivity;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {p2, p4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 538
    sget p1, Lorg/telegram/messenger/R$string;->Back:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 539
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 541
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/DataSettingsActivity;->setStorageDirectory(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$6()V
    .locals 2

    .line 586
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->clearAllDrafts(Z)V

    return-void
.end method

.method private synthetic lambda$createView$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 586
    new-instance p1, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/DataSettingsActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$8(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    .line 585
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_clearAllDrafts;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_clearAllDrafts;-><init>()V

    .line 586
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/DataSettingsActivity;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$createView$9(Landroid/content/Context;Landroid/view/View;IFF)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 301
    const-string v3, "/storage/emulated/"

    iget v4, v0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryGroupsRow:I

    const/high16 v5, 0x42980000    # 76.0f

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v2, v4, :cond_0

    iget v8, v0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryChannelsRow:I

    if-eq v2, v8, :cond_0

    iget v8, v0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryPeerRow:I

    if-ne v2, v8, :cond_1

    :cond_0
    move v9, v6

    move v12, v7

    goto/16 :goto_e

    .line 319
    :cond_1
    iget v4, v0, Lorg/telegram/ui/DataSettingsActivity;->mobileRow:I

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-eq v2, v4, :cond_2

    iget v4, v0, Lorg/telegram/ui/DataSettingsActivity;->roamingRow:I

    if-eq v2, v4, :cond_2

    iget v4, v0, Lorg/telegram/ui/DataSettingsActivity;->wifiRow:I

    if-ne v2, v4, :cond_3

    :cond_2
    move v9, v6

    goto/16 :goto_a

    .line 379
    :cond_3
    iget v4, v0, Lorg/telegram/ui/DataSettingsActivity;->resetDownloadRow:I

    const/4 v5, -0x1

    const/4 v10, 0x0

    if-ne v2, v4, :cond_5

    .line 380
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_9

    .line 383
    :cond_4
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 384
    sget v2, Lorg/telegram/messenger/R$string;->ResetAutomaticMediaDownloadAlertTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 385
    sget v2, Lorg/telegram/messenger/R$string;->ResetAutomaticMediaDownloadAlert:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 386
    sget v2, Lorg/telegram/messenger/R$string;->Reset:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/DataSettingsActivity;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 421
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 422
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 423
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 424
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1e

    .line 426
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 428
    :cond_5
    iget v4, v0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageRow:I

    if-ne v2, v4, :cond_6

    .line 429
    new-instance v1, Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {v1}, Lorg/telegram/ui/CacheControlActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 430
    :cond_6
    iget v4, v0, Lorg/telegram/ui/DataSettingsActivity;->useLessDataForCallsRow:I

    if-ne v2, v4, :cond_b

    .line 431
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 433
    const-string v3, "VoipDataSaving"

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPHelper;->getDataSavingDefault()I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    if-eq v3, v7, :cond_a

    if-eq v3, v6, :cond_9

    if-eq v3, v8, :cond_8

    :cond_7
    move v6, v9

    goto :goto_0

    :cond_8
    move v6, v7

    goto :goto_0

    :cond_9
    move v6, v8

    .line 447
    :cond_a
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->UseLessDataNever:I

    .line 448
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->UseLessDataOnRoaming:I

    .line 449
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v7, Lorg/telegram/messenger/R$string;->UseLessDataOnMobile:I

    .line 450
    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$string;->UseLessDataAlways:I

    .line 451
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v4, v5, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->VoipUseLessData:I

    .line 452
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v7, v0, v1, v2}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/DataSettingsActivity;Landroid/content/SharedPreferences;I)V

    .line 447
    invoke-static {v3, v4, v5, v6, v7}, Lorg/telegram/ui/Components/AlertsCreator;->createSingleChoiceDialog(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v1

    .line 476
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setVisibleDialog(Landroid/app/Dialog;)V

    .line 477
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void

    .line 478
    :cond_b
    iget v4, v0, Lorg/telegram/ui/DataSettingsActivity;->dataUsageRow:I

    if-ne v2, v4, :cond_c

    .line 479
    new-instance v1, Lorg/telegram/ui/DataUsage2Activity;

    invoke-direct {v1}, Lorg/telegram/ui/DataUsage2Activity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 480
    :cond_c
    iget v4, v0, Lorg/telegram/ui/DataSettingsActivity;->storageNumRow:I

    if-ne v2, v4, :cond_15

    .line 481
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 482
    sget v2, Lorg/telegram/messenger/R$string;->StoragePath:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 483
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 484
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 485
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 487
    iget-object v4, v0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 488
    sget-object v5, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 489
    iget-object v5, v0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v8, v9

    :goto_1
    if-ge v8, v5, :cond_e

    .line 490
    iget-object v11, v0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 491
    sget-object v12, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    move-object v4, v11

    goto :goto_2

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 500
    :cond_e
    :goto_2
    :try_start_0
    iget-object v5, v0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v6, :cond_10

    iget-object v5, v0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    iget-object v8, v0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v8, :cond_f

    goto :goto_3

    :cond_f
    move v5, v9

    goto :goto_4

    :catch_0
    :cond_10
    :goto_3
    move v5, v7

    .line 503
    :goto_4
    iget-object v8, v0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v11, v9

    :goto_5
    if-ge v11, v8, :cond_14

    .line 504
    iget-object v12, v0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    .line 505
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 506
    new-instance v14, Lorg/telegram/ui/Cells/LanguageCell;

    move-object/from16 v15, p1

    invoke-direct {v14, v15}, Lorg/telegram/ui/Cells/LanguageCell;-><init>(Landroid/content/Context;)V

    const/high16 v16, 0x40800000    # 4.0f

    .line 507
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    move/from16 p5, v7

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v14, v10, v9, v7, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 508
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v14, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 510
    invoke-virtual {v13, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v5, :cond_11

    if-nez v7, :cond_11

    .line 512
    sget v10, Lorg/telegram/messenger/R$string;->StoragePathFreeValueExternal:I

    invoke-virtual {v12}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v12

    move/from16 v16, v9

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v12, v9, v16

    aput-object v13, v9, p5

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_11
    move/from16 v16, v9

    if-eqz v7, :cond_12

    .line 515
    sget v9, Lorg/telegram/messenger/R$string;->StoragePathFreeInternal:I

    invoke-virtual {v12}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v10

    move/from16 v12, p5

    new-array v6, v12, [Ljava/lang/Object;

    aput-object v10, v6, v16

    invoke-static {v9, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_12
    move/from16 v6, p5

    .line 517
    sget v9, Lorg/telegram/messenger/R$string;->StoragePathFreeExternal:I

    invoke-virtual {v12}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v10

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v10, v12, v16

    invoke-static {v9, v12}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_6
    if-eqz v7, :cond_13

    .line 522
    sget v6, Lorg/telegram/messenger/R$string;->InternalStorage:I

    :goto_7
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_13
    sget v6, Lorg/telegram/messenger/R$string;->SdCard:I

    goto :goto_7

    .line 521
    :goto_8
    invoke-virtual {v14, v6, v9}, Lorg/telegram/ui/Cells/LanguageCell;->setValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 525
    invoke-virtual {v13, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    move/from16 v9, v16

    invoke-virtual {v14, v6, v9}, Lorg/telegram/ui/Cells/LanguageCell;->setLanguageSelected(ZZ)V

    .line 526
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    const/4 v9, 0x2

    invoke-static {v6, v9}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 527
    invoke-virtual {v2, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 528
    new-instance v6, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v6, v0, v13, v7, v1}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/DataSettingsActivity;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v14, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v11, v11, 0x1

    move v6, v9

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto/16 :goto_5

    .line 548
    :cond_14
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 549
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 550
    :cond_15
    iget v3, v0, Lorg/telegram/ui/DataSettingsActivity;->proxyRow:I

    if-ne v2, v3, :cond_16

    .line 551
    new-instance v1, Lorg/telegram/ui/ProxyListActivity;

    invoke-direct {v1}, Lorg/telegram/ui/ProxyListActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 552
    :cond_16
    iget v3, v0, Lorg/telegram/ui/DataSettingsActivity;->enableStreamRow:I

    if-ne v2, v3, :cond_17

    .line 553
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleStreamMedia()V

    .line 554
    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 555
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 556
    :cond_17
    iget v3, v0, Lorg/telegram/ui/DataSettingsActivity;->enableAllStreamRow:I

    if-ne v2, v3, :cond_18

    .line 557
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleStreamAllVideo()V

    .line 558
    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 559
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamAllVideo:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 560
    :cond_18
    iget v3, v0, Lorg/telegram/ui/DataSettingsActivity;->enableMkvRow:I

    if-ne v2, v3, :cond_19

    .line 561
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleStreamMkv()V

    .line 562
    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 563
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamMkv:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 564
    :cond_19
    iget v3, v0, Lorg/telegram/ui/DataSettingsActivity;->enableCacheStreamRow:I

    if-ne v2, v3, :cond_1a

    .line 565
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleSaveStreamMedia()V

    .line 566
    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 567
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->saveStreamMedia:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 568
    :cond_1a
    iget v3, v0, Lorg/telegram/ui/DataSettingsActivity;->quickRepliesRow:I

    if-ne v2, v3, :cond_1b

    .line 569
    new-instance v1, Lorg/telegram/ui/QuickRepliesSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/QuickRepliesSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 570
    :cond_1b
    iget v3, v0, Lorg/telegram/ui/DataSettingsActivity;->autoplayGifsRow:I

    if-ne v2, v3, :cond_1c

    .line 571
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleAutoplayGifs()V

    .line 572
    instance-of v2, v1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_1e

    .line 573
    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAutoplayGifs()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 575
    :cond_1c
    iget v3, v0, Lorg/telegram/ui/DataSettingsActivity;->autoplayVideoRow:I

    if-ne v2, v3, :cond_1d

    .line 576
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleAutoplayVideo()V

    .line 577
    instance-of v2, v1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_1e

    .line 578
    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAutoplayVideo()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 580
    :cond_1d
    iget v1, v0, Lorg/telegram/ui/DataSettingsActivity;->clearDraftsRow:I

    if-ne v2, v1, :cond_1e

    .line 581
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 582
    sget v2, Lorg/telegram/messenger/R$string;->AreYouSureClearDraftsTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 583
    sget v2, Lorg/telegram/messenger/R$string;->AreYouSureClearDrafts:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 584
    sget v2, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/DataSettingsActivity;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 588
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 589
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 590
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 591
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1e

    .line 593
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1e
    :goto_9
    return-void

    .line 320
    :goto_a
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_1f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, p4, v3

    if-lez v3, :cond_20

    :cond_1f
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v3, :cond_25

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p4, v3

    if-ltz v3, :cond_25

    .line 321
    :cond_20
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    iget v4, v0, Lorg/telegram/ui/DataSettingsActivity;->resetDownloadRow:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->isRowEnabled(I)Z

    .line 323
    move-object v3, v1

    check-cast v3, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 324
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isChecked()Z

    move-result v4

    .line 331
    iget v5, v0, Lorg/telegram/ui/DataSettingsActivity;->mobileRow:I

    if-ne v2, v5, :cond_21

    .line 332
    iget v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/DownloadController;->mobilePreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 333
    iget v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/DownloadController;->mediumPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 336
    const-string v7, "mobilePreset"

    const-string v9, "currentMobilePreset"

    move-object v10, v9

    const/4 v9, 0x0

    goto :goto_b

    .line 337
    :cond_21
    iget v5, v0, Lorg/telegram/ui/DataSettingsActivity;->wifiRow:I

    if-ne v2, v5, :cond_22

    .line 338
    iget v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/DownloadController;->wifiPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 339
    iget v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/DownloadController;->highPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 342
    const-string v7, "wifiPreset"

    const-string v9, "currentWifiPreset"

    move-object v10, v9

    const/4 v9, 0x1

    goto :goto_b

    .line 344
    :cond_22
    iget v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/DownloadController;->roamingPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 345
    iget v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/DownloadController;->lowPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 348
    const-string v7, "roamingPreset"

    const-string v10, "currentRoamingPreset"

    :goto_b
    if-nez v4, :cond_23

    .line 350
    iget-boolean v11, v5, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    if-eqz v11, :cond_23

    .line 351
    invoke-virtual {v5, v6}, Lorg/telegram/messenger/DownloadController$Preset;->set(Lorg/telegram/messenger/DownloadController$Preset;)V

    const/4 v12, 0x1

    goto :goto_c

    .line 353
    :cond_23
    iget-boolean v6, v5, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    const/4 v12, 0x1

    xor-int/2addr v6, v12

    iput-boolean v6, v5, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    .line 355
    :goto_c
    iget v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 356
    invoke-virtual {v5}, Lorg/telegram/messenger/DownloadController$Preset;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 357
    invoke-interface {v6, v10, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 358
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    xor-int/2addr v4, v12

    .line 360
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    .line 361
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 363
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    invoke-virtual {v3, v1, v2}, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 365
    :cond_24
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/DownloadController;->checkAutodownloadSettings()V

    .line 366
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/telegram/messenger/DownloadController;->savePresetToServer(I)V

    const/4 v1, 0x0

    .line 367
    invoke-direct {v0, v1}, Lorg/telegram/ui/DataSettingsActivity;->updateRows(Z)V

    return-void

    :cond_25
    const/4 v1, 0x0

    const/4 v12, 0x1

    .line 370
    iget v3, v0, Lorg/telegram/ui/DataSettingsActivity;->mobileRow:I

    if-ne v2, v3, :cond_26

    move v6, v1

    goto :goto_d

    .line 372
    :cond_26
    iget v1, v0, Lorg/telegram/ui/DataSettingsActivity;->wifiRow:I

    if-ne v2, v1, :cond_27

    move v6, v12

    goto :goto_d

    :cond_27
    move v6, v9

    .line 377
    :goto_d
    new-instance v1, Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-direct {v1, v6}, Lorg/telegram/ui/DataAutoDownloadActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :goto_e
    if-ne v2, v4, :cond_28

    move v6, v9

    goto :goto_f

    .line 305
    :cond_28
    iget v3, v0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryChannelsRow:I

    if-ne v2, v3, :cond_29

    const/4 v6, 0x4

    goto :goto_f

    :cond_29
    move v6, v12

    .line 310
    :goto_f
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2a

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p4, v2

    if-lez v2, :cond_2b

    :cond_2a
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_2c

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p4, v1

    if-ltz v1, :cond_2c

    .line 311
    :cond_2b
    invoke-static {v6}, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->getSettings(I)Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->toggle()V

    .line 312
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void

    .line 314
    :cond_2c
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 315
    const-string v2, "type"

    invoke-virtual {v1, v2, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 316
    new-instance v2, Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/SaveToGallerySettingsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$loadCacheSize$0()V
    .locals 1

    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageLoading:Z

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageRow:I

    if-ltz v0, :cond_0

    .line 211
    invoke-direct {p0, v0}, Lorg/telegram/ui/DataSettingsActivity;->rebind(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadCacheSize$1(Ljava/lang/Runnable;JLjava/lang/Long;)V
    .locals 3

    .line 218
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 219
    iget-boolean p1, p0, Lorg/telegram/ui/DataSettingsActivity;->updateStorageUsageAnimated:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    const-wide/16 p1, 0x78

    cmp-long p1, v1, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/DataSettingsActivity;->updateStorageUsageAnimated:Z

    .line 220
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageSize:J

    .line 221
    iput-boolean v0, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageLoading:Z

    .line 222
    iget-object p1, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageRow:I

    if-ltz p1, :cond_2

    .line 223
    invoke-direct {p0, p1}, Lorg/telegram/ui/DataSettingsActivity;->rebind(I)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$setStorageDirectory$10()V
    .locals 0

    .line 615
    invoke-static {}, Lorg/telegram/ui/CacheControlActivity;->resetCalculatedTotalSIze()V

    .line 616
    invoke-direct {p0}, Lorg/telegram/ui/DataSettingsActivity;->loadCacheSize()V

    return-void
.end method

.method private loadCacheSize()V
    .locals 4

    .line 208
    new-instance v0, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DataSettingsActivity;)V

    const-wide/16 v1, 0x64

    .line 214
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 217
    new-instance v3, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, v1, v2}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/DataSettingsActivity;Ljava/lang/Runnable;J)V

    invoke-static {v3}, Lorg/telegram/ui/CacheControlActivity;->calculateTotalSize(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private rebind(I)V
    .locals 3

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 233
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 234
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 235
    iget-object v2, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 236
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private rebindAll()V
    .locals 5

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 247
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 248
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 249
    iget-object v2, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 251
    iget-object v3, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    iget-object v4, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v3, v2, v1}, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private setStorageDirectory(Ljava/lang/String;)V
    .locals 1

    .line 608
    sput-object p1, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    .line 609
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 611
    sput-boolean p1, Lorg/telegram/messenger/SharedConfig;->readOnlyStorageDirAlertShowed:Z

    .line 613
    :cond_0
    iget p1, p0, Lorg/telegram/ui/DataSettingsActivity;->storageNumRow:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/DataSettingsActivity;->rebind(I)V

    .line 614
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/DataSettingsActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageLoader;->checkMediaPaths(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateRows(Z)V
    .locals 6

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->usageSectionRow:I

    const/4 v1, 0x1

    add-int v2, v1, v1

    .line 137
    iput v1, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageRow:I

    add-int/lit8 v3, v2, 0x1

    .line 138
    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->dataUsageRow:I

    const/4 v2, -0x1

    .line 139
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->storageNumRow:I

    .line 140
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRootDirs()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    .line 141
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 142
    iget v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->storageNumRow:I

    .line 144
    :cond_0
    iget v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->usageSection2Row:I

    add-int/lit8 v5, v3, 0x2

    .line 145
    iput v4, p0, Lorg/telegram/ui/DataSettingsActivity;->mediaDownloadSectionRow:I

    add-int/lit8 v4, v3, 0x3

    .line 146
    iput v5, p0, Lorg/telegram/ui/DataSettingsActivity;->mobileRow:I

    add-int/lit8 v5, v3, 0x4

    .line 147
    iput v4, p0, Lorg/telegram/ui/DataSettingsActivity;->wifiRow:I

    add-int/lit8 v3, v3, 0x5

    .line 148
    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/DataSettingsActivity;->roamingRow:I

    .line 149
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getDownloadController()Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    .line 150
    iget-object v4, v3, Lorg/telegram/messenger/DownloadController;->lowPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 151
    invoke-virtual {v3}, Lorg/telegram/messenger/DownloadController;->getCurrentRoamingPreset()Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DownloadController$Preset;->equals(Lorg/telegram/messenger/DownloadController$Preset;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lorg/telegram/messenger/DownloadController;->lowPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v4}, Lorg/telegram/messenger/DownloadController$Preset;->isEnabled()Z

    move-result v4

    iget-object v5, v3, Lorg/telegram/messenger/DownloadController;->roamingPreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-boolean v5, v5, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    if-ne v4, v5, :cond_1

    iget-object v4, v3, Lorg/telegram/messenger/DownloadController;->mediumPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 152
    invoke-virtual {v3}, Lorg/telegram/messenger/DownloadController;->getCurrentMobilePreset()Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DownloadController$Preset;->equals(Lorg/telegram/messenger/DownloadController$Preset;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lorg/telegram/messenger/DownloadController;->mediumPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v4}, Lorg/telegram/messenger/DownloadController$Preset;->isEnabled()Z

    move-result v4

    iget-object v5, v3, Lorg/telegram/messenger/DownloadController;->mobilePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-boolean v5, v5, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    if-ne v4, v5, :cond_1

    iget-object v4, v3, Lorg/telegram/messenger/DownloadController;->highPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 153
    invoke-virtual {v3}, Lorg/telegram/messenger/DownloadController;->getCurrentWiFiPreset()Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DownloadController$Preset;->equals(Lorg/telegram/messenger/DownloadController$Preset;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lorg/telegram/messenger/DownloadController;->highPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v4}, Lorg/telegram/messenger/DownloadController$Preset;->isEnabled()Z

    move-result v4

    iget-object v3, v3, Lorg/telegram/messenger/DownloadController;->wifiPreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-boolean v3, v3, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    if-ne v4, v3, :cond_1

    move v0, v1

    .line 155
    :cond_1
    iget v3, p0, Lorg/telegram/ui/DataSettingsActivity;->resetDownloadRow:I

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    .line 156
    :cond_2
    iget v0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    :goto_0
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->resetDownloadRow:I

    .line 157
    iget-object v4, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    if-eqz v4, :cond_5

    if-nez p1, :cond_5

    if-gez v3, :cond_3

    if-ltz v0, :cond_3

    .line 159
    iget v0, p0, Lorg/telegram/ui/DataSettingsActivity;->roamingRow:I

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/DataSettingsActivity;->resetDownloadRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_1

    :cond_3
    if-ltz v3, :cond_4

    if-gez v0, :cond_4

    .line 162
    iget v0, p0, Lorg/telegram/ui/DataSettingsActivity;->roamingRow:I

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_1

    :cond_4
    move p1, v1

    .line 168
    :cond_5
    :goto_1
    iget v0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->mediaDownloadSection2Row:I

    add-int/lit8 v3, v0, 0x2

    .line 170
    iput v1, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGallerySectionRow:I

    add-int/lit8 v1, v0, 0x3

    .line 171
    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryPeerRow:I

    add-int/lit8 v3, v0, 0x4

    .line 172
    iput v1, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryGroupsRow:I

    add-int/lit8 v1, v0, 0x5

    .line 173
    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryChannelsRow:I

    add-int/lit8 v3, v0, 0x6

    .line 174
    iput v1, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryDividerRow:I

    add-int/lit8 v1, v0, 0x7

    .line 180
    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->streamSectionRow:I

    add-int/lit8 v3, v0, 0x8

    .line 181
    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/DataSettingsActivity;->enableStreamRow:I

    .line 182
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v1, :cond_6

    add-int/lit8 v1, v0, 0x9

    .line 183
    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->enableMkvRow:I

    add-int/lit8 v0, v0, 0xa

    .line 184
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/DataSettingsActivity;->enableAllStreamRow:I

    goto :goto_2

    .line 186
    :cond_6
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->enableAllStreamRow:I

    .line 187
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->enableMkvRow:I

    .line 189
    :goto_2
    iget v0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->enableAllStreamInfoRow:I

    .line 191
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->enableCacheStreamRow:I

    add-int/lit8 v2, v0, 0x2

    .line 192
    iput v1, p0, Lorg/telegram/ui/DataSettingsActivity;->callsSectionRow:I

    add-int/lit8 v1, v0, 0x3

    .line 193
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->useLessDataForCallsRow:I

    add-int/lit8 v2, v0, 0x4

    .line 195
    iput v1, p0, Lorg/telegram/ui/DataSettingsActivity;->callsSection2Row:I

    add-int/lit8 v1, v0, 0x5

    .line 196
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->proxySectionRow:I

    add-int/lit8 v2, v0, 0x6

    .line 197
    iput v1, p0, Lorg/telegram/ui/DataSettingsActivity;->proxyRow:I

    add-int/lit8 v1, v0, 0x7

    .line 198
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->proxySection2Row:I

    add-int/lit8 v2, v0, 0x8

    .line 199
    iput v1, p0, Lorg/telegram/ui/DataSettingsActivity;->clearDraftsRow:I

    add-int/lit8 v0, v0, 0x9

    .line 200
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->clearDraftsSectionRow:I

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    .line 203
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->DataSettings:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 266
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 269
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/DataSettingsActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/DataSettingsActivity$1;-><init>(Lorg/telegram/ui/DataSettingsActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 279
    new-instance v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;-><init>(Lorg/telegram/ui/DataSettingsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    .line 281
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 282
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 285
    new-instance v3, Lorg/telegram/ui/DataSettingsActivity$2;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/DataSettingsActivity$2;-><init>(Lorg/telegram/ui/DataSettingsActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 294
    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->setSections()V

    .line 295
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v4, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setAdaptiveBackground(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 296
    iget-object v3, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 297
    iget-object v3, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p1, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v4, p0, Lorg/telegram/ui/DataSettingsActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 298
    iget-object v2, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x33

    const/4 v4, -0x1

    invoke-static {v4, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DataSettingsActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 597
    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v2, 0x15e

    .line 598
    invoke-virtual {p1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 599
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 600
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 601
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 602
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 604
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 57

    move-object/from16 v0, p0

    .line 948
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 950
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v11, v5, v10

    const/4 v12, 0x1

    const-class v13, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v13, v5, v12

    const/4 v6, 0x2

    const-class v14, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v14, v5, v6

    const/4 v6, 0x3

    const-class v15, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v15, v5, v6

    const/4 v8, 0x0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v22, 0x0

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v15, v3, v10

    const-string v4, "textView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v20

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v18, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move/from16 v24, v29

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v15, v3, v10

    const-string v5, "valueTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v20

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move/from16 v24, v38

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v15, v3, v10

    const-string v6, "checkBox"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v20

    sget v47, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move/from16 v24, v47

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v15, v3, v10

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v20

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    move/from16 v56, v24

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v7, Landroid/view/View;

    aput-object v7, v3, v10

    sget-object v20, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/16 v22, 0x0

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/16 v18, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    new-instance v21, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v11, v3, v10

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v25

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    move-object/from16 v22, v2

    move-object/from16 v24, v3

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v11, v3, v10

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    const/16 v22, 0x0

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v14, v3, v10

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v20

    const/16 v23, 0x0

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v18, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 973
    new-instance v21, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v13, v3, v10

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v25

    const/16 v23, 0x0

    move-object/from16 v22, v2

    move-object/from16 v24, v3

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    new-instance v30, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v13, v3, v10

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v34

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v32, 0x0

    const/16 v35, 0x0

    move-object/from16 v31, v2

    move-object/from16 v33, v3

    invoke-direct/range {v30 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    new-instance v39, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v13, v3, v10

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v43

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v41, 0x0

    const/16 v44, 0x0

    move-object/from16 v40, v2

    move-object/from16 v42, v3

    invoke-direct/range {v39 .. v47}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v39

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    new-instance v48, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v13, v3, v10

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v52

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v50, 0x0

    const/16 v53, 0x0

    move-object/from16 v49, v2

    move-object/from16 v51, v3

    invoke-direct/range {v48 .. v56}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v48

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v12, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v3, v2, v10

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public isSupportEdgeToEdge()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .locals 0

    .line 622
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/DownloadController;->checkAutodownloadSettings()V

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 125
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 127
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DownloadController;->loadAutoDownloadConfig(Z)V

    .line 128
    invoke-direct {p0, v1}, Lorg/telegram/ui/DataSettingsActivity;->updateRows(Z)V

    return v1
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 258
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    const/4 v0, 0x1

    .line 259
    sput-boolean v0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    return-void
.end method

.method public onInsets(IIII)V
    .locals 0

    .line 989
    iget-object p1, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 990
    iget-object p1, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 627
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 628
    invoke-direct {p0}, Lorg/telegram/ui/DataSettingsActivity;->loadCacheSize()V

    .line 629
    invoke-direct {p0}, Lorg/telegram/ui/DataSettingsActivity;->rebindAll()V

    const/4 v0, 0x0

    .line 630
    invoke-direct {p0, v0}, Lorg/telegram/ui/DataSettingsActivity;->updateRows(Z)V

    return-void
.end method
