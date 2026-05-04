.class final Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;
.super Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private complianceData:Lcom/google/android/datatransport/cct/internal/ComplianceData;

.field private eventCode:Ljava/lang/Integer;

.field private eventTimeMs:Ljava/lang/Long;

.field private eventUptimeMs:Ljava/lang/Long;

.field private experimentIds:Lcom/google/android/datatransport/cct/internal/ExperimentIds;

.field private networkConnectionInfo:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

.field private sourceExtension:[B

.field private sourceExtensionJsonProto3:Ljava/lang/String;

.field private timezoneOffsetSeconds:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/datatransport/cct/internal/LogEvent;
    .locals 17

    move-object/from16 v0, p0

    .line 222
    iget-object v1, v0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->eventTimeMs:Ljava/lang/Long;

    const-string v2, ""

    if-nez v1, :cond_0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " eventTimeMs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 225
    :cond_0
    iget-object v1, v0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->eventUptimeMs:Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " eventUptimeMs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    :cond_1
    iget-object v1, v0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->timezoneOffsetSeconds:Ljava/lang/Long;

    if-nez v1, :cond_2

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " timezoneOffsetSeconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 234
    new-instance v3, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent;

    iget-object v1, v0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->eventTimeMs:Ljava/lang/Long;

    .line 235
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, v0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->eventCode:Ljava/lang/Integer;

    iget-object v7, v0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->complianceData:Lcom/google/android/datatransport/cct/internal/ComplianceData;

    iget-object v1, v0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->eventUptimeMs:Ljava/lang/Long;

    .line 238
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, v0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->sourceExtension:[B

    iget-object v11, v0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->sourceExtensionJsonProto3:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->timezoneOffsetSeconds:Ljava/lang/Long;

    .line 241
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v14, v0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->networkConnectionInfo:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

    iget-object v15, v0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->experimentIds:Lcom/google/android/datatransport/cct/internal/ExperimentIds;

    const/16 v16, 0x0

    invoke-direct/range {v3 .. v16}, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent;-><init>(JLjava/lang/Integer;Lcom/google/android/datatransport/cct/internal/ComplianceData;J[BLjava/lang/String;JLcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;Lcom/google/android/datatransport/cct/internal/ExperimentIds;Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$1;)V

    return-object v3

    .line 232
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing required properties:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setComplianceData(Lcom/google/android/datatransport/cct/internal/ComplianceData;)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->complianceData:Lcom/google/android/datatransport/cct/internal/ComplianceData;

    return-object p0
.end method

.method public setEventCode(Ljava/lang/Integer;)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->eventCode:Ljava/lang/Integer;

    return-object p0
.end method

.method public setEventTimeMs(J)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;
    .locals 0

    .line 176
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->eventTimeMs:Ljava/lang/Long;

    return-object p0
.end method

.method public setEventUptimeMs(J)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;
    .locals 0

    .line 191
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->eventUptimeMs:Ljava/lang/Long;

    return-object p0
.end method

.method public setExperimentIds(Lcom/google/android/datatransport/cct/internal/ExperimentIds;)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->experimentIds:Lcom/google/android/datatransport/cct/internal/ExperimentIds;

    return-object p0
.end method

.method public setNetworkConnectionInfo(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->networkConnectionInfo:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

    return-object p0
.end method

.method setSourceExtension([B)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->sourceExtension:[B

    return-object p0
.end method

.method setSourceExtensionJsonProto3(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->sourceExtensionJsonProto3:Ljava/lang/String;

    return-object p0
.end method

.method public setTimezoneOffsetSeconds(J)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;
    .locals 0

    .line 206
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->timezoneOffsetSeconds:Ljava/lang/Long;

    return-object p0
.end method
