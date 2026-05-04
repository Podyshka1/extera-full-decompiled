.class public final Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;
.super Lcom/android/tools/r8/RecordTag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GenerationData"
.end annotation


# instance fields
.field private final imagePath:Ljava/lang/String;

.field private final prompt:Ljava/lang/String;

.field private final useHistory:Z


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;

    iget-boolean v0, p0, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;->useHistory:Z

    iget-boolean v1, p1, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;->useHistory:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;->prompt:Ljava/lang/String;

    iget-object v1, p1, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;->prompt:Ljava/lang/String;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;->imagePath:Ljava/lang/String;

    iget-object p1, p1, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;->imagePath:Ljava/lang/String;

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
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;->prompt:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;->useHistory:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;->imagePath:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    return-object v3
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 232
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;->prompt:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;->useHistory:Z

    iput-object p3, p0, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;->imagePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 232
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;->$record$equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    .line 232
    iget-boolean v0, p0, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;->useHistory:Z

    iget-object v1, p0, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;->prompt:Ljava/lang/String;

    iget-object v2, p0, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;->imagePath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData$$ExternalSyntheticRecord1;->m(ZLjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public imagePath()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public prompt()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 232
    invoke-direct {p0}, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;

    const-string v2, "prompt;useHistory;imagePath"

    invoke-static {v0, v1, v2}, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useHistory()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;->useHistory:Z

    return v0
.end method
