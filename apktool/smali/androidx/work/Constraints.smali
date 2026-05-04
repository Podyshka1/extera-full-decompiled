.class public final Landroidx/work/Constraints;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Constraints$Builder;,
        Landroidx/work/Constraints$Companion;,
        Landroidx/work/Constraints$ContentUriTrigger;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/work/Constraints$Companion;

.field public static final NONE:Landroidx/work/Constraints;


# instance fields
.field private final contentTriggerMaxDelayMillis:J

.field private final contentTriggerUpdateDelayMillis:J

.field private final contentUriTriggers:Ljava/util/Set;

.field private final requiredNetworkRequestCompat:Landroidx/work/impl/utils/NetworkRequestCompat;

.field private final requiredNetworkType:Landroidx/work/NetworkType;

.field private final requiresBatteryNotLow:Z

.field private final requiresCharging:Z

.field private final requiresDeviceIdle:Z

.field private final requiresStorageNotLow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroidx/work/Constraints$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/Constraints$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/work/Constraints;->Companion:Landroidx/work/Constraints$Companion;

    .line 595
    new-instance v2, Landroidx/work/Constraints;

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Landroidx/work/Constraints;->NONE:Landroidx/work/Constraints;

    return-void
.end method

.method public constructor <init>(Landroidx/work/Constraints;)V
    .locals 2

    const-string/jumbo v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iget-boolean v0, p1, Landroidx/work/Constraints;->requiresCharging:Z

    iput-boolean v0, p0, Landroidx/work/Constraints;->requiresCharging:Z

    .line 226
    iget-boolean v0, p1, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    iput-boolean v0, p0, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    .line 227
    iget-object v0, p1, Landroidx/work/Constraints;->requiredNetworkRequestCompat:Landroidx/work/impl/utils/NetworkRequestCompat;

    iput-object v0, p0, Landroidx/work/Constraints;->requiredNetworkRequestCompat:Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 228
    iget-object v0, p1, Landroidx/work/Constraints;->requiredNetworkType:Landroidx/work/NetworkType;

    iput-object v0, p0, Landroidx/work/Constraints;->requiredNetworkType:Landroidx/work/NetworkType;

    .line 229
    iget-boolean v0, p1, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    iput-boolean v0, p0, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    .line 230
    iget-boolean v0, p1, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    iput-boolean v0, p0, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    .line 231
    iget-object v0, p1, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    iput-object v0, p0, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    .line 232
    iget-wide v0, p1, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    iput-wide v0, p0, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    .line 233
    iget-wide v0, p1, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    iput-wide v0, p0, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    return-void
.end method

