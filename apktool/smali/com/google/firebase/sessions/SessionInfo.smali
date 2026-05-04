.class public final Lcom/google/firebase/sessions/SessionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final dataCollectionStatus:Lcom/google/firebase/sessions/DataCollectionStatus;

.field private final eventTimestampUs:J

.field private final firebaseAuthenticationToken:Ljava/lang/String;

.field private final firebaseInstallationId:Ljava/lang/String;

.field private final firstSessionId:Ljava/lang/String;

.field private final sessionId:Ljava/lang/String;

.field private final sessionIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJLcom/google/firebase/sessions/DataCollectionStatus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sessionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firstSessionId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataCollectionStatus"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseInstallationId"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseAuthenticationToken"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/firebase/sessions/SessionInfo;->sessionId:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/google/firebase/sessions/SessionInfo;->firstSessionId:Ljava/lang/String;

    .line 61
    iput p3, p0, Lcom/google/firebase/sessions/SessionInfo;->sessionIndex:I

    .line 64
    iput-wide p4, p0, Lcom/google/firebase/sessions/SessionInfo;->eventTimestampUs:J

    .line 67
    iput-object p6, p0, Lcom/google/firebase/sessions/SessionInfo;->dataCollectionStatus:Lcom/google/firebase/sessions/DataCollectionStatus;

    .line 70
    iput-object p7, p0, Lcom/google/firebase/sessions/SessionInfo;->firebaseInstallationId:Ljava/lang/String;

    .line 73
    iput-object p8, p0, Lcom/google/firebase/sessions/SessionInfo;->firebaseAuthenticationToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/firebase/sessions/SessionInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/firebase/sessions/SessionInfo;

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionInfo;->sessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/firebase/sessions/SessionInfo;->sessionId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/firebase/sessions/SessionInfo;->firstSessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/firebase/sessions/SessionInfo;->firstSessionId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/google/firebase/sessions/SessionInfo;->sessionIndex:I

    iget v3, p1, Lcom/google/firebase/sessions/SessionInfo;->sessionIndex:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/google/firebase/sessions/SessionInfo;->eventTimestampUs:J

    iget-wide v5, p1, Lcom/google/firebase/sessions/SessionInfo;->eventTimestampUs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/firebase/sessions/SessionInfo;->dataCollectionStatus:Lcom/google/firebase/sessions/DataCollectionStatus;

    iget-object v3, p1, Lcom/google/firebase/sessions/SessionInfo;->dataCollectionStatus:Lcom/google/firebase/sessions/DataCollectionStatus;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/firebase/sessions/SessionInfo;->firebaseInstallationId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/firebase/sessions/SessionInfo;->firebaseInstallationId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/firebase/sessions/SessionInfo;->firebaseAuthenticationToken:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/firebase/sessions/SessionInfo;->firebaseAuthenticationToken:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getDataCollectionStatus()Lcom/google/firebase/sessions/DataCollectionStatus;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionInfo;->dataCollectionStatus:Lcom/google/firebase/sessions/DataCollectionStatus;

    return-object v0
.end method

.method public final getEventTimestampUs()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/google/firebase/sessions/SessionInfo;->eventTimestampUs:J

    return-wide v0
.end method

.method public final getFirebaseAuthenticationToken()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionInfo;->firebaseAuthenticationToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getFirebaseInstallationId()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionInfo;->firebaseInstallationId:Ljava/lang/String;

    return-object v0
.end method

.method public final getFirstSessionId()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionInfo;->firstSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionInfo;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionIndex()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/google/firebase/sessions/SessionInfo;->sessionIndex:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/sessions/SessionInfo;->sessionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionInfo;->firstSessionId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/firebase/sessions/SessionInfo;->sessionIndex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/firebase/sessions/SessionInfo;->eventTimestampUs:J

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/CameraTimestamp$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionInfo;->dataCollectionStatus:Lcom/google/firebase/sessions/DataCollectionStatus;

    invoke-virtual {v1}, Lcom/google/firebase/sessions/DataCollectionStatus;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionInfo;->firebaseInstallationId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionInfo;->firebaseAuthenticationToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionInfo(sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionInfo;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", firstSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionInfo;->firstSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/firebase/sessions/SessionInfo;->sessionIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventTimestampUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/firebase/sessions/SessionInfo;->eventTimestampUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dataCollectionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionInfo;->dataCollectionStatus:Lcom/google/firebase/sessions/DataCollectionStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", firebaseInstallationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionInfo;->firebaseInstallationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", firebaseAuthenticationToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionInfo;->firebaseAuthenticationToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
