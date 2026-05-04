.class public final Lcom/exteragram/messenger/regdate/RegDateController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/regdate/RegDateController$Companion;,
        Lcom/exteragram/messenger/regdate/RegDateController$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/exteragram/messenger/regdate/RegDateController$Companion;

.field private static final Instance:[Lcom/exteragram/messenger/regdate/RegDateController;

.field private static final lockObjects:[Ljava/lang/Object;

.field private static regDates:[Ljava/lang/Long;

.field private static regIds:[Ljava/lang/Long;


# instance fields
.field private final currentAccount:I

.field private final regDateCache:Ljava/util/HashMap;


# direct methods
.method public static synthetic $r8$lambda$0j-XLj4IEB02ZIebHnFcSYckSiA(Ljava/util/function/Consumer;JJLcom/exteragram/messenger/regdate/RegDateController;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/exteragram/messenger/regdate/RegDateController;->addRegistrationDate$lambda$0(Ljava/util/function/Consumer;JJLcom/exteragram/messenger/regdate/RegDateController;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$32cvTnjStvJW26FEr_lsqRssmi0(JLjava/util/function/Consumer;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/exteragram/messenger/regdate/RegDateController;->addRegistrationDate$lambda$0$0$0(JLjava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CtTyKN62dmRxWp4pKhOPpqahztg(Lcom/exteragram/messenger/regdate/RegDateController;JLjava/util/function/Consumer;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/exteragram/messenger/regdate/RegDateController;->fetchRegistrationDate$lambda$1(Lcom/exteragram/messenger/regdate/RegDateController;JLjava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$__36XOQZ9qm9a4VNo9F7vHRjg6I(Ljava/lang/Boolean;Ljava/util/function/Consumer;JJLcom/exteragram/messenger/regdate/RegDateController;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/exteragram/messenger/regdate/RegDateController;->addRegistrationDate$lambda$0$0(Ljava/lang/Boolean;Ljava/util/function/Consumer;JJLcom/exteragram/messenger/regdate/RegDateController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$myiOpbBtWH7v4ZcP83Ste1hekfY(Ljava/lang/String;Lcom/exteragram/messenger/regdate/RegDateController;JLjava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/exteragram/messenger/regdate/RegDateController;->fetchRegistrationDate$lambda$1$0(Ljava/lang/String;Lcom/exteragram/messenger/regdate/RegDateController;JLjava/util/function/Consumer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/exteragram/messenger/regdate/RegDateController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/exteragram/messenger/regdate/RegDateController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/exteragram/messenger/regdate/RegDateController;->Companion:Lcom/exteragram/messenger/regdate/RegDateController$Companion;

    const/16 v0, 0x10

    .line 182
    new-array v1, v0, [Lcom/exteragram/messenger/regdate/RegDateController;

    sput-object v1, Lcom/exteragram/messenger/regdate/RegDateController;->Instance:[Lcom/exteragram/messenger/regdate/RegDateController;

    .line 183
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lcom/exteragram/messenger/regdate/RegDateController;->lockObjects:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/exteragram/messenger/regdate/RegDateController;->currentAccount:I

    .line 38
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/regdate/RegDateController;->regDateCache:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()[Lcom/exteragram/messenger/regdate/RegDateController;
    .locals 1

    .line 36
    sget-object v0, Lcom/exteragram/messenger/regdate/RegDateController;->Instance:[Lcom/exteragram/messenger/regdate/RegDateController;

    return-object v0
.end method

.method public static final synthetic access$getLockObjects$cp()[Ljava/lang/Object;
    .locals 1

    .line 36
    sget-object v0, Lcom/exteragram/messenger/regdate/RegDateController;->lockObjects:[Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$getRegIds$cp()[Ljava/lang/Long;
    .locals 1

    .line 36
    sget-object v0, Lcom/exteragram/messenger/regdate/RegDateController;->regIds:[Ljava/lang/Long;

    return-object v0
.end method

.method public static final synthetic access$setRegDates$cp([Ljava/lang/Long;)V
    .locals 0

    .line 36
    sput-object p0, Lcom/exteragram/messenger/regdate/RegDateController;->regDates:[Ljava/lang/Long;

    return-void
.end method

.method public static final synthetic access$setRegIds$cp([Ljava/lang/Long;)V
    .locals 0

    .line 36
    sput-object p0, Lcom/exteragram/messenger/regdate/RegDateController;->regIds:[Ljava/lang/Long;

    return-void
.end method

.method private static final addRegistrationDate$lambda$0(Ljava/util/function/Consumer;JJLcom/exteragram/messenger/regdate/RegDateController;Ljava/lang/Boolean;)V
    .locals 9

    const-string v0, "isAdded"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v1, Lcom/exteragram/messenger/regdate/RegDateController$$ExternalSyntheticLambda2;

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    move-object v2, p6

    invoke-direct/range {v1 .. v8}, Lcom/exteragram/messenger/regdate/RegDateController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Boolean;Ljava/util/function/Consumer;JJLcom/exteragram/messenger/regdate/RegDateController;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final addRegistrationDate$lambda$0$0(Ljava/lang/Boolean;Ljava/util/function/Consumer;JJLcom/exteragram/messenger/regdate/RegDateController;)V
    .locals 1

    .line 75
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 76
    const-string p0, "ok"

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 79
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addregdate "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 80
    iget p4, p6, Lcom/exteragram/messenger/regdate/RegDateController;->currentAccount:I

    invoke-static {p4}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance(I)Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object p4

    new-instance p5, Lcom/exteragram/messenger/regdate/RegDateController$$ExternalSyntheticLambda3;

    invoke-direct {p5, p2, p3, p1}, Lcom/exteragram/messenger/regdate/RegDateController$$ExternalSyntheticLambda3;-><init>(JLjava/util/function/Consumer;)V

    const/4 p1, 0x0

    invoke-virtual {p4, p0, p1, p5}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->sendBotRequest(Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private static final addRegistrationDate$lambda$0$0$0(JLjava/util/function/Consumer;Ljava/lang/String;)V
    .locals 1

    .line 81
    const-string v0, "ok"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {p0, p1}, Lcom/exteragram/messenger/api/db/DatabaseHelper;->setRegDateAdded(J)V

    :cond_0
    if-nez p3, :cond_1

    .line 84
    const-string p3, "no results"

    :cond_1
    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static final fetchRegistrationDate$lambda$1(Lcom/exteragram/messenger/regdate/RegDateController;JLjava/util/function/Consumer;Ljava/lang/String;)V
    .locals 6

    .line 51
    new-instance v0, Lcom/exteragram/messenger/regdate/RegDateController$$ExternalSyntheticLambda4;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v1, p4

    invoke-direct/range {v0 .. v5}, Lcom/exteragram/messenger/regdate/RegDateController$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Lcom/exteragram/messenger/regdate/RegDateController;JLjava/util/function/Consumer;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final fetchRegistrationDate$lambda$1$0(Ljava/lang/String;Lcom/exteragram/messenger/regdate/RegDateController;JLjava/util/function/Consumer;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 52
    const-string v3, "failed"

    invoke-static {p0, v3, v1, v2, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/exteragram/messenger/api/dto/RegDateDTO;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;

    .line 55
    iget-object p1, p1, Lcom/exteragram/messenger/regdate/RegDateController;->regDateCache:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-interface {p4, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 58
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 59
    invoke-interface {p4, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 62
    :cond_0
    invoke-interface {p4, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private final findUserRegistrationDate(J)J
    .locals 9

    .line 139
    sget-object v0, Lcom/exteragram/messenger/regdate/RegDateController;->Companion:Lcom/exteragram/messenger/regdate/RegDateController$Companion;

    invoke-static {v0}, Lcom/exteragram/messenger/regdate/RegDateController$Companion;->access$initializeRegIds(Lcom/exteragram/messenger/regdate/RegDateController$Companion;)V

    .line 141
    iget v0, p0, Lcom/exteragram/messenger/regdate/RegDateController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    .line 142
    iget v1, p0, Lcom/exteragram/messenger/regdate/RegDateController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getDialogPhotos(J)Lorg/telegram/messenger/MessagesController$DialogPhotos;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 144
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->date:I

    goto :goto_1

    :cond_1
    const v0, 0x7fffffff

    :goto_1
    if-eqz v1, :cond_3

    .line 145
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 146
    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v2, :cond_2

    goto :goto_2

    .line 150
    :cond_2
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->date:I

    invoke-static {v2, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    goto :goto_2

    .line 156
    :cond_3
    sget-object v1, Lcom/exteragram/messenger/regdate/RegDateController;->regIds:[Ljava/lang/Long;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, p1, v3

    if-gez v1, :cond_4

    .line 157
    sget-object p1, Lcom/exteragram/messenger/regdate/RegDateController;->regDates:[Ljava/lang/Long;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto/16 :goto_3

    .line 158
    :cond_4
    sget-object v1, Lcom/exteragram/messenger/regdate/RegDateController;->regIds:[Ljava/lang/Long;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Lcom/exteragram/messenger/regdate/RegDateController;->regIds:[Ljava/lang/Long;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-lez v1, :cond_5

    .line 159
    sget-object p1, Lcom/exteragram/messenger/regdate/RegDateController;->regDates:[Ljava/lang/Long;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object p2, Lcom/exteragram/messenger/regdate/RegDateController;->regIds:[Ljava/lang/Long;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_3

    .line 161
    :cond_5
    sget-object v1, Lcom/exteragram/messenger/regdate/RegDateController;->regIds:[Ljava/lang/Long;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_6

    .line 163
    sget-object p1, Lcom/exteragram/messenger/regdate/RegDateController;->regDates:[Ljava/lang/Long;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_3

    :cond_6
    neg-int v1, v1

    add-int/lit8 v2, v1, -0x2

    add-int/lit8 v1, v1, -0x1

    .line 168
    sget-object v3, Lcom/exteragram/messenger/regdate/RegDateController;->regIds:[Ljava/lang/Long;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 169
    sget-object v5, Lcom/exteragram/messenger/regdate/RegDateController;->regIds:[Ljava/lang/Long;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 170
    sget-object v7, Lcom/exteragram/messenger/regdate/RegDateController;->regDates:[Ljava/lang/Long;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v2, v7, v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 171
    sget-object v2, Lcom/exteragram/messenger/regdate/RegDateController;->regDates:[Ljava/lang/Long;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long/2addr p1, v3

    long-to-double p1, p1

    sub-long/2addr v5, v3

    long-to-double v3, v5

    div-double/2addr p1, v3

    long-to-double v3, v7

    sub-long/2addr v1, v7

    long-to-double v1, v1

    mul-double/2addr v1, p1

    add-double/2addr v3, v1

    double-to-long p1, v3

    :goto_3
    int-to-long v0, v0

    .line 178
    invoke-static {v0, v1, p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public static final getInstance(I)Lcom/exteragram/messenger/regdate/RegDateController;
    .locals 1

    sget-object v0, Lcom/exteragram/messenger/regdate/RegDateController;->Companion:Lcom/exteragram/messenger/regdate/RegDateController$Companion;

    invoke-virtual {v0, p0}, Lcom/exteragram/messenger/regdate/RegDateController$Companion;->getInstance(I)Lcom/exteragram/messenger/regdate/RegDateController;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addRegistrationDate(JJLjava/util/function/Consumer;)V
    .locals 7

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/exteragram/messenger/badges/BadgesController;->INSTANCE:Lcom/exteragram/messenger/badges/BadgesController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/exteragram/messenger/badges/BadgesController;->isDeveloper$default(Lcom/exteragram/messenger/badges/BadgesController;Lorg/telegram/tgnet/TLRPC$User;ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const-string p1, "\u043f\u0440\u043e\u0441\u0442\u0438, \u043d\u043e \u043d\u0435\u0442"

    invoke-interface {p5, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 73
    :cond_0
    new-instance v0, Lcom/exteragram/messenger/regdate/RegDateController$$ExternalSyntheticLambda0;

    move-object v6, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v1, p5

    invoke-direct/range {v0 .. v6}, Lcom/exteragram/messenger/regdate/RegDateController$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;JJLcom/exteragram/messenger/regdate/RegDateController;)V

    invoke-static {v2, v3, v0}, Lcom/exteragram/messenger/api/db/DatabaseHelper;->isRegDateAdded(JLjava/util/function/Consumer;)V

    return-void
.end method

.method public final fetchRegistrationDate(JLjava/util/function/Consumer;)V
    .locals 3

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/exteragram/messenger/badges/BadgesController;->INSTANCE:Lcom/exteragram/messenger/badges/BadgesController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/exteragram/messenger/badges/BadgesController;->hasBadge$default(Lcom/exteragram/messenger/badges/BadgesController;Lorg/telegram/tgnet/TLObject;ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-interface {p3, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/regdate/RegDateController;->regDateCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/exteragram/messenger/regdate/RegDateController;->regDateCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/api/dto/RegDateDTO;

    if-eqz p1, :cond_1

    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 49
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "regdate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    iget v1, p0, Lcom/exteragram/messenger/regdate/RegDateController;->currentAccount:I

    invoke-static {v1}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance(I)Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v1

    new-instance v2, Lcom/exteragram/messenger/regdate/RegDateController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/exteragram/messenger/regdate/RegDateController$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/regdate/RegDateController;JLjava/util/function/Consumer;)V

    const/4 p1, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->sendBotRequest(Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public final formatRegistrationDate(JLcom/exteragram/messenger/api/dto/RegDateDTO;)Ljava/lang/String;
    .locals 5

    if-nez p3, :cond_0

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/regdate/RegDateController;->getUserRegistrationDate(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 95
    :cond_0
    invoke-virtual {p3}, Lcom/exteragram/messenger/api/dto/RegDateDTO;->getTimestamp()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 96
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatYearMont(JZ)Ljava/lang/String;

    move-result-object v0

    .line 97
    iget v1, p0, Lcom/exteragram/messenger/regdate/RegDateController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "formatName(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p3}, Lcom/exteragram/messenger/api/dto/RegDateDTO;->getFlag()Lcom/exteragram/messenger/api/model/RegDateFlag;

    move-result-object p3

    .line 100
    iget v3, p0, Lcom/exteragram/messenger/regdate/RegDateController;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long p1, p1, v3

    const/4 p2, 0x0

    const/4 v3, 0x2

    if-nez p1, :cond_3

    .line 101
    sget-object p1, Lcom/exteragram/messenger/regdate/RegDateController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p1, p1, p3

    if-eq p1, v2, :cond_2

    if-eq p1, v3, :cond_1

    .line 104
    sget p1, Lorg/telegram/messenger/R$string;->CreationDateSelfApproximately:I

    new-array p3, v2, [Ljava/lang/Object;

    aput-object v0, p3, p2

    invoke-static {p1, p3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 103
    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->CreationDateSelfLater:I

    new-array p3, v2, [Ljava/lang/Object;

    aput-object v0, p3, p2

    invoke-static {p1, p3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 102
    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->CreationDateSelfEarlier:I

    new-array p3, v2, [Ljava/lang/Object;

    aput-object v0, p3, p2

    invoke-static {p1, p3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 101
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    .line 107
    :cond_3
    sget-object p1, Lcom/exteragram/messenger/regdate/RegDateController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p1, p1, p3

    if-eq p1, v2, :cond_5

    if-eq p1, v3, :cond_4

    .line 110
    sget p1, Lorg/telegram/messenger/R$string;->CreationDateUserApproximately:I

    new-array p3, v3, [Ljava/lang/Object;

    aput-object v1, p3, p2

    aput-object v0, p3, v2

    invoke-static {p1, p3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 109
    :cond_4
    sget p1, Lorg/telegram/messenger/R$string;->CreationDateUserLater:I

    new-array p3, v3, [Ljava/lang/Object;

    aput-object v1, p3, p2

    aput-object v0, p3, v2

    invoke-static {p1, p3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 108
    :cond_5
    sget p1, Lorg/telegram/messenger/R$string;->CreationDateUserEarlier:I

    new-array p3, v3, [Ljava/lang/Object;

    aput-object v1, p3, p2

    aput-object v0, p3, v2

    invoke-static {p1, p3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 107
    :goto_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final getUserRegistrationDate(J)Ljava/lang/String;
    .locals 7

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/regdate/RegDateController;->findUserRegistrationDate(J)J

    move-result-wide v0

    .line 117
    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v2

    .line 118
    iget v3, p0, Lcom/exteragram/messenger/regdate/RegDateController;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "formatName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget v4, p0, Lcom/exteragram/messenger/regdate/RegDateController;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    iget-wide v4, v4, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long p1, p1, v4

    const/4 p2, 0x1

    const/4 v4, 0x0

    const-string v5, "formatString(...)"

    if-nez p1, :cond_2

    .line 121
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v3, Lcom/exteragram/messenger/regdate/RegDateController;->regDates:[Ljava/lang/Long;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    sget p1, Lorg/telegram/messenger/R$string;->CreationDateSelfEarlier:I

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v2, p2, v4

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 123
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v0, Lcom/exteragram/messenger/regdate/RegDateController;->regDates:[Ljava/lang/Long;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Lcom/exteragram/messenger/regdate/RegDateController;->regDates:[Ljava/lang/Long;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v1, v1

    sub-int/2addr v1, p2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 124
    sget p1, Lorg/telegram/messenger/R$string;->CreationDateSelfLater:I

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v2, p2, v4

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 126
    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->CreationDateSelfApproximately:I

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v2, p2, v4

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 128
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v6, Lcom/exteragram/messenger/regdate/RegDateController;->regDates:[Ljava/lang/Long;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v6, v6, v4

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v6, 0x2

    if-eqz p1, :cond_3

    .line 129
    sget p1, Lorg/telegram/messenger/R$string;->CreationDateUserEarlier:I

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v3, v0, v4

    aput-object v2, v0, p2

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 130
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v0, Lcom/exteragram/messenger/regdate/RegDateController;->regDates:[Ljava/lang/Long;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Lcom/exteragram/messenger/regdate/RegDateController;->regDates:[Ljava/lang/Long;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v1, v1

    sub-int/2addr v1, p2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 131
    sget p1, Lorg/telegram/messenger/R$string;->CreationDateUserLater:I

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v3, v0, v4

    aput-object v2, v0, p2

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 133
    :cond_4
    sget p1, Lorg/telegram/messenger/R$string;->CreationDateUserApproximately:I

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v3, v0, v4

    aput-object v2, v0, p2

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
