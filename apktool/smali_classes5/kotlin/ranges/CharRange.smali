.class public final Lkotlin/ranges/CharRange;
.super Lkotlin/ranges/CharProgression;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/ranges/CharRange$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/ranges/CharRange$Companion;

.field private static final EMPTY:Lkotlin/ranges/CharRange;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/ranges/CharRange$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/ranges/CharRange$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/ranges/CharRange;->Companion:Lkotlin/ranges/CharRange$Companion;

    .line 47
    new-instance v0, Lkotlin/ranges/CharRange;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/ranges/CharRange;-><init>(CC)V

    sput-object v0, Lkotlin/ranges/CharRange;->EMPTY:Lkotlin/ranges/CharRange;

    return-void
.end method

.method public constructor <init>(CC)V
    .locals 1

    const/4 v0, 0x1

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lkotlin/ranges/CharProgression;-><init>(CCI)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 37
    instance-of v0, p1, Lkotlin/ranges/CharRange;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkotlin/ranges/CharRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlin/ranges/CharRange;

    invoke-virtual {v0}, Lkotlin/ranges/CharRange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    :cond_0
    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->getFirst()C

    move-result v0

    check-cast p1, Lkotlin/ranges/CharRange;

    invoke-virtual {p1}, Lkotlin/ranges/CharProgression;->getFirst()C

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->getLast()C

    move-result v0

    invoke-virtual {p1}, Lkotlin/ranges/CharProgression;->getLast()C

    move-result p1

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 41
    invoke-virtual {p0}, Lkotlin/ranges/CharRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->getFirst()C

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->getLast()C

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 34
    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->getFirst()C

    move-result v0

    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->getLast()C

    move-result v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->getFirst()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->getLast()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
