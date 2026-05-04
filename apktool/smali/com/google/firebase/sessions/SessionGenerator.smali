.class public final Lcom/google/firebase/sessions/SessionGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final timeProvider:Lcom/google/firebase/sessions/TimeProvider;

.field private final uuidGenerator:Lcom/google/firebase/sessions/UuidGenerator;


# direct methods
.method public constructor <init>(Lcom/google/firebase/sessions/TimeProvider;Lcom/google/firebase/sessions/UuidGenerator;)V
    .locals 1

    const-string/jumbo v0, "timeProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uuidGenerator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/firebase/sessions/SessionGenerator;->timeProvider:Lcom/google/firebase/sessions/TimeProvider;

    iput-object p2, p0, Lcom/google/firebase/sessions/SessionGenerator;->uuidGenerator:Lcom/google/firebase/sessions/UuidGenerator;

    return-void
.end method

.method private final generateSessionId()Ljava/lang/String;
    .locals 7

    .line 45
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionGenerator;->uuidGenerator:Lcom/google/firebase/sessions/UuidGenerator;

    invoke-interface {v0}, Lcom/google/firebase/sessions/UuidGenerator;->next()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "toString(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "-"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final generateNewSession(Lcom/google/firebase/sessions/SessionDetails;)Lcom/google/firebase/sessions/SessionDetails;
    .locals 6

    .line 36
    invoke-direct {p0}, Lcom/google/firebase/sessions/SessionGenerator;->generateSessionId()Ljava/lang/String;

    move-result-object v1

    .line 37
    new-instance v0, Lcom/google/firebase/sessions/SessionDetails;

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/google/firebase/sessions/SessionDetails;->getFirstSessionId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v1

    :cond_1
    if-eqz p1, :cond_2

    .line 40
    invoke-virtual {p1}, Lcom/google/firebase/sessions/SessionDetails;->getSessionIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    :goto_0
    move v3, p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    .line 41
    :goto_1
    iget-object p1, p0, Lcom/google/firebase/sessions/SessionGenerator;->timeProvider:Lcom/google/firebase/sessions/TimeProvider;

    invoke-interface {p1}, Lcom/google/firebase/sessions/TimeProvider;->currentTime()Lcom/google/firebase/sessions/Time;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/sessions/Time;->getUs()J

    move-result-wide v4

    .line 37
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/sessions/SessionDetails;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    return-object v0
.end method