.method public constructor <init>(Landroidx/work/NetworkType;ZZZ)V
    .locals 7

    const-string/jumbo v0, "requiredNetworkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    .line 113
    invoke-direct/range {v1 .. v6}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZ)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/work/NetworkType;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 109
    sget-object p1, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    .line 106
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroidx/work/NetworkType;ZZZZ)V
    .locals 14

    const-string/jumbo v0, "requiredNetworkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v12, 0xc0

    const/4 v13, 0x0

    const-wide/16 v7, -0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 142
    invoke-direct/range {v1 .. v13}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V
    .locals 3

    const-string/jumbo v0, "requiredNetworkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentUriTriggers"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Landroidx/work/impl/utils/NetworkRequestCompat;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Landroidx/work/impl/utils/NetworkRequestCompat;-><init>(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/work/Constraints;->requiredNetworkRequestCompat:Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 191
    iput-object p1, p0, Landroidx/work/Constraints;->requiredNetworkType:Landroidx/work/NetworkType;

    .line 192
    iput-boolean p2, p0, Landroidx/work/Constraints;->requiresCharging:Z

    .line 193
    iput-boolean p3, p0, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    .line 194
    iput-boolean p4, p0, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    .line 195
    iput-boolean p5, p0, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    .line 196
    iput-wide p6, p0, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    .line 197
    iput-wide p8, p0, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    .line 198
    iput-object p10, p0, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p12, p11, 0x1

    if-eqz p12, :cond_0

    .line 181
    sget-object p1, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    :cond_0
    and-int/lit8 p12, p11, 0x2

    const/4 v0, 0x0

    if-eqz p12, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p12, p11, 0x20

    const-wide/16 v0, -0x1

    if-eqz p12, :cond_5

    move-wide p6, v0

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    move-wide p8, v0

    :cond_6
    and-int/lit16 p11, p11, 0x80

    if-eqz p11, :cond_7

    .line 188
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p10

    :cond_7
    move-object p12, p10

    move-wide p10, p8

    move-wide p8, p6

    move p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 178
    invoke-direct/range {p2 .. p12}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V
    .locals 1

    const-string/jumbo v0, "requiredNetworkRequestCompat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "requiredNetworkType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentUriTriggers"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Landroidx/work/Constraints;->requiredNetworkRequestCompat:Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 213
    iput-object p2, p0, Landroidx/work/Constraints;->requiredNetworkType:Landroidx/work/NetworkType;

    .line 214
    iput-boolean p3, p0, Landroidx/work/Constraints;->requiresCharging:Z

    .line 215
    iput-boolean p4, p0, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    .line 216
    iput-boolean p5, p0, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    .line 217
    iput-boolean p6, p0, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    .line 218
    iput-wide p7, p0, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    .line 219
    iput-wide p9, p0, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    .line 220
    iput-object p11, p0, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 267
    const-class v1, Landroidx/work/Constraints;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 268
    :cond_1
    check-cast p1, Landroidx/work/Constraints;

    .line 269
    iget-boolean v1, p0, Landroidx/work/Constraints;->requiresCharging:Z

    iget-boolean v2, p1, Landroidx/work/Constraints;->requiresCharging:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 270
    :cond_2
    iget-boolean v1, p0, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    iget-boolean v2, p1, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    if-eq v1, v2, :cond_3

    return v0

    .line 271
    :cond_3
    iget-boolean v1, p0, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    iget-boolean v2, p1, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    if-eq v1, v2, :cond_4

    return v0

    .line 272
    :cond_4
    iget-boolean v1, p0, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    iget-boolean v2, p1, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    if-eq v1, v2, :cond_5

    return v0

    .line 273
    :cond_5
    iget-wide v1, p0, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    iget-wide v3, p1, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    return v0

    .line 274
    :cond_6
    iget-wide v1, p0, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    iget-wide v3, p1, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    return v0

    .line 275
    :cond_7
    invoke-virtual {p0}, Landroidx/work/Constraints;->getRequiredNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/work/Constraints;->getRequiredNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    .line 276
    :cond_8
    iget-object v1, p0, Landroidx/work/Constraints;->requiredNetworkType:Landroidx/work/NetworkType;

    iget-object v2, p1, Landroidx/work/Constraints;->requiredNetworkType:Landroidx/work/NetworkType;

    if-eq v1, v2, :cond_9

    return v0

    .line 277
    :cond_9
    iget-object v0, p0, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    iget-object p1, p1, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_a
    :goto_0
    return v0
.end method

.method public final getContentTriggerMaxDelayMillis()J
    .locals 2

    .line 81
    iget-wide v0, p0, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    return-wide v0
.end method

.method public final getContentTriggerUpdateDelayMillis()J
    .locals 2

    .line 71
    iget-wide v0, p0, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    return-wide v0
.end method

.method public final getContentUriTriggers()Ljava/util/Set;
    .locals 1

    .line 90
    iget-object v0, p0, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    return-object v0
.end method

.method public final getRequiredNetworkRequest()Landroid/net/NetworkRequest;
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/work/Constraints;->requiredNetworkRequestCompat:Landroidx/work/impl/utils/NetworkRequestCompat;

    invoke-virtual {v0}, Landroidx/work/impl/utils/NetworkRequestCompat;->getNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v0

    return-object v0
.end method

.method public final getRequiredNetworkRequestCompat$work_runtime_release()Landroidx/work/impl/utils/NetworkRequestCompat;
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/work/Constraints;->requiredNetworkRequestCompat:Landroidx/work/impl/utils/NetworkRequestCompat;

    return-object v0
.end method

.method public final getRequiredNetworkType()Landroidx/work/NetworkType;
    .locals 1

    .line 40
    iget-object v0, p0, Landroidx/work/Constraints;->requiredNetworkType:Landroidx/work/NetworkType;

    return-object v0
.end method

.method public final hasContentUriTriggers()Z
    .locals 2

    .line 259
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 284
    iget-object v0, p0, Landroidx/work/Constraints;->requiredNetworkType:Landroidx/work/NetworkType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 285
    iget-boolean v1, p0, Landroidx/work/Constraints;->requiresCharging:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 286
    iget-boolean v1, p0, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 287
    iget-boolean v1, p0, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 288
    iget-boolean v1, p0, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 291
    iget-wide v1, p0, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 295
    iget-wide v1, p0, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 296
    iget-object v1, p0, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 297
    invoke-virtual {p0}, Landroidx/work/Constraints;->getRequiredNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final requiresBatteryNotLow()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    return v0
.end method

.method public final requiresCharging()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Landroidx/work/Constraints;->requiresCharging:Z

    return v0
.end method

.method public final requiresDeviceIdle()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    return v0
.end method

.method public final requiresStorageNotLow()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Constraints{requiredNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    iget-object v1, p0, Landroidx/work/Constraints;->requiredNetworkType:Landroidx/work/NetworkType;

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 306
    const-string v1, ", requiresCharging="

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    iget-boolean v1, p0, Landroidx/work/Constraints;->requiresCharging:Z

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 307
    const-string v1, ", requiresDeviceIdle="

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    iget-boolean v1, p0, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 308
    const-string v1, ", requiresBatteryNotLow="

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget-boolean v1, p0, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 309
    const-string v1, ", requiresStorageNotLow="

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    iget-boolean v1, p0, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 310
    const-string v1, ", contentTriggerUpdateDelayMillis="

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    iget-wide v1, p0, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    .line 305
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 311
    const-string v1, ", contentTriggerMaxDelayMillis="

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget-wide v1, p0, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    .line 305
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 312
    const-string v1, ", contentUriTriggers="

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget-object v1, p0, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    const-string v1, ", }"

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
