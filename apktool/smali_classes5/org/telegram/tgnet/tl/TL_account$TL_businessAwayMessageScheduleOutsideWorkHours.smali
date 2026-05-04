.class public Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessageScheduleOutsideWorkHours;
.super Lorg/telegram/tgnet/tl/TL_account$BusinessAwayMessageSchedule;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_businessAwayMessageScheduleOutsideWorkHours"
.end annotation


# static fields
.field public static final constructor:I = -0x3c0d0aff


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2418
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_account$BusinessAwayMessageSchedule;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x3c0d0aff

    .line 2423
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
