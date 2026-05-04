.class public Lorg/telegram/tgnet/TLRPC$TL_codeSettings;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_codeSettings"
.end annotation


# instance fields
.field public allow_app_hash:Z

.field public allow_firebase:Z

.field public allow_flashcall:Z

.field public allow_missed_call:Z

.field public app_sandbox:Z

.field public current_number:Z

.field public flags:I

.field public logout_tokens:Ljava/util/ArrayList;

.field public token:Ljava/lang/String;

.field public unknown_number:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18144
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 18154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 18164
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 18165
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_flashcall:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 18166
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->current_number:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 18167
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_app_hash:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 18168
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_missed_call:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 18169
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_firebase:Z

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 18170
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->unknown_number:Z

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    .line 18172
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    const v1, 0x1cb5c415

    if-eq v0, v1, :cond_7

    if-nez p2, :cond_6

    goto :goto_7

    .line 18175
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string/jumbo p2, "wrong Vector magic, got %x"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18179
    :cond_7
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    :goto_6
    if-ge v2, v0, :cond_9

    .line 18181
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_7

    .line 18185
    :cond_8
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 18188
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    .line 18189
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->token:Ljava/lang/String;

    .line 18190
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readBool(Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->app_sandbox:Z

    :cond_a
    :goto_7
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 3

    const v0, -0x52dac288

    .line 18195
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 18196
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_flashcall:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    .line 18197
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->current_number:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    .line 18198
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_app_hash:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x10

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x11

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    .line 18199
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_missed_call:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x20

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x21

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    .line 18200
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_firebase:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x80

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x81

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    .line 18201
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->unknown_number:Z

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x200

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x201

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    .line 18202
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 18203
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    const v0, 0x1cb5c415

    .line 18204
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 18205
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 18206
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_6

    .line 18208
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 18211
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    .line 18212
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->token:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 18213
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->app_sandbox:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    :cond_7
    return-void
.end method
