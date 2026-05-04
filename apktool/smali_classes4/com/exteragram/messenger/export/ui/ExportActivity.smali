.class public Lcom/exteragram/messenger/export/ui/ExportActivity;
.super Lcom/exteragram/messenger/preferences/BasePreferencesActivity;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;
    }
.end annotation


# static fields
.field private static final formats:[Ljava/lang/CharSequence;


# instance fields
.field private chatsSettingsExpanded:Z

.field private exportSettingsExpanded:Z

.field private mediaSettingsExpanded:Z

.field private final peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field private final settings:Lcom/exteragram/messenger/export/ExportSettings;


# direct methods
.method public static synthetic $r8$lambda$2ww2iga_QemmpPom37bdc45SPd8(Lcom/exteragram/messenger/export/ui/ExportActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/export/ui/ExportActivity;->handleExportSettingsSwitchClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OSgnD9N_V68EeI_ll-EOxO0ls3w(Lcom/exteragram/messenger/export/ui/ExportActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/export/ui/ExportActivity;->lambda$onClick$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SBFzmupH0MXE3Hawfd6P9PVrNb8(Lcom/exteragram/messenger/export/ui/ExportActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/export/ui/ExportActivity;->handleChatsSettingsSwitchClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vM-tb8QXMH9vObp8Ke2sj7J2-kw(Lcom/exteragram/messenger/export/ui/ExportActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/export/ui/ExportActivity;->handleMediaSettingsSwitchClick(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 71
    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "HTML"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "JSON"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "HTML and JSON"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/exteragram/messenger/export/ui/ExportActivity;->formats:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$InputPeer;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;-><init>()V

    .line 64
    new-instance v0, Lcom/exteragram/messenger/export/ExportSettings;

    invoke-direct {v0}, Lcom/exteragram/messenger/export/ExportSettings;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    .line 78
    iput-object p1, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    return-void
.end method

.method private getChatsSettingsCount()I
    .locals 4

    .line 313
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget v0, v0, Lcom/exteragram/messenger/export/ExportSettings;->types:I

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    and-int/lit16 v3, v0, 0x100

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_5

    add-int/2addr v1, v2

    :cond_5
    return v1
.end method

.method private getExportSettingsCount()I
    .locals 4

    .line 304
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget v0, v0, Lcom/exteragram/messenger/export/ExportSettings;->types:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    and-int/lit16 v3, v0, 0x800

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    add-int/2addr v1, v2

    :cond_3
    return v1
.end method

.method private getIndexOfFormat()I
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget-object v0, v0, Lcom/exteragram/messenger/export/ExportSettings;->format:Lcom/exteragram/messenger/export/output/AbstractWriter$Format;

    sget-object v1, Lcom/exteragram/messenger/export/output/AbstractWriter$Format;->Json:Lcom/exteragram/messenger/export/output/AbstractWriter$Format;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 336
    :cond_0
    sget-object v1, Lcom/exteragram/messenger/export/output/AbstractWriter$Format;->HtmlAndJson:Lcom/exteragram/messenger/export/output/AbstractWriter$Format;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getMediaSettingsCount()I
    .locals 4

    .line 324
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget-object v0, v0, Lcom/exteragram/messenger/export/ExportSettings;->media:Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;

    iget v0, v0, Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;->type:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    add-int/2addr v1, v2

    :cond_6
    return v1
.end method

.method private handleChatsSettingsSwitchClick(Landroid/view/View;)V
    .locals 1

    .line 267
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell2;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/exteragram/messenger/export/ui/ExportActivity;->setChatsSettings(Z)V

    .line 268
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private handleExportSettingsSwitchClick(Landroid/view/View;)V
    .locals 1

    .line 262
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell2;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/exteragram/messenger/export/ui/ExportActivity;->setExportSettings(Z)V

    .line 263
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private handleMediaSettingsSwitchClick(Landroid/view/View;)V
    .locals 1

    .line 272
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell2;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/exteragram/messenger/export/ui/ExportActivity;->setMediaSettings(Z)V

    .line 273
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$0(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    sget-object v0, Lcom/exteragram/messenger/export/output/AbstractWriter$Format;->Html:Lcom/exteragram/messenger/export/output/AbstractWriter$Format;

    iput-object v0, p1, Lcom/exteragram/messenger/export/ExportSettings;->format:Lcom/exteragram/messenger/export/output/AbstractWriter$Format;

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 222
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    sget-object v0, Lcom/exteragram/messenger/export/output/AbstractWriter$Format;->Json:Lcom/exteragram/messenger/export/output/AbstractWriter$Format;

    iput-object v0, p1, Lcom/exteragram/messenger/export/ExportSettings;->format:Lcom/exteragram/messenger/export/output/AbstractWriter$Format;

    return-void

    .line 223
    :cond_1
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    sget-object v0, Lcom/exteragram/messenger/export/output/AbstractWriter$Format;->HtmlAndJson:Lcom/exteragram/messenger/export/output/AbstractWriter$Format;

    iput-object v0, p1, Lcom/exteragram/messenger/export/ExportSettings;->format:Lcom/exteragram/messenger/export/output/AbstractWriter$Format;

    return-void
.end method

.method private setChatsSettings(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 292
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget v0, p1, Lcom/exteragram/messenger/export/ExportSettings;->types:I

    or-int/lit16 v0, v0, 0x7e0

    iput v0, p1, Lcom/exteragram/messenger/export/ExportSettings;->types:I

    return-void

    .line 293
    :cond_0
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget v0, p1, Lcom/exteragram/messenger/export/ExportSettings;->types:I

    and-int/lit16 v0, v0, -0x7e1

    iput v0, p1, Lcom/exteragram/messenger/export/ExportSettings;->types:I

    return-void
.end method

.method private setExportSettings(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 286
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget v0, p1, Lcom/exteragram/messenger/export/ExportSettings;->types:I

    or-int/lit16 v0, v0, 0x80d

    iput v0, p1, Lcom/exteragram/messenger/export/ExportSettings;->types:I

    return-void

    .line 287
    :cond_0
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget v0, p1, Lcom/exteragram/messenger/export/ExportSettings;->types:I

    and-int/lit16 v0, v0, -0x80e

    iput v0, p1, Lcom/exteragram/messenger/export/ExportSettings;->types:I

    return-void
.end method

.method private setMediaSettings(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 298
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ExportSettings;->media:Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;

    iget v0, p1, Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;->type:I

    or-int/lit8 v0, v0, 0x7f

    iput v0, p1, Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;->type:I

    return-void

    .line 299
    :cond_0
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ExportSettings;->media:Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;

    iget v0, p1, Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;->type:I

    and-int/lit8 v0, v0, -0x80

    iput v0, p1, Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;->type:I

    return-void
.end method

.method private toggleMainSetting(I)V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget v1, v0, Lcom/exteragram/messenger/export/ExportSettings;->types:I

    xor-int/2addr p1, v1

    iput p1, v0, Lcom/exteragram/messenger/export/ExportSettings;->types:I

    return-void
.end method

.method private toggleMediaSetting(I)V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget-object v0, v0, Lcom/exteragram/messenger/export/ExportSettings;->media:Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;

    iget v1, v0, Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;->type:I

    xor-int/2addr p1, v1

    iput p1, v0, Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;->type:I

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 9

    .line 113
    sget p2, Lcom/exteragram/messenger/export/controllers/ExportController;->FINISH_NOTIFICATION:I

    if-ne p1, p2, :cond_0

    .line 114
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->contact_check:I

    const-string p3, "Export complete!"

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 116
    aget-object p2, p3, p1

    check-cast p2, Lcom/exteragram/messenger/export/controllers/ExportController$ProcessingState;

    .line 117
    iget p3, p2, Lcom/exteragram/messenger/export/controllers/ExportController$ProcessingState;->substepsPassed:I

    int-to-float p3, p3

    iget v0, p2, Lcom/exteragram/messenger/export/controllers/ExportController$ProcessingState;->substepsTotal:I

    int-to-float v0, v0

    div-float/2addr p3, v0

    .line 119
    iget-wide v0, p2, Lcom/exteragram/messenger/export/controllers/ExportController$ProcessingState;->bytesCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-lez v0, :cond_1

    .line 120
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, p2, Lcom/exteragram/messenger/export/controllers/ExportController$ProcessingState;->bytesName:Ljava/lang/String;

    iget-wide v5, p2, Lcom/exteragram/messenger/export/controllers/ExportController$ProcessingState;->bytesLoaded:J

    .line 122
    invoke-static {v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p2, Lcom/exteragram/messenger/export/controllers/ExportController$ProcessingState;->bytesCount:J

    .line 123
    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object p2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, p1

    aput-object v5, v2, v3

    aput-object p2, v2, v1

    .line 120
    const-string p1, "Downloading %s\n%s / %s"

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 124
    :cond_1
    iget v0, p2, Lcom/exteragram/messenger/export/controllers/ExportController$ProcessingState;->entityCount:I

    if-lez v0, :cond_2

    .line 125
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, p2, Lcom/exteragram/messenger/export/controllers/ExportController$ProcessingState;->entityName:Ljava/lang/String;

    iget v5, p2, Lcom/exteragram/messenger/export/controllers/ExportController$ProcessingState;->entityIndex:I

    add-int/2addr v5, v3

    .line 126
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p2, Lcom/exteragram/messenger/export/controllers/ExportController$ProcessingState;->entityCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p2, Lcom/exteragram/messenger/export/controllers/ExportController$ProcessingState;->itemIndex:I

    .line 127
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget p2, p2, Lcom/exteragram/messenger/export/controllers/ExportController$ProcessingState;->itemCount:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, p1

    aput-object v5, v8, v3

    aput-object v6, v8, v1

    aput-object v7, v8, v2

    const/4 p1, 0x4

    aput-object p2, v8, p1

    .line 125
    const-string p1, "Exporting %s (%d / %d)\nMessage %d / %d"

    invoke-static {v0, p1, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 129
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exporting "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/exteragram/messenger/export/controllers/ExportController$ProcessingState;->step:Lcom/exteragram/messenger/export/controllers/ExportController$ProcessingState$Step;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 131
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[EXPORT] "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method protected fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 6

    .line 142
    const-string p2, "Export settings"

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object p2, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->EXPORT_SETTINGS:Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->getId()I

    move-result p2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0}, Lcom/exteragram/messenger/export/ui/ExportActivity;->getExportSettingsCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "%d/4"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/exteragram/messenger/export/ui/ExportActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/exteragram/messenger/export/ui/ExportActivity$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/export/ui/ExportActivity;)V

    const-string v5, "Main settings"

    invoke-static {p2, v5, v1, v3}, Lorg/telegram/ui/Components/UItem;->asExteraExpandableSwitch(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 146
    invoke-direct {p0}, Lcom/exteragram/messenger/export/ui/ExportActivity;->getExportSettingsCount()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-boolean v1, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->exportSettingsExpanded:Z

    xor-int/2addr v1, v2

    .line 147
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 145
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-boolean p2, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->exportSettingsExpanded:Z

    if-eqz p2, :cond_5

    .line 149
    sget-object p2, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->ACCOUNT_INFO:Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->getId()I

    move-result p2

    const-string v1, "Account Info"

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget v1, v1, Lcom/exteragram/messenger/export/ExportSettings;->types:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object p2, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->CONTACTS_LIST:Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->getId()I

    move-result p2

    const-string v1, "Contacts"

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget v1, v1, Lcom/exteragram/messenger/export/ExportSettings;->types:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object p2, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->STORY_ARCHIVE:Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->getId()I

    move-result p2

    const-string v1, "Stories"

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget v1, v1, Lcom/exteragram/messenger/export/ExportSettings;->types:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object p2, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->ACTIVE_SESSIONS:Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->getId()I

    move-result p2

    const-string v1, "Sessions"

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget v1, v1, Lcom/exteragram/messenger/export/ExportSettings;->types:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    move v1, v4

    :goto_4
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_5
    sget-object p2, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->CHATS_SETTINGS:Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->getId()I

    move-result p2

    invoke-direct {p0}, Lcom/exteragram/messenger/export/ui/ExportActivity;->getChatsSettingsCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v1, "%d/6"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/exteragram/messenger/export/ui/ExportActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/exteragram/messenger/export/ui/ExportActivity$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/export/ui/ExportActivity;)V

    const-string v5, "Chats settings"

    invoke-static {p2, v5, v1, v3}, Lorg/telegram/ui/Components/UItem;->asExteraExpandableSwitch(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 157
    invoke-direct {p0}, Lcom/exteragram/messenger/export/ui/ExportActivity;->getChatsSettingsCount()I

    move-result v1

    if-lez v1, :cond_6

    move v1, v2

    goto :goto_5

    :cond_6
    move v1, v4

    :goto_5
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-boolean v1, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->chatsSettingsExpanded:Z

    xor-int/2addr v1, v2

    .line 158
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 156
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iget-boolean p2, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->chatsSettingsExpanded:Z

    if-eqz p2, :cond_d

    .line 160
    sget-object p2, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->PERSONAL_CHATS:Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->getId()I

    move-result p2

    const-string v1, "Personal chats"

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget v1, v1, Lcom/exteragram/messenger/export/ExportSettings;->types:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_7

    move v1, v2

    goto :goto_6

    :cond_7
    move v1, v4

    :goto_6
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object p2, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->BOT_CHATS:Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->getId()I

    move-result p2

    const-string v1, "Bots"

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget v1, v1, Lcom/exteragram/messenger/export/ExportSettings;->types:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_8

    move v1, v2

    goto :goto_7

    :cond_8
    move v1, v4

    :goto_7
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object p2, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->PRIVATE_GROUPS:Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->getId()I

    move-result p2

    const-string v1, "Private groups"

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget v1, v1, Lcom/exteragram/messenger/export/ExportSettings;->types:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_9

    move v1, v2

    goto :goto_8

    :cond_9
    move v1, v4

    :goto_8
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object p2, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->PRIVATE_CHANNELS:Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->getId()I

    move-result p2

    const-string v1, "Private channels"

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget v1, v1, Lcom/exteragram/messenger/export/ExportSettings;->types:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_9

    :cond_a
    move v1, v4

    :goto_9
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object p2, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->PUBLIC_GROUPS:Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->getId()I

    move-result p2

    const-string v1, "Public groups"

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget v1, v1, Lcom/exteragram/messenger/export/ExportSettings;->types:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_b

    move v1, v2

    goto :goto_a

    :cond_b
    move v1, v4

    :goto_a
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object p2, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->PUBLIC_CHANNELS:Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->getId()I

    move-result p2

    const-string v1, "Public channels"

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget v1, v1, Lcom/exteragram/messenger/export/ExportSettings;->types:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_c

    move v1, v2

    goto :goto_b

    :cond_c
    move v1, v4

    :goto_b
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_d
    sget-object p2, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->MEDIA_SETTINGS:Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->getId()I

    move-result p2

    invoke-direct {p0}, Lcom/exteragram/messenger/export/ui/ExportActivity;->getMediaSettingsCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v1, "%d/7"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/export/ui/ExportActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/export/ui/ExportActivity$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/export/ui/ExportActivity;)V

    const-string v3, "Media settings"

    invoke-static {p2, v3, v0, v1}, Lorg/telegram/ui/Components/UItem;->asExteraExpandableSwitch(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 170
    invoke-direct {p0}, Lcom/exteragram/messenger/export/ui/ExportActivity;->getMediaSettingsCount()I

    move-result v0

    if-lez v0, :cond_e

    move v0, v2

    goto :goto_c

    :cond_e
    move v0, v4

    :goto_c
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-boolean v0, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->mediaSettingsExpanded:Z

    xor-int/2addr v0, v2

    .line 171
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 169
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iget-boolean p2, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->mediaSettingsExpanded:Z

    if-eqz p2, :cond_16

    .line 173
    sget-object p2, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->PHOTOS:Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->getId()I

    move-result p2

    const-string v0, "Photos"

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget-object v0, v0, Lcom/exteragram/messenger/export/ExportSettings;->media:Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;

    iget v0, v0, Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;->type:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_f

    move v0, v2

    goto :goto_d

    :cond_f
    move v0, v4

    :goto_d
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object p2, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->VIDEOS:Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->getId()I

    move-result p2

    const-string v0, "Videos"

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget-object v0, v0, Lcom/exteragram/messenger/export/ExportSettings;->media:Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;

    iget v0, v0, Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;->type:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_e

    :cond_10
    move v0, v4

    :goto_e
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object p2, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->VOICE_MESSAGES:Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->getId()I

    move-result p2

    const-string v0, "Voice messages"

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget-object v0, v0, Lcom/exteragram/messenger/export/ExportSettings;->media:Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;

    iget v0, v0, Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;->type:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_11

    move v0, v2

    goto :goto_f

    :cond_11
    move v0, v4

    :goto_f
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object p2, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->VIDEO_MESSAGES:Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->getId()I

    move-result p2

    const-string v0, "Video messages"

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget-object v0, v0, Lcom/exteragram/messenger/export/ExportSettings;->media:Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;

    iget v0, v0, Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;->type:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_12

    move v0, v2

    goto :goto_10

    :cond_12
    move v0, v4

    :goto_10
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object p2, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->STICKERS:Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->getId()I

    move-result p2

    const-string v0, "Stickers"

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget-object v0, v0, Lcom/exteragram/messenger/export/ExportSettings;->media:Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;

    iget v0, v0, Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;->type:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_13

    move v0, v2

    goto :goto_11

    :cond_13
    move v0, v4

    :goto_11
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object p2, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->GIFS:Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->getId()I

    move-result p2

    const-string v0, "GIFs"

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget-object v0, v0, Lcom/exteragram/messenger/export/ExportSettings;->media:Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;

    iget v0, v0, Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;->type:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_14

    move v0, v2

    goto :goto_12

    :cond_14
    move v0, v4

    :goto_12
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object p2, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->FILES:Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->getId()I

    move-result p2

    const-string v0, "Files"

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget-object v0, v0, Lcom/exteragram/messenger/export/ExportSettings;->media:Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;

    iget v0, v0, Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;->type:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_15

    goto :goto_13

    :cond_15
    move v2, v4

    :goto_13
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_16
    invoke-static {}, Lorg/telegram/ui/Components/UItem;->asShadow()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object p2, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->FORMAT:Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->getId()I

    move-result p2

    sget-object v0, Lcom/exteragram/messenger/export/ui/ExportActivity;->formats:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/exteragram/messenger/export/ui/ExportActivity;->getIndexOfFormat()I

    move-result v1

    aget-object v0, v0, v1

    const-string v1, "Select export result type"

    invoke-static {p2, v1, v0}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object p2, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->START_EXPORT:Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->getId()I

    move-result p2

    const-string v0, "Start Export"

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object p2, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->VIEW_JSON_EXPORT:Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->getId()I

    move-result p2

    const-string v0, "Open Json Export"

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    const-string p2, "Here you can export your chats."

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 137
    const-string v0, "Export Chats"

    return-object v0
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 1

    .line 246
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    const/16 v0, 0x539

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 249
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 250
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 251
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/exteragram/messenger/export/ui/AndroidPickerUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 252
    new-instance p2, Lcom/exteragram/messenger/export/ui/DialogsView;

    invoke-direct {p2, p1}, Lcom/exteragram/messenger/export/ui/DialogsView;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 254
    sget-boolean p2, Lcom/exteragram/messenger/ExteraConfig;->useGoogleCrashlytics:Z

    if-eqz p2, :cond_0

    .line 255
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method protected onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 6

    .line 193
    iget p2, p1, Lorg/telegram/ui/Components/UItem;->id:I

    if-lez p2, :cond_0

    invoke-static {}, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->values()[Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;

    move-result-object p3

    array-length p3, p3

    if-le p2, p3, :cond_1

    :cond_0
    move-object p1, p0

    goto/16 :goto_2

    .line 194
    :cond_1
    invoke-static {}, Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;->values()[Lcom/exteragram/messenger/export/ui/ExportActivity$ExportItem;

    move-result-object p2

    iget p3, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    aget-object p2, p2, p3

    .line 196
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 p3, 0x4

    const/16 p5, 0x8

    const/16 v0, 0x20

    const/16 v1, 0x40

    packed-switch p2, :pswitch_data_0

    :goto_0
    move-object p1, p0

    goto/16 :goto_1

    .line 236
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    const-string p2, "android.intent.category.DEFAULT"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string p2, "Choose a directory"

    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x539

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 227
    :pswitch_1
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz p1, :cond_2

    .line 228
    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iput-object p1, p2, Lcom/exteragram/messenger/export/ExportSettings;->singlePeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 230
    :cond_2
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    const-string p2, "Starting export..."

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 231
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ExportSettings;->media:Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;

    const-wide/32 p2, 0x7d000000

    iput-wide p2, p1, Lcom/exteragram/messenger/export/ExportSettings$MediaSettings;->sizeLimit:J

    .line 232
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lcom/exteragram/messenger/export/controllers/ExportController;->getInstance(I)Lcom/exteragram/messenger/export/controllers/ExportController;

    move-result-object p1

    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ExportActivity;->settings:Lcom/exteragram/messenger/export/ExportSettings;

    invoke-virtual {p1, p2}, Lcom/exteragram/messenger/export/controllers/ExportController;->startExport(Lcom/exteragram/messenger/export/ExportSettings;)V

    goto :goto_0

    .line 220
    :pswitch_2
    sget-object v2, Lcom/exteragram/messenger/export/ui/ExportActivity;->formats:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/exteragram/messenger/export/ui/ExportActivity;->getIndexOfFormat()I

    move-result v4

    new-instance v5, Lcom/exteragram/messenger/export/ui/ExportActivity$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/exteragram/messenger/export/ui/ExportActivity$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/export/ui/ExportActivity;)V

    const-string v3, "Select export result type"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->showListDialog(Lorg/telegram/ui/Components/UItem;[Ljava/lang/CharSequence;Ljava/lang/String;ILcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;)V

    move-object p1, v0

    goto/16 :goto_1

    :pswitch_3
    move-object p1, p0

    .line 218
    invoke-direct {p0, v1}, Lcom/exteragram/messenger/export/ui/ExportActivity;->toggleMediaSetting(I)V

    goto/16 :goto_1

    :pswitch_4
    move-object p1, p0

    .line 217
    invoke-direct {p0, v0}, Lcom/exteragram/messenger/export/ui/ExportActivity;->toggleMediaSetting(I)V

    goto/16 :goto_1

    :pswitch_5
    move-object p1, p0

    const/16 p2, 0x10

    .line 216
    invoke-direct {p0, p2}, Lcom/exteragram/messenger/export/ui/ExportActivity;->toggleMediaSetting(I)V

    goto/16 :goto_1

    :pswitch_6
    move-object p1, p0

    .line 215
    invoke-direct {p0, p5}, Lcom/exteragram/messenger/export/ui/ExportActivity;->toggleMediaSetting(I)V

    goto/16 :goto_1

    :pswitch_7
    move-object p1, p0

    .line 214
    invoke-direct {p0, p3}, Lcom/exteragram/messenger/export/ui/ExportActivity;->toggleMediaSetting(I)V

    goto/16 :goto_1

    :pswitch_8
    move-object p1, p0

    const/4 p2, 0x2

    .line 213
    invoke-direct {p0, p2}, Lcom/exteragram/messenger/export/ui/ExportActivity;->toggleMediaSetting(I)V

    goto/16 :goto_1

    :pswitch_9
    move-object p1, p0

    .line 212
    invoke-direct {p0, p4}, Lcom/exteragram/messenger/export/ui/ExportActivity;->toggleMediaSetting(I)V

    goto/16 :goto_1

    :pswitch_a
    move-object p1, p0

    .line 199
    iget-boolean p2, p1, Lcom/exteragram/messenger/export/ui/ExportActivity;->mediaSettingsExpanded:Z

    xor-int/2addr p2, p4

    iput-boolean p2, p1, Lcom/exteragram/messenger/export/ui/ExportActivity;->mediaSettingsExpanded:Z

    goto :goto_1

    :pswitch_b
    move-object p1, p0

    const/16 p2, 0x400

    .line 210
    invoke-direct {p0, p2}, Lcom/exteragram/messenger/export/ui/ExportActivity;->toggleMainSetting(I)V

    goto :goto_1

    :pswitch_c
    move-object p1, p0

    const/16 p2, 0x100

    .line 209
    invoke-direct {p0, p2}, Lcom/exteragram/messenger/export/ui/ExportActivity;->toggleMainSetting(I)V

    goto :goto_1

    :pswitch_d
    move-object p1, p0

    const/16 p2, 0x200

    .line 208
    invoke-direct {p0, p2}, Lcom/exteragram/messenger/export/ui/ExportActivity;->toggleMainSetting(I)V

    goto :goto_1

    :pswitch_e
    move-object p1, p0

    const/16 p2, 0x80

    .line 207
    invoke-direct {p0, p2}, Lcom/exteragram/messenger/export/ui/ExportActivity;->toggleMainSetting(I)V

    goto :goto_1

    :pswitch_f
    move-object p1, p0

    .line 206
    invoke-direct {p0, v1}, Lcom/exteragram/messenger/export/ui/ExportActivity;->toggleMainSetting(I)V

    goto :goto_1

    :pswitch_10
    move-object p1, p0

    .line 205
    invoke-direct {p0, v0}, Lcom/exteragram/messenger/export/ui/ExportActivity;->toggleMainSetting(I)V

    goto :goto_1

    :pswitch_11
    move-object p1, p0

    .line 198
    iget-boolean p2, p1, Lcom/exteragram/messenger/export/ui/ExportActivity;->chatsSettingsExpanded:Z

    xor-int/2addr p2, p4

    iput-boolean p2, p1, Lcom/exteragram/messenger/export/ui/ExportActivity;->chatsSettingsExpanded:Z

    goto :goto_1

    :pswitch_12
    move-object p1, p0

    .line 204
    invoke-direct {p0, p5}, Lcom/exteragram/messenger/export/ui/ExportActivity;->toggleMainSetting(I)V

    goto :goto_1

    :pswitch_13
    move-object p1, p0

    const/16 p2, 0x800

    .line 203
    invoke-direct {p0, p2}, Lcom/exteragram/messenger/export/ui/ExportActivity;->toggleMainSetting(I)V

    goto :goto_1

    :pswitch_14
    move-object p1, p0

    .line 202
    invoke-direct {p0, p3}, Lcom/exteragram/messenger/export/ui/ExportActivity;->toggleMainSetting(I)V

    goto :goto_1

    :pswitch_15
    move-object p1, p0

    .line 201
    invoke-direct {p0, p4}, Lcom/exteragram/messenger/export/ui/ExportActivity;->toggleMainSetting(I)V

    goto :goto_1

    :pswitch_16
    move-object p1, p0

    .line 197
    iget-boolean p2, p1, Lcom/exteragram/messenger/export/ui/ExportActivity;->exportSettingsExpanded:Z

    xor-int/2addr p2, p4

    iput-boolean p2, p1, Lcom/exteragram/messenger/export/ui/ExportActivity;->exportSettingsExpanded:Z

    .line 241
    :goto_1
    iget-object p2, p1, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p2, p2, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 83
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lcom/exteragram/messenger/export/controllers/ExportController;->INITIALIZATING_NOTIFICATION:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 84
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lcom/exteragram/messenger/export/controllers/ExportController;->DIALOGS_LIST_NOTIFICATION:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 85
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lcom/exteragram/messenger/export/controllers/ExportController;->PERSONAL_INFO_NOTIFICATION:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 86
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lcom/exteragram/messenger/export/controllers/ExportController;->USERPICS_NOTIFICATION:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 87
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lcom/exteragram/messenger/export/controllers/ExportController;->STORIES_NOTIFICATION:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 88
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lcom/exteragram/messenger/export/controllers/ExportController;->CONTACTS_NOTIFICATION:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 89
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lcom/exteragram/messenger/export/controllers/ExportController;->SESSIONS_NOTIFICATION:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 90
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lcom/exteragram/messenger/export/controllers/ExportController;->OTHER_DATA_NOTIFICATION:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 91
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lcom/exteragram/messenger/export/controllers/ExportController;->DIALOGS_NOTIFICATION:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 92
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lcom/exteragram/messenger/export/controllers/ExportController;->FINISH_NOTIFICATION:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 93
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 98
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lcom/exteragram/messenger/export/controllers/ExportController;->INITIALIZATING_NOTIFICATION:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 99
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lcom/exteragram/messenger/export/controllers/ExportController;->DIALOGS_LIST_NOTIFICATION:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 100
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lcom/exteragram/messenger/export/controllers/ExportController;->PERSONAL_INFO_NOTIFICATION:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 101
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lcom/exteragram/messenger/export/controllers/ExportController;->USERPICS_NOTIFICATION:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 102
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lcom/exteragram/messenger/export/controllers/ExportController;->STORIES_NOTIFICATION:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 103
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lcom/exteragram/messenger/export/controllers/ExportController;->CONTACTS_NOTIFICATION:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 104
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lcom/exteragram/messenger/export/controllers/ExportController;->SESSIONS_NOTIFICATION:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 105
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lcom/exteragram/messenger/export/controllers/ExportController;->OTHER_DATA_NOTIFICATION:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 106
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lcom/exteragram/messenger/export/controllers/ExportController;->DIALOGS_NOTIFICATION:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 107
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lcom/exteragram/messenger/export/controllers/ExportController;->FINISH_NOTIFICATION:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 108
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method
