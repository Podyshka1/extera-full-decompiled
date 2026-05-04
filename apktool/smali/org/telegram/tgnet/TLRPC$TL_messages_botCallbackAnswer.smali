.class public Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_botCallbackAnswer"
.end annotation


# instance fields
.field public alert:Z

.field public cache_time:I

.field public flags:I

.field public has_url:Z

.field public message:Ljava/lang/String;

.field public native_ui:Z

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2116
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;
    .locals 2

    const v0, 0x36585ea4

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2128
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;-><init>()V

    .line 2129
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 2133
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2134
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->alert:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 2135
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->has_url:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move v2, v3

    .line 2136
    :cond_2
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->native_ui:Z

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 2138
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->message:Ljava/lang/String;

    .line 2140
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 2141
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->url:Ljava/lang/String;

    .line 2143
    :cond_4
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->cache_time:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x36585ea4

    .line 2147
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2148
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->alert:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    .line 2149
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->has_url:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x9

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    .line 2150
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->native_ui:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x10

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x11

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    .line 2151
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2152
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 2153
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->message:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 2155
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 2156
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->url:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 2158
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->cache_time:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
