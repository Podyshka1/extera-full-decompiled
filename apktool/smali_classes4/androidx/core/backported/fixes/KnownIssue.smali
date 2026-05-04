.class public final Landroidx/core/backported/fixes/KnownIssue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final alias:Ljava/lang/Integer;

.field private final id:J

.field private final manuallyTestedFingerprints:Ljava/util/Set;

.field private final precondition:Lkotlin/jvm/functions/Function0;

.field private final url:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$3RZ4F6EfPweem0drDMoB3xvz3Hs()Z
    .locals 1

    .line 0
    invoke-static {}, Landroidx/core/backported/fixes/KnownIssue;->_init_$lambda$0()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(JLjava/lang/Integer;Ljava/util/Set;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "manuallyTestedFingerprints"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "precondition"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide p1, p0, Landroidx/core/backported/fixes/KnownIssue;->id:J

    .line 55
    iput-object p3, p0, Landroidx/core/backported/fixes/KnownIssue;->alias:Ljava/lang/Integer;

    .line 69
    iput-object p4, p0, Landroidx/core/backported/fixes/KnownIssue;->manuallyTestedFingerprints:Ljava/util/Set;

    .line 82
    iput-object p5, p0, Landroidx/core/backported/fixes/KnownIssue;->precondition:Lkotlin/jvm/functions/Function0;

    .line 89
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "https://issuetracker.google.com/issues/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/backported/fixes/KnownIssue;->url:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/Integer;Ljava/util/Set;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 69
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p4

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 82
    new-instance p5, Landroidx/core/backported/fixes/KnownIssue$$ExternalSyntheticLambda0;

    invoke-direct {p5}, Landroidx/core/backported/fixes/KnownIssue$$ExternalSyntheticLambda0;-><init>()V

    :cond_1
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p5

    .line 37
    invoke-direct/range {v0 .. v5}, Landroidx/core/backported/fixes/KnownIssue;-><init>(JLjava/lang/Integer;Ljava/util/Set;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final _init_$lambda$0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 91
    instance-of v0, p1, Landroidx/core/backported/fixes/KnownIssue;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/core/backported/fixes/KnownIssue;->id:J

    check-cast p1, Landroidx/core/backported/fixes/KnownIssue;

    iget-wide v2, p1, Landroidx/core/backported/fixes/KnownIssue;->id:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getAlias$core_backported_fixes()Ljava/lang/Integer;
    .locals 1

    .line 55
    iget-object v0, p0, Landroidx/core/backported/fixes/KnownIssue;->alias:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getManuallyTestedFingerprints$core_backported_fixes()Ljava/util/Set;
    .locals 1

    .line 69
    iget-object v0, p0, Landroidx/core/backported/fixes/KnownIssue;->manuallyTestedFingerprints:Ljava/util/Set;

    return-object v0
.end method

.method public final getPrecondition$core_backported_fixes()Lkotlin/jvm/functions/Function0;
    .locals 1

    .line 82
    iget-object v0, p0, Landroidx/core/backported/fixes/KnownIssue;->precondition:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 93
    iget-wide v0, p0, Landroidx/core/backported/fixes/KnownIssue;->id:J

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/CameraTimestamp$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 96
    iget-object v0, p0, Landroidx/core/backported/fixes/KnownIssue;->alias:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Landroidx/core/backported/fixes/KnownIssue;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " without alias"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Landroidx/core/backported/fixes/KnownIssue;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " with alias "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/backported/fixes/KnownIssue;->alias:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
