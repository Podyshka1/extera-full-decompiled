.class final Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;
.super Lcom/android/tools/r8/RecordTag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExecutionInfo"
.end annotation


# instance fields
.field private final pluginId:Ljava/lang/String;

.field private final startTime:J


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    instance-of v0, p1, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;

    iget-wide v0, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;->startTime:J

    iget-wide v2, p1, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;->startTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;->pluginId:Ljava/lang/String;

    iget-object p1, p1, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;->pluginId:Ljava/lang/String;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;->pluginId:Ljava/lang/String;

    iget-wide v1, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;->startTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2
.end method

.method static bridge synthetic -$$Nest$fgetpluginId(Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;->pluginId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstartTime(Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;->startTime:J

    return-wide v0
.end method

.method private constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;->pluginId:Ljava/lang/String;

    iput-wide p2, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;->startTime:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLcom/exteragram/messenger/plugins/utils/PluginsWatchdog-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;->$record$equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    .line 39
    iget-wide v0, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;->startTime:J

    iget-object v2, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;->pluginId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo$$ExternalSyntheticRecord0;->m(JLjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public pluginId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;->pluginId:Ljava/lang/String;

    return-object v0
.end method

.method public startTime()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;->startTime:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 39
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;

    const-string/jumbo v2, "pluginId;startTime"

    invoke-static {v0, v1, v2}, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
