.class public Lorg/telegram/messenger/FilesMigrationService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;
    }
.end annotation


# static fields
.field public static filesMigrationBottomSheet:Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet; = null

.field public static hasOldFolder:Z = false

.field public static isRunning:Z = false

.field private static wasShown:Z = false


# instance fields
.field lastUpdateTime:J

.field private movedFilesCount:I

.field private totalFilesCount:I


# direct methods
.method public static synthetic $r8$lambda$__4K4ggOqYdh8ZMIW6FvuyZxuxY(Lorg/telegram/messenger/FilesMigrationService;Ljava/io/File;Ljava/nio/file/Path;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FilesMigrationService;->lambda$moveDirectory$0(Ljava/io/File;Ljava/nio/file/Path;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f_GcEhT2WGRWhAWWU9TEFpcm5JQ(Lorg/telegram/messenger/FilesMigrationService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FilesMigrationService;->lambda$updateProgress$1(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static checkBottomSheet(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 11

    .line 188
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "systemConfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 189
    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "migration_to_scoped_storage_finished"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "migration_to_scoped_storage_count"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_5

    sget-boolean v4, Lorg/telegram/messenger/FilesMigrationService;->wasShown:Z

    if-nez v4, :cond_5

    sget-object v4, Lorg/telegram/messenger/FilesMigrationService;->filesMigrationBottomSheet:Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;

    if-nez v4, :cond_5

    sget-boolean v4, Lorg/telegram/messenger/FilesMigrationService;->isRunning:Z

    if-eqz v4, :cond_0

    goto/16 :goto_2

    .line 192
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_3

    .line 193
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 194
    sget-object v5, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 195
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRootDirs()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 197
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_2

    .line 198
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 199
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v4, v8

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 206
    :cond_2
    :goto_1
    new-instance v5, Ljava/io/File;

    const-string v6, "exteraGram"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    sput-boolean v4, Lorg/telegram/messenger/FilesMigrationService;->hasOldFolder:Z

    .line 209
    :cond_3
    sget-boolean v4, Lorg/telegram/messenger/FilesMigrationService;->hasOldFolder:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 210
    new-instance v1, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    sput-object v1, Lorg/telegram/messenger/FilesMigrationService;->filesMigrationBottomSheet:Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;

    .line 211
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 212
    sput-boolean v5, Lorg/telegram/messenger/FilesMigrationService;->wasShown:Z

    .line 213
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v5

    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 215
    :cond_4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    :goto_2
    return-void
.end method

.method private getFilesCount(Ljava/io/File;)I
    .locals 3

    .line 117
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 121
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    move v0, v1

    .line 123
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 124
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lorg/telegram/messenger/FilesMigrationService;->getFilesCount(Ljava/io/File;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    return v1
.end method

.method private synthetic lambda$moveDirectory$0(Ljava/io/File;Ljava/nio/file/Path;)V
    .locals 2

    .line 140
    new-instance v0, Ljava/io/File;

    invoke-interface {p2}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 141
    new-array v1, p1, [Ljava/nio/file/LinkOption;

    invoke-static {p2, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-interface {p2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/FilesMigrationService;->moveDirectory(Ljava/io/File;Ljava/io/File;)V

    return-void

    .line 145
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    new-array p1, p1, [Ljava/nio/file/CopyOption;

    invoke-static {p2, v0, p1}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 147
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 149
    :try_start_1
    invoke-interface {p2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 151
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 154
    :goto_0
    iget p1, p0, Lorg/telegram/messenger/FilesMigrationService;->movedFilesCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/telegram/messenger/FilesMigrationService;->movedFilesCount:I

    .line 155
    invoke-direct {p0}, Lorg/telegram/messenger/FilesMigrationService;->updateProgress()V

    return-void
.end method

.method private synthetic lambda$updateProgress$1(I)V
    .locals 5

    .line 174
    invoke-static {}, Lorg/telegram/messenger/FilesMigrationService$$ExternalSyntheticApiModelOutline2;->m()V

    sget-object v0, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/telegram/messenger/FilesMigrationService$$ExternalSyntheticApiModelOutline1;->m(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->MigratingFiles:I

    .line 175
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 176
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/FilesMigrationService;->totalFilesCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "%s/%s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->notification:I

    .line 177
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/FilesMigrationService;->totalFilesCount:I

    .line 179
    invoke-virtual {v0, v1, p1, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 181
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x12d

    .line 182
    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private moveDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 2

    .line 135
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 138
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FilesMigrationService$$ExternalSyntheticAPIConversion0;->m(Ljava/nio/file/Path;)Lj$/util/stream/Stream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :try_start_1
    new-instance v1, Lorg/telegram/messenger/FilesMigrationService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2}, Lorg/telegram/messenger/FilesMigrationService$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/FilesMigrationService;Ljava/io/File;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :try_start_2
    invoke-interface {v0}, Lj$/util/stream/BaseStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :catchall_0
    move-exception p2

    if-eqz v0, :cond_1

    .line 138
    :try_start_3
    invoke-interface {v0}, Lj$/util/stream/BaseStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 159
    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 162
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 164
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    return-void
.end method

.method public static start()V
    .locals 3

    .line 54
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/messenger/FilesMigrationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private updateProgress()V
    .locals 4

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 171
    iget-wide v2, p0, Lorg/telegram/messenger/FilesMigrationService;->lastUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x14

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/FilesMigrationService;->movedFilesCount:I

    iget v1, p0, Lorg/telegram/messenger/FilesMigrationService;->totalFilesCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 172
    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/FilesMigrationService;->movedFilesCount:I

    .line 173
    new-instance v1, Lorg/telegram/messenger/FilesMigrationService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/FilesMigrationService$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/FilesMigrationService;I)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public migrateOldFolder()V
    .locals 8

    .line 84
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 85
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 86
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRootDirs()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    .line 89
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 90
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v0, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 98
    :cond_1
    :goto_1
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 99
    new-instance v3, Ljava/io/File;

    const-string v4, "exteraGram"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, v1}, Lorg/telegram/messenger/FilesMigrationService;->getFilesCount(Ljava/io/File;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/FilesMigrationService;->totalFilesCount:I

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-direct {p0, v1, v3}, Lorg/telegram/messenger/FilesMigrationService;->moveDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 108
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "move time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 112
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "systemConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "migration_to_scoped_storage_finished"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 60
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->checkOtherNotificationsChannel()V

    .line 61
    invoke-static {}, Lorg/telegram/messenger/FilesMigrationService$$ExternalSyntheticApiModelOutline2;->m()V

    sget-object v0, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/telegram/messenger/FilesMigrationService$$ExternalSyntheticApiModelOutline1;->m(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->MigratingFiles:I

    .line 62
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->notification:I

    .line 64
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    .line 66
    sput-boolean v1, Lorg/telegram/messenger/FilesMigrationService;->isRunning:Z

    .line 67
    new-instance v1, Lorg/telegram/messenger/FilesMigrationService$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FilesMigrationService$1;-><init>(Lorg/telegram/messenger/FilesMigrationService;)V

    .line 77
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/16 v1, 0x12d

    .line 78
    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 80
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
