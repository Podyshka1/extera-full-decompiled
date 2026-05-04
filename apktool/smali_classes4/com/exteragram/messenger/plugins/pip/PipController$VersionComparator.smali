.class final Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/pip/PipController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VersionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;


# direct methods
.method public static synthetic $r8$lambda$nqT8w7vbkkYQNQkxx0djR18NPuo(Lkotlin/text/MatchResult;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;->splitVersion$lambda$0(Lkotlin/text/MatchResult;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;

    invoke-direct {v0}, Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;->INSTANCE:Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getWeight(Ljava/lang/String;)I
    .locals 2

    const-wide v0, -0x5313000c1c0974dbL    # -2.7805235040631197E-92

    .line 702
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x6e

    return p1

    .line 703
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/16 p1, 0x64

    return p1

    :cond_1
    const-wide v0, -0x531300111c0974dbL    # -2.7805161889438154E-92

    .line 704
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-wide v0, -0x531300141c0974dbL    # -2.780511799872233E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-wide v0, -0x531300161c0974dbL    # -2.7805088738245112E-92

    .line 705
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-wide v0, -0x5313001b1c0974dbL    # -2.780501558705207E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-wide v0, -0x5313001d1c0974dbL    # -2.7804986326574854E-92

    .line 706
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-wide v0, -0x531300231c0974dbL    # -2.7804898545143203E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const-wide v0, -0x531300251c0974dbL    # -2.7804869284665986E-92

    .line 707
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x32

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1

    :cond_6
    :goto_0
    const/16 p1, 0x3c

    return p1

    :cond_7
    :goto_1
    const/16 p1, 0x46

    return p1

    :cond_8
    :goto_2
    const/16 p1, 0x50

    return p1
.end method

.method private final splitVersion(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 713
    invoke-static {}, Lcom/exteragram/messenger/plugins/pip/PipController;->access$getREGEX_VERSION_SPLIT$p()Lkotlin/text/Regex;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p1

    new-instance v0, Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private static final splitVersion$lambda$0(Lkotlin/text/MatchResult;)Ljava/lang/String;
    .locals 2

    const-wide v0, -0x531300291c0974dbL    # -2.7804810763711553E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 713
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 660
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const-wide v0, -0x531300001c0974dbL    # -2.7805410603494497E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v0, -0x531300031c0974dbL    # -2.7805366712778672E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;->splitVersion(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 663
    invoke-direct {p0, p2}, Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;->splitVersion(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 664
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_b

    .line 667
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 668
    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v3, :cond_1

    if-eqz v4, :cond_0

    .line 670
    invoke-static {v4}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_0
    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_1

    const-wide v6, -0x531300061c0974dbL    # -2.7805322822062847E-92

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-nez v4, :cond_3

    if-eqz v3, :cond_2

    .line 671
    invoke-static {v3}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    :cond_2
    if-eqz v5, :cond_3

    const-wide v4, -0x531300081c0974dbL    # -2.780529356158563E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    :cond_3
    if-nez v3, :cond_4

    const-wide v5, -0x5313000a1c0974dbL    # -2.7805264301108413E-92

    .line 673
    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    :cond_4
    if-nez v4, :cond_5

    const-wide v4, -0x5313000b1c0974dbL    # -2.7805249670869805E-92

    .line 674
    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    .line 676
    :cond_5
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 678
    invoke-static {v3}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 679
    invoke-static {v4}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    .line 682
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    if-eqz v3, :cond_a

    return v3

    :cond_6
    if-eqz v5, :cond_7

    const/4 p1, 0x1

    return p1

    :cond_7
    if-eqz v6, :cond_8

    const/4 p1, -0x1

    return p1

    .line 689
    :cond_8
    invoke-direct {p0, v3}, Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;->getWeight(Ljava/lang/String;)I

    move-result v5

    .line 690
    invoke-direct {p0, v4}, Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;->getWeight(Ljava/lang/String;)I

    move-result v6

    if-eq v5, v6, :cond_9

    .line 691
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    return p1

    .line 693
    :cond_9
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_a

    return v3

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    return v1
.end method
