.class public Lorg/telegram/messenger/voip/CallNotificationSoundProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 61
    const-string/jumbo p1, "r"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 64
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 69
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->startRingtoneAndVibration()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 74
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 75
    new-instance p2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-direct {p2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    const/16 v0, 0x36

    .line 76
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 77
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 78
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    const/4 p2, 0x0

    .line 79
    aget-object p1, p1, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 81
    :goto_1
    new-instance p2, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 65
    :cond_1
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "Unexpected application state"

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected file mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
        0x29t
        0x0t
        0x0t
        0x0t
        0x57t
        0x41t
        0x56t
        0x45t
        0x66t
        0x6dt
        0x74t
        0x20t
        0x10t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x44t
        -0x54t
        0x0t
        0x0t
        0x10t
        -0x4ft
        0x2t
        0x0t
        0x2t
        0x0t
        0x10t
        0x0t
        0x64t
        0x61t
        0x74t
        0x61t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
