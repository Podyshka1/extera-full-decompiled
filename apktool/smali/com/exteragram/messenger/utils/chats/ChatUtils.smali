.class public Lcom/exteragram/messenger/utils/chats/ChatUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Instance:[Lcom/exteragram/messenger/utils/chats/ChatUtils;

.field private static channelIcon:Landroid/text/SpannableStringBuilder;

.field private static editedIcon:Landroid/text/SpannableStringBuilder;

.field private static final lockObjects:[Ljava/lang/Object;

.field private static final textDecoder:Ljava/nio/charset/CharsetDecoder;

.field public static final utilsQueue:Lorg/telegram/messenger/DispatchQueue;


# instance fields
.field private final selectedAccount:I


# direct methods
.method public static synthetic $r8$lambda$33_JiIM6Ii58qn96m_myB3_Dg3w(Lcom/exteragram/messenger/utils/network/ImgurUtils$ImgurResponse;)V
    .locals 2

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/exteragram/messenger/utils/network/ImgurUtils$ImgurResponse;->deleteHash:Ljava/lang/String;

    invoke-static {v0}, Lcom/exteragram/messenger/utils/network/ImgurUtils;->deleteImage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to delete uploaded image with hash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/utils/network/ImgurUtils$ImgurResponse;->deleteHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/exteragram/messenger/utils/network/ImgurUtils$ImgurResponse;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 352
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5NwifKzW_TaAzx1tsO2by0IKQo0(Lcom/exteragram/messenger/utils/chats/ChatUtils;JLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->lambda$searchChat$13(JLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6GPfXxL5yESDK0aXTMj1wUhYxpo(Lcom/exteragram/messenger/utils/chats/ChatUtils;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->lambda$sendInlineBotRequest$6(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7OhhxcbdXL-bG8tfxRjoR2_ukZc(Lcom/exteragram/messenger/utils/chats/ChatUtils;JLorg/telegram/messenger/Utilities$Callback;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->lambda$resolveUser$12(JLorg/telegram/messenger/Utilities$Callback;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F2s3jlpB9t9fBB9zeNsdjPxQotY(Lcom/exteragram/messenger/utils/chats/ChatUtils;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$messages_BotResults;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->lambda$searchUser$11(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$messages_BotResults;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FL06CyadAiBxVEFrGWi8gdE8HM4(Ljava/lang/String;Landroid/app/Activity;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 755
    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GhI8b45Nc7dhBTITce7mU3f6wnQ(Lcom/exteragram/messenger/utils/chats/ChatUtils;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->lambda$resolveChannel$19(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GxFT0UIBpPlgZlk4AWNuKA8PU_Y(Lcom/exteragram/messenger/utils/chats/ChatUtils;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->lambda$sendInlineBotRequest$7(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TToaZf4KzHPJ5jfvu9l1MOFMVRY(Ljava/lang/String;ZLandroid/app/Activity;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 4

    .line 751
    const-string v0, ".webp"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 753
    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 755
    new-instance p1, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0, p2, p3}, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;Landroid/app/Activity;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 757
    :cond_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 759
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ".png"

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 760
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 761
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v0, v2, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 762
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 763
    new-instance p0, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda14;

    invoke-direct {p0, v1, p2, p3}, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda14;-><init>(Ljava/io/File;Landroid/app/Activity;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 767
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public static synthetic $r8$lambda$V160xjj38kChMTj75WQMR84kk5g(Lcom/exteragram/messenger/utils/chats/ChatUtils;JLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->lambda$searchUser$9(JLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XwbdAUMtQNF2W4fyysQlSKwNGA0(Lcom/exteragram/messenger/utils/chats/ChatUtils;Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->lambda$sendBotRequest$5(Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_14ZaEcSPrdMIaeHb5fyW7mUZTw(Lcom/exteragram/messenger/utils/chats/ChatUtils;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$messages_BotResults;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->lambda$sendBotRequest$3(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$messages_BotResults;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dtjqem9vZAejqqctT9G4t0C4MMw(Lcom/exteragram/messenger/utils/chats/ChatUtils;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->lambda$sendInlineBotRequest$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ej1TVKqpfCxVpm1t1XuHDaaWg6Q(Lcom/exteragram/messenger/utils/chats/ChatUtils;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$messages_BotResults;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->lambda$searchChat$15(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$messages_BotResults;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hYPZVE2oBY1FOoLoyEtoSZQ36dk(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_user;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 571
    invoke-interface {p0, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 573
    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 574
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jcRA-I4EzhIGZY4v2wo-dJ71WkY(Lcom/exteragram/messenger/utils/chats/ChatUtils;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$messages_BotResults;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->lambda$sendBotRequest$4(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$messages_BotResults;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kfOqH9CuKkE6en9KrSI9YAAYxck(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_channel;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 663
    invoke-static {p2, p1}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$py_7XtsRq6dbXG5Fo5qQWURGAdw(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 423
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 424
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 426
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s0B85LvTH-TSh4H75cP4h2cOGmc(Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 3

    .line 341
    :try_start_0
    invoke-static {p0}, Lcom/exteragram/messenger/utils/network/ImgurUtils;->uploadImage(Ljava/io/File;)Lcom/exteragram/messenger/utils/network/ImgurUtils$ImgurResponse;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/exteragram/messenger/utils/network/ImgurUtils$ImgurResponse;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/exteragram/messenger/utils/network/ImgurUtils$ImgurResponse;->imageUrl:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 345
    sget-object p1, Lcom/exteragram/messenger/utils/chats/ChatUtils;->utilsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda12;-><init>(Lcom/exteragram/messenger/utils/network/ImgurUtils$ImgurResponse;)V

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 356
    invoke-interface {p1, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 359
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u9oK2OboeQ_hgGdPtUYMWKDsSTI(Ljava/io/File;Landroid/app/Activity;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 6

    .line 763
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 71
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v1, "utilsQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/exteragram/messenger/utils/chats/ChatUtils;->utilsQueue:Lorg/telegram/messenger/DispatchQueue;

    const/16 v0, 0x10

    .line 72
    new-array v1, v0, [Lcom/exteragram/messenger/utils/chats/ChatUtils;

    sput-object v1, Lcom/exteragram/messenger/utils/chats/ChatUtils;->Instance:[Lcom/exteragram/messenger/utils/chats/ChatUtils;

    .line 73
    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lcom/exteragram/messenger/utils/chats/ChatUtils;->lockObjects:[Ljava/lang/Object;

    .line 74
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    sput-object v1, Lcom/exteragram/messenger/utils/chats/ChatUtils;->textDecoder:Ljava/nio/charset/CharsetDecoder;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 79
    sget-object v2, Lcom/exteragram/messenger/utils/chats/ChatUtils;->lockObjects:[Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils;->selectedAccount:I

    return-void
.end method

.method public static extractOwnerId(J)J
    .locals 8

    const/16 v0, 0x20

    shr-long v0, p0, v0

    const/16 v2, 0x10

    shr-long v2, p0, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const-wide/16 v6, 0x3f

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    const-wide v2, 0x80000000L

    or-long/2addr v0, v2

    :cond_0
    const/16 v2, 0x18

    shr-long/2addr p0, v2

    and-long/2addr p0, v4

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    const-wide p0, 0x100000000L

    add-long/2addr v0, p0

    :cond_1
    return-wide v0
.end method

.method private static fileExists(Ljava/lang/String;)Z
    .locals 2

    .line 167
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 170
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private static getBotInfo()Landroid/util/Pair;
    .locals 4

    .line 507
    const-string/jumbo v0, "search_bot"

    const-string v1, "7424190611:tgdb_search_bot"

    invoke-static {v0, v1}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->getStringConfigValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 508
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 512
    :try_start_0
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-int/lit8 v1, v1, 0x1

    .line 513
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 514
    new-instance v1, Landroid/util/Pair;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 516
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 520
    :cond_0
    new-instance v0, Landroid/util/Pair;

    const-wide v1, 0x1ba842893L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "tgdb_search_bot"

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getChannelIcon()Ljava/lang/CharSequence;
    .locals 5

    .line 100
    sget-object v0, Lcom/exteragram/messenger/utils/chats/ChatUtils;->channelIcon:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v1, "\u200d"

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Lcom/exteragram/messenger/utils/chats/ChatUtils;->channelIcon:Landroid/text/SpannableStringBuilder;

    .line 102
    new-instance v1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_channelIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 104
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/utils/chats/ChatUtils;->channelIcon:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public static getDCName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 146
    :cond_0
    const-string p0, "Singapore, SG"

    return-object p0

    .line 145
    :cond_1
    const-string p0, "Amsterdam, NL"

    return-object p0

    .line 144
    :cond_2
    const-string p0, "Miami FL, USA"

    return-object p0
.end method

.method public static getEditedIcon()Ljava/lang/CharSequence;
    .locals 5

    .line 90
    sget-object v0, Lcom/exteragram/messenger/utils/chats/ChatUtils;->editedIcon:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v1, "\u200d"

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Lcom/exteragram/messenger/utils/chats/ChatUtils;->editedIcon:Landroid/text/SpannableStringBuilder;

    .line 92
    new-instance v0, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_pencilIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 93
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTranslateX(F)V

    .line 94
    sget-object v1, Lcom/exteragram/messenger/utils/chats/ChatUtils;->editedIcon:Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x1

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 96
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/utils/chats/ChatUtils;->editedIcon:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public static getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;
    .locals 1

    .line 126
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance(I)Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(I)Lcom/exteragram/messenger/utils/chats/ChatUtils;
    .locals 3

    .line 130
    sget-object v0, Lcom/exteragram/messenger/utils/chats/ChatUtils;->Instance:[Lcom/exteragram/messenger/utils/chats/ChatUtils;

    aget-object v1, v0, p0

    if-nez v1, :cond_1

    .line 132
    sget-object v2, Lcom/exteragram/messenger/utils/chats/ChatUtils;->lockObjects:[Ljava/lang/Object;

    monitor-enter v2

    .line 133
    :try_start_0
    aget-object v1, v0, p0

    if-nez v1, :cond_0

    .line 135
    new-instance v1, Lcom/exteragram/messenger/utils/chats/ChatUtils;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;-><init>(I)V

    aput-object v1, v0, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 137
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v1

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object v1
.end method

.method private getMessageCaption(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;)Ljava/lang/CharSequence;
    .locals 4

    .line 203
    iget v0, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 207
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoiceTranscriptionOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/Components/TranscribeButton;->isTranscribing(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getVoiceTranscription()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 210
    :cond_1
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    const/4 p1, 0x0

    if-nez p2, :cond_3

    return-object p1

    .line 217
    :cond_3
    iget-object v0, p2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, p1

    :goto_0
    if-ge v1, v0, :cond_6

    .line 218
    iget-object v3, p2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 219
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    if-eqz v2, :cond_4

    return-object p1

    :cond_4
    move-object v2, v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-object v2
.end method

.method private getMessageContent(Lorg/telegram/messenger/MessageObject;)Ljava/lang/CharSequence;
    .locals 3

    .line 230
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 231
    iget v1, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 234
    :cond_0
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 235
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 237
    :cond_1
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 239
    :goto_0
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTargetMessageObjectFromGroup(Lorg/telegram/messenger/MessageObject$GroupedMessages;)Lorg/telegram/messenger/MessageObject;
    .locals 6

    .line 283
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 284
    iget-object v5, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v3, :cond_1

    return-object v1

    :cond_1
    move-object v3, v4

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public static hasRestrictionReason(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    .line 112
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 113
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$RestrictionReason;

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$RestrictionReason;->reason:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private isPhoneStartsWith(Ljava/lang/String;)Z
    .locals 2

    .line 809
    iget v0, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 810
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 811
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static isTermsRestrictedMessage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 122
    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    const-string/jumbo v0, "terms"

    invoke-static {p0, v0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->hasRestrictionReason(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$resolveChannel$19(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Long;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 775
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 776
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 778
    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$resolveUser$12(JLorg/telegram/messenger/Utilities$Callback;Ljava/lang/Long;)V
    .locals 4

    if-eqz p4, :cond_0

    .line 585
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p4, v0, p1

    if-nez p4, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 588
    invoke-interface {p3, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$searchChat$13(JLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v5, p3

    .line 619
    invoke-direct/range {v0 .. v5}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->searchChat(JZZLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$searchChat$15(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$messages_BotResults;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    .line 627
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 631
    :cond_0
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 632
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    .line 636
    :cond_1
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->message:Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 637
    array-length v2, p2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 638
    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 641
    :cond_2
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channel;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channel;-><init>()V

    .line 642
    array-length v4, p2

    :goto_0
    if-ge v1, v4, :cond_6

    aget-object v5, p2, v1

    .line 643
    const-string v6, "\\p{C}"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 644
    const-string/jumbo v6, "\ud83c\udd94"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 646
    :try_start_0
    const-string v6, "[^\\d-]"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 647
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "-100"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 648
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    goto :goto_1

    .line 650
    :cond_3
    iput-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 654
    :cond_4
    const-string/jumbo v6, "\ud83d\udce7"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x40

    .line 655
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    :catch_0
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 658
    :cond_6
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-nez p2, :cond_7

    .line 659
    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 662
    :cond_7
    iget-object p2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz p2, :cond_8

    .line 663
    new-instance v0, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, v2}, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_channel;)V

    invoke-virtual {p0, p2, v0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->resolveChannel(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_2

    .line 665
    :cond_8
    invoke-interface {p1, v2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :goto_2
    return-void

    .line 633
    :cond_9
    :goto_3
    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 628
    :cond_a
    :goto_4
    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$searchUser$11(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$messages_BotResults;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    .line 541
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 545
    :cond_0
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 546
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 550
    :cond_1
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->message:Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 551
    array-length v2, p2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 552
    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 555
    :cond_2
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_user;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    .line 556
    array-length v3, p2

    :goto_0
    if-ge v1, v3, :cond_5

    aget-object v4, p2, v1

    .line 557
    const-string v5, "\\p{C}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 558
    const-string/jumbo v5, "\ud83c\udd94"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 559
    const-string v5, "\\D+"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_1

    .line 560
    :cond_3
    const-string/jumbo v5, "\ud83d\udce7"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x40

    .line 561
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 564
    :cond_5
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-nez p2, :cond_6

    .line 565
    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 568
    :cond_6
    iget-object p2, v2, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 569
    new-instance v0, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda16;

    invoke-direct {v0, p1, v2}, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_user;)V

    invoke-virtual {p0, p2, v3, v4, v0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->resolveUser(Ljava/lang/String;JLorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    return-void

    .line 578
    :cond_7
    invoke-interface {p1, v2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 547
    :cond_8
    :goto_2
    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 542
    :cond_9
    :goto_3
    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$searchUser$9(JLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v5, p3

    .line 533
    invoke-direct/range {v0 .. v5}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->searchUser(JZZLorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$sendBotRequest$3(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$messages_BotResults;)V
    .locals 0

    .line 439
    invoke-direct {p0, p2, p1}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->processBotResponse(Lorg/telegram/tgnet/TLRPC$messages_BotResults;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$sendBotRequest$4(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$messages_BotResults;)V
    .locals 0

    .line 443
    invoke-direct {p0, p2, p1}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->processBotResponse(Lorg/telegram/tgnet/TLRPC$messages_BotResults;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$sendBotRequest$5(Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 1

    if-eqz p4, :cond_0

    .line 443
    new-instance v0, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p3}, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda19;-><init>(Lcom/exteragram/messenger/utils/chats/ChatUtils;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p0, p4, p1, p2, v0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->sendInlineBotRequest(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 445
    invoke-interface {p3, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$sendInlineBotRequest$6(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 474
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 p1, 0x0

    .line 475
    invoke-virtual {p0, p3, p4, p1, p5}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->sendInlineBotRequest(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p6, :cond_1

    .line 477
    invoke-interface {p6, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 482
    :cond_2
    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    if-eqz p3, :cond_4

    check-cast p2, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    if-nez p1, :cond_3

    .line 483
    iget p1, p2, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->cache_time:I

    if-eqz p1, :cond_3

    .line 484
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getMessageStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1, p7, p2}, Lorg/telegram/messenger/MessagesStorage;->saveBotCache(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    .line 486
    :cond_3
    invoke-interface {p5, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 488
    invoke-interface {p5, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$sendInlineBotRequest$7(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    .line 473
    new-instance v0, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda15;

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v8}, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda15;-><init>(Lcom/exteragram/messenger/utils/chats/ChatUtils;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$sendInlineBotRequest$8(I)V
    .locals 2

    .line 502
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    return-void
.end method

.method private processBotResponse(Lorg/telegram/tgnet/TLRPC$messages_BotResults;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 452
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 454
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->message:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 455
    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 459
    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private searchChat(JZZLorg/telegram/messenger/Utilities$Callback;)V
    .locals 5

    .line 614
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getBotInfo()Landroid/util/Pair;

    move-result-object v0

    .line 615
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 616
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    .line 619
    iget-object p3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    new-instance p4, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p1, p2, p5}, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/utils/chats/ChatUtils;JLorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p0, p3, v2, v3, p4}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->resolveUser(Ljava/lang/String;JLorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 621
    invoke-interface {p5, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 626
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p5}, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/utils/chats/ChatUtils;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p0, v1, p1, p4, p2}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->sendInlineBotRequest(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    return-void
.end method

.method private searchUser(JZZLorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 524
    invoke-direct/range {v0 .. v6}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->searchUser(JZZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method private searchUser(JZZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;
    .locals 5

    .line 528
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getBotInfo()Landroid/util/Pair;

    move-result-object v0

    .line 529
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 530
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    .line 533
    iget-object p3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    new-instance p4, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda5;

    invoke-direct {p4, p0, p1, p2, p5}, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda5;-><init>(Lcom/exteragram/messenger/utils/chats/ChatUtils;JLorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p0, p3, v2, v3, p4}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->resolveUser(Ljava/lang/String;JLorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 535
    invoke-interface {p5, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-object p1

    .line 540
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    move-object p1, p5

    new-instance p5, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda6;

    invoke-direct {p5, p0, p1}, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda6;-><init>(Lcom/exteragram/messenger/utils/chats/ChatUtils;Lorg/telegram/messenger/Utilities$Callback;)V

    move-object p1, p0

    move-object p2, v1

    invoke-virtual/range {p1 .. p6}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->sendInlineBotRequest(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    move-result-object p2

    return-object p2
.end method

.method public static uploadImageTemporary(Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    .line 339
    sget-object v0, Lcom/exteragram/messenger/utils/chats/ChatUtils;->utilsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda8;-><init>(Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addMessageToClipboard(Lorg/telegram/messenger/MessageObject;Ljava/lang/Runnable;)V
    .locals 1

    .line 691
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getPathToMessage(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object p1

    .line 692
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 693
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/exteragram/messenger/utils/system/SystemUtils;->addFileToClipboard(Ljava/io/File;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public addTimestamp(Ljava/lang/CharSequence;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p2, v0

    .line 834
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    .line 836
    new-instance p3, Landroid/text/SpannableStringBuilder;

    invoke-direct {p3, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 837
    invoke-static {p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->findDrawable(Ljava/lang/CharSequence;)Lorg/telegram/ui/ProfileActivity$ShowDrawable;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 839
    new-instance p1, Lorg/telegram/ui/ProfileActivity$ShowDrawable;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ProfileActivity$ShowDrawable;-><init>(Ljava/lang/String;)V

    .line 840
    iget-object p2, p1, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 841
    iget-object p2, p1, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 842
    const-string/jumbo p2, "paintChatActionText"

    invoke-static {p2, p4}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->setTextColor(I)V

    const/high16 p2, 0x1e000000

    .line 843
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->setBackgroundColor(I)V

    goto :goto_0

    .line 845
    :cond_0
    iget-object p4, p1, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p4, p2, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 847
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->getIntrinsicWidth()I

    move-result p2

    invoke-virtual {p1}, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->getIntrinsicHeight()I

    move-result p4

    invoke-virtual {p1, v0, v0, p2, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 848
    const-string p2, " S"

    invoke-virtual {p3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 849
    new-instance p2, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p4

    const/16 v0, 0x21

    invoke-virtual {p3, p2, p1, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p3
.end method

.method public canSaveSticker(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    .line 729
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->isEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public copyMessageEntities(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8

    if-eqz p1, :cond_3

    .line 243
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 246
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 248
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    if-eqz v4, :cond_1

    .line 249
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;-><init>()V

    .line 250
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 251
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 252
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:J

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 253
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    .locals 1

    .line 679
    iget v0, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    return-object v0
.end method

.method public getDC(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 369
    invoke-virtual {p0, v0, p1}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getDC(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDC(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 365
    invoke-virtual {p0, p1, v0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getDC(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDC(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;
    .locals 3

    .line 373
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentDatacenterId()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 375
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 378
    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz p1, :cond_1

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->dc_id:I

    :goto_0
    move v0, p1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 381
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz p1, :cond_1

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->dc_id:I

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_1
    if-eq v0, v1, :cond_5

    if-nez v0, :cond_4

    goto :goto_2

    .line 386
    :cond_4
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getDCName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object v0, v1, p2

    const-string p2, "DC%d, %s"

    invoke-static {p1, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 384
    :cond_5
    :goto_2
    invoke-static {v2}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getDCName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEmojiIdFrom(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$User;)J
    .locals 2

    if-eqz p1, :cond_3

    .line 305
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v1, :cond_3

    .line 306
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    :cond_0
    if-eqz p2, :cond_3

    .line 309
    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide p1

    return-wide p1

    .line 311
    :cond_1
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 312
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 314
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide p1

    return-wide p1

    .line 316
    :cond_2
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isFromChannel()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 317
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 319
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$Chat;)J

    move-result-wide p1

    return-wide p1

    :cond_3
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getFileLoader()Lorg/telegram/messenger/FileLoader;
    .locals 1

    .line 683
    iget v0, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    return-object v0
.end method

.method public getLikeDialog()J
    .locals 4

    .line 788
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channelToSave"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils;->selectedAccount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessageForRepeat(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;)Lorg/telegram/messenger/MessageObject;
    .locals 1

    if-eqz p2, :cond_0

    .line 263
    iget-boolean v0, p2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z

    if-nez v0, :cond_0

    .line 264
    invoke-direct {p0, p2}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getTargetMessageObjectFromGroup(Lorg/telegram/messenger/MessageObject$GroupedMessages;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    return-object p1

    .line 265
    :cond_0
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isAnyKindOfSticker()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p2, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v0, :cond_1

    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public getMessageStorage()Lorg/telegram/messenger/MessagesStorage;
    .locals 1

    .line 675
    iget v0, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    return-object v0
.end method

.method public getMessageText(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;)Ljava/lang/CharSequence;
    .locals 7

    .line 176
    iget v0, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0x13

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/16 v1, 0xf

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getMessageCaption(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;)Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_2

    .line 178
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isPoll()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    :try_start_0
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$PollAnswer;

    .line 184
    const-string v6, "\n\ud83d\udd18 "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$PollAnswer;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-nez v5, :cond_0

    const-string v5, ""

    goto :goto_1

    :cond_0
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    if-nez p2, :cond_3

    .line 189
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getMessageContent(Lorg/telegram/messenger/MessageObject;)Ljava/lang/CharSequence;

    move-result-object p2

    :cond_3
    if-eqz p2, :cond_5

    .line 192
    invoke-static {p2}, Lorg/telegram/messenger/Emoji;->fullyConsistsOfEmojis(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move-object p2, v2

    .line 196
    :cond_5
    iget-boolean v0, p1, Lorg/telegram/messenger/MessageObject;->translated:Z

    if-nez v0, :cond_7

    iget-boolean p1, p1, Lorg/telegram/messenger/MessageObject;->isRestrictedMessage:Z

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move-object v2, p2

    :cond_7
    :goto_2
    return-object v2
.end method

.method public getMessagesController()Lorg/telegram/messenger/MessagesController;
    .locals 1

    .line 671
    iget v0, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    return-object v0
.end method

.method public getName(J)Ljava/lang/String;
    .locals 5

    .line 392
    invoke-static {p1, p2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 395
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 397
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 399
    :cond_0
    invoke-static {p1, p2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 401
    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 403
    :cond_1
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 404
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 406
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long p1, p1, v2

    if-nez p1, :cond_3

    sget p1, Lorg/telegram/messenger/R$string;->SavedMessages:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method public getPathToMessage(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 704
    :cond_0
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 705
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 706
    invoke-static {v1}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->fileExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 711
    :cond_1
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_2

    .line 712
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 713
    invoke-static {v1}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->fileExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 718
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 719
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    .line 720
    invoke-static {p1}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->fileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p1

    :cond_3
    return-object v0
.end method

.method public getSetFrom(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    .locals 1

    .line 327
    iget v0, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils;->selectedAccount:I

    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getEmojiIdFrom(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide p1

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findStickerSet(IJ)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object p1

    return-object p1
.end method

.method public getSetFrom(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    .locals 3

    .line 335
    iget v0, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->getProfileEmojiId(Lorg/telegram/tgnet/TLRPC$Chat;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findStickerSet(IJ)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object p1

    return-object p1
.end method

.method public getSetFrom(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    .locals 3

    .line 331
    iget v0, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getProfileEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findStickerSet(IJ)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object p1

    return-object p1
.end method

.method public getTextFromCallback([B)Ljava/lang/String;
    .locals 2

    .line 298
    :try_start_0
    sget-object v0, Lcom/exteragram/messenger/utils/chats/ChatUtils;->textDecoder:Ljava/nio/charset/CharsetDecoder;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 v0, 0x3

    .line 300
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUserConfig()Lorg/telegram/messenger/UserConfig;
    .locals 1

    .line 687
    iget v0, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    return-object v0
.end method

.method public hasArchivedChats()Z
    .locals 1

    .line 784
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->hasArchivedChatsActual()Z

    move-result v0

    return v0
.end method

.method public hasMediaForRepeat(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    .line 275
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isAnyKindOfSticker()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v0, :cond_0

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 2

    .line 733
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public isFragmentUser()Z
    .locals 1

    .line 821
    const-string v0, "888"

    invoke-direct {p0, v0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->isPhoneStartsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRussianUser()Z
    .locals 1

    .line 817
    const-string v0, "7"

    invoke-direct {p0, v0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->isPhoneStartsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public resolveChannel(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    .line 774
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getUserNameResolver()Lorg/telegram/messenger/UserNameResolver;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p2}, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda9;-><init>(Lcom/exteragram/messenger/utils/chats/ChatUtils;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/UserNameResolver;->resolve(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Consumer;)Ljava/lang/Runnable;

    return-void
.end method

.method public resolveUser(Ljava/lang/String;JLorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;
    .locals 2

    .line 584
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getUserNameResolver()Lorg/telegram/messenger/UserNameResolver;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda7;-><init>(Lcom/exteragram/messenger/utils/chats/ChatUtils;JLorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/UserNameResolver;->resolve(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Consumer;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public saveStickerToGallery(Landroid/app/Activity;Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    .line 750
    sget-object v0, Lcom/exteragram/messenger/utils/chats/ChatUtils;->utilsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2, p3, p1, p4}, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;ZLandroid/app/Activity;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public saveStickerToGallery(Landroid/app/Activity;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    .line 737
    invoke-virtual {p0, p2}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getPathToMessage(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isVideoSticker()Z

    move-result p2

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->saveStickerToGallery(Landroid/app/Activity;Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public saveStickerToGallery(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    .line 741
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 742
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 743
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 746
    :cond_0
    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p2

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->saveStickerToGallery(Landroid/app/Activity;Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public searchChatById(JLorg/telegram/messenger/Utilities$Callback;)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 595
    invoke-interface {p3, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 598
    :cond_0
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 600
    invoke-interface {p3, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 605
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-100"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, p0

    move-object v7, p3

    .line 610
    invoke-direct/range {v2 .. v7}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->searchChat(JZZLorg/telegram/messenger/Utilities$Callback;)V

    return-void

    :catch_0
    move-object v7, p3

    .line 607
    invoke-interface {v7, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public searchUserById(Ljava/lang/Long;Lorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    .line 410
    invoke-virtual {p0, p1, p2, v0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->searchUserById(Ljava/lang/Long;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public searchUserById(Ljava/lang/Long;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;
    .locals 9

    .line 414
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 419
    invoke-interface {p2, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-object v1

    .line 422
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    new-instance v7, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda2;

    invoke-direct {v7, p2}, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, p0

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->searchUser(JZZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public sendBotRequest(Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;)V
    .locals 5

    .line 433
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->getApiBotInfo()Landroid/util/Pair;

    move-result-object v0

    .line 434
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 435
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 437
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 439
    new-instance v0, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p3}, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda17;-><init>(Lcom/exteragram/messenger/utils/chats/ChatUtils;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->sendInlineBotRequest(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    return-void

    .line 441
    :cond_0
    new-instance v1, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda18;-><init>(Lcom/exteragram/messenger/utils/chats/ChatUtils;Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->resolveUser(Ljava/lang/String;JLorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    return-void
.end method

.method public sendInlineBotRequest(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 463
    invoke-virtual/range {v0 .. v5}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->sendInlineBotRequest(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public sendInlineBotRequest(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;
    .locals 9

    const/4 v8, 0x0

    if-nez p1, :cond_0

    .line 468
    invoke-interface {p4, v8}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-object v8

    .line 472
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bot_inline_query_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 473
    new-instance v0, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda10;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v2, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda10;-><init>(Lcom/exteragram/messenger/utils/chats/ChatUtils;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 493
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getMessageStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Lorg/telegram/messenger/MessagesStorage;->getBotCache(Ljava/lang/String;Lorg/telegram/tgnet/RequestDelegate;)V

    return-object v8

    .line 496
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;-><init>()V

    .line 497
    iput-object p2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->query:Ljava/lang/String;

    .line 498
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 499
    const-string v2, ""

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->offset:Ljava/lang/String;

    .line 500
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 501
    invoke-virtual {p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    .line 502
    new-instance v1, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, v0}, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda11;-><init>(Lcom/exteragram/messenger/utils/chats/ChatUtils;I)V

    return-object v1
.end method

.method public setLikeDialog(J)V
    .locals 3

    .line 792
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channelToSave"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils;->selectedAccount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public shouldAddTimestamp(Lorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;)Z
    .locals 2

    .line 825
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 828
    :cond_0
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->currentEvent:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;

    if-nez p1, :cond_1

    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz p1, :cond_2

    .line 829
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method
