.class public final Lcom/google/firebase/sessions/DataCollectionStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final crashlytics:Lcom/google/firebase/sessions/DataCollectionState;

.field private final performance:Lcom/google/firebase/sessions/DataCollectionState;

.field private final sessionSamplingRate:D


# direct methods
.method public constructor <init>(Lcom/google/firebase/sessions/DataCollectionState;Lcom/google/firebase/sessions/DataCollectionState;D)V
    .locals 1

    const-string/jumbo v0, "performance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crashlytics"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/firebase/sessions/DataCollectionStatus;->performance:Lcom/google/firebase/sessions/DataCollectionState;

    .line 79
    iput-object p2, p0, Lcom/google/firebase/sessions/DataCollectionStatus;->crashlytics:Lcom/google/firebase/sessions/DataCollectionState;

    .line 80
    iput-wide p3, p0, Lcom/google/firebase/sessions/DataCollectionStatus;->sessionSamplingRate:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/firebase/sessions/DataCollectionStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/firebase/sessions/DataCollectionStatus;

    iget-object v1, p0, Lcom/google/firebase/sessions/DataCollectionStatus;->performance:Lcom/google/firebase/sessions/DataCollectionState;

    iget-object v3, p1, Lcom/google/firebase/sessions/DataCollectionStatus;->performance:Lcom/google/firebase/sessions/DataCollectionState;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/firebase/sessions/DataCollectionStatus;->crashlytics:Lcom/google/firebase/sessions/DataCollectionState;

    iget-object v3, p1, Lcom/google/firebase/sessions/DataCollectionStatus;->crashlytics:Lcom/google/firebase/sessions/DataCollectionState;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/google/firebase/sessions/DataCollectionStatus;->sessionSamplingRate:D

    iget-wide v5, p1, Lcom/google/firebase/sessions/DataCollectionStatus;->sessionSamplingRate:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCrashlytics()Lcom/google/firebase/sessions/DataCollectionState;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/firebase/sessions/DataCollectionStatus;->crashlytics:Lcom/google/firebase/sessions/DataCollectionState;

    return-object v0
.end method

.method public final getPerformance()Lcom/google/firebase/sessions/DataCollectionState;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/firebase/sessions/DataCollectionStatus;->performance:Lcom/google/firebase/sessions/DataCollectionState;

    return-object v0
.end method

.method public final getSessionSamplingRate()D
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/google/firebase/sessions/DataCollectionStatus;->sessionSamplingRate:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/sessions/DataCollectionStatus;->performance:Lcom/google/firebase/sessions/DataCollectionState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/firebase/sessions/DataCollectionStatus;->crashlytics:Lcom/google/firebase/sessions/DataCollectionState;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/firebase/sessions/DataCollectionStatus;->sessionSamplingRate:D

    invoke-static {v1, v2}, Lcom/exteragram/messenger/api/dto/RegDateDTO$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataCollectionStatus(performance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/sessions/DataCollectionStatus;->performance:Lcom/google/firebase/sessions/DataCollectionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", crashlytics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/sessions/DataCollectionStatus;->crashlytics:Lcom/google/firebase/sessions/DataCollectionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionSamplingRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/firebase/sessions/DataCollectionStatus;->sessionSamplingRate:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
