.class final Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$IconInfo;
.super Lcom/android/tools/r8/RecordTag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/preferences/OtherPreferencesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IconInfo"
.end annotation


# instance fields
.field private final iconColor:I

.field private final iconResId:I


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$IconInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$IconInfo;

    iget v0, p0, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$IconInfo;->iconResId:I

    iget v1, p1, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$IconInfo;->iconResId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$IconInfo;->iconColor:I

    iget p1, p1, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$IconInfo;->iconColor:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 4

    .line 0
    iget v0, p0, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$IconInfo;->iconResId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$IconInfo;->iconColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2
.end method

.method static bridge synthetic -$$Nest$fgeticonColor(Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$IconInfo;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$IconInfo;->iconColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgeticonResId(Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$IconInfo;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$IconInfo;->iconResId:I

    return p0
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 338
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput p1, p0, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$IconInfo;->iconResId:I

    iput p2, p0, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$IconInfo;->iconColor:I

    return-void
.end method

.method synthetic constructor <init>(IILcom/exteragram/messenger/preferences/OtherPreferencesActivity-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$IconInfo;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 338
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$IconInfo;->$record$equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 338
    iget v0, p0, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$IconInfo;->iconResId:I

    iget v1, p0, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$IconInfo;->iconColor:I

    invoke-static {v0, v1}, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$IconInfo$$ExternalSyntheticRecord0;->m(II)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 338
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$IconInfo;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$IconInfo;

    const-string v2, "iconResId;iconColor"

    invoke-static {v0, v1, v2}, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
