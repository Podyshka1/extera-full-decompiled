.class public final Landroidx/camera/core/internal/CalculatedUseCaseInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final appUseCases:Ljava/util/Collection;

.field private final cameraUseCases:Ljava/util/Collection;

.field private final cameraUseCasesToAttach:Ljava/util/List;

.field private final cameraUseCasesToDetach:Ljava/util/List;

.field private final cameraUseCasesToKeep:Ljava/util/List;

.field private final placeholderForExtensions:Landroidx/camera/core/UseCase;

.field private final primaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

.field private final secondaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

.field private final streamSharing:Landroidx/camera/core/streamsharing/StreamSharing;

.field private final useCaseConfigs:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/core/streamsharing/StreamSharing;Landroidx/camera/core/UseCase;Ljava/util/Map;Landroidx/camera/core/internal/StreamSpecQueryResult;Landroidx/camera/core/internal/StreamSpecQueryResult;)V
    .locals 1

    const-string v0, "appUseCases"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraUseCases"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraUseCasesToAttach"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraUseCasesToKeep"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraUseCasesToDetach"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "useCaseConfigs"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primaryStreamSpecResult"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->appUseCases:Ljava/util/Collection;

    .line 42
    iput-object p2, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCases:Ljava/util/Collection;

    .line 43
    iput-object p3, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToAttach:Ljava/util/List;

    .line 44
    iput-object p4, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToKeep:Ljava/util/List;

    .line 45
    iput-object p5, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToDetach:Ljava/util/List;

    .line 46
    iput-object p6, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->streamSharing:Landroidx/camera/core/streamsharing/StreamSharing;

    .line 47
    iput-object p7, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->placeholderForExtensions:Landroidx/camera/core/UseCase;

    .line 48
    iput-object p8, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->useCaseConfigs:Ljava/util/Map;

    .line 49
    iput-object p9, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->primaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    .line 50
    iput-object p10, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->secondaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->appUseCases:Ljava/util/Collection;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->appUseCases:Ljava/util/Collection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCases:Ljava/util/Collection;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCases:Ljava/util/Collection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToAttach:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToAttach:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToKeep:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToKeep:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToDetach:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToDetach:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->streamSharing:Landroidx/camera/core/streamsharing/StreamSharing;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->streamSharing:Landroidx/camera/core/streamsharing/StreamSharing;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->placeholderForExtensions:Landroidx/camera/core/UseCase;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->placeholderForExtensions:Landroidx/camera/core/UseCase;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->useCaseConfigs:Ljava/util/Map;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->useCaseConfigs:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->primaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->primaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->secondaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    iget-object p1, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->secondaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getAppUseCases()Ljava/util/Collection;
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->appUseCases:Ljava/util/Collection;

    return-object v0
.end method

.method public final getCameraUseCases()Ljava/util/Collection;
    .locals 1

    .line 42
    iget-object v0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCases:Ljava/util/Collection;

    return-object v0
.end method

.method public final getCameraUseCasesToAttach()Ljava/util/List;
    .locals 1

    .line 43
    iget-object v0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToAttach:Ljava/util/List;

    return-object v0
.end method

.method public final getCameraUseCasesToDetach()Ljava/util/List;
    .locals 1

    .line 45
    iget-object v0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToDetach:Ljava/util/List;

    return-object v0
.end method

.method public final getCameraUseCasesToKeep()Ljava/util/List;
    .locals 1

    .line 44
    iget-object v0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToKeep:Ljava/util/List;

    return-object v0
.end method

.method public final getPlaceholderForExtensions()Landroidx/camera/core/UseCase;
    .locals 1

    .line 47
    iget-object v0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->placeholderForExtensions:Landroidx/camera/core/UseCase;

    return-object v0
.end method

.method public final getPrimaryStreamSpecResult()Landroidx/camera/core/internal/StreamSpecQueryResult;
    .locals 1

    .line 49
    iget-object v0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->primaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    return-object v0
.end method

.method public final getSecondaryStreamSpecResult()Landroidx/camera/core/internal/StreamSpecQueryResult;
    .locals 1

    .line 50
    iget-object v0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->secondaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    return-object v0
.end method

.method public final getStreamSharing()Landroidx/camera/core/streamsharing/StreamSharing;
    .locals 1

    .line 46
    iget-object v0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->streamSharing:Landroidx/camera/core/streamsharing/StreamSharing;

    return-object v0
.end method

.method public final getUseCaseConfigs()Ljava/util/Map;
    .locals 1

    .line 48
    iget-object v0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->useCaseConfigs:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->appUseCases:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCases:Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToAttach:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToKeep:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToDetach:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->streamSharing:Landroidx/camera/core/streamsharing/StreamSharing;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->placeholderForExtensions:Landroidx/camera/core/UseCase;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->useCaseConfigs:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->primaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    invoke-virtual {v1}, Landroidx/camera/core/internal/StreamSpecQueryResult;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->secondaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroidx/camera/core/internal/StreamSpecQueryResult;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CalculatedUseCaseInfo(appUseCases="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->appUseCases:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraUseCases="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCases:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraUseCasesToAttach="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToAttach:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraUseCasesToKeep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToKeep:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraUseCasesToDetach="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToDetach:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", streamSharing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->streamSharing:Landroidx/camera/core/streamsharing/StreamSharing;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", placeholderForExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->placeholderForExtensions:Landroidx/camera/core/UseCase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", useCaseConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->useCaseConfigs:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", primaryStreamSpecResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->primaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryStreamSpecResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->secondaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
