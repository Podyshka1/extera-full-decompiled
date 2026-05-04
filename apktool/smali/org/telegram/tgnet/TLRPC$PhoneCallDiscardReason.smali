.class public abstract Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PhoneCallDiscardReason"
.end annotation


# instance fields
.field public slug:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21199
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 21206
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonHangup;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonHangup;-><init>()V

    goto :goto_0

    .line 21209
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;-><init>()V

    goto :goto_0

    .line 21215
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;-><init>()V

    goto :goto_0

    .line 21218
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMigrateConferenceCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMigrateConferenceCall;-><init>()V

    goto :goto_0

    .line 21212
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;-><init>()V

    .line 21221
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a1bdcff -> :sswitch_4
        -0x60440e09 -> :sswitch_3
        -0x1f6a3e60 -> :sswitch_2
        -0x5081737 -> :sswitch_1
        0x57adc690 -> :sswitch_0
    .end sparse-switch
.end method
